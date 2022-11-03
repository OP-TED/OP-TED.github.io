'use strict'

const { execSync } = require('node:child_process')
const fs = require('fs');
const ospath = require('path')
const File = require('@antora/content-classifier/file');

const apiDir = 'api'
const buildDir = 'build'
const tmpDir = ospath.parse(ospath.resolve(buildDir, '.tmp'))

const searchPattern = /\bapidoc::(.*?)\[(.*?)\]/g

function apidocAntoraExtension(context, { config }) {
    const logger = context.getLogger('apidocAntoraExtension')

    logger.debug('Registering Antora extension functions')

    context.on('contextStarted', () => {
        const delegate = context.getFunctions().aggregateContent

        logger.debug('Extending function [aggregateContent]')

        context.replaceFunctions({
            aggregateContent(playbook) {
                return delegate.call(this, playbook)
                .then(aggregatedContent => new Promise(
                    (resolve, reject, content = aggregatedContent, generatorConfig = config.openapiGenerator) => injectApidocFiles(resolve, content, generatorConfig, logger)))
            }
        })
    })
}

function injectApidocFiles(resolve, aggregatedContent, generatorConfig, logger) {
    logger.debug('Injecting apidocs to the virtual filesystem')

    aggregatedContent.forEach(componentVersionBucket =>
        componentVersionBucket.files
            .filter(referringFile => referringFile.extname == '.adoc')
            .forEach(referringFile => {
                logger.debug(`Processing file ${componentVersionBucket.name}@:${componentVersionBucket.version}/${referringFile.path}`)

                let match
                while (match = searchPattern.exec(referringFile.contents.toString())) {
                    const module = referringFile.dirname.replace(/^modules\//, '').split('/')[0]

                    let apiSpec = match[1]
                    let basename = ''

                    try {
                        if(apiSpec.startsWith('attachment$')) {
                            basename = apiSpec.replace(/^attachment\$/, '')
                            const apiSpecVirtualFile = componentVersionBucket.files.find(file => file.src.path == `modules/${module}/attachments/${basename}`)
                            const apiSpecFile = ospath.parse(ospath.resolve(ospath.format(tmpDir), 'specs', componentVersionBucket.name, componentVersionBucket.version, basename))

                            fs.mkdirSync(ospath.resolve(apiSpecFile.dir), {recursive: true})

                            apiSpec = ospath.format(apiSpecFile)
                            fs.writeFileSync(apiSpec, apiSpecVirtualFile.contents)
                            basename = basename.replace(/\.yaml$/, '')
                        } else {
                            apiSpec = new URL(apiSpec)
                            basename = apiSpec.hostname.replace(/\./g, '-')
                        }

                        addFile(createApidoc(module, apiDir, basename, apiSpec, generatorConfig, logger), componentVersionBucket.files, logger)
                        addFile(createIncludeFile(module, apiDir, basename, logger), componentVersionBucket.files, logger)
                    } catch (error) {
                        console.error(error.message)
                    }
                }

                resolve(aggregatedContent)
            })
    )
}

function addFile(file, files = []) {
    if (files.filter(f => f.src.path == file.src.path).length == 0) {
        files.push(file)
    }
}

function createApidoc(module, apiDir, basename, apiSpec, generatorConfig, logger) {
    logger.info(`Creating apidoc for [${apiSpec}]`)

    const relativePath = `modules/${module}/partials/${apiDir}/${basename}.adoc`
    return toVirtualFile(relativePath, apiSpecToAsciidoc(basename, apiSpec, generatorConfig, logger), logger)
}

function apiSpecToAsciidoc(basename, apiSpec, generatorConfig, logger) {
    const generatedPath = ospath.resolve(ospath.format(tmpDir), 'apidocs_generated', basename)
    const generatedFile = `${generatedPath}/index.adoc`

    if(!fs.existsSync(generatedFile)) {
        logger.debug(`Generating apidoc Asciidoc for [${apiSpec}] under [${generatedPath}]`)

        let generatorCmd = `openapi-generator-cli generate -g asciidoc -i ${apiSpec} -o ${generatedPath} --skip-validate-spec`
        if(generatorConfig) {
            if(generatorConfig.config) { generatorCmd = `${generatorCmd} -c ${generatorConfig.config}` }
            if(generatorConfig.templates) { generatorCmd = `${generatorCmd} -t ${generatorConfig.templates}` }
        }

        execSync(generatorCmd)
    }

    return fs.readFileSync(generatedFile)
}

function createIncludeFile(module, apiDir, basename, logger) {
    const relativePath = `modules/${module}/pages/${apiDir}/${basename}.adoc`
    logger.info(`Generating include file ${relativePath}`)

    const contents = Buffer.from(`include::partial$${apiDir}/${basename}.adoc[]`)

    return toVirtualFile(relativePath, contents, logger)
}

function toVirtualFile(relativePath, contents, logger) {
    const file = new File({
        contents,
        path: relativePath,
        src: { path: relativePath, }
    })

    Object.assign(file.src, {
        basename: file.basename,
        extname: file.extname,
        stem: file.stem
    })

    return file
}

module.exports.register = apidocAntoraExtension

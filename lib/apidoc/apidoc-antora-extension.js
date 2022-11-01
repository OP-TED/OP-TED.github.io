'use strict'

const egrep = require('@apexearth/egrep')
const { execSync } = require('node:child_process')
const fs = require('fs');
const mkdirp = require('mkdirp');
const ospath = require('path')
const File = require('@antora/content-classifier/file');

const apiDir = 'api'
const searchPattern = /\bapidoc::(.*?)\[(.*?)\]/g

function apidocAntoraExtension(context, { config }) {
    context.on('contextStarted', () => {
        const delegate = context.getFunctions().aggregateContent

        context.replaceFunctions({
            aggregateContent(playbook) {
                const tmpDir = `${playbook.dir}/build/.tmp`
                createDir(tmpDir)

                return delegate.call(this, playbook)
                .then(aggregatedContent => new Promise(
                    (resolve, reject, content = aggregatedContent, generatorConfig = config.openapiGenerator) => injectApidocFiles(resolve, content, generatorConfig, tmpDir)))
            }
        })
    })
}

function injectApidocFiles(resolve, aggregatedContent, generatorConfig, tmpDir) {
    aggregatedContent.forEach(componentVersionBucket =>
        componentVersionBucket.files
            .filter(referringFile => referringFile.extname == '.adoc')
            .forEach(referringFile => {
                let match

                while (match = searchPattern.exec(referringFile.contents.toString())) {
                    const apiUrl = new URL(match[1])
                    const basename = apiUrl.hostname.replace(/\./g, '-')

                    const startPath = ospath.parse(ospath.resolve(tmpDir, componentVersionBucket.name, componentVersionBucket.version))
                    const module = referringFile.dirname.replace(/^modules\//, '').split('/')[0]
    
                    addFile(createIncludeFile(startPath, module, apiDir, basename), componentVersionBucket.files)
                    addFile(createApidoc(startPath, module, apiDir, basename, apiUrl, generatorConfig), componentVersionBucket.files)
                }

                resolve(aggregatedContent)
            })
    )
}

function findMatches(searchPattern, str) {
    const matches = searchPattern.exec(str)
    searchPattern.lastIndex = 0
    return matches
}

function addFile(file, files = []) {
    if (files.filter(f => f.src.path == file.src.path).length == 0) {
        files.push(file)
    }
}

function posixify(p) {
    return p === undefined ? undefined : p.replaceAll(ospath.sep, '/')
}

function apiSpecToHtml(apiSpec, output, generatorConfig) {
    const outputDir = ospath.parse(output).dir
    const generatedPath = `${outputDir}/_generated`

    let generatorCmd = `openapi-generator-cli generate -g asciidoc -i ${apiSpec} -o ${generatedPath} --skip-validate-spec`
    if(generatorConfig) {
        if(generatorConfig.config) { generatorCmd = `${generatorCmd} -c ${generatorConfig.config}` }
        if(generatorConfig.templates) { generatorCmd = `${generatorCmd} -t ${generatorConfig.templates}` }
    }

    execSync(generatorCmd)
    createDir(outputDir)
    fs.copyFileSync(`${generatedPath}/index.adoc`, output)
}

function createApidoc(startPath, module, apiDir, basename, apiSpec, generatorConfig) {
    const relativePath = `modules/${module}/partials/${apiDir}/${basename}.adoc`
    const path = ospath.parse(ospath.resolve(ospath.format(startPath), relativePath))

    createDir(path.dir)
    apiSpecToHtml(apiSpec, ospath.format(path), generatorConfig)

    return toVinyl(ospath.format(path), relativePath)
}

function createIncludeFile(startPath, module, apiDir, basename) {
    const relativePath = `modules/${module}/pages/${apiDir}/${basename}.adoc`
    const path = ospath.parse(ospath.resolve(ospath.format(startPath), relativePath))
    createDir(path.dir)

    fs.writeFileSync(ospath.format(path), `include::partial$${apiDir}/${basename}.adoc[]`)
    console.log(`File [${ospath.format(path)} was created successfully.`)

    return toVinyl(ospath.format(path), relativePath)
}

function createDir(dir) {
    mkdirp.sync(dir)
    console.log(`Created directory [${dir}]`)
}

function toVinyl(absolutePath, relativePath) {
    const file = new File({
        path: relativePath,
        contents: Buffer.from(fs.readFileSync(absolutePath)),
        src: { absolutePath }
    })

    Object.assign(file.src, {
        path: relativePath,
        basename: file.basename,
        extname: file.extname,
        stem: file.stem
    })
    return file
}

module.exports.register = apidocAntoraExtension

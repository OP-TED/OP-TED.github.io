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
                    (resolve, reject, content = aggregatedContent, redocConfig = config.redoc) => injectApidocFiles(resolve, content, redocConfig, tmpDir)))
            }
        })
    })
}

function injectApidocFiles(resolve, aggregatedContent, redocConfig, tmpDir) {
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
                    addFile(createApidoc(startPath, module, apiDir, basename, apiUrl, redocConfig), componentVersionBucket.files)
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

function apiSpecToHtml(apiSpec, output, redocConfig) {
    let redocCmd = `redoc-cli build ${apiSpec} --output=${output}`
    if(redocConfig) {
        if(redocConfig.config) { redocCmd = `${redocCmd} --options=${redocConfig.config}` }
        if(redocConfig.template) { redocCmd = `${redocCmd} --template=${redocConfig.template}` }
    }

    execSync(redocCmd)

    const data = fs.readFileSync(output); //read existing contents into data
    const head = Buffer.from('++++\n');
    const tail = Buffer.from('\n++++');

    const fd = fs.openSync(output, 'w+');
    fs.appendFileSync(fd, head);    //append old data
    fs.appendFileSync(fd, data);    //append old data
    fs.appendFileSync(fd, tail);
    fs.close(fd);
}

function createApidoc(startPath, module, apiDir, basename, apiSpec, redocConfig) {
    const relativePath = `modules/${module}/partials/${apiDir}/${basename}.adoc`
    const path = ospath.parse(ospath.resolve(ospath.format(startPath), relativePath))

    createDir(path.dir)
    apiSpecToHtml(apiSpec, ospath.format(path), redocConfig)

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

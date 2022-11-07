// see https://gitlab.com/antora/demo/docs-site/blob/watch-mode/gulpfile.js
// see https://gitlab.com/antora/antora/-/issues/329
'use strict';

['http_proxy', 'https_proxy', 'no_proxy'].forEach((name) => {
  if (process.env[name]) process.env[name.toUpperCase()] = process.env[name]
})
process.env.GLOBAL_AGENT_ENVIRONMENT_VARIABLE_NAMESPACE = ''
require('global-agent/bootstrap')

const connect = require('gulp-connect')
const fs = require('fs')
const generator = require('@antora/site-generator-default')
process.env['SEARCH_ENABLED'] = true
process.env['SEARCH_ENGINE'] = 'lunr'
const { reload: livereload } = process.env.LIVERELOAD === 'true' ? require('gulp-connect') : {}
const { series, src, watch } = require('gulp')
const yaml = require('js-yaml')

const playbookFilename = fs.existsSync('antora-playbook-local.yml')  ? 'antora-playbook-local.yml' : 'antora-playbook.yml'
const playbook = yaml.safeLoad(fs.readFileSync(playbookFilename, 'utf8'))
const outputDir = process.env['SITE_DIR'] || (playbook.output || {}).dir || 'build/site'
const serverConfig = { name: 'Preview Site', livereload, port: 5000, root: outputDir }
const antoraArgs = ['--playbook', playbookFilename, '--extension', 'lunr-search', '--log-level', 'info']
const watchPatterns = playbook.content.sources.filter((source) => !source.url.includes(':')).reduce((accum, source) => {
  accum.push(`${source.url}/${source.start_path ? source.start_path + '/' : ''}antora.yml`)
  accum.push(`${source.url}/${source.start_path ? source.start_path + '/' : ''}**/*.adoc`)
  return accum
}, [])

function generate (done) {
  console.log(`Using: ${playbookFilename}`)
  generator(antoraArgs, process.env)
    .then(() => done())
    .catch((err) => {
      console.log(err)
      done()
    })
}

function serve (done) {
  connect.server(serverConfig, function () {
    this.server.on('close', done)
    watch(watchPatterns, generate)
    if (livereload) watch(this.root).on('change', (filepath) => src(filepath, { read: false }).pipe(livereload()))
  })
}

module.exports = { serve, generate, default: generate }

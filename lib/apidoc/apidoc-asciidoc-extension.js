'use strict'

const apidocsDir = 'endpoints'
const ospath = require('path')

function apidocAsciidocExtension() {
  this.process((parent, target, attributes) => {
    let basename = ''

    if(target.startsWith(':attachment$')) {
      basename = ospath.parse(target.replace(/^:attachment\$/, '')).name
    } else {
      basename = new URL(target.replace(/^:/, '')).hostname.replace(/\./g, '-')      
    }

    const ref = `${apidocsDir}/${basename}.adoc`
    const title = attributes['$positional'] ? attributes['$positional'].join() : basename

    console.debug(`Creating reference [${ref}].`)
    return basename ? `xref:${ref}[${title}]` : ''
  })
}

module.exports = (registry) => {
  console.debug("Adding inline macro processor for 'apidoc'")

  registry.inlineMacro('apidoc', apidocAsciidocExtension)
}

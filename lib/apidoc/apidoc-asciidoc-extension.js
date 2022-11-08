'use strict'

const fs = require('fs');
const apidocsDir = 'endpoints'

function apidocAsciidocExtension() {
  this.process((parent, target, attributes) => {
    let basename = ''

    if(target.startsWith(':attachment$')) {
      basename = target.replace(/^:attachment\$/, '').replace(/\.yaml$/, '')
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

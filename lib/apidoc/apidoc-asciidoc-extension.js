'use strict'

const fs = require('fs');
const apiDir = 'api'

function apidocAsciidocExtension() {
  this.process((parent, target, attributes) => {
    let basename = ''

    if(target.startsWith(':attachment$')) {
      basename = target.replace(/^:attachment\$/, '').replace(/\.yaml$/, '')
    } else {
      basename = new URL(target.replace(/^:/, '')).hostname.replace(/\./g, '-')      
    }

    const title = attributes['$positional'] ? attributes['$positional'].join() : basename

    return basename ? `xref:${apiDir}/${basename}.adoc[${title}]` : ''
  })
}

module.exports = (registry) => {
  registry.inlineMacro('apidoc', apidocAsciidocExtension)
}

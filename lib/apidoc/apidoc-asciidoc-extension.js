'use strict'

const fs = require('fs');
const apiDir = 'api'

function apidocAsciidocExtension() {
  this.process((parent, target, attributes) => {
    const basename = new URL(target.replace(/^:/, '')).hostname.replace(/\./g, '-')
    const link = attributes['$positional'] ? attributes['$positional'].join() : basename

    return `xref:${apiDir}/${basename}.adoc[${link}]`
  })
}

module.exports = (registry) => {
  registry.inlineMacro('apidoc', apidocAsciidocExtension)
}

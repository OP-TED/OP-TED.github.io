'use strict'

function algoliaAntoraExtension(context) {
    const logger = context.getLogger('algoliaAntoraExtension')

    logger.debug('Registering Antora extension functions')
}

module.exports.register = algoliaAntoraExtension

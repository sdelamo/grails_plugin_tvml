package org.grails.plugins.tvml

import groovy.transform.CompileStatic

@CompileStatic
class MediaItemUpdateCommand extends MediaItemCommand {
    Long id
    Long version
}

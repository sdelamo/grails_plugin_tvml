package org.grails.plugins.tvml

import grails.compiler.GrailsCompileStatic
import grails.transaction.Transactional

@GrailsCompileStatic
class MediaItemGormService {
    @SuppressWarnings('GrailsMassAssignment')
    @SuppressWarnings('FactoryMethodName')
    @Transactional(readOnly = true)
    MediaItem createMediaItem(Map params) {
        new MediaItem(params)
    }

    @Transactional(readOnly = true)
    MediaItem findById(RetrieveGormEntityCommand cmd) {
        MediaItem.get(cmd?.id)
    }

    @Transactional(readOnly = true)
    List list(Map params) {
        [MediaItem.list(params), MediaItem.count()]
    }

    @Transactional
    MediaItem save(MediaItemCommand cmd) {
        def mediaItem = new MediaItem()
        mediaItem.properties = cmd.properties
        mediaItem.save()
    }

    @Transactional
    MediaItem update(MediaItemUpdateCommand cmd) {
        MediaItem mediaItem = MediaItem.get(cmd.id)
        mediaItem.properties = cmd.properties
        mediaItem.save()
    }

    @Transactional
    void deleteById(Long id) {
        def mediaItem = MediaItem.get(id)
        mediaItem?.delete()
    }
}

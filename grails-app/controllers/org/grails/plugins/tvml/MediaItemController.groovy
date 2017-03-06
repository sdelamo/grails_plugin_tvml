package org.grails.plugins.tvml

import groovy.transform.CompileStatic
import groovy.transform.TypeCheckingMode

@CompileStatic
class MediaItemController {

    static namespace = 'tvml'

    static allowedMethods = [index: 'GET',
                             show: 'GET',
                             create: 'GET',
                             edit: 'GET',
                             save: 'POST',
                             update: 'PUT',
                             delete: 'DELETE']

    MediaItemGormService mediaItemGormService

    @CompileStatic(TypeCheckingMode.SKIP)
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def (l, total) = mediaItemGormService.list(params)
        respond l, model: [mediaItemCount: total]
    }

    def show(RetrieveGormEntityCommand cmd) {
        respond mediaItemGormService.findById(cmd)
    }

    @SuppressWarnings('FactoryMethodName')
    def create() {
        respond mediaItemGormService.createMediaItem(params)
    }

    def edit(RetrieveGormEntityCommand cmd) {
        respond mediaItemGormService.findById(cmd)
    }

    @CompileStatic(TypeCheckingMode.SKIP)
    def save(MediaItemCommand cmd) {
        if (cmd == null) {
            notFound()
            return
        }

        if (cmd.hasErrors()) {
            respond cmd.errors, model: [mediaItem: cmd], view: 'create'
            return
        }

        def mediaItem = mediaItemGormService.save(cmd)

        if ( mediaItem == null ) {
            notFound()
            return
        }

        if ( mediaItem.hasErrors() ) {
            respond mediaItem.errors, model: [mediaItem: mediaItem], view: 'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message',
                        args: [message(code: 'mediaItem.label',
                                default: 'MediaItem'), mediaItem.id])
                redirect mediaItem
            }
            '*' { respond mediaItem, [status: CREATED] }
        }
    }

    @CompileStatic(TypeCheckingMode.SKIP)
    def update(MediaItemUpdateCommand cmd) {
        if (cmd == null) {
            notFound()
            return
        }

        if (cmd.hasErrors()) {
            respond cmd.errors, model: [mediaItem: cmd], view: 'edit'
            return
        }

        def mediaItem = mediaItemGormService.update(cmd)

        if ( mediaItem == null) {
            notFound()
            return
        }

        if ( mediaItem.hasErrors() ) {
            respond mediaItem.errors, model: [mediaItem: mediaItem], view: 'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message',
                        args: [message(code: 'mediaItem.label',
                                default: 'MediaItem'), mediaItem.id])
                redirect mediaItem
            }
            '*' { respond mediaItem, [status: OK] }
        }
    }

    @CompileStatic(TypeCheckingMode.SKIP)
    def delete() {

        Long mediaItemId = params.long('id')

        if ( !mediaItemId ) {
            notFound()
            return
        }

        mediaItemGormService.deleteById(mediaItemId)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message',
                        args: [message(code: 'mediaItem.label',
                                default: 'MediaItem'), mediaItemId])
                redirect action: 'index', method: 'GET'
            }
            '*' { render status: NO_CONTENT }
        }
    }

    @CompileStatic(TypeCheckingMode.SKIP)
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message',
                        args: [message(code: 'mediaItem.label',
                                default: 'MediaItem'), params.id])
                redirect action: 'index', method: 'GET'
            }
            '*' { render status: NOT_FOUND }
        }
    }
}

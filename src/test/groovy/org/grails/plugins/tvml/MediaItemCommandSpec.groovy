package org.grails.plugins.tvml

import spock.lang.Specification

class MediaItemCommandSpec extends Specification {

    def "Title cannot be null"() {
        when:
        def mediaItem = new MediaItemCommand(title: null)

        then:
        !mediaItem.validate(['title'])
        mediaItem.errors['title'].code == 'nullable'
    }

    def "title cannot be blank"() {
        expect:
        !new MediaItemCommand(title: '').validate(['title'])
    }

    void "title can have a maximum of 255 characters"() {
        when: 'for a string of 256 characters'
        String str = ''
        256.times { str += 'a' }
        def mediaItem = new MediaItemCommand(title: str)

        then: 'title validation fails'
        !mediaItem.validate(['title'])
        mediaItem.errors['title'].code == 'maxSize.exceeded'

        when: 'for a string of 256 characters'
        str = ''
        255.times { str += 'a' }

        then: 'title validation passes'
        new MediaItemCommand(title: str).validate(['title'])
    }

    void "subtitle can have a maximum of 255 characters"() {
        when: 'for a string of 256 characters'
        String str = ''
        256.times { str += 'a' }
        def mediaItem = new MediaItemCommand(subtitle: str)

        then: 'subtitle validation fails'
        !mediaItem.validate(['subtitle'])
        mediaItem.errors['subtitle'].code == 'maxSize.exceeded'

        when: 'for a string of 256 characters'
        str = ''
        255.times { str += 'a' }

        then: 'subtitle validation passes'
        new MediaItemCommand(subtitle: str).validate(['subtitle'])
    }

    def "url can be null"() {
        expect:
        new MediaItemCommand(url: null).validate(['url'])
    }

    def "description can be null"() {
        expect:
        new MediaItemCommand(description: null).validate(['description'])
    }

    def "subtitle can be null"() {
        expect:
        new MediaItemCommand(subtitle: null).validate(['subtitle'])
    }

    def "url can have a maximum of 255 characters"() {
        when: 'for a string of 256 characters'
        String urlprefifx = 'http://'
        String urlsufifx = '.com'
        String str = ''
        (256 - (urlprefifx.size() + urlsufifx.size())).times { str += 'a' }
        str = urlprefifx + str + urlsufifx
        def mediaItem = new MediaItemCommand(url: str)

        then: 'url validation fails'
        !mediaItem.validate(['url'])
        mediaItem.errors['url'].code == 'maxSize.exceeded'

        when: 'for a string of 256 characters'
        str = ''
        (255 - (urlprefifx.size() + urlsufifx.size())).times { str += 'a' }
        str = urlprefifx + str + urlsufifx

        then: 'url validation passes'
        new MediaItemCommand(url: str).validate(['url'])
    }

    def "artworkImageURL can be null"() {
        expect:
        new MediaItemCommand(artworkImageURL: null).validate(['artworkImageURL'])
    }

    def "type should be either audio or video"() {
        expect:
        expected == new MediaItemCommand(type: type).validate(['type'])

        where:
        type     || expected
        'audio'  || true
        'video'  || true
        'tvshow' || false
    }

    def "artworkImageURL can have a maximum of 255 characters"() {
        when: 'for a string of 256 characters'
        String urlprefifx = 'http://'
        String urlsufifx = '.com'
        String str = ''
        (256 - (urlprefifx.size() + urlsufifx.size())).times { str += 'a' }
        str = urlprefifx + str + urlsufifx
        def mediaItem = new MediaItemCommand(artworkImageURL: str)

        then: 'url validation fails'
        !mediaItem.validate(['artworkImageURL'])
        mediaItem.errors['artworkImageURL'].code == 'maxSize.exceeded'

        when: 'for a string of 256 characters'
        str = ''
        (255 - (urlprefifx.size() + urlsufifx.size())).times { str += 'a' }
        str = urlprefifx + str + urlsufifx

        then: 'url validation passes'
        new MediaItemCommand(artworkImageURL: str).validate(['artworkImageURL'])
    }
}

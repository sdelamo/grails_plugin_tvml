package org.grails.plugins.tvml

import grails.compiler.GrailsCompileStatic

@SuppressWarnings('LineLength')
@GrailsCompileStatic
class MediaItem {

    String artworkImageURL

    String description

    String subtitle

    String title

    String type

    String url

    Integer durationMinutes

    Integer durationSeconds

    Integer releaseYear

    boolean closedCaptioning = false

    boolean highDefinition = false

    BrazilMovieRating brazilMovieRating = BrazilMovieRating.UNDEFINED

    NewZealandMovieRating newZealandMovieRating = NewZealandMovieRating.UNDEFINED

    UnitedKingdomMovieRating unitedKingdomMovieRating = UnitedKingdomMovieRating.UNDEFINED

    UnitedStatesMovieRating unitedStatesMovieRating = UnitedStatesMovieRating.UNDEFINED

    UnitedStatesTelevisionContentRating unitedStatesTelevisionContentRating = UnitedStatesTelevisionContentRating.UNDEFINED

    RottenTomatoRating rottenTomatoRating = RottenTomatoRating.UNDEFINED

    static hasMany = [videoEditors: String, videographers: String, musicCredits: String]

    static constraints = {
        title nullable: false, blank: false, maxSize: 255
        subtitle nullable: true, maxSize: 255
        description nullable: true
        artworkImageURL nullable: true, url: true, maxSize: 255
        url nullable: true, url: true, maxSize: 255
        closedCaptioning default: false
        highDefinition default: false
        durationMinutes nullable: false
        durationSeconds nullable: false
        releaseYear nullable: false
        type inList: ['audio', 'video']
    }

    static mapping = {
        description type: 'text'
    }
}

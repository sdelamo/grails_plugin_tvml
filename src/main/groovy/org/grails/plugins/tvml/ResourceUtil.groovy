package org.grails.plugins.tvml

import groovy.transform.CompileStatic

@CompileStatic
class ResourceUtil {

    static String resourceNameForRottenTomatoRating(RottenTomatoRating obj) {
        if ( obj == RottenTomatoRating.SPLAT) { return 'tomato-splat' }
        if ( obj == RottenTomatoRating.FRESH ) { return 'tomato-fresh' }
        if ( obj == RottenTomatoRating.CERTIFIED ) { return 'tomato-certified' }
        null
    }

    static String resourceNameForBrazilMovieRating(BrazilMovieRating obj) {
        if ( obj == BrazilMovieRating.L) { return 'bars-l' }
        if ( obj == BrazilMovieRating.TEN ) { return 'bars-10' }
        if ( obj == BrazilMovieRating.TWELVE ) { return 'bars-12' }
        if ( obj == BrazilMovieRating.FOURTEEN ) { return 'bars-14' }
        if ( obj == BrazilMovieRating.SIXTEEN ) { return 'bars-16' }
        if ( obj == BrazilMovieRating.EIGHTEEN ) { return 'bars-18' }
        null
    }

    static String resourceNameForUnitedKingdomMovieRating(UnitedKingdomMovieRating obj) {
        if ( obj == UnitedKingdomMovieRating.U) { return 'bbfc-u' }
        if ( obj == UnitedKingdomMovieRating.PG ) { return 'bbfc-pg' }
        if ( obj == UnitedKingdomMovieRating.TWELVE ) { return 'bbfc-12' }
        if ( obj == UnitedKingdomMovieRating.TWELVE_A ) { return 'bbfc-12a' }
        if ( obj == UnitedKingdomMovieRating.FIFTEEN ) { return 'bbfc-15' }
        if ( obj == UnitedKingdomMovieRating.EIGHTTEEN ) { return 'bbfc-18' }
        if ( obj == UnitedKingdomMovieRating.R_18 ) { return 'bbfc-r18' }
        null
    }

    static String resourceNameForNewZealandMovieRating(NewZealandMovieRating obj) {
        if (obj == NewZealandMovieRating.G) {
            return 'NZ-g'
        }
        if (obj == NewZealandMovieRating.PG) {
            return 'NZ-pg'
        }
        if (obj == NewZealandMovieRating.M) {
            return 'NZ-m'
        }
        if (obj == NewZealandMovieRating.RESTRICTED_13) {
            return 'NZ-r13'
        }
        if (obj == NewZealandMovieRating.RESTRICTED_15) {
            return 'NZ-r15'
        }
        if (obj == NewZealandMovieRating.RESTRICTED_16) {
            return 'NZ-r16'
        }
        if (obj == NewZealandMovieRating.RESTRICTED_18) {
            return 'NZ-r18'
        }
        if (obj == NewZealandMovieRating.RP_13) {
            return 'NZ-rp13'
        }
        if (obj == NewZealandMovieRating.RP_16) {
            return 'NZ-rp16'
        }
        if (obj == NewZealandMovieRating.RESTRICED_R) {
            return 'NZ-r'
        }
        null
    }

    static String badgeXMLForResourceName(String resourceName) {
        "<badge src=\"resource://${resourceName}\" class=\"badge\" />" as String
    }

    static String resourceNameForUnitedStatesMovieRating(UnitedStatesMovieRating obj) {
        if ( obj == UnitedStatesMovieRating.G) { return 'mpaa-g' }
        if ( obj == UnitedStatesMovieRating.PG ) { return 'mpaa-pg' }
        if ( obj == UnitedStatesMovieRating.PG13 ) { return 'mpaa-pg13' }
        if ( obj == UnitedStatesMovieRating.R ) { return 'mpaa-r' }
        if ( obj == UnitedStatesMovieRating.NC17 ) { return 'mpaa-nc17' }
        if ( obj == UnitedStatesMovieRating.UNRATED ) { return 'unrated' }
        if ( obj == UnitedStatesMovieRating.NOTRATED ) { return 'nr' }
        null
    }

    static String resourceNameForUnitedStatesTelevisionContentRating(UnitedStatesTelevisionContentRating obj) {

        if ( obj == UnitedStatesTelevisionContentRating.TV_Y ) { return 'tv-y' }
        if ( obj == UnitedStatesTelevisionContentRating.TV_Y7 ) { return 'tv-y7' }
        if ( obj == UnitedStatesTelevisionContentRating.TV_Y7FV ) { return 'tv-y7fv' }
        if ( obj == UnitedStatesTelevisionContentRating.TV_14 ) { return 'tv-14' }
        if ( obj == UnitedStatesTelevisionContentRating.TV_G ) { return 'tv-g' }
        if ( obj == UnitedStatesTelevisionContentRating.TV_PG ) { return 'tv-pg' }
        if ( obj == UnitedStatesTelevisionContentRating.TV_MA ) { return 'tv-ma' }

        null
    }
}

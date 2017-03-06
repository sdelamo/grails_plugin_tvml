<div id="badges">

    <g:if test="${mediaItem?.brazilMovieRating}">
        <g:render template="brazilMovieRatingBadge" model="${[rating: mediaItem.brazilMovieRating]}"/>
    </g:if>

    <g:if test="${mediaItem?.newZealandMovieRating}">
        <g:render template="newZealandMovieRatingBadge" model="${[rating: mediaItem.newZealandMovieRating]}"/>
    </g:if>

    <g:if test="${mediaItem?.brazilMovieRating}">
        <g:render template="brazilMovieRatingBadge" model="${[rating: mediaItem.brazilMovieRating]}"/>
    </g:if>

    <g:if test="${mediaItem?.unitedKingdomMovieRating}">
        <g:render template="unitedKingdomMovieRatingBadge" model="${[rating: mediaItem.unitedKingdomMovieRating]}"/>
    </g:if>

    <g:if test="${mediaItem?.unitedStatesMovieRating}">
        <g:render template="unitedStatesMovieRatingBadge" model="${[rating: mediaItem.unitedStatesMovieRating]}"/>
    </g:if>

    <g:if test="${mediaItem?.unitedStatesTelevisionContentRating}">
        <g:render template="unitedStatesTelevisionContentRatingBadge" model="${[rating: mediaItem.unitedStatesTelevisionContentRating]}"/>
    </g:if>

    <g:if test="${mediaItem?.rottenTomatoRating}">
        <g:render template="rottenTomatoesRatingBadge" model="${[rating: mediaItem.rottenTomatoRating]}"/>
    </g:if>

    <g:if test="${mediaItem?.closedCaptioning}">
        <asset:image src="tvml/cc_hires_2x.png" height="30" />
    </g:if>

    <g:if test="${mediaItem?.highDefinition}">
        <asset:image src="tvml/hd_hires_2x.png" height="30" />
    </g:if>
</div>
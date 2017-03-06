<%@ page import="org.grails.plugins.tvml.UnitedKingdomMovieRating" %>
<div class="fieldcontain">

    <label for="unitedKingdomMovieRating"><g:message code="unitedKingdomMovieRating.label"/></label>
    <ol>
        <g:each in="${[UnitedKingdomMovieRating.UNDEFINED,
                       UnitedKingdomMovieRating.U,
                       UnitedKingdomMovieRating.PG,
                       UnitedKingdomMovieRating.TWELVE,
                       UnitedKingdomMovieRating.TWELVE_A,
                       UnitedKingdomMovieRating.FIFTEEN,
                       UnitedKingdomMovieRating.EIGHTTEEN,
                       UnitedKingdomMovieRating.R_18]}" var="rating">
            <li>
                <g:if test="${rating == mediaItem.unitedKingdomMovieRating}">
                    <input type="radio" name="unitedKingdomMovieRating" value="${rating}" checked="checked" />
                </g:if>
                <g:else>
                    <input type="radio" name="unitedKingdomMovieRating" value="${rating}" />
                </g:else>


                <g:if test="${rating == UnitedKingdomMovieRating.UNDEFINED}">
                    <g:message code="unitedKingdomMovieRating.undefined.label" default="Undefined"/>

                </g:if>
                <g:render template="unitedKingdomMovieRatingBadge" model="${[rating: rating]}"/>
            </li>

        </g:each>
    </ol>
</div>
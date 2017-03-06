<%@ page import="org.grails.plugins.tvml.UnitedStatesMovieRating" %>
<div class="fieldcontain">

    <label for="unitedStatesMovieRating"><g:message code="unitedStatesMovieRating.label"/></label>
    <ol>

        <g:each in="${[UnitedStatesMovieRating.UNDEFINED,
                       UnitedStatesMovieRating.G,
                       UnitedStatesMovieRating.PG,
                       UnitedStatesMovieRating.PG13,
                       UnitedStatesMovieRating.R,
                       UnitedStatesMovieRating.NC17,
                       UnitedStatesMovieRating.UNRATED,
                       UnitedStatesMovieRating.NOTRATED]}" var="rating">
            <li>
                <g:if test="${rating == mediaItem.unitedStatesMovieRating}">
                    <input type="radio" name="unitedStatesMovieRating" value="${rating}" checked="checked" />
                </g:if>
                <g:else>
                    <input type="radio" name="unitedStatesMovieRating" value="${rating}" />
                </g:else>


                <g:if test="${rating == UnitedStatesMovieRating.UNDEFINED}">
                    <g:message code="unitedStatesMovieRating.undefined.label" default="Undefined"/>

                </g:if>
                <g:render template="unitedStatesMovieRatingBadge" model="${[rating: rating]}"/>
            </li>

        </g:each>
    </ol>
</div>
<%@ page import="org.grails.plugins.tvml.BrazilMovieRating" %>
<div class="fieldcontain">

    <label for="brazilMovieRating"><g:message code="brazilMovieRating.label"/></label>
    <ol>
        <g:each in="${[BrazilMovieRating.UNDEFINED,
                       BrazilMovieRating.L,
                       BrazilMovieRating.TEN,
                       BrazilMovieRating.TWELVE,
                       BrazilMovieRating.FOURTEEN,
                       BrazilMovieRating.SIXTEEN,
                       BrazilMovieRating.EIGHTEEN]}" var="rating">
            <li>

                <g:if test="${rating == mediaItem.brazilMovieRating}">
                    <input type="radio" name="brazilMovieRating" value="${rating}" checked="checked" />
                </g:if>
                <g:else>
                    <input type="radio" name="brazilMovieRating" value="${rating}" />
                </g:else>



                <g:if test="${rating == BrazilMovieRating.UNDEFINED}">
                    <g:message code="brazilMovieRating.undefined.label" default="Undefined"/>

                </g:if>

                <g:render template="brazilMovieRatingBadge" model="${[rating: rating]}"/>
            </li>

        </g:each>
    </ol>
</div>
<%@ page import="org.grails.plugins.tvml.RottenTomatoRating" %>
<div class="fieldcontain">

    <label for="rottenTomatoRating"><g:message code="rottenTomatoRating.label"/></label>
    <ol>
        <g:each in="${[RottenTomatoRating.UNDEFINED,
                       RottenTomatoRating.SPLAT,
                       RottenTomatoRating.FRESH,
                       RottenTomatoRating.CERTIFIED]}" var="rating">
            <li>

                <g:if test="${rating == mediaItem.rottenTomatoRating}">
                    <input type="radio" name="rottenTomatoRating" value="${rating}" checked="checked" />
                </g:if>
                <g:else>
                    <input type="radio" name="rottenTomatoRating" value="${rating}" />
                </g:else>
                <g:if test="${rating == RottenTomatoRating.UNDEFINED}">
                    <g:message code="rottenTomatoRating.undefined.label" default="Undefined"/>
                </g:if>
                <g:render template="rottenTomatoesRatingBadge" model="${[rating: rating]}"/>
            </li>
        </g:each>
    </ol>
</div>
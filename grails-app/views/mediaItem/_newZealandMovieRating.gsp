<%@ page import="org.grails.plugins.tvml.NewZealandMovieRating" %>
<div class="fieldcontain">

    <label for="newZealandMovieRating"><g:message code="newZealandMovieRating.label"/></label>
    <ol>
        <g:each in="${[NewZealandMovieRating.UNDEFINED,
                       NewZealandMovieRating.G,
                       NewZealandMovieRating.PG,
                       NewZealandMovieRating.M,
                       NewZealandMovieRating.RESTRICTED_13,
                       NewZealandMovieRating.RESTRICTED_15,
                       NewZealandMovieRating.RESTRICTED_16,
                       NewZealandMovieRating.RESTRICTED_18,
                       NewZealandMovieRating.RP_13,
                       NewZealandMovieRating.RP_16,
                       NewZealandMovieRating.RESTRICED_R]}" var="rating">
            <li>
                <g:if test="${rating == mediaItem.newZealandMovieRating}">
                    <input type="radio" name="newZealandMovieRating" value="${rating}" checked="checked" />
                </g:if>
                <g:else>
                    <input type="radio" name="newZealandMovieRating" value="${rating}" />
                </g:else>


                <g:if test="${rating == NewZealandMovieRating.UNDEFINED}">
                    <g:message code="newZealandMovieRating.undefined.label" default="Undefined"/>

                </g:if>
                <g:render template="newZealandMovieRatingBadge" model="${[rating: rating]}"/>
            </li>

        </g:each>
    </ol>
</div>
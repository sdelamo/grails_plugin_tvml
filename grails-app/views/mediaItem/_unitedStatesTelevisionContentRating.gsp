<%@ page import="org.grails.plugins.tvml.UnitedStatesTelevisionContentRating" %>
<div class="fieldcontain">

    <label for="unitedStatesTelevisionContentRating"><g:message code="unitedStatesTelevisionContentRating.label"/></label>
    <ol>
        <g:each in="${[UnitedStatesTelevisionContentRating.UNDEFINED,
                       UnitedStatesTelevisionContentRating.TV_Y,
                       UnitedStatesTelevisionContentRating.TV_Y7,
                       UnitedStatesTelevisionContentRating.TV_Y7FV,
                       UnitedStatesTelevisionContentRating.TV_14,
                       UnitedStatesTelevisionContentRating.TV_G,
                       UnitedStatesTelevisionContentRating.TV_PG,
                       UnitedStatesTelevisionContentRating.TV_MA]}" var="rating">
            <li>
                <g:if test="${rating == mediaItem.unitedStatesTelevisionContentRating}">
                    <input type="radio" name="unitedStatesTelevisionContentRating" value="${rating}" checked="checked" />
                </g:if>
                <g:else>
                    <input type="radio" name="unitedStatesTelevisionContentRating" value="${rating}" />
                </g:else>
                <g:if test="${rating == UnitedStatesTelevisionContentRating.UNDEFINED}">
                    <g:message code="unitedStatesTelevisionContentRating.undefined.label" default="Undefined"/>
                </g:if>
            </li>
            <g:render template="unitedStatesTelevisionContentRatingBadge" model="${[rating: rating]}"/>
        </g:each>
    </ol>
</div>
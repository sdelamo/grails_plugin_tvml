<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'mediaItem.label', default: 'Hotel')}" />
    <title><g:message code="mediaItem.create.label" default="Create Media Item" /></title>
    <asset:stylesheet src="trix/trix.css"/>
</head>
<body>
<a href="#create-mediaItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="mediaItem.list.label" default="Media Item List" /></g:link></li>
    </ul>
</div>
<div id="create-mediaItem" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.mediaItem}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.mediaItem}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form action="save">
        <fieldset class="form">

            <f:field bean="mediaItem" property="title"/>

            <f:field bean="mediaItem" property="durationMinutes"/>

            <f:field bean="mediaItem" property="durationSeconds"/>

            <f:field bean="mediaItem" property="releaseYear"/>

            <f:field bean="mediaItem" property="subtitle"/>

            <f:field bean="mediaItem" property="description"/>

            <f:field bean="mediaItem" property="type"/>

            <f:field bean="mediaItem" property="artworkImageURL"/>

            <f:field bean="mediaItem" property="url"/>

            <f:field bean="mediaItem" property="highDefinition"/>

            <f:field bean="mediaItem" property="closedCaptioning"/>

            <g:render template="brazilMovieRating" model="${mediaItem}"/>

            <g:render template="newZealandMovieRating" model="${mediaItem}"/>

            <g:render template="unitedKingdomMovieRating" model="${mediaItem}"/>

            <g:render template="unitedStatesMovieRating" model="${mediaItem}"/>

            <g:render template="unitedStatesTelevisionContentRating" model="${mediaItem}"/>

            <g:render template="rottenTomatoesRating" model="${mediaItem}"/>


        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</div>
<asset:javascript src="trix/trix.js"/>
</body>
</html>

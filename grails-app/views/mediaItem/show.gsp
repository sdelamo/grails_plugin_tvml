<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'mediaItem.label', default: 'MediaItem')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-mediaItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="mediaItem.list.label" default="Media Item List" /></g:link></li>
    </ul>
</div>
<div id="show-mediaItem" class="content scaffold-show" role="main" style="padding: 1em;">
    <h1><f:display bean="mediaItem" property="title" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <g:render template="badges" model="${[mediaItem: mediaItem]}"/>

    <g:if test="${mediaItem?.type}">
        <b><g:message code="mediaItem.type.label"/></b>: <f:display bean="mediaItem" property="type" /><br/>
    </g:if>

    <g:if test="${mediaItem?.artworkImageURL}">
        <b><g:message code="mediaItem.artworkImageURL.label"/></b>: <f:display bean="mediaItem" property="artworkImageURL" /><br/>
    </g:if>

    <g:if test="${mediaItem?.subtitle}">
        <b><g:message code="mediaItem.subtitle.label"/></b>: <f:display bean="mediaItem" property="subtitle" /><br/>
    </g:if>

    <g:if test="${mediaItem?.description}">
        <b><g:message code="mediaItem.description.label"/></b>: <f:display bean="mediaItem" property="description" /><br/>
    </g:if>

    <g:form resource="${this.mediaItem}" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${this.mediaItem}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>

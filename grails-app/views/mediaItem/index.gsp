<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'mediaItem.label', default: 'MediaItem')}" />
    <title><g:message code="mediaItem.list.label" default="Media Item List" /></title>
</head>
<body>
<a href="#list-mediaItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>
<div id="list-mediaItem" class="content scaffold-list" role="main">
    <h1><g:message code="mediaItem.list.label" default="Media Item List" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <f:table collection="${mediaItemList}" properties="['title']"/>
    <b><g:message code="pagination.total" default="Total"/></b>: ${mediaItemCount ?: 0}<br/>
    <g:if test="${(mediaItemCount ?: 0) > (mediaItemList?.size() ?: 0)}">
        <div class="pagination">
            <g:paginate total="${mediaItemCount ?: 0}" />
        </div>
    </g:if>
</div>
<div class="nav" role="navigation">
    <ul>
        <li><g:link class="create" action="create"><g:message code="mediaItem.new.label" default="Create Media Item" /></g:link></li>
    </ul>
</div>
</body>
</html>
<%@ page import="com.intelligrape.Comment" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'comment.label', default: 'Content')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <g:javascript plugin="remote-pagination" library="remoteNonStopPageScroll"/>
    <style type="text/css">
    .commentdate {
        border-bottom: 1px solid #D7D7D7;
        color: #999999;
        font-weight: normal;

    }

    .text {
        font-size: 11px;
    }

    .moreLink {
        display: block !important;
        font-size: 13px;
        padding: 5px 10px 4px;
        text-align: center;
        cursor: pointer;
        border-color: #CCC;
        background: #ECECEC;
    }

    .paginateButtons, .paginateButtons:hover {
        width: 94%;
        /*background: #ECECEC;*/
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0, white), color-stop(100%, #ECECEC));
        border-color: #CCC;
        color: #585858 !important;
        border-width: 1px;
        border-style: solid;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
        border-radius: 3px;
        font-size: 12px;
        line-height: 1.35;
        margin: 0;
        overflow: visible;
        padding: 3px 10px 2px;
        text-decoration: none !important;
        vertical-align: top;
    }
    </style>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
    <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label"
                                                                               args="[entityName]"/></g:link></span>
</div>

<div class="body">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <div class="list" id="content">
        <g:render template="filter"/>
    </div>
    <div id="loadingDivId" style="display: none;"><img src="${resource(dir:'images', file:'loading.png')}" alt=""/></div>
</div>
</body>
</html>

<%@ page import="com.manifest.corp.Posts;"%>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<fieldset class="form">
    <g:form action="index" method="GET">
        <div class="fieldcontain">
            <g:textField name="query" value="${params.query}" placeholder="Search for posts" stlye="margin-left: 85%;"/>
        </div>
    </g:form>
</fieldset>
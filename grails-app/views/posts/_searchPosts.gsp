<%@ page import="com.manifest.corp.Posts;"%>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<fieldset class="form">
    <g:form action="index" method="GET">
        <div class="fieldcontain">
            <label for="query">Search for posts:</label>
            <g:textField name="query" value="${params.query}"/>
        </div>
    </g:form>
</fieldset>
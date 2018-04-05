<%@ page import="com.manifest.corp.Posts; com.manifest.corp.Comments" %>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'posts.label', default: 'Posts')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        <style>
        h3{
            color: #1bf0ff;
            text-align: center;
        }
        a.create{
            display: block;
            margin-right: auto;
            color: #000000;
            background-color: #1bf0ff;
        }
        </style>
        <g:javascript library="jquery"/>
    </head>
    <body>
        <a href="#show-posts" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div id="show-posts" class="content scaffold-show" role="main">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="portalLink">
                <h1 id="title"><b><u>${posts.title}</u></b></h1>
                <h2 id="author">By: ${posts.author}</h2>
                <h3 id="body">${posts.postText}</h3>

                        <g:render template="/comments/commentsEntry" bean="${this.posts}"/>


            </div>
            <sec:ifAnyGranted roles="ROLE_BLOGGER">
                <g:form resource="${this.posts}" method="DELETE">
                    <fieldset class="buttons">
                        <g:link class="edit" action="edit" resource="${this.posts}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </fieldset>
                </g:form>
            </sec:ifAnyGranted>
        </div>

    </body>
</html>

<!DOCTYPE html>
<html>
    <head>
        <style>
            input[type=text]{
                width: 100%;
            }

            textarea{
                width: 100%;
                height: 300px;
                resize: none;
                opacity: .8;
            }

            textarea#author, textarea#title{
                width: 80%;
                height: 35px;
                resize: none;
                opacity: .6;

            }
        </style>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'posts.label', default: 'Posts')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-posts" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-posts" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.posts}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.posts}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.posts}" method="POST">
                <fieldset class="form">
                    <div class="portalLink">
                    <label>Post Title</label><br>
                    <g:textArea name="title" id="title"/><br>
                    <label>Post Author</label><br>
                    <g:textArea name="author" id="author"/><br>
                    <label>Post Content</label><br>
                    <g:textArea name="postText" id="postText" columns="40"/>
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>

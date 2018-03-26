<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'posts.label', default: 'Posts')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
        <style>
        textarea {
            width: 100%;
            padding: 10px;
            max-width: 100%;
            height: 850px;
            line-height: 24px;
            border-radius: 30px;
        }

        </style>
    </head>
<script>
    function do_resize(textbox) {

        var maxrows=5;
        var txt=textbox.value;
        var cols=textbox.cols;

        var arraytxt=txt.split('\n');
        var rows=arraytxt.length;

        for (i=0;i<arraytxt.length;i++)
            rows+=parseInt(arraytxt[i].length/cols);

        if (rows>maxrows) textbox.rows=maxrows;
        else textbox.rows=rows;
    }
</script>
    <body>
        <a href="#edit-posts" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-posts" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
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
                <g:hiddenField name="version" value="${this.posts?.version}" />
                <fieldset class="form">
                    <g:textArea name="postText" id="postText" value="${posts.postText}"/>

                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>

</html>

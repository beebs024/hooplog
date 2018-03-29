<%@ page import="com.manifest.corp.Posts; com.manifest.corp.Comments" %>
<g:form controller="comments" action="save" name="commentsForm">
    <g:hiddenField name="postId" value="${posts.id}"/>
    <div class="row" id="nameInput">
        %{--<label class="col-md-1 col-md-offset-3">Name:</label>
        <g:textField class="col-md-2 " name="name"/>--}%
    </div>

    <div class="row" id="commenterName">
        <g:hiddenField name="commenter" value="${sec.username()}"/>
    </div>

    <div id="commentInput">
        <label>Comment:</label>
        <g:textArea name="commentText" id="commentText"/>
    </div>

    <br><div id="submitButton">
        <g:submitButton class="btn btn-primary" name="create" id="save"
                        value="${message(code: 'default.button.create.label', default: 'Create')}"/>
    </div>
</g:form>
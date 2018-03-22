<%@ page import="com.manifest.corp.Posts; com.manifest.corp.Comments" %>
<g:form controller="comments" action="save" name="commentsForm">
    <g:hiddenField name="postId" value="${posts.id}"/>
    <div class="row" id="nameInput">
        %{--<label class="col-md-1 col-md-offset-3">Name:</label>
        <g:textField class="col-md-2 " name="name"/>--}%
    </div>

    <div class="row" id="commentInput">
        <label class="col-md-1 col-md-offset-3">Comment:</label>
        <g:textArea name="comment" id="CommentText"/>
    </div>

    <div class="row" id="submitButton">
        <g:submitButton class="col-md-1 col-md-offset-4 btn btn-primary" name="create" id="save"
                        value="${message(code: 'default.button.create.label', default: 'Create')}"/>
    </div>
</g:form>
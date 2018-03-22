<asset:javascript src="jquery-2.2.0.min.js"/>
<%@ page import="com.manifest.corp.Posts; com.manifest.corp.Comments" %>
<div class="col-md-3">
    <div class="btn btn-default btn-success" id="displayCommentTextBox">Post A Comment</div>
</div>

<div class="col-md-12" id="commentSection" style="display: none">
    <g:render template="/comments/commentsForm" bean="${com.manifest.corp.Posts}" var="Post"/>
</div>
<ul id="commentList"></ul>

<script type="text/javascript">
    $(function () {
        $("#displayCommentTextBox").click(function (evt) {
            $("#commentSection").toggle()
        });
        var updateCommentList = function () {
            $.ajax({
                data: "postId=${id}",
                url: '<g:createLink action="list" controller="comments"/>',
                success: function (data) {
                    $("#commentSection").slideUp();
                    $("#commentList").html("");
                    $.each(data, function () {
                        $("#commentList").append("<li class='commentItem col-md-8 col-md-offset-2 commentItem'>" +
                            "<div><span class='dataComment'>" + this.dateCreated + "</span></div>" +
                            "<span>" + this.comment + "</span></li>").slideDown()
                    });
                }

            })
        };
        updateCommentList();

        $("#commentsForm").submit(function (evt) {
            var $form = $(this);

            $.ajax({
                data: $form.serialize(),
                url: $form.attr("action"),
                type: $form.attr("method"),
                success: function (data) {
                    if (data.success) {
                        updateCommentList();
                    }
                },
            })
            return false;
        });
    });
</script>

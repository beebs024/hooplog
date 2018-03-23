<asset:javascript src="jquery-2.2.0.min.js"/>
<%@ page import="com.manifest.corp.Posts; com.manifest.corp.Comments" %>
<div>
    <div class="btn btn-default btn-success" id="displayCommentTextBox">Post A Comment</div>
</div>

<div id="commentSection" style="display: none">
    <g:render template="/comments/commentsForm" bean="${com.manifest.corp.Posts}" var="Post"/>
</div><br>

%{--<ul id="commentList">
        <g:findAll in="${Comments}" expr="postId==posts.id">
            ${it.commentText}<br><br>
        </g:findAll>
</ul>--}%
<ul id="commentsList">

</ul>
<script type="text/javascript">
    $(function () {
        $("#displayCommentTextBox").on("click",function() {
            $("#commentSection").toggle()
        });
        var updateCommentList = function () {
            $.ajax({
                data: "postId=${posts.id}",
                url: '<g:createLink action="list" controller="comments"/>',
                success: function (data) {
                    $("#commentSection").slideUp();
                    $("#commentsList").html("");
                    $.each(data, function () {
                        $("#commentsList").append("<li>" +
                            "<div><span class='dataComment'>" + this.datePosted + "</span></div>" +
                            "<span>" + this.commentText + "</span></li>").slideDown()
                    });
                }

            })
        };
        updateCommentList();

        $("#commentsForm").on("submit",function() {
            var $form = $(this);

            $.ajax({
                data: $form.serialize(),
                url: $form.attr("action"),
                type: $form.attr("method"),
                success: function (data) {
                    if (data) {
                        updateCommentList();
                    }
                },
            })
            return false;
        });
    });
</script>

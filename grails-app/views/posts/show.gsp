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
        button#HideComments, button#HideNewCommentBlock, button#addComment{
                border-radius: 15px;
                padding: 5px;
            }
        #commentsArea{
            padding: 5px;
            color: #000000;
            }

        #postedComments{
            padding: 5px;
            color: #1bf0ff;
            }

        </style>
        <g:javascript library="jquery"/>
    </head>
    <body>
        <a href="#show-posts" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-posts" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="portalLink">
                <h1><b><u>${posts.title}</u></b></h1>
                <h2>By: ${posts.author}</h2>
                <h3>${posts.postText}</h3>

                <button onclick="hideComments()" id="HideComments">Hide/Show Comments</button>
                <div id="commentsArea" style="display: none;">

                    <button onclick="hideNewCommentBox()" id="HideNewCommentBlock">New Comment</button>
                        <div id="newCommentBox" style="display: none;">
                            <g:render template="/comments/commentsEntry" bean="${this.posts}"/>
                        </div>
                    <div id="postedComments">
                    <g:findAll in="${Comments}" expr="postId==posts.id">
                            <ul>
                                ${it.commentText}<br>
                            </ul>


                    </g:findAll>

                    </div>
                </div>
            </div>

            <g:form resource="${this.posts}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.posts}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
        <script>
            function hideComments() {
                var x = document.getElementById("commentsArea");
                if (x.style.display === "none") {
                    x.style.display = "block";
                } else {
                    x.style.display = "none";
                }
            }

            function hideNewCommentBox(){
                var x = document.getElementById("newCommentBox");
                if (x.style.display === "none") {
                    x.style.display = "block";
                } else {
                    x.style.display = "none";
                }
            }
        </script>
    <script type="text/javascript">
        $(function(){
            var updateCommentList = function(){
                $.ajax({
                    data: "postId=${posts.id}",
                    url : 'jdbc:mysql://localhost:3306/blog',
                    success: function(data){
                        $("#commentsArea").slideUp();
                        $("#commentList").html("")
                        $.each(data, function(){
                            $("#commentList").append("<li><div><span class='nameComment'>" + this.name + "</span</div></li>").slideDown()
                        });
                    }
                })
            }

            $("#commentsArea, #commentList").hide()
            updateCommentList();

            $("#addComment").click(function(evt){
                evt.preventDefault()
                $("#commentMessage, #commentErrors").html("").hide()
               $("#commentsArea form")[0].reset()
                $("#commentsArea").slideDown()
            });
            $("#commentSaveForm").submit(function(evt){
                $("#commentMessage, #commentErrors").html("").hide()

                var $form = $(this)
                $.ajax({
                    data: $form.serialize(),
                    url : $form.attr("action"),
                    type: $form.attr("method"),
                    success: function(data){
                        if(data.success){
                            $("#commentMessage").text(data.message).show()
                            updateCommentList();
                        }else{
                            $.each(data.errors.errors, function(){
                                $("#commentErrors").append("<li>" + this.message + "</li>").show()
                            })
                        }
                    }
                });
                return false;
            });
        });
    </body>
</html>

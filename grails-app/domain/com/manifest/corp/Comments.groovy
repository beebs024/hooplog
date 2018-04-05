package com.manifest.corp

class Comments {

    String commentText
    String postId
    String datePosted = new Date().format("yyyy-MM-dd HH:mm:ss")
    String commenter

    static belongsTo = Posts

    static mapping = {
        table 'comments'
        version false
        commentText column: 'Comment_Text'
        postId column: 'Post_ID'
        sort datePosted: "desc"
    }

    static constraints = {
    }
}

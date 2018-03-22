package com.manifest.corp

class Comments {

    String commentText
    String postId
    Date datePosted = new Date()


    static belongsTo = Posts

    static mapping = {
        table 'comments'
        version false
        commentText column: 'Comment_Text'
        postId column: 'Post_ID'
        sort datePosted: "asc"
    }

    static constraints = {
    }
}

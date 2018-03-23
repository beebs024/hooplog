package com.manifest.corp

class Posts {
    String title
    String postText
    String author
    public String postId
    Date datePosted = new Date()

    static hasMany = [comments: Comments]

    static mapping = {
        table 'posts'
        version false
        id column: 'Comment_ID'
        title column: 'Post_Title'
        postText column: 'Post_Text', sqlType: 'TEXT'
        postId column: 'Post_ID'
    }

    static constraints = {
        postText(blank:false)
        postId(display:false)
    }
}

package com.manifest.corp

class User {

    String firstName
    String lastName
    String username
    String userId = UUID.randomUUID().toString()
    String password

    static mapping = {
        table 'user'
        version false
        firstName column: 'First_Name'
        lastName column: 'Last_Name'
        username column: 'Username'
    }

    static constraints = {
        userId display: false
        password password:true
        firstName blank:false
        lastName blank:false
        username blank:false
    }
}

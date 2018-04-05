<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
        Login
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-ico" href="/assets/favicon.ico">

    <link rel="stylesheet" href="/assets/bootstrap.css?compile=false">
    <link rel="stylesheet" href="/assets/grails.css?compile=false">
    <link rel="stylesheet" href="/assets/main.css?compile=false">
    <link rel="stylesheet" href="/assets/mobile.css?compile=false">
    <link rel="stylesheet" href="/assets/application.css?compile=false">



    <meta name="layout" content="main">

    <style type="text/css" media="screen">
    #login {
        margin: 15px 0px;
        padding: 0px;
        text-align: center;
    }

    #login .inner {
        width: 340px;
        padding-bottom: 6px;
        margin: 60px auto;
        text-align: left;
        border: 1px solid #aab;
        background-color: #f0f0fa;
        -moz-box-shadow: 2px 2px 2px #eee;
        -webkit-box-shadow: 2px 2px 2px #eee;
        -khtml-box-shadow: 2px 2px 2px #eee;
        box-shadow: 2px 2px 2px #eee;
    }

    #login .inner .fheader {
        padding: 18px 26px 14px 26px;
        background-color: #f7f7ff;
        margin: 0px 0 14px 0;
        color: #2e3741;
        font-size: 18px;
        font-weight: bold;
    }

    #login .inner .cssform p {
        clear: left;
        margin: 0;
        padding: 4px 0 3px 0;
        padding-left: 105px;
        margin-bottom: 20px;
        height: 1%;
    }

    #login .inner .cssform input[type="text"] {
        width: 120px;
    }

    #login .inner .cssform label {
        font-weight: bold;
        float: left;
        text-align: right;
        margin-left: -105px;
        width: 110px;
        padding-top: 3px;
        padding-right: 10px;
    }

    #login #remember_me_holder {
        padding-left: 120px;
    }

    #login #submit {
        margin-left: 15px;
    }

    #login #remember_me_holder label {
        float: none;
        margin-left: 0;
        text-align: left;
        width: 200px
    }

    #login .inner .login_message {
        padding: 6px 25px 20px 25px;
        color: #c33;
    }

    #login .inner .text_ {
        width: 120px;
    }

    #login .inner .chk {
        height: 12px;
    }
    </style>

    <style>

    body, html{
        background-image: url("https://c1.staticflickr.com/4/3756/13246421715_7ced0a776e_b.jpg");
        height: 100%;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }
    a.home, a.create, a.list, input.save{
        display: block;
        margin-right: auto;
        color: rgba(0, 0, 0, 0);
        background-color: rgba(27, 240, 255, 0);
    }

    div#navbar{
        margin-left: 2%;
    }
    .portalLink{
        margin-bottom: 10px;
        border-radius: 30px;
        padding: 10px;
        background-color: rgba(0, 0, 0, 0.66);
        border: 3px dotted #44c6ff;
    }
    label{
        color: #1bf0ff;
        text-indent: 10%;
    }
    div#displayCommentTextBox{
        color: #020101;
        background-color: #1bf0ff;
    }
    textarea{
        display: block;
        text-wrap: normal;
        resize: none;
        color: #1bf0ff;
        background-color: rgba(0, 0, 0, 0);
        width: 80%;
        margin-left: auto;
        margin-right: auto;
        outline: none;

    }
    textarea:focus{
        outline: none;
        color: #1bf0ff;
        background-color: rgba(0, 0, 0, 0);
    }
    h1, .content h1{
        color: #1bf0ff;
        text-underline: none;
        border-bottom: none;
    }
    h2{
        text-indent: 30px;
        color: #1bf0ff;
    }
    input#author, input#title{
        width: 80%;
    }
    ul{
        color: #1bf0ff;
        padding:10px;
    }
    div#searchLabel{
        color: #1bf0ff;
    }
    input#query{
        margin-left: 90%;
        color: #000000;
        background-color: #1bf0ff;
    }
    a.edit, input.delete{
        color: #000000;
        background-color: #1bf0ff;
    }
    fieldset.buttons{
        background-color: rgba(27, 240, 255, 0);
        color: #000000;
        outline: none;
        border: 0;
        box-shadow: none;
    }
    input#loginButton, input#logoutButton, input#submit, input#createUserButton{
        color: #000000;
        background-color: rgb(27, 240, 255);
        border-radius: 15px;
    }
    div#loginOrOut{
        margin-left: 95%;
        margin-right: 5%;
    }

    form#loginForm, div#login .inner{
        background-color: rgba(20, 44, 133, 0);
        border: none;
        box-shadow: none;
        width: 25%;
    }

    div#login .inner .fheader{
        background-color: rgba(20, 44, 133, 0);
        border: none;
        box-shadow: none;
        color: #1bf0ff;
    }
    </style>
</head>
<body>
<div id="login">
    <div class="inner">
        <div class="fheader">Please Login</div>



        <form action="/login/authenticate" method="POST" id="loginForm" class="cssform" autocomplete="off">
            <p>
                <label for="username">Username:</label>
                <input type="text" value="${params.username}" class="text_" name="username" id="username" required="true">
            </p>

            <p>
                <label for="password">Password:</label>
                <input type="password" value="${params.password}" class="text_" name="password" id="password" required="true">
            </p>

            <p id="remember_me_holder">
                <input type="checkbox" class="chk" name="remember-me" id="remember_me">
                <label for="remember_me">Remember me</label>
            </p>

            <p>
                <input type="submit" id="submit" value="Login">
            </p>
            <a class="create" href="${createLink(uri: '/user/create')}"> <input type="button" id="createUserButton" value="createUser"/></a>
            <script>if(document.getElementById("username").value!==""){document.getElementById("submit").click()}</script>
        </form>
    </div>
</div>
</body>

</html>

<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
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
            color: #000000;
            background-color: #1bf0ff;
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
    div#loginOrOut{
        margin-left: 95%;
    }
    </style>
    <br><br><div style="font-family: Monaco;font-size: 90px;color:#00ffff; text-align: center;">HOOPLOG</div><br>
    <div style="font-size:12px; color: #e8ffe2; text-align: center;">When you need some hooplah in your life</div>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Hooplog"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <div id="loginOrOut">
        <sec:ifNotLoggedIn>
            <a class="login" href="${createLink(uri: '/login/auth')}"><input type="button" value="Login"></a>
        </sec:ifNotLoggedIn>

        <sec:ifLoggedIn>
            <a class="logout" href="${createLink(uri: '/logout')}"><input type="button" value="Logout"></a>
        </sec:ifLoggedIn>
    </div>

</head>
<body>


    <g:layoutBody/>


</body>
</html>

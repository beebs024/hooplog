<html lang="en" class="no-js"><head>
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

<div id="login">
    <div class="inner">
        <div class="fheader">Please Login</div>



        <form action="/login/authenticate" method="POST" id="loginForm" class="cssform" autocomplete="off" data-op-form-id="0">
            <p>
                <label for="username">Username:</label>
                <op-button data-op-target="0" data-state="active" style="
                margin-left: 96px;
                margin-top: 8.5px;
                "></op-button><input type="text" value="${params.username}" class="text_" name="username" id="username" data-op-id="0">
            </p>

            <p>
                <label for="password">Password:</label>
                <input type="password" value="${params.password}" class="text_" name="password" id="password" data-op-id="1">
            </p>

            <p id="remember_me_holder">
                <input type="checkbox" class="chk" name="remember-me" id="remember_me">
                <label for="remember_me">Remember me</label>
            </p>

            <p>
                <input type="submit" id="submit" value="Login">
            </p>
        </form>
    </div>
</div>
<script>
    (function() {
        document.forms['loginForm'].elements['username'].focus();
    })();
</script>




<iframe id="op-popup" src="chrome-extension://aeblfdkhhhdcdjpifhhbdiojplfjncoa/inline/inline.html#/en/fill/login/fill/142/0/1/username" class="" style="position:absolute; top:377.59375px; left:682.25px; z-index: 2147483647;" data-rows="0"></iframe><op-notch class="" style="left: 905.25px; top: 367.59375px; z-index:2147483647;"></op-notch></body></html>
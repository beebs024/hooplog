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
            background-image: url("https://planning-org-uploaded-media.s3.amazonaws.com/image/Awards-2016-Downtown-Columbus-Riverfront-02.png");
            height: 100%
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        a.home, a.create, a.list{
            display: block;
            margin-left: auto;
            margin-right: auto;
            color: #000000;
            background-color: #1bf0ff;
        }
        .portalLink{
            margin-bottom: 10px;
            border-radius: 30px;
            padding: 10px;
            background-color: rgba(255, 0, 0, 0.66);
        }
        textarea{
            display: block;
            text-wrap: normal;
            resize: none;
            width: 80%;
            opacity: .9;
            margin-left: auto;
            margin-right: auto;
        }
        h1{
            color: #1bf0ff;
        }
        h2{
            text-indent: 30px;
            color: #1bf0ff;
        }
    </style>
</head>
<body>

    %{--<div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/#">
		    <asset:image src="grails.svg" alt="Grails Logo"/>
                </a>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                    <g:pageProperty name="page.nav" />
                </ul>
            </div>
        </div>
    </div>--}%

    <g:layoutBody/>

    %{--<div class="footer" role="contentinfo"></div>--}%



    %{--<div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>--}%

    %{--<asset:javascript src="application.js"/>--}%

</body>
</html>

<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'posts.label', default: 'Posts')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <style>
            textarea{
                border: none;
                outline: none;
            }
            textarea:focus{
                glow: none;
                box-shadow: none;
                outline: none;
                border: none;
            }
         .portalLink{
                margin-bottom: 40px;
            }
            input, div#pagination{
                color: #000000;
                background-color: #1bf0ff;
                border-radius: 15px;
            }
        </style>

    </head>
    <body>
        <a href="#list-posts" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

    <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>

            </ul>
        </div>

        <div id="searchBar">
            <g:render template="/posts/searchPosts" bean="${postsList}" var="postsList"/>
        </div>

        <div id="list-posts" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:if test="${postsList!=null}">
                <g:each in="${postsList}">
                    <div class="portalLink row">
                        <h1><b><u>${it.title}</u></b></h1>
                        <h2>By: ${it.author}</h2>
                        <div class="container"></div>
                        <g:textArea name="postText" value="${it.postText}" readonly="true"/>
                        <div class="container">
                            <div class="col-sm-1">
                                <g:link class="show" action="show" resource="${this.postText}" id="${it.id}" params="${[title: it.title, date: it.datePosted]}"><input type="button" value="Show">
                                </g:link>
                            </div>
                        </div>
                    </div>
                </g:each>
            </g:if>
            <div class="pagination" id="pagination">
                <g:paginate total="${postsCount ?: 0}" params="${params}" />
            </div>
        </div>
    </body>
</html>
<%@ page import="com.manifest.corp.Posts;"%>
<g:form controller="posts" action="search" name="searchPosts">
    <div id="searchParameters" style="text-indent: 85%;">
        <b><div id="searchLabel">SEARCH:</div></b>
        <g:textArea name="searchBar" id="searchBar" style="height: 40px; margin-left: 85%; width: 15%;"/>
    </div>
</g:form>
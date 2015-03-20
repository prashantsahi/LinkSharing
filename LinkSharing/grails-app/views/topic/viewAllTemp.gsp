<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 11/3/15
  Time: 7:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:each in="${topics}" var="topic">
    ${topic.name}</br>
</g:each>
<g:paginate total="${totalCount}" controller="topic" action="viewAllTemp"/>
</body>
</html>
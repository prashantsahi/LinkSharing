<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
    <g:each in="topics" var="topic">
        ${topic.name}
    </g:each>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 20/2/15
  Time: 10:37 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<label> hey dude wassup !!!</label>
<label>First name is ${name}</label>
<g:cusDate format="MM-dd-yyyy" >

 <h1>   custom date </h1>

</g:cusDate>

<g:cusRep min="2" max="10">
    repeated printing<br>
    <g:cusDate format="MM-dd-yyyy" >

        <h1>   custom date </h1>

    </g:cusDate>
    <br>
</g:cusRep>

<g:render template="demoTemplate" model="[lastName:name]"/>
</body>
</html>
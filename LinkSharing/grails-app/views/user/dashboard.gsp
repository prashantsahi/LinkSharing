<%--
  Created by IntelliJ IDEA.
  User: intelligrape
  Date: 26/2/15
  Time: 6:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <script>
    function seriousNess(subscriptionUrl,topicId) {
        alert('hiiiiiiiii')
        console.log(topicId)
        $.ajax({
            url:subscriptionUrl,
            data: "ajax="+$("#seriousness-"+topicId).val(),
            success:function(data){
//                $("#change-"+topicId).css('visibility','visible')
//                $('#changed').html()
            }
        });
    }

    </script>
    <meta name="layout" content="dashboardLayout">
    <title>Dashboard</title>
</head>

<body>

<g:render template="/user/createtopic"/>
<g:render template="/templates/sharelink" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/templates/sharedocument" model='[subscribeTopics: "${subscribedTopics}"]'/>
<g:render template="/user/sendinvitation" model='[subscribeTopics: "${subscribedTopics}"]'/>
<div class="row">
    <div class="col-md-1"></div>

    <div class="col-md-4">
        <g:render template="/templates/userInformation"/>
        <g:render template="/home/subscription" model="[subscript: subscriptions]"/>
        <g:render template="/templates/trendingtopics" model="[trend: trending]"/>
    </div>

    <div class="col-md-1"></div>

    <div class="col-md-5">
        <ls:inbox resource="${res}"/>
    </div><!--col 8-->
    <div class="col-md-1"></div>

</div><!--row-->
</body>
</html>
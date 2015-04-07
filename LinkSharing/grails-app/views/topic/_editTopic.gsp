%{--
<form class="editTopicForm" data-ajax-url="${createLink(controller: "topic", action: "editTopic")}"
      data-topicId="${topic.id}">
    <input type="text" id="topicName-${topic.id}" placeholder="${topic.name}"/>
    <input type="submit" id="Submit" value="editTopic"/>
</form>
--}%

<form class="editTopicForm">
    <input type="text" id="topicName-${topic.id}" placeholder="${topic.name}"/>
    <input type="submit" id="Submit" value="editTopic"
           data-ajax-url="${createLink(controller: "topic", action: "editTopic")}"
           data-topicId="${topic.id}"/>
</form>





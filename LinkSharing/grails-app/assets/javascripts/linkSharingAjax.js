/**
 * Created by intelligrape on 22/3/15.
 */
//<script>
$(document).ready(function(){
    var $doc=$(document)

    $doc.on("click",".subscribeTopic",function(){
        console.log($(this).attr('data-ajax-url') )
        console.log($(this).attr('data-topic') )
        $.ajax({
           url:$(this).attr('data-ajax-url'),
            data:"topic="+$(this).attr('data-topic'),
            success:function(data){
             console.log(data)
            $(this).closest(".renderSubscribedDiv").html(data)
            }
        });
    });

});
function seriousNess(subscriptionUrl, topicId) {
    alert('seriousness')
    console.log(topicId)

    $.ajax({
        url: subscriptionUrl,
        data: "ajax=" + $("#seriousness-" + topicId).val(),
        success: function (data) {
        }
    });
}

function changeVisibility(topicChangeSeriousnessUrl, topicId) {
            alert('hiiiii')
            console.log(topicId)
    $.ajax({
        url: topicChangeSeriousnessUrl,
        data: "ajax=" + $("#visibility-" + topicId).val(),
        success: function (data) {
            alert("successfully updated")
        }
    });
}

//${document}(subscriptionUrl,)
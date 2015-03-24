$(document).ready(function () {
    var $doc = $(document)

    $(".subscribeTopic").click(function () {
        console.log($(this).attr('data-ajax-url'))
        console.log($(this).attr('data-topic'))
        console.log($(this).attr('data-id'))
        var id = $(this).attr('data-id')
        $.ajax({
            url: $(this).attr('data-ajax-url'),
            data: "topic=" + $(this).attr('data-topic'),
            success: function (data) {
                console.log(data)
                console.log("#tren-" + id)
                $("#tren-" + id).html(data)
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
$(document).on('click', '.topicPostClass',
    function () {
        console.log($(this).attr('data-ajax-url'));
        console.log($(this).attr('data-resource-id'));
        var id = $(this).attr('data-resource-id')

        $.ajax({
            url: $(this).attr('data-ajax-url'),
            data: "readingItemId=" + $(this).attr('data-resource-id'),
            success: function (data) {
                if (data) {
                    console.log(".changeIsRead-" + id)
                    $(".changeIsRead-" + id).html(data)
                }
            }

        });
    });

$(document).ready(function () {

    $(".rating").raty({
        numberMax:5,

        click: function (score) {
            //alert("score : "+score+"\nId:"+$(this).attr('data-resource-id')+"\nurl : "+$(this).attr('data-url'));
            var id=$(this).attr('data-resource-id');
            var url=$(this).attr('data-url');
            console.log(id+"\n"+url)
            $.get(url,{resourceId:id, rating:score});
        },
        score: function () {
            return $(this).attr('resource-score');
        },

        starHalf: '/assets/star_half.png',
        starOn: '/assets/star_on.png',
        starOff: '/assets/star_off.png'
    });

    /*  $('#rating').raty({
     */
    /* score: function () {
     return $(this).data('avg')
     },*/
    /*
     half: true,
     //            score:2,
     showHalf: true,
     starHalf: '/assets/star_half.png',
     starOn: '/assets/star_on.png',
     starOff: '/assets/star_off.png'
     */
    /*  click: function (score) {
     alert(score)
     var url = "${g.createLink(controller: 'ResourceRating', action: 'ratingResource')}";
     //                alert("hii")

     var id = jQuery(this).data('id');
     alert("hssssii")
     $.get(url, {resourceId: id, rating: score}, function (jsonData) {
     })
     }
     */
    /*    });
     */
    $(".renderSubscribedDiv").click(function () {
        console.log($(this).attr('data-ajax-url'))
        console.log($(this).attr('data-topic-id'))
        var topicId = $(this).attr('data-topic-id')
        $.ajax({
            url: $(this).attr('data-ajax-url'),
            data: "topic=" + topicId,
            success: function (data) {
                console.log(data)
                $("#resources").html(data)
            }
        })
    });


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

//for inbox
    $(".inboxClass").click(function () {
        console.log($(this).attr('data-ajax-url'))
        console.log($(this).attr('data-resource-id'))
        var id = $(this).attr('data-resource-id')

        $.ajax({
            url: $(this).attr('data-ajax-url'),
            data: "readingItemId=" + $(this).attr('data-resource-id'),
            success: function (data) {
                if (data) {
                    console.log(".unreadResourceHide-" + id)
                    $(".unreadResourceHide-" + id).hide()
                }
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
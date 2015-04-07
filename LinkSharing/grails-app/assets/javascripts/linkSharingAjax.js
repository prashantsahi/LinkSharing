$(document).on('click', ".deleteResource", function () {
    console.log($(this).attr('data-ajax-url'));
    console.log($(this).attr('data-resourceId'));
    var resourceId = $(this).attr('data-resourceId');
    console.log($(this).attr('id'));
    console.log($(this).attr('data-flag'));
    $.ajax({
        url: $(this).attr('data-ajax-url'),
        data: {resourceId: resourceId, flag: $(this).attr('data-flag')},
        success: function (data) {
            console.log(data)
            if (data) {
                $(".resourceDiv-" + resourceId).hide(500).empty();
                location.reload();
            }
        }
    });
});


$(document).on('click', ".editTopic", function () {
    console.log($(this).attr('data-ajax-url'));
    console.log($(this).attr('data-topicId'));
    var topicId = $(this).attr('data-topicId');
    console.log($(this).attr('id'));
    $.ajax({
        url: $(this).attr('data-ajax-url'),
        data: "topicId=" + topicId,
        success: function (data) {
            console.log(data)
            $(".topicEdited-" + topicId).html(data)
        }
    });
});

$(document).on('click', "#Submit", function (e) {
    e.preventDefault();
    var topicId = $(this).attr('data-topicId');
    var topicName = $("#topicName-" + topicId).val()
    //alert("topic NAMe : "+topicName)
    console.log("topic-Name :----" + topicName)
    console.log($(this).attr('data-ajax-url'));
    console.log($(this).attr('data-topicId'));
    $.ajax({
        url: $(this).attr('data-ajax-url'),
        data: {topicId: topicId, topicName: topicName},
        success: function (data) {
            //alert(data)
            $(".topicEdited-" + topicId).html(data);
        }
    });
});


$(document).on('click', ".deleteTopic", function () {
    console.log($(this).attr('data-ajax-url'));
    console.log($(this).attr('data-topicId'));
    var topicId = $(this).attr('data-topicId');
    console.log($(this).attr('id'));
    $.ajax({
        url: $(this).attr('data-ajax-url'),
        data: "topicId=" + topicId,
        success: function (data) {
            console.log(data)
            if (data) {
                $("#topic-" + topicId).hide(500).empty();
                location.reload();
            }
        }
    });
});


//for inbox
$(document).on('click', ".inboxClass", function () {
    console.log($(this).attr('data-ajax-url'));
    console.log($(this).attr('data-resource-id'));
    var id = $(this).attr('data-resource-id');

    $.ajax({
        url: $(this).attr('data-ajax-url'),
        data: "readingItemId=" + $(this).attr('data-resource-id'),
        success: function (data) {
            if (data) {
                console.log(".unreadResourceHide-" + id)
                $(".unreadResourceHide-" + id).hide(500)
            }
        }
    });
});

//for  posts
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
                    location.reload();
                }
            }

        });
    });

$(document).on('keyup', '.inbox', function () {
    console.log($(this).attr('data-ajax-url'));
    console.log($(this).val());
    var searchedText = $(this).val();
    $.ajax({
        url: $(this).attr('data-ajax-url'),
        data: "searchedText=" + searchedText,
        success: function (data) {
            $(".searchedInboxResources").html(data)
        }
    });
});

$(document).on('keyup', '.postsResources', function () {
    console.log($(this).attr('data-ajax-url'));
    console.log($(this).val());
    var searchedText = $(this).val();
    $.ajax({
        url: $(this).attr('data-ajax-url'),
        data: "searchedText=" + searchedText,
        success: function (data) {
            $(".searchedPostResources").html(data)
        }
    });
});


$(document).on('keyup', '.globalSearch', function () {
    console.log($(this).attr('data-ajax-url'));
    console.log($(this).val());
    var searchedText = $(this).val();
    $.ajax({
        url: $(this).attr('data-ajax-url'),
        data: "searchedText=" + searchedText,
        success: function (data) {
            $(".globalSearchDiv").html(data)
        }
    });
});


$(document).ready(function () {
    $(".rating").raty({
        numberMax: 5,

        click: function (score) {
            //alert("score : "+score+"\nId:"+$(this).attr('data-resource-id')+"\nurl : "+$(this).attr('data-url'));
            var id = $(this).attr('data-resource-id');
            var url = $(this).attr('data-url');
            console.log(id + "\n" + url)
            $.get(url, {resourceId: id, rating: score});
        },
        score: function () {
            return $(this).attr('resource-score');
        },

        starHalf: '/assets/star_half.png',
        starOn: '/assets/star_on.png',
        starOff: '/assets/star_off.png'
    });

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
    alert('Visibility')
    console.log(topicId)
    $.ajax({
        url: topicChangeSeriousnessUrl,
        data: "ajax=" + $("#visibility-" + topicId).val(),
        success: function (data) {
            alert("successfully updated")
        }
    });
}

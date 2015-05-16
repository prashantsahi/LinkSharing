<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <script>

        $('#demo1').sharrre({
            share: {
                googlePlus: true,
                facebook: true,
                twitter: true
            },
            buttons: {
                googlePlus: {size: 'tall', annotation:'bubble'},
                facebook: {layout: 'box_count'},
                twitter: {count: 'vertical', via: '_JulienH'}
            },
            hover: function(api, options){
                $(api.element).find('.buttons').show();
            },
            hide: function(api, options){
                $(api.element).find('.buttons').hide();
            },
            enableTracking: true
        });

    </script>
    <title>
    </title>
</head>

<body>
<marquee><label>from template <br> last name is ${name}!!!</label></marquee>


<div id="demo1" data-url="http://sharrre.com" data-text="Make your sharing widget with Sharrre (jQuery Plugin)"
     data-title="share"></div>

</body>
</html>



var timer = 0;
$(function () {
    var $main = $("#main");
    function SetBox()
    {
            var mainHeight = $main.height();
            var winHeight = $(window).height();
            if (mainHeight < winHeight) {
                var height = Math.floor((winHeight - mainHeight) / 2);
                $main.css({ "padding-top": height + "px","visibility":"visible"});
                //$main.animate({ paddingTop: height + "px" });
            }
            else
            {
                $main.css({ "padding-top":"0px", "visibility": "visible" });
                //$main.animate({ paddingTop:"0px" },200);
            }
    }
    SetBox();
    $(window).resize(function () {
        if (timer) {
            clearTimeout(timer);
            timer = 0;
        }
        timer = setTimeout(function () {
            SetBox();
        }, 100);
    });
});
if (top.location != location) {
    top.location.href = location.href;
} 



var $layout_frame = $("#_frame_layout");
var $layout_frame_left_area = $("#_frame_layout_left_area");
var $layout_frame_left_menu = $layout_frame_left_area.find("._frame_layout_menu");
var $layout_frame_middle_btn = $("#_frame_layout_middel_btn");
var $layout_frame_right_area = $("#_frame_layout_right_area");
var $menuSort = $layout_frame_left_menu.find("._frame_layout_menu_sort");

//初始化菜单
function InitMenu() {
    $menuSort.append("<b class=\"caret\"></b>");
    $menuSort.each(function (index) {
        var $this = $(this);
        if ($this.hasClass("_frame_layout_menu_sort_shut")) {
            $this.next("ul").hide();
        }
    });
}

$(function () {
    var height = $(window).height();
    $layout_frame_left_area.css("min-height", height + "px");
    $layout_frame_right_area.css("height", height + "px")
    InitMenu();
    //菜单收缩
    $menuSort.click(function () {
        var className = "_frame_layout_menu_sort_shut";
        var $this = $(this);
        if ($this.hasClass(className)) {
            $this.next("ul").slideDown("fast");
            $this.removeClass(className);
        }
        else {
            $this.next("ul").slideUp("fast");
            $this.addClass(className);
        }
    });

    //左侧收缩/展开
    $layout_frame_middle_btn.click(function () {
        var $this = $(this);
        var className = "_frame_layout_middel_btn_shut";
        var rightBoxClassName = "_frame_layout_right_area_full";
        if ($this.hasClass(className)) {
            $layout_frame_left_area.show();
            $layout_frame_right_area.removeClass(rightBoxClassName);
            $this.removeClass(className);
        }
        else {
            $layout_frame_left_area.hide();
            $layout_frame_right_area.addClass(rightBoxClassName);
            $this.addClass(className);
        }
        InitIframeSize();
    });

    var hasMatchMenu = false;
    var lastMenuIndex = 0;
    //根据url查找对应菜单并添加current样式
    var $allLi = $layout_frame_left_area.find("li");
    $allLi.find("a").each(function (idx) {
        var href = $(this).attr("href");
        var url = location.href;
        var reg = new RegExp(".*" + href + "$", 'gi');
        if (url.indexOf(href) >= 0)
        {
            hasMatchMenu = true;
            $(this).parent().addClass("_menu_current").siblings().removeClass("_menu_current");
            return false;
        }
    });

});
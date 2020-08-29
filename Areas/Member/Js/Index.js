var $middlearea = $("#middlearea");
var $mainContainer = $("#mainContainer");

if (!Array.prototype.map) //ie专用
    Array.prototype.map = function (fn, scope) {
        var result = [], ri = 0;
        for (var i = 0, n = this.length; i < n; i++) {
            if (i in this) {
                result[ri++] = fn.call(scope, this[i], i, this);
            }
        }
        return result;
    };
var WindowSize = function () {
    return ["Height", "Width"].map(function (name) {
        return window["inner" + name] || document.compatMode === "CSS1Compat" && document.documentElement["client" + name] || document.body["client" + name]
    });
}
var leftWidth = 220;
var heights, width;
function WinSize() {
    var str = WindowSize();
    var strs = new Array();
    strs = str.toString().split(",");
    heights = strs[0] - 50;
    widths = strs[1];
    $('#main').height(heights);
    var setHeight = heights;
    $mainContainer.width(widths - leftWidth).height(setHeight);
    if (strs[1] < 1024) {
        $('#header').css('width', 1024 + 'px');
        $('#main').css('width', 1024 + 'px');
    } else {
        $('#header').css('width', 'auto');
        $('#main').css('width', 'auto');
    }
}

WinSize();
$(window).resize(function () {
    WinSize();
});


$.ajaxSetup({
    cache: false
});

//初始化dom对象

var $leftmenu_classname = $("#className");
var $leftmenu = $("#leftmenu");
var $leftmenu_div = $leftmenu.children("div");
var $leftmenu_findAllA = $leftmenu_div.find("a");
var $leftmenu_findAllSpan = $leftmenu_div.find("span");
var $leftmenu_childLi = $leftmenu_div.children().children();


//顶部menu
var $topmenu = $("#topmenu");
var $homeItem = $topmenu.find(".home-item");
var $topmenu_item = $topmenu.find(".menu-item");

$homeItem.click(function () {
    $topmenu_item.removeClass("current");
});

//初始化顶部
function InitHead() {
    var $headAllA = $("#header").find("a");
    $headAllA.each(function (i) {
        var $this = $(this);
        var target = $this.attr("target");
        if (target == undefined) {
            $this.attr("target", "mainContainer");
        }
    });
    var currentIndex = 0;
    var topmenuId = Request("topmenuid");
    $topmenu_item.each(function (index) {
        var thisMenuId = $(this).attr("date-top-menu-id");
        if (topmenuId == thisMenuId) {
            currentIndex = index
        }
        $(this).click(function () {
            var $this = $(this)
            if (!$this.hasClass("dropdown")) {
                LoadLeftMenu($this.children("span").html(), $this.attr("date-top-menu-id"));
                $this.parent(".dropdown-menu").parent(".item").addClass("current").siblings().removeClass("current");
            }
            else {

            }
            $this.addClass("current").siblings().removeClass("current");
        });
    });
    $topmenu_item.eq(currentIndex).click();
}


//左侧menu初始化

function InitLeftMenu() {
    $leftmenu_div.hide();
    $leftmenu_childLi.addClass("rootLi");
    $leftmenu_findAllA.each(function (i) {
        var $this = $(this);
        var target = $this.attr("target");
        if (target == undefined) {
            $this.attr("target", "mainContainer");
        }
        var $thisnext = $this.next("ul");

        //if ($this.attr("class") == "rootnode" && $thisnext.length <= 0) { $this.addClass("root") }
        //if ($this.attr("class") != "rootnode" && $thisnext.length > 0) { $this.addClass("childnode") }
        if ($this.attr("data-isFinal") == "0" && $thisnext.text().Trim() == "") {
            $this.hide();
            $thisnext.hide();
            return true;
        }
        if ($this.hasClass("shut")) {
            $thisnext.hide();
        }
        $this.on("click", function () {
            if ($thisnext.length > 0) {
                if ($this.hasClass("shut")) {
                    $thisnext.slideDown("fast");
                    $this.removeClass("shut");
                }
                else {
                    $thisnext.slideUp("fast");
                    $this.addClass("shut");
                }
            }
            else if ($thisnext.length > 0) {
                if ($this.hasClass("shut")) {
                    $thisnext.slideDown("fast");
                    $this.removeClass("shut");
                }
                else {
                    $thisnext.slideUp("fast");
                    $this.addClass("shut");
                }
            }
        });

    });

    $leftmenu_findAllA.on("click", function () {
        var $this = $(this);
        var href = $this.attr("href");
        if (href == undefined) { return false; }
        $leftmenu_findAllA.removeClass("current");
        $this.addClass("current");
        //$mainContainer.attr("src", href);
        $this.blur();
        $this.parents(".rootLi").addClass("current").siblings().removeClass("current");
        AddHistory($this);//添加底部历史记录
        //return false;
    });

    //loadleftmenu('我的工作台','workspace');
}

//初始化
$(document).ready(function () {
    InitLeftMenu();
    InitHead(); //必须在InitLeftMenu()后面
});


//顶部菜单触发
function LoadLeftMenu(name, menuId) {
    $leftmenu_classname.html(name);
    $leftmenu_div = $leftmenu.children("#menu" + menuId);
    if ($leftmenu_div.length == 0) { $leftmenu.children("div").hide(); return; }
    $leftmenu_div.show().siblings().hide();
    ShowLeftMenu();
    //$leftmenu_div_ul = $leftmenu_div.children("ul");
    //$leftmenu_div_li = $leftmenu_div.children("ul").children("li");
    //$leftmenu_div_span = $leftmenu_div.children("span");

    //$leftmenu_div_span.off('click').on("click", function () {
    //    var $this = $(this);
    //    if ($this.hasClass("shut")) {
    //        var showul = $this.next("ul");
    //        showul.slideDown(300);
    //        $this.removeClass("shut");
    //    }
    //    else {
    //        $this.next("ul").slideUp(300);
    //        $this.addClass("shut");
    //    }
    //});
}


//左侧栏目关闭/展开
var hasShut = false;
function SwitchLeftMenu() {
    var moveWidth = "=180px";
    if (!hasShut) {

        $("#rightarea").animate({ paddingLeft: "-" + moveWidth });
        $historytab.animate({ left: "-" + moveWidth });
        $mainContainer.css('width', '100%');
        $("#leftarea").animate({ width: "-" + moveWidth }, function () {
            $leftmenu_childLi.hide();
        });

        hasShut = true;
    }
    else {
        $("#rightarea").animate({ paddingLeft: "+" + moveWidth })
        $historytab.animate({ left: "+" + moveWidth });
        $("#leftarea").animate({ width: "+" + moveWidth }, function () {
            $leftmenu_childLi.show();
        });
        $mainContainer.css('width', '100%');

        hasShut = false;
    }
    var historytablength = $mainContainer.width() - 20;
    $historytab.css("width", historytablength + "px");
    ResetTabBar();
}
//展开左侧菜单
function ShowLeftMenu() {
    if (hasShut == true) {
        SwitchLeftMenu();
    }
}
//关闭左侧菜单
function HideLeftMenu() {
    if (hasShut == false) {
        SwitchLeftMenu();
    }
}

var $leftMenuSwitch = $(".icon-menu-switch");
$leftMenuSwitch.click(function () {
    SwitchLeftMenu();
})

var $historytab = $("#historytab");
var historytablength = $mainContainer.width() - 20;
if ($historytab.length > 0)
{
   $historytab.css("width", historytablength + "px");
}
function OpenHistory(obj) {
    var $this = $(obj);
    $this.parent().addClass("current").siblings().removeClass("current");
    $mainContainer.attr("src", $this.attr("href"));
}

function AddHistory(jqmenu) {
    if ($historytab.length==0)
    {
        return;
    }
    var menuid = jqmenu.attr("data-menuid");
    var href = jqmenu.attr("href");
    var hasexists = 0;
    $historytab.children("ul").children("li").each(function (i) {
        var $this = $(this);
        $this.removeClass("current");
        if ($this.attr("data-menuid") == menuid) {
            $this.remove();
        }
    });
    $historytab.children("ul").prepend("<li data-menuid=\"" + menuid + "\" class=\"current\"><span href=\"" + href + "\" onclick=\"OpenHistory(this)\">" + jqmenu.html() + "</span> <a href=\"javascript:void(0)\" onclick=\"RemoveHistory(this)\">&times;</a></li>");
    ResetTabBar();
}

function ResetTabBar() {
    var length = 0;
    $historytab.children("ul").children("li").each(function (i) {
        var $this = $(this);
        length += $this.outerWidth(true);
    });
    $historytab.children("ul").css("width", length + "px");
    if (length > historytablength) {
        $historytab.children("ul").children("li").eq(0).remove();
        ResetTabBar();
    }
}

function RemoveHistory(obj) {
    $(obj).parent().remove();
    ResetTabBar();
}

//打开站点却换界面
function SelectSite(url) {
    var params = { title: '选择管理站点', url: url, width: '800px', height: '80%', maxmin: false };
    IDialog(params);
}
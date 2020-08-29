if (loadUrlPrefix == undefined) {
    loadUrlPrefix = "";
}
document.write('<script src="' + loadUrlPrefix+'/Incs/layer/layer.js" type="text/javascript"></script>');
//重写alert
window.Alert = function (msg, options, callback) {

    var defaultOptions ={ title: '提示', icon: 7, shade: 0.01, anim: -1};
    defaultOptions = ExtendObject({}, defaultOptions, options);
    layer.alert(msg, defaultOptions, function (index) {
        layer.close(index);
        if (typeof (callback) == "function")
        callback.call();//方法回调 
    });
}


//重写confirm
window.Confirm = function (msg, options, callback, cancelBack) {
    var defaultOptions = { title: '提示', shade: 0.01, icon: 3, anim: -1, colseBtn: 0};
    defaultOptions = ExtendObject({}, defaultOptions, options);
    layer.confirm(msg, defaultOptions,
	function (index) {//确定事件
	    layer.close(index);
	    if (typeof (callback) == "function") {
	        callback.call();//方法回调 
	    }
	},
	 function (index) {//取消事件
	     layer.close(index);
	     if (typeof (cancelBack) == "function") {
	         cancelBack.call();//方法回调 
	     }
	 });
}


//加载层
function Loading() {
    layer.load(1, { title: 'Loading...', shade: [0.1, 'transparent'], anim: -1 });
}

function CloseLoading() {
    layer.closeAll('loading', { anim: -1 });
}

function Msg(msg, time, callback) {
    if (typeof (time) == "undefined") {
        time = 1500;
    }
    layer.msg(msg, {
        time: time,
        anim: 0,
    }, function () {
        if (typeof (callback) == "function") {
            callback.call();//方法回调 
        }
    });
}

function Msg(msg, callback) {
    var time = 1500;
    layer.msg(msg, {
        time: time,
        anim: 0,
    }, function () {
        if (typeof (callback) == "function") {
            callback.call();//方法回调 
        }
    });
}

/*iframe弹出层,width和height支持百分比字符*/
function IDialog(params) {
    var url = params.url;
    if (typeof (url) == "undefined") {
        alert("url参数不能为空");
    }
    //if (typeof (baseUrl) == "undefined") {
    //    baseUrl = "/";
    //}
    //if (url.indexOf("/") < 0 || url.indexOf("http://") < 0) {
    //    var currenturl = location.href;
    //    var lastsite = currenturl.lastIndexOf("/");
    //    url = currenturl.substring(0, lastsite) + "/" + url;
    //}
    //else if (url.indexOf("/") != 0) {
    //    url = baseUrl + url;
    //}
    var maxmin = false;
    var width = params.width;
    if (typeof (width) == "undefined") {
        width = "100%";
    }
    var height = params.height;
    if (typeof (height) == "undefined") {
        height = "100%";
    }
    if (width == "100%")
    {
        maxmin = false;
    }
    var defaultoption = {
        type: 2,
        anim: -1,
        offset: 'auto',
        title: "标题",
        shadeClose: true,
        shade: 0.1,
        maxmin: maxmin,
        target: "self",
        area: [width, height],
        content: url //iframe的url
        //zIndex:layer.zIndex, //重点1
        //success: function (layero) {
        //layer.setTop(layero); //重点2
        //}
    };

    params = $.extend({}, defaultoption, params);
    var target = params.target;
    //if(Request("parentLayerIndex") == "-1") {
    //    target = "self";
    //}
    //var index = -1;
    //if (target == "top" && window.name!="") {
    //   index = top.layer.getFrameIndex(window.name);
    //}
    //if (typeof (index) != "undefined") {
    //    var url = params.url;
    //    if (url.indexOf("?") > 0) {
    //        url += "&parentLayerIndex=" + index;
    //    }
    //    else if (url.indexOf("?parentLayerIndex=") > 0 || url.indexOf("&parentLayerIndex=") > 0) {
    //        url = url.replace(/(\?|&)parentLayerIndex=[0-9]*/, "$1parentLayerIndex==" + index);
    //    }
    //    else {
    //        url += "?parentLayerIndex=" + index;
    //    }
    //}
    params.content = url;
    if (target == "top") {
        top.layer.open(params);
    }
    else if (target == "parent") {
        parent.layer.open(params);
    }
    else {
        layer.open(params);
    }
}
function AutoDialog() //自动调整弹出层高度
{
    var index = parent.layer.getFrameIndex(window.name);
    if (typeof (index) == "undefined") { return; }
    parent.layer.iframeAuto(index);
    var parentheight = DialogHeight("parent");
    var thisheight = DialogHeight();
    //alert(parentheight+":"+thisheight);
    if (thisheight >= (parentheight - 50)) {
        parent.layer.style(index, {
            height: (parentheight - 50) + 'px',
            top: '25px'
        });
    }
    else {
        var top = Math.round((parentheight - thisheight) / 2);
        if (top < 0) { top = 0; }
        else if (top > 25) { top -= 25; }
        parent.layer.style(index, {
            height: (thisheight +50) + 'px',
            top: top + "px"
        });
    }
}

function DialogHeight(thetype) //弹出层的窗口大小
{
    var pageHeight;
    if (thetype == "parent") {
        pageHeight = parent.window.innerHeight;
        if (typeof pageHeight != 'number') {
            pageHeight = parent.document.documentElement.clientHeight;
        }
    }
    else {
        pageHeight = window.innerHeight;
        if (typeof pageHeight != 'number') {
            pageHeight = document.body.clientHeight;
        }
    }
    return pageHeight;
}

function CloseDialog(target) //关闭弹出层
{
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
}
//ui.js将依赖下面的文件，请不要修改
var loadUrlPrefix = ""; //文件名加载前缀
document.write('<link rel="stylesheet" href="' + loadUrlPrefix + '/Js/UI/ui.css">')
document.write('<script src="' + loadUrlPrefix + '/Js/UI/dialog.js" type="text/javascript"></script>');
document.write('<script src="' + loadUrlPrefix + '/Incs/laydate/laydate.js" type="text/javascript"></script>');
document.write('<script src="' + loadUrlPrefix + '/Js/UI/dataBind.js" type="text/javascript"></script>');
document.write('<script src="' + loadUrlPrefix + '/Js/UI/validateForm.js" type="text/javascript"></script>');
//检测ie低版浏览器
$(document).ready(function () {
    if (document.all) {
        var browser = navigator.appName
        var b_version = navigator.appVersion;
        var version = b_version.split(";");
        if (version.length > 1) {
            var trim_Version = version[1].replace(/[ ]/g, "");
            if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE6.0") {
                LowerBrowserTip()
            }
            else if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE7.0") {
                LowerBrowserTip()
            }

        }
        function LowerBrowserTip() {
            $("body").html("<div style='position:fixed;top:0px;left:0px;line-height:30px;width:100%;padding:10px;background-color:#fff'>您的浏览器版本太老，建议你更换一个标准浏览器以便获得最好的使用体验，推荐你使用这些浏览器：chrome/firefox/opera/ie9(或以上版本）</div>");
        }
    }
});
; (function ($, window, undefined) {
    $.fn.DropdownHover = function () {
        var $this = $(this);
        $this.mouseenter(function () {
            $(this).addClass("open");
        }).mouseleave(function (
        ) { $(this).removeClass("open"); });

        $this.click(function (e) {
            e.stopPropagation();
        });
        $this.children('.dropdown-menu').click(function (e) {
           e.stopPropagation();
        });
    };
})(jQuery, window)
//给bootstrap的dropdown添加hover效果
$(document).ready(function () {
    var $dropdown = $(".dropdown-hover");
    if ($dropdown.length > 0) {
        $dropdown.DropdownHover();
    }
    //$dropdown.each(function () {
    //    var $this = $(this);
    //    $this.mouseenter(function () {
    //        $this.addClass("open");
    //    }).mouseleave(function (
    //        ) { $this.removeClass("open"); });

    //    $this.click(function (e) {
    //        e.stopPropagation();
    //    });
    //    $this.children('.dropdown-menu').click(function (e) {
    //        e.stopPropagation();
    //    });
    //})
});


//ui-selectInvert：点击反选事件
$(document).ready(function () {
    var $selectInvert = $(".ui-selectInvert");
    $selectInvert.click(function () {
        var defaultParams = { obj: ".checked-item", isReverse: true };
        var isChecked = false;
        if ($(this).is("INPUT")) {
            var isChecked = $(this).is(":checked")
        }
        var thisParam = $(this).attr("data-custom-params");
        defaultParams = ExtendObject(defaultParams, thisParam);
        var objectName = defaultParams.obj;
        var isReverse = defaultParams.isReverse;
        var $object = GetJqueryObj(objectName);
        if ($object.length == 0) {
            //Alert("未找到需要选中的对象，请在标签中增加params=\"object:'id'\"属性");
            return;
        }
        else {
            $object.each(function () {
                var $this = $(this);
                if (!$this.is(":visible")) { return }
                if (typeof ($this.attr("disabled")) == "undefined") {
                    if (isReverse) {
                        if ($this.is(":checked")) {
                            $this.prop("checked", false);
                        }
                        else {
                            $this.prop("checked", true);
                        }
                    }
                    else {
                        if (isChecked) {
                            $this.prop("checked", true);
                        }
                        else {
                            $this.prop("checked", false);
                        }
                    }

                }
            });
        }
    });
});

//ui-closeDialog：关闭弹出层
$(document).ready(function () {
    var $closeDialog = $(".ui-closeDialog");

    var defaultParams = { refreshParent: false };
    $closeDialog.click(function () {
        var thisParam = $(this).attr("data-custom-params");
        defaultParams = ExtendObject({}, defaultParams, thisParam);
        var refreshParent = defaultParams.refreshParent;
        if (refreshParent) {
            parent.LoadData();
        }
        CloseDialog();
    });
});

//ui-dialog：弹出层事件
$(document).ready(function () {
    var defaultParams = { title: "标题", url: "", additionals: "", width: "100%", height: "100%", target: 'self', beforeExecute: "", shadeClose:true };
    $(document).on("click", ".ui-dialog", defaultParams, function (event) {
        var $this = $(this);
        if ($this.attr("disabled")) {
            return;
        }
        var defaultParams = event.data;
        var thisParam = $this.attr("data-custom-params");
        defaultParams = ExtendObject({}, defaultParams, thisParam);
        var beforeExecute = defaultParams.beforeExecute;
        var url = defaultParams.url;
        var canExecuting = true;
        if (beforeExecute != "") {
            if (typeof (window[beforeExecute]) == "function") {
                canExecuting = window[beforeExecute]($this);
            }
        }
        if (canExecuting == false) { return; }
        if (url != "") {

            var additionals = defaultParams.additionals;
            if (additionals != "") {
                var itemData = $this.Serializes(additionals);
                if (itemData != "") {
                    if (url.indexOf("?") > 0) {
                        url += "&";
                    }
                    else {
                        url += "?";
                    }
                    url += itemData;
                    defaultParams.url = url;
                }
            }
            IDialog(defaultParams);
        }
    });
});

//ui-href：点击事件
$(document).ready(function () {
    var defaultParams = { url: "_blank", target: 'self' };
    $(document).on("click", ".ui-href", defaultParams, function (event) {
        var defaultParams = event.data;
        var thisParam = $(this).attr("data-custom-params");
        defaultParams = ExtendObject(defaultParams, thisParam);
        var url = defaultParams.url;
        var target = defaultParams.target;
        if (target == "" || target == "self") {
            location.href = url;
        }
        else {
            window.open(url, target)
        }
    });
});

//表单的绑定，默认从attr中加载
$(document).ready(function () {
    var $formBind = $(".ui-formBind");
    $formBind.each(function () {
        $(this).FormBind({ dataSourceFrom: "attr" });
    });
});

//ui-deleteSingle：单个删除
$(document).ready(function () {
    var defaultParams = { url: "_blank", id: "0", addParams: "", additionals: "", beforeExecute: "", callBack: "", confirmMsg: "确定删除吗？", successMsg: "删除成功!" };
    $(document).on("click", ".ui-deleteSingle", defaultParams, function (event) {
        var defaultParams = event.data;
        var $this = $(this);
        if ($this.attr("disabled")) {
            return;
        }
        var thisParam = $this.attr("data-custom-params");
        defaultParams = ExtendObject(defaultParams, thisParam);
        var confirmMsg = defaultParams.confirmMsg;
        var addParams = defaultParams.addParams;
        if (addParams != "") {
            addParams = "&" + addParams;
        }
        var additionals = defaultParams.additionals;
        var itemData = "";
        var $item = $this.parents(".data-list-bind-item").eq(0);
        if ($item.length > 0) {
            itemData = $item.eq(0).Serializes(additionals);
        }

        //confirm逻辑
        if (confirmMsg != "") {
            var postConfirm = $this.attr("data-confirm");
            if (postConfirm == undefined) {
                postConfirm = 0;
            }
            if (postConfirm == 0) {
                Confirm(confirmMsg, { icon: 3 }, function () { $this.attr("data-confirm", 1); $this.click(); });
                return;
            }
            $this.removeAttr("data-confirm");
        }

        var canExecuting = true;
        var beforeExecute = defaultParams.beforeExecute;
        if (typeof (window[beforeExecute]) == "function") {
            canExecuting = window[beforeExecute]($this);
        }
        if (canExecuting == false) { return; }

        if (defaultParams.url == "_blank" || defaultParams.url == "") {
            Alert("url参数未设置!")
        }
        Loading();

        var ajaxUrl = defaultParams.url;
        var paramsData = itemData + addParams;

        var ajaxOptions = { type: "post", url: ajaxUrl, data: paramsData, async: true }
        Ajax(ajaxOptions, function (data, options) {
            CloseLoading();
            if (typeof (data) != "object") {
                data = $.parseJSON(data)
            }
            if (data.State == 1) {
                successMsg = defaultParams.successMsg;
                if (successMsg != "") {
                    Msg(successMsg);
                }
                var callBack = defaultParams.callBack;
                if (callBack == "") {

                }
                else if (callBack == "refresh") {
                    location.href = location.href;
                }
                else if (typeof (window[callBack]) == "function") {
                    window[callBack](defaultParams.id)
                    //eval(callBack + "('" + defaultParams.id + "')");
                }
            }
            else {
                if (data.Msg != "") {
                    Alert(data.Msg)
                }
            }

        });

    });
});

//批量操作，批量删除，批量设置时候检测多级节点限制
function CheckMultiLevelNode($item, options) {
    var includeChildNode = options.includeChildNode;
    var limitFinal = options.limitFinal;
    var limitLevel = options.limitLevel;
    var isFinal = $item.attr("data-isFinal");
    var level = $item.attr("data-level");
    var id = $item.attr("data-id");
    if (typeof (isFinal) != "undefined" && limitFinal != "") {
        if (isFinal != limitFinal) {
            if (limitFinal == "0") {
                Alert("只能对非最终节点（带文件夹图标的项）进行操作!")
            }
            else {
                Alert("只能对最终节点（带文件图标的项）进行操作!")
            }
            throw new Error("出现错误!");
            return false;
        }
    }
    if (typeof (level) != "undefined" && limitLevel != "") {
        var arrlimitLevel = limitLevel.split(",");
        if (!arrlimitLevel.Contains(level)) {
            Alert("只能对" + limitLevel + "级的节点进行操作!");
            throw new Error("出现错误!");
            return false;
        }
    }
    if (typeof (id) != undefined) {
        var childNodes = $item.siblings("[data-parentId='" + id + "']").length;
        if (includeChildNode == "0" && childNodes > 0) {
            Alert("当前操作要求选中的项不能包含子节点!");
            throw new Error("出现错误!");
            return false;
        }
        else if (includeChildNode == "1" && childNodes == 0) {
            Alert("当前操作要求选中的项必须包含子节点!");
            throw new Error("出现错误!");
            return false;
        }
    }
    return true;
}

//ui-deleteMultiple：批量删除
$(document).ready(function () {
    var $deleteMultiple = $(".ui-deleteMultiple");
    $deleteMultiple.click(function () {
        var $this = $(this);
        var defaultParams = { url: "", ids: "", accordingObj: '.checked-item', additionals: "", async: true, itemPrefix: "#item_", beforeExecute: "", eachCallBack: "", callBack: "", confirmMsg: "确定删除吗？", successMsg: "删除成功！", limitLevel: "", limitFinal: "", includeChildNode: "" };
        var thisParam = $this.attr("data-custom-params");
        defaultParams = ExtendObject(defaultParams, thisParam);
        var confirmMsg = defaultParams.confirmMsg;
        var successMsg = defaultParams.successMsg;
        var ids = defaultParams.ids;
        if (ids == "") {
            var $accordingObj = GetJqueryObj(defaultParams.accordingObj);
            ids = $accordingObj.GetValue();
        }
        if (ids == undefined) {
            return;
        }
        if (ids == "") {
            Alert("请选择要操作的项!", 7);
            return;
        }
        var async = defaultParams.async;
        var beforeExecute = defaultParams.beforeExecute;
        var canExecuting = true;

        if (beforeExecute != "") {
            if (typeof (window[beforeExecute]) == "function") {
                canExecuting = window[beforeExecute](ids);
            }
        }

        if (canExecuting == false) { return; }

        //confirm逻辑
        if (confirmMsg != "") {
            var postConfirm = $this.attr("data-confirm");
            if (postConfirm == undefined) {
                postConfirm = 0;
            }
            if (postConfirm == 0) {
                Confirm(confirmMsg, { icon: 3 }, function () { $this.attr("data-confirm", 1); $this.click(); });
                return;
            }
            $this.removeAttr("data-confirm");
        }
        var ajaxUrl = defaultParams.url;
        if (ajaxUrl == "") {
            Alert("url参数未设置!")
        }
        var eachCallBack = defaultParams.eachCallBack;
        var itemPrefix = defaultParams.itemPrefix;
        var additionals = defaultParams.additionals;
        var Aids = ids.split(",");
        // alert(1+Aids);
        //layer.msg('Loading...', {
        //    icon: 16,
        //    time: 6000000, //600秒
        //    shade: 0.01
        //});
        Loading();
        var index = 0;
        var count = Aids.length;
        //第一次循环检测限制
        for (var i = 0; i < count; i++) {
            if (Aids[i] == "") { continue; }
            var $item = GetJqueryObj(itemPrefix + Aids[i]);
            if ($item.length == 0) {
                Alert("itemPrefix参数错误或找不到匹配的项!")
                return;
            }
            CheckMultiLevelNode($item, defaultParams);//检测节点限制
        }
        var hasError = false;
        for (var i = 0; i < count; i++) {
            if (hasError) { return; }
            if (Aids[i] == "") { index++; continue; }
            var $item = GetJqueryObj(itemPrefix + Aids[i]);
            var paramsData = $item.Serializes(additionals) + "&_multiple_number=" + i; //_multiple_number参数请勿修改，后台如字段配置将会用到
            var ajaxOptions = { type: "post", url: ajaxUrl, data: paramsData, async: async, obj: $item }
            Ajax(ajaxOptions, function (data, options) {
                index++;
                var $itemObj = options.obj;
                if (typeof (data) != "object") {
                    data = $.parseJSON(data);
                }
                if (data.State == 1) {
                    if (eachCallBack != "" && typeof (window[eachCallBack]) == "function") {
                        window[eachCallBack](Aids[i]);
                    }
                }
                else {
                    CloseLoading();
                    if (data.Msg != "") {
                        Alert(data.Msg)
                    }
                    else {
                        Alert("删除出现错误!");
                    }
                    hasError = true;
                    //alert(hasError)
                    return;
                }
                if (index == count) {
                    CloseLoading();
                    if (successMsg != "") {
                        Msg(successMsg);
                    }
                    var callBack = defaultParams.callBack;
                    if (callBack == "") {
                    }
                    else if (callBack == "refresh") {
                        location.href = location.href;
                    }
                    else if (typeof (window[callBack]) == "function") {
                        window[callBack](ids);
                    }

                }
            });

        }//for循环结束


    });
});


//ui-pagePost:新增页和编辑页的post提交
$(document).ready(function () {
    var $pagePost = $(".ui-pagePost");
    $pagePost.off("click").on("click", function () {
        var $this = $(this);
        var defaultParams = { url: "", formObj: "", callBack: "", failCallBack: "", beforeExecute: "", failMsgTimes: 1500, confirmMsg: '', successMsg: "提交成功!", validateForm: true };
        var thisParam = $this.attr("data-custom-params");
        defaultParams = ExtendObject({}, defaultParams, thisParam);
        var beforeExecute = defaultParams.beforeExecute;
        var successMsg = defaultParams.successMsg;
        var failMsgTimes = defaultParams.failMsgTimes;
        var confirmMsg = defaultParams.confirmMsg;
        var canExecuting = true;
        var url = defaultParams.url;
        var validateForm = defaultParams.validateForm;//默认true
        var postConfirm = $this.attr("data-confirm");
        var formObj = defaultParams.formObj;
        var $form;
        if (formObj == "") {
            $form = $this.parents("form").eq(0);
        }
        else {
            $form = GetJqueryObj(formObj);
        }
        if ($form.length == 0) {
            alert(".ui-pagePost找不到要序列化的formName对象!");
            return;
        }
        if (typeof (postConfirm) == "undefined") //确认框的回调点击,括号中不在进行二次验证
        {
            if (validateForm) //如果需要验证
            {
                var validateOptions = {
                    ignoreHidden: false,
                    showAllError: true, //只对tipsStyle为2时有效。
                    dataTypes: {},//可以这里声明的是局部数据类型
                    tipsStyle: 2,
                    tipsPosition: 0,
                    tipsBoxClass: "help-block", //提示信息的容器样式，bootstrap表单默认样式
                    beforeCheck: null,
                    beforeSubmit: null
                };
                var validateResult = $form.ValidateForm(validateOptions);
                if (!validateResult) {
                    return;
                }
            }

            if (beforeExecute != "") {
                if (typeof (window[beforeExecute]) == "function") {
                    canExecuting = window[beforeExecute]();
                }
            }
            if (canExecuting == false) { return; }

            if (url == "") {
                Msg("ui-pagePost对象的url参数未设置!");
                return;
            }
        }
        if (confirmMsg != "") {
            if (postConfirm == undefined) {
                postConfirm = 0;
            }
            if (postConfirm == 0) {
                Confirm(confirmMsg, { icon: 3 }, function () { $this.attr("data-confirm", 1); $this.click(); });
                return;
            }
            $this.removeAttr("data-confirm");//删除confirm data
        }

        var $convertMultipleSelect = $form.find(".ui-convertData");
        if ($convertMultipleSelect.length > 0) {
            $convertMultipleSelect.each(function () {
                var $this = $(this);
                if ($this.prop("tagName").toLowerCase() == "select")
                {
                    if (typeof ($this.attr("multiple")) != "undefined") {
                        $this.children("option").prop("selected", true);
                    }
                }
            });
        }
        $this.attr("disabled", "disabled");
        Loading();

        var ajaxUrl = defaultParams.url;
        var paramsData = $form.Serialize();
        var ajaxOptions = { type: "post", url: ajaxUrl, data: paramsData, async: true }
        Ajax(ajaxOptions,
            function (data, options) {
                $this.removeAttr("disabled")
                CloseLoading();
                if (typeof (data) != "object") {
                    data = $.parseJSON(data)
                }

                if (data.State == 1) {
                    if (successMsg != "") {
                        Msg(successMsg);
                    }
                    var callBack = defaultParams.callBack;
                    if (callBack != "") {
                        if (callBack == "refresh") {
                            location.href = location.href;
                        }
                        else if (typeof (window[callBack]) == "function") {
                            window[callBack](data);
                        }
                    }

                }
                else {
                    var failCallBack = defaultParams.failCallBack;

                    if (typeof (window[failCallBack]) == "function") {
                        window[failCallBack](data)
                        //eval(failCallBack + "(" + JSON.stringify(data) + ")");
                    }
                    else {
                        if (data.Msg != "") {
                            //Msg(data.Msg, failMsgTimes);
                            Alert(data.Msg, 7, function () {
                            });
                        }
                    }
                }

            },
            function (httpRequest, textStatus) {
                alert("http" + httpRequest.status + "错误:" + httpRequest.responseText + "/" + textStatus);
            }
        );

        ///$convertMultipleSelect取消选择
        if ($convertMultipleSelect.length > 0) {
            $convertMultipleSelect.each(function () {
                var $this = $(this);
                if (typeof ($this.attr("multiple")) != "undefined") {
                    $this.children("option").prop("selected", false);
                }
            });
        }
    });
});

//ui-updateMultiple:批量更新
$(document).ready(function () {
    var $updateMultiple = $(".ui-updateMultiple");
    $updateMultiple.click(function () {
        var $this = $(this);
        var defaultParams = { url: "", async: true, ids: "", accordingObj: ".checked-item", itemPrefix: "#item_", additionals: "", beforeExecute: "", eachCallBack: "", callBack: "", addParams: "", confirmMsg: "", nullMsg: "请选择要操作的项!", successMsg: "提交成功!", limitLevel: "", limitFinal: "", includeChildNode: "" };
        var thisParam = $this.attr("data-custom-params");
        defaultParams = ExtendObject(defaultParams, thisParam);
        var ids = defaultParams.ids;
        var nullMsg = defaultParams.nullMsg;
        var beforeExecute = defaultParams.beforeExecute;
        if (typeof (ids) == "undefined") { ids = ""; }
        if (ids == "") {
            var $accordingObj = GetJqueryObj(defaultParams.accordingObj);
            ids = $accordingObj.GetValue();
        }

        if (ids == undefined) {
            return;
        }
        if (ids == "") {
            Alert(nullMsg, 7);
            return;
        }
        var ajaxUrl = defaultParams.url;
        if (ajaxUrl == "") {
            Msg("url参数未设置!");
            return;
        }

        var canExecuting = true;
        if (beforeExecute != "") {
            if (typeof (window[beforeExecute]) == "function") {
                canExecuting = window[beforeExecute](ids);
            }
        }
        if (canExecuting == false) { return; }

        var async = defaultParams.async;
        var eachCallBack = defaultParams.eachCallBack;
        var itemPrefix = defaultParams.itemPrefix;
        var additionals = defaultParams.additionals;
        var addParams = defaultParams.addParams;
        if (addParams != "") {
            addParams = "&" + addParams;
        }

        var Aids = ids.split(",");
        //layer.msg('Loading...', {
        //    icon: 16,
        //    time: 6000000, //600秒
        //    shade: 0.01
        //});
        var confirmMsg = defaultParams.confirmMsg;
        //confirm逻辑
        if (confirmMsg != "") {
            var postConfirm = $this.attr("data-confirm");
            if (postConfirm == undefined) {
                postConfirm = 0;
            }
            if (postConfirm == 0) {
                Confirm(confirmMsg, { icon: 3 }, function () { $this.attr("data-confirm", 1); $this.click(); });
                return;
            }
            $this.removeAttr("data-confirm");
        }

        Loading();
        var count = Aids.length;
        //第一次循环检测限制
        for (var i = 0; i < count; i++) {
            if (Aids[i] == "") { continue; }
            var $item = GetJqueryObj(itemPrefix + Aids[i]);
            if ($item.length == 0) {
                Alert("itemPrefix参数错误或找不到匹配的项!")
                return;
            }
            CheckMultiLevelNode($item, defaultParams);//检测节点限制
        }
        var index = 0;
        var hasError = false;
        for (var i = 0; i < count; i++) {
            if (hasError) { return; }
            var $item = GetJqueryObj(itemPrefix + Aids[i]);
            var paramsData = $item.Serializes(additionals) + "&_multiple_number=" + i + addParams;//_multiple_number参数名请勿修改，后台如字段配置，日志记录等都会用到次参数
            var ajaxOptions = { type: "post", url: ajaxUrl, data: paramsData, async: async }
            Ajax(ajaxOptions, function (data, options) {

                if (typeof (data) != "object") {
                    data = JsonParse(data)
                }
                if (data.State == 1) {
                    if (eachCallBack != "" && typeof (window[eachCallBack]) == "function") {
                        //eval(eachCallBack + "('" + Aids[i] + "')");
                        window[eachCallBack](Aids[i]);
                    }
                    index++;
                }
                else {
                    CloseLoading();
                    Alert(data.Msg);
                    hasError = true;
                    return;
                }

                //最后一个指定完毕后
                if (index == count) {
                    CloseLoading();
                    successMsg = defaultParams.successMsg;
                    if (successMsg != "") {
                        Msg(defaultParams.successMsg);
                    }
                    var callBack = defaultParams.callBack;
                    if (callBack != "") {
                        if (callBack == "refresh") {
                            location.href = location.href;
                        }
                        else if (typeof (window[callBack]) == "function") {
                            window[callBack](ids)
                        }
                    }

                    return false;
                }

            });
            //for over
        }
    });
});


////ui-updateSingle:单行更新
$(function () {
    $updateSingle = $(".ui-updateSingle");
    $(document).on("click", ".ui-updateSingle", function (event) {
        var $this = $(this);
        var defaultParams = { url: "", async: true, additionals: "", beforeExecute: "", callBack: "", addParams: "", confirmMsg: "", successMsg: "提交成功!" };
        var thisParam = $this.attr("data-custom-params");
        defaultParams = ExtendObject(defaultParams, thisParam);
        var async = defaultParams.async;
        var ajaxUrl = defaultParams.url;
        var itemPrefix = defaultParams.itemPrefix;//获取当前行的容器对象名
        var additionals = defaultParams.additionals; //需要同时提交的其他对象
        var addParams = defaultParams.addParams;
        if (addParams != "") {
            addParams = "&" + addParams;
        }
        var successMsg = defaultParams.successMsg;
        var confirmMsg = defaultParams.confirmMsg;
        var itemData = "";
        var $item = $this.parents(".data-list-bind-item").eq(0);
        if ($item.length > 0) {
            itemData = $item.eq(0).Serializes(additionals);
        }

        if (ajaxUrl == "") {
            Msg("url参数未设置!");
            return;
        }

        //confirm逻辑
        if (confirmMsg != "") {
            var postConfirm = $this.attr("data-confirm");
            if (postConfirm == undefined) {
                postConfirm = 0;
            }
            if (postConfirm == 0) {
                Confirm(confirmMsg, { icon: 3 }, function () { $this.attr("data-confirm", 1); $this.click(); });
                return;
            }
            $this.removeAttr("data-confirm");
        }
        var canExecuting = true;
        var beforeExecute = defaultParams.beforeExecute;
        if (typeof (window[beforeExecute]) == "function") {
            canExecuting = window[beforeExecute]($this);
        }
        if (canExecuting == false) { return; }

        Loading();
        var paramsData = itemData + addParams;
        var ajaxOptions = { type: "post", url: ajaxUrl, data: paramsData, async: async }
        Ajax(ajaxOptions, function (data, options) {
            CloseLoading();
            data = JsonParse(data);
            if (data.State == 1) {
                if (successMsg != "") {
                    Msg(successMsg);
                }
                var callBack = defaultParams.callBack;
                if (callBack != "") {
                    if (callBack == "refresh") {
                        location.href = location.href;
                    }
                    else if (typeof (window[callBack]) == "function") {
                        window[callBack]();
                    }
                }
            }
            else {
                Msg(data.Msg);
                return;
            }
        });

    })
})

//ui-setMultiple:批量设置,主要用于选中项后弹出新的界面来设置
$(document).ready(function () {
    var $setMultiple = $(".ui-setMultiple");
    $setMultiple.click(function () {
        var $this = $(this);

        var defaultParams = { title: "标题", setName: "", url: "", ids: "", itemPrefix: "#item_", accordingObj: ".checked-item", additionals: "", beforeExecute: "", addParams: "", width: "100%", height: "100%", target: 'self', shadeClose: true, limitLevel: "", limitFinal: "", includeChildNode: "", nullMsg: "请选择要操作的项!",confirmMsg: "" };
        var thisParam = $this.attr("data-custom-params");
        defaultParams = ExtendObject(defaultParams, thisParam);
        var ids = defaultParams.ids;
        if (typeof (ids) == "undefined") { ids = ""; }
        var $accordingObj = GetJqueryObj(defaultParams.accordingObj);
        if (ids == "") {
            ids = $accordingObj.GetValue();
        }
        if (ids == undefined) {
            return;
        }
        if (ids == "") {
            var nullMsg = defaultParams.nullMsg;
            Alert(nullMsg, 7);
            return;
        }

        var beforeExecute = defaultParams.beforeExecute;
        var canExecuting = true;
        if (typeof (window[beforeExecute]) == "function") {
            var setName = defaultParams.setName;
            canExecuting = window[beforeExecute](ids, setName);
        }
        if (canExecuting == false) { return; }

        var itemPrefix = defaultParams.itemPrefix;
        var Aids = ids.split(",");
        //第一次循环检测限制
        for (var i = 0; i < Aids.length; i++) {
            if (Aids[i] == "") { continue; }
            var $item = GetJqueryObj(itemPrefix + Aids[i]);
            if ($item.length == 0) {
                Alert("itemPrefix参数错误或找不到匹配的项!")
                return;
            }
            CheckMultiLevelNode($item, defaultParams);//检测节点限制
        }
        var url = defaultParams.url;
        if (url == "") {
            Alert("未设置url参数！");
            return false;
        }
        var confirmMsg = defaultParams.confirmMsg;
        //confirm逻辑
        if (confirmMsg != "") {
            var postConfirm = $this.attr("data-confirm");
            if (postConfirm == undefined) {
                postConfirm = 0;
            }
            if (postConfirm == 0) {
                Confirm(confirmMsg, { icon: 3 }, function () { $this.attr("data-confirm", 1); $this.click(); });
                return;
            }
            $this.removeAttr("data-confirm");
        }

        var addParams = defaultParams.addParams;
        if (addParams != "") {
            if (url.indexOf("?") > 0) {
                url += "&" + addParams;
            }
            else {
                url += "?" + addParams;
            }
            defaultParams.url = url;
        }
        IDialog(defaultParams);

    });
});

//ui-setField:设置字段值
$(document).ready(function () {
    var $setField = $(".ui-setField");
    $setField.click(function () {
        var $this = $(this);
        var defaultParams = { url: "", setField: "", setValue: "", ids: "", setName: "", itemPrefix: "#item_", accordingObj: ".checked-item", addParams:"", beforeExecute: "", callBack: "", successMsg: "操作成功!", limitLevel: "", limitFinal: "", includeChildNode: "", confirmMsg:"" };
        var thisParam = $this.attr("data-custom-params");
        defaultParams = ExtendObject(defaultParams, thisParam);
        var ids = defaultParams.ids;
        if (typeof (ids) == "undefined") { ids = ""; }
        var $accordingObj = GetJqueryObj(defaultParams.accordingObj);
        if (ids == "") {
            ids = $accordingObj.GetValue();
        }
        if (ids == undefined) {
            return;
        }
        if (ids == "") {
            Alert("请选择要操作的项!", 7);
            return;
        }
        var setField = defaultParams.setField;
        if (setField == "") {
            Alert("请设置setField参数", 7);
            return;
        }
        var setValue = defaultParams.setValue;
        if (setValue == "") {
            Alert("请设置setValue参数", 7);
            return;
        }
        var setName = defaultParams.setName;
        var beforeExecute = defaultParams.beforeExecute;
        var canExecuting = true;
        if (typeof (window[beforeExecute]) == "function") {
            //canExecuting = eval(beforeExecute + "('" + ids + "','" + setName + "')");
            canExecuting = window[beforeExecute](ids, setName);
        }
        if (canExecuting == false) { return; }

        var itemPrefix = defaultParams.itemPrefix;
        var Aids = ids.split(",");
        //第一次循环检测限制
        for (var i = 0; i < Aids.length; i++) {
            if (Aids[i] == "") { continue; }
            var $item = GetJqueryObj(itemPrefix + Aids[i]);
            if ($item.length == 0) {
                Alert("itemPrefix参数错误或找不到匹配的项!")
                return;
            }
            CheckMultiLevelNode($item, defaultParams);//检测节点限制
        }
        var ajaxUrl = defaultParams.url;
        if (ajaxUrl == "") {
            Msg("url参数未设置!");
            return;
        }

        var confirmMsg = defaultParams.confirmMsg;
        //confirm逻辑
        if (confirmMsg != "") {
            var postConfirm = $this.attr("data-confirm");
            if (postConfirm == undefined) {
                postConfirm = 0;
            }
            if (postConfirm == 0) {
                Confirm(confirmMsg, { icon: 3 }, function () { $this.attr("data-confirm", 1); $this.click(); });
                return;
            }
            $this.removeAttr("data-confirm");
        }

        var addParams = defaultParams.addParams;
        if (addParams != "") {
            addParams = "&" + addParams;
        }
        addParams += "&setField=" + setField + "&setValue=" + setValue;
        Loading();
        var paramsData = "ids=" + ids + addParams;
        var ajaxOptions = { type: "post", url: ajaxUrl, data: paramsData, async: true }
        Ajax(ajaxOptions, function (data, options) {
            CloseLoading();
            data = JsonParse(data);
            if (data.State == 1) {
                Msg(defaultParams.successMsg);
            }
            else {
                Msg(data.Msg);
                return;
            }
            var callBack = defaultParams.callBack;
            if (callBack == "refresh") {
                location.href = location.href;
            }
            else if (typeof (window[callBack]) == "function") {
                window[callBack](ids);
            }

        });
    });
});


//ui-ajaxRequest:Ajax请求
$(document).ready(function () {
    var defaultParams = { type: "get", url: "", accordingObj: '', additionals: "", async: true, beforeExecute: "", callBack: "", confirmMsg: "是否确定执行？", successMsg: "执行成功！" };
    $(document).on("click", ".ui-ajaxRequest", defaultParams, function (event) {
        var $this = $(this);
        var defaultParams = event.data;
        var thisParam = $this.attr("data-custom-params");
        defaultParams = ExtendObject(defaultParams, thisParam);
        var requestType = defaultParams.type;
        var confirmMsg = defaultParams.confirmMsg;
        var successMsg = defaultParams.successMsg;
        var async = defaultParams.async;
        var beforeExecute = defaultParams.beforeExecute;
        var callBack = defaultParams.callBack;
        var ajaxUrl = defaultParams.url;
        var canExecuting = true;

        if (beforeExecute != "") {
            if (typeof (window[beforeExecute]) == "function") {
                canExecuting = window[beforeExecute]($this)
            }
        }
        if (canExecuting == false) { return; }
        //confirm逻辑
        if (confirmMsg != "") {
            var postConfirm = $this.attr("data-confirm");
            if (postConfirm == undefined) {
                postConfirm = 0;
            }
            if (postConfirm == 0) {
                Confirm(confirmMsg, { icon: 3 }, function () { $this.attr("data-confirm", 1); $this.click(); });
                return;
            }
            $this.removeAttr("data-confirm");
        }

        if (ajaxUrl == "") {
            Alert("url参数未设置!")
        }
        var paramsData = {};
        var additionals = defaultParams.additionals;
        var accordingObj = defaultParams.accordingObj;
        var $accordingObj = GetJqueryObj(accordingObj);
        if ($accordingObj.length>0) {
            paramsData = $accordingObj.Serializes(accordingObj);
        }
        Loading();
        var ajaxOptions = { type: requestType, url: ajaxUrl, data: paramsData, async: async }
        Ajax(ajaxOptions, function (data, options) {
            CloseLoading();
            if (typeof (data) != "object") {
                data = $.parseJSON(data);
            }
            if (data.State == 1) {

                if (successMsg != "")
                {
                    Msg(successMsg);
                }
                else if (data.Msg != "")
                {
                    Alert(data.Msg)
                }
 
                if (callBack != "" && typeof (window[callBack]) == "function") {
                    window[callBack](data);
                }
            }
            else {
                if (data.Msg != "") {
                    Alert(data.Msg)
                }
                else {
                    Alert("提交出现错误!");
                }
            }
        });

    });
});

//ui-uploadPanel:上传面板
function UploadPanel(objName, dialogOptions) //上传元素的Id
{
    var defaultParams = { title: "上传界面", url: "/E/UploadPanel", width: "700px", height: "400px", target: "self" }
    defaultParams = ExtendObject(defaultParams, dialogOptions);
    var uploadUrl = defaultParams.url;
    if (uploadUrl.indexOf("?") < 0) {
        uploadUrl += "?"
    }
    defaultParams.url = uploadUrl + "&objName=" + UrlEncode(objName);
    IDialog(defaultParams);
}


$(document).ready(function () {
    var $uploadPanel = $("input.ui-uploadPanel");
    $uploadPanel.each(function () {
        InitUploadPanel($(this));
    });
});

//初始化上传面板
function InitUploadPanel(jqObj) {
    var $this = jqObj;
    var initialization = $this.attr("data-initialization");
    if (initialization == undefined) {
        initialization = false;
    }
    else {
        initialization = true;
    }
    $this.attr("data-initialization", "true");
    var $input = $this;
    var objId = $this.attr("id");
    var defaultParams = { fileType: 'image', fileNumLimit: 1, uploadPanelUrl: "/E/UploadPanel",dialogTitle:"文件上传",language:"en"}
    var uploadParams = $this.attr("data-upload-params");
    defaultParams = ExtendObject(defaultParams, uploadParams);
    var fileNumLimit = defaultParams.fileNumLimit;
    var language = defaultParams.language;
    var dialogTitle = defaultParams.dialogTitle;
    var fileType = defaultParams.fileType;
    $this.attr("data-fileNumLimit", fileNumLimit);
    if (!initialization) {
        var boxHtml = "";
        if (fileType == "images" || fileType == "image") {
            boxHtml = "<div class=\"upload-attachments-list upload-images-list\"><dl><dd class=\"item hidden\" data-id=\"{id}\"  data-xuhao=\"{xuhao}\"  data-path=\"{path}\" data-thumbnail=\"{thumbnail}\" data-name=\"{name}\"><a href=\"{path}\" target=\"_blank\"  title=\"{name}\"><img src=\"{thumbnail}\"></a>";
            boxHtml += "<span class=\"lb-control-box clearfix\">";
            if (fileType == "images") {
                boxHtml += "<span class=\"lb-control-direction lb-control-left\" data-direction=\"left\" title=\"前移\"><i class='fa fa-angle-left' aria-hidden='true'></i></span><span class=\"lb-control-direction lb-control-right\" data-direction=\"right\" title=\"后移\"><i class='fa fa-angle-right' aria-hidden='true'></i></span>";
            }
            boxHtml += " <i class=\"btn-control btn-delete fa fa-trash-o\"  title=\"" + (language == "cn" ? "删除" : "Delete")+"\"></i></span></dd>";
            boxHtml += "<dd class=\"btn-upload\"><a href=\"javascript:void(0)\" title=\"" + (language == "cn" ? "点击上传" : "Update File")+"\"><i class=\"fa fa-plus\"></i><a></dd></dl></div>"
        }
        else if (fileType == "file") {
            boxHtml = "<span class=\"input-group-btn\"><button class=\"btn btn-default btn-upload\" type=\"button\" title=\"" + (language == "cn" ? "点击上传" : "Update File") +"\"><i class=\"fa fa-upload\"></i></button><button class=\"btn btn-default btn-delete\" type=\"button\" title=\"删除\"><i class=\"fa fa-trash-o\"></i></button></span>"
        }
        else if (fileType == "files") {
            boxHtml = "<div class=\"upload-attachments-list upload-attachments-file-list\"><dl><dd class=\"item hidden\"  data-id=\"{id}\" data-xuhao=\"{xuhao}\"  data-path=\"{path}\" data-thumbnail=\"{thumbnail}\" data-name=\"{name}\"><a href=\"{path}\" target=\"_blank\"  title=\"{name}\">{path}</a><span class=\"lb-control-box\"><i class=\"btn-control btn-delete fa fa-trash-o\"  title=\"删除\"></i></span></dd>";
            boxHtml += "<dd class=\"btn-upload\"><a href=\"javascript:void(0)\" title=\"" + (language == "cn" ? "点击上传" : "Update File") +"\"><i class=\"fa fa-plus\"></i><a></dd></dl></div>"
        }
        $this.after(boxHtml);
        if (fileType == "file") {
            var $thisparent = $this.parent();
            //$thisparent.html("<div class=\"input-group\">" + $thisparent.html()+"</div>");
            ////$this.remove();
            ////var $inputgroup = $this.siblings(".input-group");
            ////$inputgroup.prepend($this.prop("outerHTML"));
        }
        else {
            $this.hide();
        }
    }

    var $attachments = $this.siblings(".upload-attachments-list");
    //注册按钮点击
    var $btnButton;
    var $btnDelete;
    if (fileType == "image" || fileType == "images" || fileType == "files") {
        $btnButton = $attachments.find(".btn-upload");
    }
    else {
        $btnButton = $this.siblings(".input-group-btn").children(".btn-upload");
        $btnDelete = $btnButton.siblings(".btn-delete");
    }

    var uploadUrl = defaultParams.uploadPanelUrl + "?objName=" + UrlEncode("#" + objId);
    if (!initialization) {
        $btnButton.click(function () {
            var params = { title: dialogTitle, url: uploadUrl, width: "700px", height: "400px", target: "self" }
            IDialog(params);
        });
    }

    var uploadValue = $this.val();
    if (uploadValue == "" || IsInt(uploadValue)) {
        uploadValue = "";
    }
    var data;
    if (fileType == "file") {
        if (uploadValue != "") {
            $btnButton.hide();
            $btnDelete.show();
        }
        else {
            $btnButton.show();
            $btnDelete.hide();
        }
        if (!initialization) {
            $btnDelete.on("click", function () {
                var $this = $(this);
                $this.hide();
                $input.val("");
                $btnButton.show();
            });
        }

    }
    else if (fileType == "image") {
        if (uploadValue != "") {
            var name = uploadValue.substring(uploadValue.lastIndexOf("/") + 1);
            var thumbnail = uploadValue;
            data = [{ "path": uploadValue, "name": name, "thumbnail": thumbnail }];
            $btnButton.hide();
            $attachments.children("dl").ListBind({ showFooter: false }, data);
        }
    }
    else {
        var uploadedNum = 0;
        if (uploadValue != "") {
            data = JsonParse(uploadValue);
            uploadedNum = data.length;
            $this.attr("data-fileNumLimit", fileNumLimit - uploadedNum);
            $this.attr("data-uploadedNum", uploadedNum);
            if (uploadedNum >= fileNumLimit && fileNumLimit != 0) {
                $btnButton.hide();
            }
        }
        $attachments.children("dl").ListBind({ showFooter: false }, data);
        $btnButton.insertAfter($attachments.find(".item").last());
    }

    var IntiInputData = function (options,updateXuhao) {
        var fileType = options.fileType;
        var $btnButton = options.btnUpload;
        var $input = options.input;
        var $attachments = options.attachments;
        if (fileType == "image" || fileType == "file") {
            $input.val("");
            $btnButton.show();
        }
        else {
            var uploadedNum = 0;
            var jsonArray = new Array();
            var $items = $attachments.find(".item");
            var ids = "";
            var xuhaos = "";
            var id = 0;
            var xuhao = 0;
            $items.each(function (index) {
                var $this = $(this);
                id = $this.attr("data-id");
                xuhao++;
                ids += id + ",";
                xuhaos+= xuhao + ",";
                var json = { "path": $this.attr("data-path"), "thumbnail": $this.attr("data-thumbnail"), "name": $this.attr("data-name"), "id": id, "xuhao": xuhao };
                jsonArray[index] = json;
                uploadedNum++;
            });
            if (jsonArray.length == 0) {
                $input.val("");
            }
            else {
                $input.val(JsonToString(jsonArray));
            }
            var fileNumLimit = $input.attr("data-fileNumLimit");
            $input.attr("data-fileNumLimit", fileNumLimit + 1);
            $input.attr("data-uploadedNum", uploadedNum);
            if (fileNumLimit + 1 > 0) {
                $btnButton.show();
            }
            if (updateXuhao)
            {
                var attachemntTable = $input.attr("data-attachmentTable");
                if (attachemntTable != undefined)
                {
                    var ajaxOptions = { type: "post", dataType: "html", async: true, url: "/E/UpdateListXuhao/", data: { table: attachemntTable, ids: ids, values: xuhaos } };
                    Ajax(ajaxOptions);
                }

            }

        }
    };

    if (!initialization) {
        var options = { fileType: fileType, btnUpload: $btnButton, input: $input, attachments: $attachments };
        $attachments.on("click", ".lb-control-direction", options , function (event) {
            var $this = $(this);
            var $thisItem = $this.parent().parent();
            var direction = $this.attr("data-direction");
            if (direction == "left")
            {
                var $prev = $thisItem.prev(".item");
                if ($prev.length > 0)
                {
                    $prev.before($thisItem);
                }
            }
            else
            {
                var $next = $thisItem.next(".item");
                if ($next.length > 0) {
                    $next.after($thisItem);
                }
            }
            IntiInputData(event.data,true)
        });
        ///点击删除按钮

        $attachments.on("click", ".btn-delete", options, function (event) {

            var $this = $(this);
            var thiParent = $this.parent().parent();
            thiParent.remove();
            IntiInputData(event.data,false);
        });
    }
}

//上传完毕后的回调函数，jsonData是数组
function UploadPaneledCallBack(objName, jsonData) {
    var $obj = GetJqueryObj(objName);
    if ($obj.length == 0) {
        Msg("未找到" + objName + "对象！")
        return;
    }
    var defaultParams = { fileType: 'image', fileNumLimit: 1 }
    var uploadParams = $obj.attr("data-upload-params");
    defaultParams = ExtendObject(defaultParams, uploadParams);
    var fileNumLimit = defaultParams.fileNumLimit;
    var fileType = defaultParams.fileType;
    if (fileType == "file") {
        var path = jsonData[0].path;
        $obj.val(path);
        var $btnButton = $obj.siblings(".input-group-btn").children(".btn-upload");
        var $btnDelete = $btnButton.siblings(".btn-delete");
        $btnButton.hide();
        $btnDelete.show();
        return;
    }
    var $attachments = $obj.siblings(".upload-attachments-list");
    var $btnButton = $attachments.find(".btn-upload");

    if ($attachments.length == 0) {
        Msg("未找到upload-attachments-list对象！")
        return;
    }
    var bindData = null;
    if (fileType == "image") {
        var path = jsonData[0].path;
        var name = jsonData[0].name;
        $obj.val(path);
        bindData = [{ "path": path, "name": name, "thumbnail": path }];
        $btnButton.hide();
    }
    else {
        bindData = $obj.val();
        if (bindData != "") {
            bindData = ObjectParse(bindData);
            if (jsonData != "") {
                bindData.push.apply(bindData, jsonData);
            }
        }
        else {
            bindData = jsonData;
        }
        bindData.sort(function (a, b) { return (parseInt(a.Xuhao) > parseInt(b.Xuhao) ? 1 : -1) })
        var uploadedNum = bindData.length;
        $obj.attr("data-uploadedNum", uploadedNum);
        $obj.attr("data-fileNumLimit", fileNumLimit - uploadedNum);
        if (uploadedNum >= fileNumLimit && fileNumLimit > 0) {
            $btnButton.hide();
        }
        $obj.val(JsonToString(bindData));
    }
    $attachments.children("dl").ListBind({ showFooter: false }, bindData);
    $btnButton.insertAfter($attachments.find(".item").last());
}

//删除上传的文件
; (function ($) {
    $.fn.DeleteUploadedFile = function () {
        var $thisObj = this;
        $thisObj.val("").data("pass", 0);
        var $btnDelete = $thisObj.siblings(".upload-attachments-list").find(".btn-delete");
        $btnDelete.click();
    }
})(jQuery);


//.ui-queryString：自动构造搜索参数并自动赋值
$(document).ready(function () {
    var actedName = ",";
    var $queryString = $(".ui-queryString");
    $queryString.each(function () {
        var $this = $(this);
        var name = $this.attr("name");
        if (name == undefined) {
            return true;
        }
        var urlvalue = Request(name);
        var Aurlvalue = urlvalue.split(",");
        var $objs = $("[name='" + name + "']");
        if ($objs.length > 1) {
            if (!actedName.split(",").Contains(name)) {
                $objs.each(function (index) {
                    var obj = $objs.eq(index);
                    if (typeof (Aurlvalue[index]) != "undefined") {
                        obj.val(Aurlvalue[index]);
                    }
                });
                actedName += name + ",";
            }
        }
        if ($objs.length == 1) {
            if (urlvalue != "") {
                $this.val(urlvalue);
                if ($this[0].tagName.toLowerCase() == "select") {
                    if ($this[0].selectedIndex == -1) {
                        $this[0].selectedIndex = 0;
                    }
                }
            }
        }

    });
});

//上一页，下一页触发
function _PageSearch(type) {
    var page = $("#page").val();
    if (!IsInt(page)) {
        page = 1;
    }
    if (type == "-") {
        page--;
    }
    else if (type == "+") {
        page++;
    }
    else {
        page = $("#page").val();
    }
    if (!IsInt(page)) {
        page = 1;
    }
    $("#page").val(page);
    LoadData();
    //_InitListData();
}


//.ui-queryString-search：触发queryString();
$(document).ready(function () {
    var $searchBt = $(".ui-queryString-search");
    $searchBt.each(function (index) {
        var $this = $(this);
        if ($this[0].tagName == "SELECT") {
            $this.change(function () {
                $("#page").val("1");
                LoadData();
                //_InitListData();
            });
        }
        else {
            $this.click(function () {
                $("#page").val("1");
                LoadData();
                //_InitListData();
            });
        }
    });
});

//.ui-pagePanel:翻页面板

; (function ($, window, undefined) {
    $.fn.CreatePagePanel = function (pageInfo, customPagesize) {
        var $thisObj = this;
        if ($thisObj.length == 0) {
            return;
        }
        var defaultParams = { pageCount: 1, recordCount: 0, pageSize: 20, page: 1 };
        defaultParams = ExtendObject(defaultParams, pageInfo);
        var pageCount = defaultParams.pageCount;
        var recordCount = defaultParams.recordCount;
        var pageSize = defaultParams.pageSize;
        var currentPage = defaultParams.page;
        if (currentPage == 0) { currentPage = 1; }
        //currentPage = parseInt(currentPage);
        //pageCount = parseInt(pageCount);
        if (currentPage > pageCount) {
            currentPage = pageCount;
        }
        var html = '<div class="form-inline form-group-sm clearfix">';
        html += '<span class="right input-group input-group-sm"><span class="lb_recordcount input-group-addon" data-recordCount="' + recordCount + '">共' + recordCount + '条</span> ';
        //html += '<span class="lb_currentpage" currentPage="' + currentPage + '" pageCount="' + pageCount + '">当前页次: ' + currentPage + '/' + pageCount + '</span> ';
        html += '<span class="input-group-btn"><button type="button" class="btn btn-sm btn-default ui-prevpage" ' + (currentPage == "1" ? "disabled" : "") + ' onclick="_PageSearch(\'-\')">上一页</button>';
        html += '<button type="button" class="btn btn-sm btn-default ui-nextpage" ' + (currentPage == pageCount ? "disabled" : "") + ' onclick="_PageSearch(\'+\')">下一页</button></span>';
        html += '<select id="page" name="page" class="form-control ui-queryString" style="width:auto;display:inline" onchange="_PageSearch()">';
        var firstOption = "", lastOption = "";
        var startpage = currentPage - 10;
        if (startpage < 1) {
            startpage = 1;
        }
        else {
            firstOption += '<option value="1">第1页</option>';
            if (startpage > 2) {
                firstOption += '<option value="' + (startpage - 1) + '">...</option>';
            }
        }
        var endpage = currentPage + 10;
        if (endpage >= pageCount) {
            endpage = pageCount;
        }
        else {
            if (endpage < pageCount - 1) {
                lastOption += '<option value="' + (endpage + 1) + '">...</option>';
            }
            lastOption += '<option value="' + pageCount + '">第' + pageCount + '页</option>';
        }

        html += firstOption;
        for (var i = startpage; i <= endpage; i++) {
            html += '<option value="' + i + '" ' + (i.toString() == currentPage ? " selected" : "") + '>第' + i + '页</option>';
        }
        html += lastOption;
        html += '</select>';
        if (customPagesize) {
            html += '<select id="pagesize" name="pagesize" class="form-control ui-queryString" style="width:auto;display:inline" onchange="_PageSearch()">';
            var pageSizes = "10,20,30,40,50,100," + pageSize;
            var arrPageSizes = Unique(pageSizes).sort(function (a, b) { return a - b });
            for (var i = 0; i < arrPageSizes.length; i++) {
                html += '<option value="' + arrPageSizes[i] + '" ' + (arrPageSizes[i] == pageSize ? " selected" : "") + '>' + arrPageSizes[i] + '条/页</option>';
            }
            html += '</select>';
            //html += '<span>每页</span><input type="text" id="pagesize" name="pagesize" class="form-control ui-queryString" style="width:60px;display:inline" value="' + pageSize + '"  onkeyup="this.value=this.value.replace(/[^0-9-]+/,\'\')"/><span>条</span> ';
            //html += '<button type="button" class="btn btn-sm btn-default" onclick="_PageSearch()">GO</button>';
        }
        else {
            html += "<span> </span>";
        }
        html += "</span></div>";
        $thisObj.html(html);
    }

})(jQuery, window);



//ui-setName：改变对应标签的name和id属性
var SetName = function (obj, defaultParams) {
    var $this = obj;
    var $currentOption = $this.children("option:selected")
    var value = $this.val();
    var fieldType = $currentOption.attr("valueType");
    if (typeof (fieldType) == "undefined") {
        fieldType = "";
    }
    var searchType = $currentOption.attr("searchType");
    if (typeof (searchType) == "undefined") {
        searchType = "";
    }
    var thisParam = $this.attr("data-custom-params");
    defaultParams = ExtendObject(defaultParams, thisParam);
    var accordingObj = defaultParams.accordingObj;
    var $accordingObj = GetJqueryObj(accordingObj);
    if (accordingObj.length == 0 || value == "") {
        return;
    }
    else {
        $accordingObj.prop("name", value).prop("id", value).val(Request(value));
        if (fieldType == "datetime") {
            $accordingObj.addClass("laydate-icon").attr("onclick", "laydate({istime:true,format:'YYYY-MM-DD hh:mm:ss'})")
        }
        else if (fieldType == "date") {
            $accordingObj.addClass("laydate-icon").attr("onclick", "laydate({istime:true,format:'YYYY-MM-DD'})")
        }
        else {
            $accordingObj.removeClass("laydate-icon").removeAttr("onclick").attr("placeholder", "请输入关键词");
        }
        if (searchType == "range") {
            $accordingObj.addClass("betweenSearchKeyword");
            if ($(".betweenSearchKeyword").length == 1) {
                $accordingObj.after(" " + $accordingObj.prop("outerHTML"));
            }
            if (fieldType == "datetime") {
                $(".betweenSearchKeyword").eq(0).attr("placeholder", "开始时间")
                $(".betweenSearchKeyword").eq(1).attr("placeholder", "结束时间")
            }
            else {
                $(".betweenSearchKeyword").eq(0).attr("placeholder", "起始值")
                $(".betweenSearchKeyword").eq(1).attr("placeholder", "结束值")
            }
        }
        else {
            if ($(".betweenSearchKeyword").length == 2) {
                $(".betweenSearchKeyword").eq(1).remove();
            }
            $accordingObj.removeClass("betweenSearchKeyword");
        }
    }
}
$(document).ready(function () {
    var $setName = $(".ui-setName");
    var defaultParams = { accordingObj: ".ui-keyword" };
    $setName.each(function () {
        SetName($(this), defaultParams);
    });
    $setName.change(function () {
        SetName($(this), defaultParams);
    });
});

//把表单设置为只读属性.ui-readonly,.ui-add-readonly和.ui-edit-readonly
$(document).ready(function () {
    $readonly = $(".ui-readonly");
    $addDisabled = $(".ui-add-readonly");
    $editDisabled = $(".ui-edit-readonly");
    $readonly.attr("readonly", "readonly");
    var id = Request("id");
    if (IsInt(id)) {
        $editDisabled.attr("readonly", "readonly");
    }
    else {
        $addDisabled.attr("readonly", "readonly");
    }

});

//ui-show-hide：表单显示隐藏
$(function () {
    $(document).ready(function () {
        var $obj = $(".ui-show-hide");
        $obj.each(function () {
            var $this = $(this);
            var defaultParams = { ignoreHidden: false, ignoreParentHidden: false };
            var thisParam = $this.attr("data-custom-params");
            defaultParams = ExtendObject(defaultParams, thisParam);
            var ignoreHidden = defaultParams.ignoreHidden;
            var ignoreParentHidden = defaultParams.ignoreParentHidden;
            if (ignoreHidden && $this.is(":hidden"))
            {
                return true;
            }
            if (ignoreParentHidden  && $this.parent().is(":hidden")) {
                return true;
            }
            var tagName = $this[0].tagName;
            if (tagName == "SELECT") {
                var showObjs = $this.children("option:selected").attr("showObjs");
                var hideObjs = $this.children("option:selected").attr("hideObjs");
                SetShowhide(showObjs, "show");
                SetShowhide(hideObjs, "hiden");
                $this.change(function () {
                    showObjs = $(this).children("option:selected").attr("showObjs");
                    hideObjs = $(this).children("option:selected").attr("hideObjs");
                    var checkObjs = $this.children("option:selected").attr("checkObjs");
                    SetShowhide(showObjs, "show");
                    SetShowhide(hideObjs, "hiden");
                    SetCheckedOrUnChecked(checkObjs, true);
                })
            }
            if (tagName == "INPUT") {
                var showObjs = $this.attr("showObjs");
                var hideObjs = $this.attr("hideObjs");
                var checkObjs = $this.attr("checkObjs");
                if ($this.attr("type") == "checkbox") {
                    if ($this.is(":checked") == false) {
                        SetShowhide(showObjs, "hidden");
                        SetShowhide(hideObjs, "show");
                    } else {
                        SetShowhide(showObjs, "show");
                        SetShowhide(hideObjs, "hiden");
                    }
                }
                else {
                    if ($this.is(":checked") == true) {
                        SetShowhide(showObjs, "show");
                        SetShowhide(hideObjs, "hiden");
                    }
                }
                $this.click(function () {
                    if ($this.attr("type") == "checkbox") {
                        if ($this.is(":checked") == false) {
                            SetShowhide(showObjs, "hidden");
                            SetShowhide(hideObjs, "show");
                        } else {
                            SetShowhide(showObjs, "show");
                            SetShowhide(hideObjs, "hiden");
                            SetCheckedOrUnChecked(checkObjs, true);
                        }
                    } else {
                        SetShowhide(showObjs, "show");
                        SetShowhide(hideObjs, "hiden");
                        SetCheckedOrUnChecked(checkObjs, true);
                    }
                })
            }
        });
    });

    function SetCheckedOrUnChecked(objs, isChecked) {
        //alert(typeof (objs))
        if (typeof (objs) != "undefined") {
            var Aobjs = objs.split(",");
            for (var i = 0; i < Aobjs.length; i++) {
                if (isChecked) {
                    $(Aobjs[i]).prop("checked", true);
                }
                else {
                    $(Aobjs[i]).prop("checked", false);
                }
            }
        }
    }


    function SetShowhide(objs, act) {
        //alert(typeof (objs))
        if (typeof (objs) != "undefined") {
            var Aobjs = objs.split(",");
            for (var i = 0; i < Aobjs.length; i++) {
                if (act == "show") {
                    $(Aobjs[i]).show();
                    //SetInsertRemoval(Aobjs[i], "show");
                }
                else {
                    $(Aobjs[i]).hide();
                    //SetInsertRemoval(Aobjs[i], "hiden");
                }
            }
        }
    }

    function SetInsertRemoval(objs, act) {
        var $objs = $(objs).find("input,select,textarea");
        $objs.each(function () {
            var $this = $(this);
            if (act == "show" && $this.attr("data-validate-1")) {
                $this.attr("data-validate", $this.attr("data-validate-1"));
            }
            else if (act == "hiden" && $this.attr("data-validate")) {
                $this.attr("data-validate-1", $this.attr("data-validate"));
                $this.removeAttr("data-validate");
            }
        });
    }
})

//ui-fillSelect,json填充select标签,如果是isTree必须有字段level和is_final,guid和parent_guid,defaultValue表示默认选种的值
$(function () {
    var $fillSelect = $(".ui-fillSelect");
    $fillSelect.each(function () {
        var $this = $(this);
        $this.SelectBind();
    });
});

//ui-fillSelect,json填充select标签,如果是isTree必须有字段level和is_final,guid和parent_guid,defaultValue表示默认选种的值
$(function () {
    var $selectBind = $(".ui-selectBind");
    $selectBind.each(function () {
        var $this = $(this);
        if ($this.attr("data-source")) {
            $this.SelectBind({ dataDourceFrom: "attr" });
        }
        else {
            $this.SelectBind({ dataDourceFrom: "ajax" });
        }
    });
});


//ui-removeSelectedOptions：清理选中的options
$(document).ready(function () {
    var $removeSelectedOptions = $(".ui-removeSelectedOptions");
    $removeSelectedOptions.click(function () {
        var defaultParams = { obj: "" };
        var thisParam = $(this).attr("data-custom-params");
        defaultParams = ExtendObject(defaultParams, thisParam);
        var objectName = defaultParams.obj;
        if (objectName == "") {
            alert("params中的obj参数未设置！")
            return;
        }
        var $object = GetJqueryObj(objectName);
        if ($object.length == 0) {
            alert("params中的obj对象未找到！")
            return;
        }
        if ($object[0].tagName != "SELECT") {
            alert("只能操作select表单！")
            return;
        }
        $object.RemoveSelected();
    });
});



//ui-validateCode,验证码的点击事件
$(function () {
    var $obj = $("img.ui-verificationCodeImage");
    $obj.css("cursor", "pointer");
    $obj.click(function () {
        $this = $(this);
        var R = Math.floor(Math.random() * 100000000);
        var imgSrc = $this.attr("src");
        if (imgSrc.indexOf("?") < 0) {
            imgSrc += "?"
        }
        if (imgSrc.indexOf("r=") < 0) {
            imgSrc += "&r=" + R;
        }
        else {
            var regExp = new RegExp("&r=[0-9]*", "gi");
            imgSrc = imgSrc.replace(regExp, "&r=" + R);
        }
        $this.attr("src", imgSrc);
    });
});



//ui-changeTrigger 表单改变时触发
function _InitChangeTrigger(jqobj) {
    var $this = jqobj;
    var theValue = $this.GetValue();
    var triggerObj = $this.attr("data-triggerObj");
    if (typeof (triggerObj) == "undefined") {
        return;
    }
    var arrTriggerObj = triggerObj.split(",");
    for (i = 0; i < arrTriggerObj.length; i++) {
        if (arrTriggerObj[i] == "") { continue; }
        var $obj = GetJqueryObj(arrTriggerObj[i]);
        $obj.SetValue(theValue);
    }
}

$(function () {
    var $changeTrigger = $(".ui-changeTrigger");
    $changeTrigger.each(function () {
        _InitChangeTrigger($(this))
    });
    $changeTrigger.on("input propertychange", function () {
        _InitChangeTrigger($(this))
    });
});

//目录树展开开关
$(function () {
    var $folderSwitch = $(".ui-folder-switch");
    $folderSwitch.click(function () {
        var $this = $(this);
        if ($this.data("expand") == 1) {
            var $floderOpen = $(".data-treelist-bind-item").filter("[data-parentId='0']").find(".fa-folder-open");
            $this.data("expand", 0)
            $floderOpen.filter(".fa-folder-open").trigger("click");
            $this.text("展开");
        }
        else {
            var $floderColose = $(".data-treelist-bind-item").find(".fa-folder");
            $this.data("expand", 1)
            $floderColose.filter(".fa-folder").trigger("click");
            $this.text("关闭");
        }
    });
});

//初始化列表页的排序表单，class必须有listpaixu
function _InitListXuhao() {
    //给上传input添加事件
    var $inputpaixu = $(".ui-listXuhao");
    $inputpaixu.each(function (i) {
        var str = "<a href=\"javascript:void(0)\" onclick=\"ListPaiXu(this,'up')\" title=\"向前移动\" style=\"padding:0px 2px;font-size:14px;\">↑</a>";
        str += "<a href=\"javascript:void(0)\" onclick=\"ListPaiXu(this,'down')\" title=\"向下移动\" style=\"padding:0px 2px;font-size:14px;\">↓</a>";
        $(this).after(str);
    });
}


/*列表页序号排序，同一级别的tr的class必须相同，多级列表必须有theid和parent_id属性*/
function ListPaiXu(obj, act) {
    var $tempdiv_1 = $("#_temp_paixuhao_div_1");
    var $tempdiv_2 = $("#_temp_paixuhao_div_2");
    if ($tempdiv_1.length == 0) {
        $("body").append("<div id='_temp_paixuhao_div_1'></div>");
        $tempdiv_1 = $("#_temp_paixuhao_div_1");
    }
    if ($tempdiv_2.length == 0) {
        $("body").append("<div id='_temp_paixuhao_div_2'></div>");
        $tempdiv_2 = $("#_temp_paixuhao_div_2");
    }
    var thisItem = $(obj).parents(".data-list-bind-item");
    if (thisItem.length == 0) {
        return;
    }
    thisItem = thisItem.eq(0);
    var itemParentObj = thisItem.parent();
    var parentId = thisItem.attr("data-parentId");
    var saveLevelItem, prevItem, nextItem;
    var isMultipleLevel = false;
    if (typeof (parentId) != "undefined") {
        isMultipleLevel = true;
    }
    if (isMultipleLevel) {
        prevItem = thisItem.prevAll("[data-parentId='" + parentId + "']").first();
        nextItem = thisItem.nextAll("[data-parentId='" + parentId + "']").first();
    }
    else {
        prevItem = thisItem.prevAll(".data-list-bind-item").first();
        nextItem = thisItem.nextAll(".data-list-bind-item").first();
    }

    if (act == "up") {
        if (prevItem.length > 0) {
            RemoveChildTr(thisItem, $tempdiv_1);
            RemoveChildTr(prevItem, $tempdiv_2);
            thisItem.insertBefore(prevItem);
            InsertChildTr(thisItem, prevItem);
        }
        else {
            Msg("已经是第一个了!");
        }
    }
    else {
        if (nextItem.length > 0) {
            RemoveChildTr(thisItem, $tempdiv_1);
            RemoveChildTr(nextItem, $tempdiv_2);
            thisItem.insertAfter(nextItem);
            InsertChildTr(thisItem, nextItem);
        }
        else {
            Msg("已经是最后一个了!");
        }

    }

    thisItem.addClass("current").siblings().removeClass("current");
    thisItem.find(".ui-listXuhao")[0].focus();


    if (isMultipleLevel) {
        saveLevelItem = itemParentObj.children("[data-parentId='" + parentId + "']");
    }
    else {
        saveLevelItem = itemParentObj.children(".data-list-bind-item");
    }

    var table, field, ids = "", values = "";
    //重新设置序号
    saveLevelItem.each(function (index) {
        var $this = $(this);
        var $xuhao = $this.find(".ui-listXuhao");
        var currentXuhao = index + 1;
        $xuhao.val(currentXuhao);
        var id = $xuhao.attr("data-id");
        table = $xuhao.attr("data-table");
        field = $xuhao.attr("name");
        if (id != undefined && table != undefined) {
            ids += id + ",";
            values += currentXuhao + ",";
        }
    });

    if (table != undefined && field != undefined) //同时提交到后台更新，不需要再手工更新了
    {
        var ajaxOptions = { type: "post", dataType: "html", async: true, url: "/E/UpdateListXuhao/", data: { table: table, field: field, ids: ids, values: values } };
        Ajax(ajaxOptions);
    }

    function RemoveChildTr(objTR, divbox) {
        divbox.html();
        var thisId = objTR.attr("data-id");
        if (typeof (thisId) == "undefined") {
            return;
        }
        var $nextTr = objTR.nextAll();
        $nextTr.each(function () {
            var $this = $(this);
            if ($this.attr("data-parentId") == thisId) {
                divbox.append($this.clone());
                RemoveChildTr($this, divbox); //递归移动
                $this.remove();
            }
        });
    }

    function InsertChildTr(thisItem, mbTR) {
        thisItem.after($tempdiv_1.html());
        mbTR.after($tempdiv_2.html());
        $tempdiv_1.html('');
        $tempdiv_2.html('');
    }

    if (isMultipleLevel) {
        ReInitTreeList(itemParentObj)
    }

    //初始化树
    function ReInitTreeList(parentObj) {
        //var $thisObj=parentObj
        //$thisObj.InitTreeList(); //在dataBind中定义了
    }

}

//tab选项卡插件
; (function ($) {
    $.fn.InitTab = function (thisOptions, callBack) {
        var $thisObj = this;
        if ($thisObj.length == 0) {
            alert("未找到InitTab对象!");
            return;
        }
        if (arguments.length == 1) {
            if (typeof (arguments[0]) == "function") {
                callBack = arguments[0];
            }
        }
        var defaultParams = { trigger: "click", effect: "", delayTime: 500, defaultIndex: 0, containerObjName: "", currentClass: "active", headBoxClass: "nav nav-tabs clearfix", autoDialog: false };
        defaultParams = ExtendObject({}, defaultParams, thisOptions);
        var headBoxClass = defaultParams.headBoxClass;
        var trigger = defaultParams.trigger;
        var effect = defaultParams.effect;
        var delayTime = defaultParams.delayTime;
        var defaultIndex = defaultParams.defaultIndex;
        var currentClass = defaultParams.currentClass;
        var containerObjName = defaultParams.containerObjName;
        var autoDialog = defaultParams.autoDialog;
        $thisObj.hide();
        var tabHeadStr = "";
        $thisObj.each(function (i) {
            var $this = $(this);
            var defaultItemParams = { tabName: "tabName", tabUrl: "", tabUrlTarget: "_self", tabValue: "", tabValueObjName: "" };
            var itemParams = $this.attr("data-tab-params");
            var defaultItemParams = ExtendObject({}, defaultItemParams, itemParams);
            var tabName = defaultItemParams.tabName;
            var tabUrl = defaultItemParams.tabUrl;
            var tabUrlTarget = defaultItemParams.tabUrlTarget;
            var tabValueObjName = defaultItemParams.tabValueObjName;
            $this.data("itemParams", defaultItemParams);
            if (tabUrl == "") {
                tabHeadStr += "<li class=\"nav-item\"><a class=\"nav-link\" href=\"javascript:void(0)\">" + tabName + "</a></li>";
            }
            else {
                tabHeadStr += "<li class=\"nav-item\"><a class=\"nav-link\" href=\"" + tabUrl + "\" target=\"" + tabUrlTarget + "\">" + tabName + "</a></li>";
            }
        });
        var headHtml = "<ul class=\"" + headBoxClass + " initTab-tab-head\">" + tabHeadStr + "</ul>";
        headHtml = $.parseHTML(headHtml); //新版本不必须转为html后才能识别
        var $containerObjName;
        if (containerObjName == "") {
            $containerObjName = $thisObj.parent();
        }
        else {
            $containerObjName = GetJqueryObj(containerObjName);
        }
        if ($containerObjName == null) {
            $containerObjName = $thisObj.parent();
        }
        $containerObjName.prepend(headHtml);
        var $headItem = $containerObjName.children(".initTab-tab-head").children();
        var Run = function (index, isInit) {

            var $contentItem = $thisObj.eq(index);
            $headItem.eq(index).addClass(currentClass).siblings().removeClass(currentClass);
            $thisObj.removeClass(currentClass).hide();
            if (effect == "fadeIn") {
                $contentItem.fadeIn(delayTime).addClass(currentClass);
            }
            else if (effect == "slideDown") {
                $contentItem.slideDown(delayTime).addClass(currentClass);
            }
            else {
                $contentItem.show().addClass(currentClass);
            }
            if (autoDialog) {
                AutoDialog();
            }
            var itemParams = $contentItem.data("itemParams");
            var tabValueObjName = itemParams.tabValueObjName;
            var tabValue = itemParams.tabValue;
            if (tabValueObjName != "") {
                $tabValueObj = GetJqueryObj(tabValueObjName);
                if ($tabValueObj.length > 0) {
                    $tabValueObj.SetValue(tabValue);
                }
            }

            if (isInit && typeof (callBack) == "function") {
                callBack.call(null);//方法回调 
            }
            if ($headItem.eq(index).hasClass("active")) //兼容boot4
            {
                $headItem.eq(index).children("a").addClass("active");
                $headItem.eq(index).siblings().children("a").removeClass("active");
            }
        };
        $headItem.each(function (index) {
            var $this = $(this);
            $this.bind(trigger, function () {
                Run(index, true);
            });
        });
        Run(defaultIndex, false);
    }
})(jQuery);


$(function () {
    //判断浏览器是否支持placeholder属性
    var supportPlaceholder = 'placeholder' in document.createElement('input');
    var Placeholder = function (input) {
        var text = input.attr('placeholder'),
            defaultValue = input.defaultValue;
        if (!defaultValue) {

            input.val(text).addClass("placeholder-color");
        }
        input.focus(function () {
            if (input.val() == text) {
                $(this).val("");
            }
        });

        input.blur(function () {
            if (input.val() == "") {
                $(this).val(text).addClass("placeholder-color");
            }
        });

        //输入的字符不为灰色
        input.keydown(function () {
            $(this).removeClass("placeholder-color");
        });
    };
    //当浏览器不支持placeholder属性时，调用placeholder函数
    if (!supportPlaceholder) {
        $('input').each(function () {
            var text = $(this).attr("placeholder");
            if ($(this).attr("type") == "text") {
                Placeholder($(this));
            }
        });
    }
});

//浮动插件
; (function ($, window, undefined) {
    $.fn.StickUp = function () {
        var $nav = this,
            width = $nav.width(),
            height = $nav.height(),
            offsetTop = $nav.offset().top, //获取$nav上方到窗口的距离
            offsetLeft = $nav.offset().left;  //获取$nav上方到窗口的距离

        var $cloneNav = $nav.clone()
            .css("opacity", 0)  //clone$nav元素，并设置clone元素的属性
            .insertBefore($nav)
            .hide();

        $(window).on("scroll", function () {
            var scrollTop = $(this).scrollTop(); //获取窗口滚动条垂直滚动的距离
            if (scrollTop >= offsetTop) {
                if (!isChange()) {    //判断是否已将$nav设置为了fixed，避免反复设置
                    setChange();

                }
            } else {
                cancelChange();
            }
        });

        function isChange() { //标记函数，标记是否已将$nav设置为了fixed
            return !!$nav.data("identify");
        }
        function setChange() {       //将原有的nav设为fixed,用clone元素进行占位
            $nav.data("identify", true);
            $nav.css({
                "z-index": 1,
                "position": "fixed",
                "left": offsetLeft,
                "top": 0
            });
            $cloneNav.show();
        }
        function cancelChange() {   //恢复原位，重新隐藏clone元素
            $nav.data("identify", false);
            $nav.removeAttr('style');
            $cloneNav.hide();
            console.log($nav.attr("identify"));

        }

    }
})(jQuery, window);


//ui-passwordEye, 给密码框加上眼睛,基于bootstrap字体图标
$(document).ready(function () {
    $passwordEye = $(".ui-passwordEye");
    $passwordEye.each(function () {
        var $passwordObj = $(this);
        var str = "<i class=\"glyphicon glyphicon-eye-close ui-password-eye-icon\"></i>";
        $passwordObj.after(str);
        var $passwordEyeIcon = $passwordObj.next(".ui-password-eye-icon");
        $passwordEyeIcon.click(function () {
            var $this = $(this);
            if ($this.hasClass("glyphicon-eye-open")) {
                $passwordObj.attr("type", "password");
                $this.addClass("glyphicon-eye-close").removeClass("glyphicon-eye-open");
            }
            else {
                $passwordObj.attr("type", "text");
                $this.addClass("glyphicon-eye-open").removeClass("glyphicon-eye-close");
            }
        });
    });

});


//ui-btn-sendCode,发送验证码按钮
$(document).ready(function () {
    $sendCode = $(".ui-btn-sendCode");
    var defaultParams = { type: "mobile", accordingObj: "", seconds: 100, url: "", async: true, sendedBtnValue: "重新发送({0})" }; //interval为间隔时间
    //发送验证码
    var SendCode = function ($btnButton) {
        if ($btnButton.attr("disabled")) {
            return;
        }
        if (!(document.cookie || navigator.cookieEnabled)) {
            alert("对不起，您的浏览器屏蔽了cookie，请开启!");
            return;
        }
        var $form = $btnButton.parents("form").eq(0);
        if ($form.length == 0) {
            Msg("要求所有代码放在form标签中！");
            return;
        }
        var thisParam = $btnButton.attr("data-send-params");
        var sendParams = ExtendObject(defaultParams, thisParam);
        var type = sendParams.type;
        var url = sendParams.url;
        var async = sendParams.async;
        var addData = sendParams.addData;
        var seconds = sendParams.seconds;
        var sendedBtnValue = sendParams.sendedBtnValue;
        var accordingObj = sendParams.accordingObj;
        var $accordingObj = GetJqueryObj(accordingObj);
        if (!IsInt(seconds)) {
            seconds = 60;
        }
        if ($accordingObj.length == 0) {
            Msg("accordingObj对象未找到！")
            return;
        }
        //if (url == "")
        //{
        //    Msg("url未设置！")
        //    return;
        //}
        if (type != "email" && type != "mobile") {
            Msg("type未设置!")
            return;
        }
        if ($accordingObj.length == 0) {
            Msg("accordingObj对象未找到！");
            return;
        }
        var sendTo = $accordingObj.GetValue();
        var data = {};
        var $requestVerificationToken = $form.find("input[name='__RequestVerificationToken']");
        if ($requestVerificationToken.length == 0) {
            Msg("验证码要求表单中有__RequestVerificationToken项！");
            return;
        }
        var requestVerificationToken = $requestVerificationToken.eq(0).val();
        if (type == "email") {
            var jsSendCode = GetCookie("_JsSendEmailCode");
            if (jsSendCode == "1") {
                Msg("禁止频繁发送，请稍后再试")
                return;
            }
            if (!IsEmail(sendTo)) {
                Msg("请先填写好邮箱地址")
                $accordingObj.focus();
                return;
            }
            url = "/E/EmailCode/Send";
            data = { email: sendTo, seconds: seconds, __RequestVerificationToken: requestVerificationToken };
        }
        else {
            var jsSendCode = GetCookie("_JsSendSmsCode");
            if (jsSendCode == "1") {
                Msg("禁止频繁发送，请稍后再试")
                return;
            }
            if (!IsMobile(sendTo)) {
                Msg("请先填写好手机号码")
                $accordingObj.focus();
                return;
            }
            url = "/E/SmsCode/Send";
            data = { mobile: sendTo, seconds: seconds, __RequestVerificationToken: requestVerificationToken };
        }
        var ajaxOptions = { type: "post", url: url, data: data, async: async }
        $btnButton.attr("disabled", "disabled");
        Loading();
        Ajax(ajaxOptions, function (data, options) {
            CloseLoading();
            data = JsonParse(data);
            if (data.State == 1) {
                Msg("验证码已发送");
                if (type == "email") {
                    SetCookie("_JsSendEmailCode", "1", seconds);
                }
                else {
                    SetCookie("_JsSendSmsCode", "1", seconds);
                }
                SetInterval($btnButton, seconds, sendedBtnValue);
            }
            else {
                Msg(data.Msg);
                $btnButton.removeAttr("disabled");
                return;
            }
        });
    }

    //发送验证码后设置定时效果
    var SetInterval = function ($btnButton, seconds, sendedBtnValue) {
        var originalValue = $btnButton.GetValue();
        var t;
        var start = function () {
            seconds--;
            if (seconds > 0) {
                var btnValue = sendedBtnValue.replace("{0}", seconds);
                $btnButton.SetValue(btnValue);
            }
            else {
                $btnButton.removeAttr("disabled");
                $btnButton.SetValue(originalValue);
                clearInterval(t);
            }
        }
        start();
        t = window.setInterval(start, 1000);
    }

    $sendCode.each(function () {
        var $btnButton = $(this);
        $btnButton.click(function () {
            SendCode($btnButton);
        });
    });
});
if (loadUrlPrefix == undefined)
{
    loadUrlPrefix = "";
}
document.write('<script src="' + loadUrlPrefix + '/Js/UI/dataType.js" type="text/javascript"></script>');
//表单的验证插件,依赖dataType.js
; (function ($, window, undefined) {
    //声明一个ValidateDataType的全局对象，外部文件可以自定义添加属性如$.ValidateDataType.email=function (gets, obj, curform) {var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;return reg.test(str);}
    $.ValidateDataType = {
        //默认验证
        DefaultDataType: function (gets, obj, curform) {
            if (typeof (gets) != "string") { return false; }
            if (gets.Trim() == "") { return false; }
            return true;
        }
    };
    //标签必须是form标签
    $.fn.ValidateForm = function (thisOptions) {
        var defaultOptions =
            {
                ignoreHidden: false,
                showAllError: false,
                dataTypes: {},//这里声明的是局部数据类型,也可以通过全局$.ValidateDataType在外部声明
                tipsStyle: 0, //0,：alert， 1：msg  2,表单前后 ,3：all
                tipsPosition: 0,//0表示前面，1表示后面,tipsStyle为0或为1时有效
                errorClass: "validate-error",
                tipsBoxClass: "validate-tips-box",
                tipsErrorClass: "validate-tips-error",
                allTipsBoxClass: "validate-all-tips-box",
                beforeCheck: null,
                beforeSubmit: null
            };
        var $thisObj = this;
        var thisParam = $thisObj.attr("data-validate-params");
        var defaultOptions = ExtendObject({}, defaultOptions, thisOptions, thisParam);
        var validateFormObj = defaultOptions.validateFormObj;
        if ($thisObj.length <= 0) {
            alert("未找到ValidateForm绑定对象!");
            return;
        }

        var ignoreHidden = defaultOptions.ignoreHidden;
        var showAllError = defaultOptions.showAllError;
        var dataTypes = defaultOptions.dataTypes;
        var tipsStyle = defaultOptions.tipsStyle;
        
        if (tipsStyle != 2) {
            showAllError = false;
        }
        var tipsPosition = defaultOptions.tipsPosition;
        var beforeCheck = defaultOptions.beforeCheck;
        var beforeSubmit = defaultOptions.beforeSubmit;
        var errorClass = defaultOptions.errorClass;   //验证出错后表单添加的样式
        var tipsBoxClass = defaultOptions.tipsBoxClass;  //表单提示信息的span容器样式，没有定义则动态添加，tipsStyle为2时有效
        var tipsErrorClass = defaultOptions.tipsErrorClass;  //错误提示添加的样式，tipsStyle为2时有效
        var allTipsBoxClass = defaultOptions.allTipsBoxClass;  //form第一行或最后一行提示信息的ul样式，tipsStyle为3时有效

        //注册表单失去焦点时验证事件
        var RegEvent = function ($item, $currentForm) {
            var hasRegValidateChange = $item.data("hasRegValidateChange");//防止多次注册事件
            if (hasRegValidateChange == undefined) {
                $item.data("hasRegValidateChange", 1);
            }
            else {
                return;
            }
            //oninput是html5新添加的内容变化触发事件，propertychange为ie6,7,8专用, propertychange会引起死循环
            //$item.on("blur", function () {
            //    ValidateDataType($item, $currentForm, 0, true);
            //});

            if (tipsStyle == 0 || tipsStyle == 1) {
                $item.on("input", function () {
                    $(this).attr("data-validate-pass",0);
                });
                return; //弹出提示则不需要验证！
            }
            else
            {
                $item.on("input", function () {
                    $(this).attr("data-validate-pass", 0);
                    ValidateDataType($item, $currentForm, 0, true);
                });
            }
        }

        //开始验证
        var StartValidate = function ($currentForm) {
            var beforeCheckState = true, beforeSubmitState = true;
            if (IsStr(beforeCheck) && typeof (beforeCheck) == "string") {
                beforeCheck = window[beforeCheck];
            }
            if (typeof (beforeCheck) == "function") {
                beforeCheckState = beforeCheck($currentForm);
                if (typeof beforeCheckState != "boolean") {
                    beforeCheckState = true;
                }
            }
            if (typeof (beforeSubmit) == "string") {
                beforeSubmit = window[beforeSubmit];
            }
            var validaResult;
            if (beforeCheckState) {
                validaResult = Validating($currentForm); //开始遍历验证
            }
            else {
                return false;
            }
            if (!validaResult) { return false; }
            if (typeof (beforeSubmit) == "function") {
                beforeSubmitState = beforeSubmit($currentForm);
                if (typeof beforeSubmitState != "boolean") {
                    beforeSubmitState = true;
                }
            }
            return beforeSubmitState;
        };

        //遍历所有表单，进行验证
        var Validating = function ($currentForm) {
            var errorIndex = 0; //获取到错误的序号
            var validateResult = true;
            var $validateItems = $currentForm.find("input,select,textarea");

            $currentForm.children("." + allTipsBoxClass).empty();
            $validateItems.each(function (index) {
                var $this = $(this);
                if (ignoreHidden && $this.is(':hidden')) {
                    return true;//继续下一个循环
                }

                var result = ValidateDataType($this, $currentForm, errorIndex, false);

                if (!result) {
                    errorIndex++;
                    validateResult = validateResult && result;
                }
                //顺便注册一下表单oninput事件
                RegEvent($this, $currentForm);

                if (!showAllError) {
                    if (result == false) {
                        return false;  //如果不需要显示所有错误信息，则加return false跳出each循环
                    }
                }
            });

            return validateResult;
        };
        //验证数据类型，在Validating中调用，表单的的input和 propertychange事件会同时触发
        var ValidateDataType = function ($item, $currentForm, errorIndex, isOnblur) {
            var itemOptions = $item.attr("data-validate");
            if (!itemOptions) { return true; } //表单没有data-validate参数则略过
            var pass = $item.attr("data-validate-pass");
            if (typeof (pass) == "undefined") {
                pass = 0;
            }

            if (pass == 1) {
                return true;//不再验证
            }

   
            var itemDefaultOptions = { dataType: "", minLength: 0, nullMsg: "值不能为空！", errorMsg: "填写错误！", minLengthErrorMsg: "最少输入个{0}字符！", ignoreEmpty: false, ignoreHidden: false, ignoreParentHidden: false,compare: "", checkUrl: "", checkError: "", additionals: "" };
            var options = ExtendObject({}, itemDefaultOptions, itemOptions);
            var dataType = options.dataType.Trim();
            var regExpStr = $item.attr("data-validate-regexp");
            var minLength = options.minLength;
            var minLengthErrorMsg = options.minLengthErrorMsg;
            var nullMsg = options.nullMsg;
            var errorMsg = options.errorMsg;
            var ignoreEmpty = options.ignoreEmpty;
            var ignoreHidden = options.ignoreHidden;
            var ignoreParentHidden = options.ignoreParentHidden;
            if (ignoreHidden && !$item.is(':visible'))
            {
                return true;
            }
            if (ignoreParentHidden)
            {
                var $parent =$item.parent();
                if (!$parent.is(':visible'))
                {
                    return true;
                }
            }
            var compare = options.compare;
            var checkUrl = options.checkUrl;
            var checkError = options.checkError;
            var checkAdditionals = options.additionals;
            var result = false;
            var gets = $item.GetValue().Trim();

            //重新获取gets，checkbox和radio需要用name获取值
            var inputType = $item.attr("type");
            if (inputType == undefined) {
                inputType = "text";
            }
            inputType = inputType.toLowerCase();
            if (inputType == "checkbox" || inputType == "radio")
            {
                var objName = $item.attr("name");
                if (objName == undefined) {
                    objName = $item.attr("id");
                }
                $jqObjs = $currentForm.find("[name='" + objName + "']");
                gets = $jqObjs.GetValue().Trim();
            }

            var supportPlaceholder = 'placeholder' in document.createElement('input');
            var noMoreValidate = false;//表示是否继续后面的验证，对表单对比，远程ajax
            if (!supportPlaceholder) //不支持placeholder的浏览器要单独检测
            {
                var placeholder = $item.attr("placeholder");
                if (typeof (placeholder) == "string") {
                    if (gets == placeholder) {
                        gets = "";
                    }
                }
            }


            if (gets == "" && ignoreEmpty == true) //先进行非空忽略验证
            {
                noMoreValidate = true;
                result = true;
            }


            //接下来进行最小长度验证
            if (!noMoreValidate) {
                if (minLength > 0) {
                    if (gets.length == 0) {
                        result = nullMsg;
                        noMoreValidate = true;
                    }
                    else if (gets.length < minLength) {
                        result = minLengthErrorMsg.replace("{0}", minLength);
                        noMoreValidate = true;
                    }
                }
            }

            //然后再进行数据类型验证
            if (!noMoreValidate) {
                if (regExpStr != undefined)//有正则优先用正则匹配
                {
                    var reg = new RegExp(regExpStr);
                    result = reg.test(gets);
                }
                else {
                    switch (dataType) {
                        case "":
                            result = true;
                            break;
                        case "*":
                            result = $.ValidateDataType.DefaultDataType(gets, $item, $currentForm);
                            break;

                        default:
                            var dataTypeFun = dataTypes[dataType]; //先检测dataTypes内部是否有定义，也可以用dataTypes.hasOwnProperty(dataType)判断
                            if (dataTypeFun == undefined) //如果找不到则到ValidateDataType命名空间中去找
                            {
                                dataTypeFun = window["jQuery"]["ValidateDataType"][dataType];
                            }

                            if (typeof (dataTypeFun) != "function") {
                                alert(dataType + "数据类型未定义");
                                return false;
                            }
                            else {
                                result = dataTypeFun(gets, $item, $currentForm);//只能返回字符串，true或flase,字符串默认为false;
                                if (typeof (result) == "string") {
                                    errorMsg = result;
                                    result =false;
                                    //alert(result)
                                    //if (errorMsg != "") {}
                                }
                            }
                            break;
                    }
                }
            }
            var resultType = typeof (result);
            if (resultType != "boolean") {
                noMoreValidate = true;
            }
            else if (!result) {
                noMoreValidate = true;
            }

            ///然后再进行比较验证
            if (!noMoreValidate) {
                if (compare != "")//和其他表单对别
                {
                    var $compareObj = GetJqueryObj(compare);
                    var compareValue = $compareObj.GetValue().Trim();
                    if (gets != compareValue) {
                        result = errorMsg;
                    }
                }
            }

            resultType = typeof (result);
            if (resultType != "boolean") {
                noMoreValidate = true;
            }
            else if (!result) {
                noMoreValidate = true;
            }
            //最后再进行远程验证
            if (!noMoreValidate) {
                if (checkUrl != "" && gets != "")//远程验证
                {
                    var formName = $item.attr("data-field");
                    if (formName == undefined)
                    {
                        formName = $item.attr("name");
                    }
                    var postData = "_validateName=" + formName + "&_validateValue=" + encodeURIComponent(gets);
                    if (checkAdditionals != "")
                    {
                        postData += "&"+GetJqueryObj(checkAdditionals).Serializes();
                    }
                    var checkResult = Ajax({ type: "post", url: checkUrl, data: postData, async: false });//同步方法
                    checkResult = JsonParse(checkResult);
                    if (checkResult.State == 1) {

                    }
                    else if (checkResult.State == 0) {
                        if (checkError != "") {
                            result = checkError;
                        }
                        else {
                            result = checkResult.Msg;
                        }
                    }
                    else {
                        result = checkResult.Msg;
                    }
                }
            }

            resultType = typeof (result); //每次验证后都需要重新获取
            if (resultType == "boolean") {
                if (gets == "") {
                    errorMsg = nullMsg;
                }
            }
            else if (typeof (result) == "string") //返回字符串则表示不成功
            {
                nullMsg = errorMsg = result;
                result = false;
            }
            else {
                result = false;
                nullMsg = errorMsg = "填写错误（数据类型必须返回bool或字符串)！";
            }

            if (isOnblur) {
                errorIndex = -1;
            }
            if ($item.hasClass("ui-convertData") && $item.prop("tagName").toLowerCase() == "select")
            {
                if ($item.attr("multiple"))
                {
                    if ($item.children("option").length > 0) {
                        $item.attr("data-validate-pass", 1);
                        result = true;
                    }

                }
            }
            ShowValidateResult(errorIndex, result, gets, nullMsg, errorMsg, $item, $currentForm);
            return result;
        };

        //显示验证结果
        var ShowValidateResult = function (errorIndex, result, gets, nullMsg, errorMsg, $item, $currentForm) {

            if (!result) {
                $item.addClass(errorClass)
                if (showAllError) {
                    if (tipsStyle == 0 || tipsStyle == 1 || tipsStyle == 3) {
                        if (errorIndex == 0) //弹出提示，只提示第一个错误的表单
                        {
                            ShowTips(result, gets, nullMsg, errorMsg, $item, $currentForm);
                        }
                    }
                    else {
                        ShowTips(result, gets, nullMsg, errorMsg, $item, $currentForm);
                    }
                }
                else {
                    ShowTips(result, gets, nullMsg, errorMsg, $item, $currentForm);
                }

                if (errorIndex == 0) {
                    $item.trigger("focus");
                    //setTimeout(function () { $item.focus(); }, 10);//获取焦点，焦点在第一个表单上
                }

            }
            else {
                $item.attr("data-validate-pass",1);
                $item.removeClass(errorClass)
                ShowTips(result, gets, nullMsg, errorMsg, $item, $currentForm);
            }

        }

        //显示提示信息
        var ShowTips = function (result, gets, nullMsg, errorMsg, $item, $currentForm) {
            var tipsMsg = "";
            if (gets == "") {
                tipsMsg = nullMsg;
            }
            else {
                tipsMsg = errorMsg
            }
            switch (tipsStyle.toString()) {
                case "1": 
                    TipsStyle1(result, tipsMsg, $item, $currentForm); //依赖layer.js
                    break;
                case "2": //html显示
                    TipsStyle2(result, tipsMsg, $item, $currentForm);
                    break;
                case "3": //
                    TipsStyle3(result, tipsMsg, $item, $currentForm);
                    break;
                default:
                    DefaultTipsStyle(result, tipsMsg, $item, $currentForm);
                    break;
            }
        };

        //默认风格，采用alert
        var DefaultTipsStyle = function (result, tipsMsg, $item, $currentForm) {
            if (result) { return; }
            alert(tipsMsg);
        };
        var TipsStyle1 = function (result, tipsMsg, $item, $currentForm) {
            if (result) { return; }
            Msg(tipsMsg);
        };
        var TipsStyle2 = function (result, tipsMsg, $item, $currentForm) {
            var tipsBoxHtml = "<span default-text=\"\" class=\"" + tipsBoxClass + "\">" + tipsMsg + "</span>";

            var $tipBox = $("#_ValidateTips_" + $item.attr("id"));
            if ($tipBox.length == 0)
            {
                $tipBox = $item.siblings("." + tipsBoxClass);
            }
            var defaultText = "";
            if ($tipBox.length == 0) {
                if (tipsPosition == 1) {
                    $item.parent().prepend(tipsBoxHtml)
                }
                else {
                    $item.parent().append(tipsBoxHtml)
                }
                $tipBox = $item.siblings("." + tipsBoxClass);
            }
            else {
                if ($tipBox.attr("default-text") == undefined) {
                    defaultText = $tipBox.html();
                    $tipBox.attr("default-text", defaultText);
                }
            }
            defaultText = $tipBox.attr("default-text");
            if (result) {
                $tipBox.html(defaultText).removeClass(tipsErrorClass);
            }
            else {
                $tipBox.html(tipsMsg).addClass(tipsErrorClass);
            }
        };
        var TipsStyle3 = function (result, tipsMsg, $item, $currentForm) {
            var boxHtml = "<div class=\"" + allTipsBoxClass + "\"></div>";
            var $tipsBox = $currentForm.children("." + allTipsBoxClass);
            if (result) {
                $tipsBox.html(""); //避免页面跳动
                return;
            }
            if ($tipsBox.length == 0) {
                if (tipsPosition == 0) {
                    $currentForm.prepend(boxHtml);
                }
                else {
                    $currentForm.append(boxHtml);
                }
                $tipsBox = $currentForm.children("." + allTipsBoxClass);
            }
            $tipsBox.html(tipsMsg);
        };
        return StartValidate($thisObj);
    }
})(jQuery, window);

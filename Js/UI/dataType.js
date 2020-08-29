//ValidateDataType为ui.js中定义的全局对象

//匹配字符串
$.ValidateDataType.string= function (gets, obj, curform) {
    if (IsStr(gets)) {
        return true
    }
    else {
        return false;
    }
}

//匹配数值型,默认最小值是0，默认最大值是2147483647,支持小数
$.ValidateDataType.numeric = function (gets, obj, curform) {
    var defaultOptions = {max:2147483647,min:0};
    var objOptions = obj.attr("data-validate");
    defaultOptions = ExtendObject({}, defaultOptions, objOptions);
    var max = defaultOptions.max;
    var min = defaultOptions.min;
    gets = gets.replace(/\s*/g, "").replace(/,/g, "");
    if (!IsNumeric(gets)) {
        return false
    }
    if (gets > max) {
        return false;
    } else if (gets<min) {
        return false;
    }
    return true;
}

//匹配货币类型
$.ValidateDataType.money = function (gets, obj, curform) {
    var reg = /^([\u0024\u00A2\u00A3\u00A4\u20AC\u00A5\u20B1\20B9\uFFE5]\s*)(\d+,?)+\.?\d*\s*$/;
    return reg.test(gets)
}

//匹配中文
$.ValidateDataType.chinese = function (gets, obj, curform) {
    var reg = /^[\u4e00-\u9fa5]+$/;
    return reg.test(gets)
}

$.ValidateDataType.email = function (gets, obj, curform) {
    if (IsEmail(gets)) {
        return true;
    }
    else {
        return false;
    }
}

$.ValidateDataType.mobile = function (gets, obj, curform) {
    if (IsMobile(gets)) {
        return true;
    }
    else {
        return false;
    }
}

$.ValidateDataType.editor = function (gets, obj, curform) {
    var id = obj.attr("name");
    var editorObj = UE.getEditor(id);
    editorObj.focus(true);
    gets = editorObj.getContent();
    if (gets == "") {
        return false;
    }
    else {
        return true;
    }
}
$.ValidateDataType.username = function (gets, obj, curform) {

    if (IsNumeric(gets)) {
        return "用户名不能为纯数字字符!";
    }
    if (IsUserName(gets)) {
        return true;
    }
    else {
        return "用户名只能由2-15位中文,数字和下划线组成!";
    }
}

$.ValidateDataType.password = function (gets, obj, curform) {
    var len = gets.length;
    if (len==0)
    {
        return false;
    }
    else if (len < 6)
    {
       return "密码最少由6个字符组成!";
    }
    return true;
}

$.ValidateDataType.datetime = function (gets, obj, curform) {
    if (IsDateTime(gets)) {
        return true;
    }
    else {
        return false;
    }
}

$.ValidateDataType.date = function (gets, obj, curform) {
    if (IsDate(gets)) {
        return true;
    }
    else {
        return false;
    }
}

$.ValidateDataType.select = function (gets, obj, curform) {
    if (obj.attr("multiple") && obj.hasClass("ui-convertData"))
    {
        var $options = obj.children("option");
        var hasValue = false;
        $options.each(function () {
            var thisValue = $(this).attr("value")
            if (thisValue != "" && thisValue != "0") {
                hasValue = true;
                return true;
            }
        });
        return hasValue;
    }
    else {
        var thisValue = obj.val();
        if (thisValue != "" && thisValue != "0") {
            return true;
        }
        alert(thisValue)
        return false;
    }
}

$.ValidateDataType.file = function (gets, obj, curform) {
    if (gets.indexOf(".") > 0 && gets.length >= 4 && gets.indexOf(".") < (gets.length - 1)) {
        return true;
    }
    else {
        return false
    }
}


//匹配身份证
$.ValidateDataType.idcard = function (gets, obj, curform) {
    var Wi = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1];// 加权因子;
    var ValideCode = [1, 0, 10, 9, 8, 7, 6, 5, 4, 3, 2];// 身份证验证位值，10代表X;
    if (gets.length == 15) {
        return isValidityBrithBy15IdCard(gets);
    } else if (gets.length == 18) {
        var a_idCard = gets.split("");// 得到身份证数组   
        if (isValidityBrithBy18IdCard(gets) && isTrueValidateCodeBy18IdCard(a_idCard)) {
            return true;
        }
        return false;
    }
    return false;

    function isTrueValidateCodeBy18IdCard(a_idCard) {
        var sum = 0; // 声明加权求和变量   
        if (a_idCard[17].toLowerCase() == 'x') {
            a_idCard[17] = 10;// 将最后位为x的验证码替换为10方便后续操作   
        }
        for (var i = 0; i < 17; i++) {
            sum += Wi[i] * a_idCard[i];// 加权求和   
        }
        valCodePosition = sum % 11;// 得到验证码所位置   
        if (a_idCard[17] == ValideCode[valCodePosition]) {
            return true;
        }
        return false;
    }

    function isValidityBrithBy18IdCard(idCard18) {
        var year = idCard18.substring(6, 10);
        var month = idCard18.substring(10, 12);
        var day = idCard18.substring(12, 14);
        var temp_date = new Date(year, parseFloat(month) - 1, parseFloat(day));
        // 这里用getFullYear()获取年份，避免千年虫问题   
        if (temp_date.getFullYear() != parseFloat(year) || temp_date.getMonth() != parseFloat(month) - 1 || temp_date.getDate() != parseFloat(day)) {
            return false;
        }
        return true;
    }

    function isValidityBrithBy15IdCard(idCard15) {
        var year = idCard15.substring(6, 8);
        var month = idCard15.substring(8, 10);
        var day = idCard15.substring(10, 12);
        var temp_date = new Date(year, parseFloat(month) - 1, parseFloat(day));
        // 对于老身份证中的你年龄则不需考虑千年虫问题而使用getYear()方法   
        if (temp_date.getYear() != parseFloat(year) || temp_date.getMonth() != parseFloat(month) - 1 || temp_date.getDate() != parseFloat(day)) {
            return false;
        }
        return true;
    }
}

$.ValidateDataType.table = function (gets, obj, curform) {
    obj.val(gets.Trim());
    if (IsLStr(gets)) {
        return CheckKey(gets);
    }
    else {
        return "表名只能由字母，数字和下划线组成，而且首字母必须是英文！";
    }
}

$.ValidateDataType.field = function (gets, obj, curform) {
    obj.val(gets.Trim());
    if (IsLStr(gets)) {
        return CheckKey(gets);
    }
    else {
        return "字段只能由字母，数字和下划线组成，而且首字母必须是英文！";
    }
}

function CheckKey(str) {
    var keys = new Array("page", "pagesize", "order", "sa", "dbo", "system", "index", "by", "select", "from", "table_", "field_", "top", "asc", "desc", "count", "sum", "link", "update", "insert", "to", "values", "where", "delete", "join", "charge", "guid", "id");
    if (keys.Contains(str)) {
        return "对不起，" + str + "为表名或字段名的屏蔽词，请重写设置!"
    }
    else {
        return true;
    }
}


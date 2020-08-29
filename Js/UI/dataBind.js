//本文件为ui.js依赖的文件
//2017-10:6 ,jsonList改成独立参数传递，放html标签中会因为获取时候经过了转码，然后JsonParse后又再次转码产生双引号，换行等特殊符号冲突
//获取表单中的ui-queryString参数,通过ajax传递到后台
function GetInitListParams() {
    var params = "";
    var $queryString = $(".ui-queryString");
    $queryString.each(function (index) {
        var $this = $(this);
        var id = $this.attr("id");
        if (!id) { return true; }
        var val = $this.val();
        if (val == "") { return true; } //空值则不构造
        params += "&" + id + "=" + encodeURIComponent(val);
    });
    return params;
}

//列表页的数据绑定
; (function ($) {
    $.fn.ListBind = function (thisOptions,jsonList) {
        var $thisObj = this;
        if ($thisObj.length == 0) {
            alert("未找到ListBind绑定对象!")
            return;
        }
        var isPageList = false
        var defaultParams = { url: "", async: true, showFooter: true, formBind: false, callBack: "", dataSourceFrom: "", itemObj: ".item",pageSize:15,customPagesize: true, emptyMsg: "您好，暂无数据!"};
        var thisParams = $thisObj.attr("data-custom-params");
        defaultParams = ExtendObject({}, defaultParams, thisParams, thisOptions);
        var callBack = defaultParams.callBack;
        var showFooterBar = defaultParams.showFooter;
        var formBind = defaultParams.formBind;
        var async = defaultParams.async;
        var url = defaultParams.url;
        var itemObj = defaultParams.itemObj;
        var $items = $thisObj.find(itemObj);
        var customPagesize = defaultParams.customPagesize;
        var dataSourceFrom = defaultParams.dataSourceFrom;
        var emptyMsg = defaultParams.emptyMsg;
        var pageSize = defaultParams.pageSize;
        if (dataSourceFrom == "attr")
        {
            jsonList = $thisObj.attr("data-source");
        }
        if (jsonList == undefined) {
            dataSourceFrom = "ajax";
        }
        var templateHtml;

        if ($thisObj.data("templateHtml") != undefined) {
            templateHtml = $thisObj.data("templateHtml");
        }
        else {
            if ($items.length == 0) {
                alert("ListBind未找到列表页模板!")
                return;
            }
            var $templateItem = $items.eq(0);
            $templateItem.addClass("data-list-bind-item")
            templateHtml = $templateItem.removeClass("hidden").prop("outerHTML");
            $thisObj.data("templateHtml", templateHtml);
        }
        $items.remove();
        var Bind = function (jsonData) {

            //回调
            if (typeof (jsonData) != "object") {
                jsonData = JsonParse(jsonData)
            }
            if (jsonData == undefined) {
                CloseLoading();
                return;
            }

            //alert(JSON.stringify(jsonData))
            var jsonPage, jsonListArray;
            if (jsonData.hasOwnProperty("pageInfo")) {
                isPageList = true;
                jsonPage = jsonData.pageInfo;
                jsonListArray = jsonData.data;
            }
            else {
                jsonListArray = jsonData;
            }
            var recordCount = 0
            if (jsonListArray != undefined) {
                recordCount = jsonListArray.length
            }
            //创建每行数据
            var CreateItem = function (number, template) {
                //模板html中{key}替换为json数据
                var rowData = jsonListArray[number];
                $.each(rowData, function (name, ival) {
                    if (ival == undefined) {
                        ival = "";
                    }
                    else
                    {
                        ival = ival.toString().replace(/'/g, "\\'").replace(/\"/g, "&quot;");
                    }
                    var reg = new RegExp("{" + name + "}", "gi");  
                    template = template.replace(reg, ival);
                    reg = new RegExp("{_number}", "gi");
                    template = template.replace(reg, (number+1));
                });
                  $thisObj.append(template);
                
                if (formBind) {
                    $thisObj.find(itemObj).last().FormBind({ bindId: false }, rowData);
                }
            }
            //循环创建行

            for (var i = 0; i < recordCount; i++) {
                CreateItem(i, templateHtml);
            }

            if (showFooterBar) {
                if (isPageList) {
                    if ($thisObj.siblings("#_list_footer_area").length == 0) {
                        $thisObj.after("<div class=\"list-page-area ui-pagePanel clearfix\"  id=\"_list_footer_area\"></div>");
                    }
                    $thisObj.siblings("#_list_footer_area").eq(0).CreatePagePanel(jsonPage, customPagesize);
                }
                else {
                    if ($thisObj.siblings("#_list_footer_area").length == 0) {
                        $thisObj.after("<div class=\"list-footer-area clearfix\" id=\"_list_footer_area\"><span class=\"right\" id=\"_list_record_count\">共" + recordCount + "条记录</span></div>");
                    }
                    else {
                        $thisObj.siblings("#_list_footer_area").children("#_list_record_count").text("共"+recordCount+"条记录");
                    }
                }

            }
            if (emptyMsg != "")
            {
                if (recordCount == 0) {
                    $thisObj.siblings("#_list_footer_area").hide();
                    if ($("#_list_no_records").length == 0) {
                        $thisObj.after("<p id=\"_list_no_records\" class=\"_list_no_records\"><span class=\"fa fa-exclamation-circle\"></span>" + emptyMsg+"</p>")
                    }
                    $("#_list_no_records").show();
                }
                else {
                    $thisObj.siblings("#_list_footer_area").show();
                    $("#_list_no_records").hide();
                }
            }

            _InitListXuhao();
            CloseLoading();
            if (typeof (window[callBack]) == "function") {
                window[callBack]();
            }
        }

        if (!$.isEmptyObject(jsonList)) //判断是否为空对象
        {
            Bind(jsonList);
        }
        else if (url != "" && dataSourceFrom=="ajax")
        {
            Loading();
            var params = GetInitListParams();
            if (params.indexOf("&pagesize") < 0)
            {
                params+= "&pagesize=" + pageSize;
            }
            var ajaxOptions = { type: "get", url: url, data: params, async: async }
            Ajax(ajaxOptions, function (data, options) {
                Bind(data);
            });
        }
        return this;
    }
})(jQuery);

//目录树列表页数据绑定  .item中必须有guid和parent_guid属性;
; (function ($, undefined) {
    $.fn.TreeBind = function (thisOptions,jsonList) {
        var $thisObj = this;
        if ($thisObj.length == 0) {
            alert("未找到TreeBind绑定对象!");
            return;
        }
        var defaultParams = { url: "", async: true, prepend: false, showFooter: true, formBind: false, saveState: true, hideSubNode: true, callBack: "", dataSourceFrom: "", itemObj: ".item", emptyMsg: "你好，暂无数据!"};
        var thisParams = $thisObj.attr("data-custom-params");
        defaultParams = ExtendObject({}, defaultParams, thisParams, thisOptions);
        var callBack = defaultParams.callBack;
        var showFooterBar = defaultParams.showFooter;
        var formBind = defaultParams.formBind;
        var async = defaultParams.async;
        var url = defaultParams.url;
        var emptyMsg = defaultParams.emptyMsg;
        var dataSourceFrom = defaultParams.dataSourceFrom;
        if (dataSourceFrom == "attr") {
            jsonList = $thisObj.attr("data-source");
        }
        if (jsonList == undefined) {
            dataSourceFrom = "ajax";
        }
        var itemObj = defaultParams.itemObj;
        var $items = $thisObj.find(itemObj);
                var prepend = defaultParams.prepend;
        var templateHtml;

        if ($thisObj.data("templateHtml") != undefined) {
            templateHtml = $thisObj.data("templateHtml");
        }
        else {
            if ($items.length == 0) {
                alert("ListBind未找到列表页模板!")
                return;
            }
            var $templateItem = $items.eq(0);
            $templateItem.addClass("data-list-bind-item data-treelist-bind-item").removeClass("hidden");
            templateHtml = $templateItem.prop("outerHTML");
            $thisObj.data("templateHtml", templateHtml);
        }
        $items.remove();
        var startLevel = 1;
        var maxLevel = 0;
        var Bind = function (jsonData) {
            jsonArray = JsonParse(jsonData)
            var recordCount = 0;
            if (jsonArray != undefined) {
                recordCount = jsonArray.length;;
            }
            //根据level读取匹配的行
            var ReadRow = function (level) {
                var HasUsedIndex = "";
                var targetArray = new Array();
                var targetArrayIndex = 0;
                for (var i = 0; i < recordCount; i++) {
                    if (level == 1)//获取最大的level
                    {
                        if (parseInt(jsonArray[i]["Level"]) > maxLevel) {
                            maxLevel = parseInt(jsonArray[i]["Level"]);
                        }
                    }
                    if (parseInt(jsonArray[i]["Level"]) == level) {
                        targetArray[targetArrayIndex] = jsonArray[i];
                        targetArrayIndex++;
                        HasUsedIndex += i + ",";
                    }
                }

                //已经用过数组则删除掉，避免重复筛选
                HasUsedIndex = HasUsedIndex.split(",")
                for (var i = 0; i < HasUsedIndex.length; i++) {
                    //jsonArray.splice(HasUsedIndex[i], HasUsedIndex[i]);
                }
                if (level == 1) {
                    return targetArray.sort(function (a, b) { return (parseInt(a.Xuhao) > parseInt(b.Xuhao) ? 1 : -1) });
                }
                else {
                    return targetArray.sort(function (a, b) { return (parseInt(a.Xuhao) > parseInt(b.Xuhao) ? -1 : 1) });
                }
            }

            //创建跟节点
            var CreateRootTr = function (rowData, template) {
                //模板html中{}替换为json数据
                $.each(rowData, function (name, ival) {
                    if (ival == undefined) {
                        ival = "";
                    }
                    else
                    {
                        ival = ival.toString().replace(/'/g, "\\'").replace(/\"/g, "&quot;");
                    }
                    var reg = new RegExp("{" + name + "}", "gi");
                    template = template.replace(reg, ival);
                });
                template = template.replace(/{space}/g, "");
                if (prepend) {
                    $thisObj.prepend(template);
                }
                else {
                    $thisObj.append(template);
                }
                if (formBind) {
                    $thisObj.find(itemObj).last().FormBind(rowData, { bindId: false });
                }
            }

            //创建子节点
            var CreateChildTr = function (rowData, template) {
                //模板html中{}替换为json数据
                var $parentTr;
                $.each(rowData, function (name, ival) {
                    if (name == "ParentId") {
                        $parentTr = $(".data-treelist-bind-item[data-id='" + ival + "']")
                    }
                    var reg = new RegExp("{" + name + "}", "gi");
                    template = template.replace(reg, ival);
                });
                if ($parentTr.length > 0) {
                    template = template.replace(/{space}/g, Space());//替换为缩进
                    $parentTr.after(template);
                }

            }
            //创建空格缩进
            var Space = function () {
                var str = "";
                for (var i = 0; i < startLevel - 1; i++) {
                    str += "&nbsp;&nbsp;&nbsp;&nbsp;"
                }
                return str;
            }
            var Add = function (level) {
                //开始写入对应level级别的数据
                var LevelArray = ReadRow(level);
                for (var i = 0; i < LevelArray.length; i++) {
                    if (level == 1) {
                        CreateRootTr(LevelArray[i], templateHtml);
                    }
                    else {
                        CreateChildTr(LevelArray[i], templateHtml);
                    }
                }
            }

            Add(startLevel);
            //开始循环生成tr
            for (var i = 2; i <= maxLevel; i++) {
                startLevel++;
                Add(i);
            }
            if (typeof (callBack) == "function") {
                callBack.call(this, recordCount);//方法回调 
            }
            if (showFooterBar) {

                if ($thisObj.siblings("#_list_footer_area").length == 0) {
                    $thisObj.after("<div class=\"list-footer-area clearfix\" id=\"_list_footer_area\"><span class=\"right\" id=\"_list_record_count\">共" + recordCount + "条记录</span></div>");
                }
                else {
                    $thisObj.siblings("#_list_footer_area").children("#_list_record_count").text("共" + recordCount + "条记录");
                }
            }

            if (emptyMsg != "") {
                if (recordCount == 0) {
                    $thisObj.siblings("#_list_footer_area").hide();
                    if ($("#_list_no_records").length == 0) {
                        $thisObj.after("<p id=\"_list_no_records\" class=\"_list_no_records\"><span class=\"fa fa-exclamation-circle\"></span>" + emptyMsg+"</p>")
                    }
                    $("#_list_no_records").show();
                }
                else {
                    $thisObj.siblings("#_list_footer_area").show();
                    $("#_list_no_records").hide();
                }
            }
            $thisObj.InitTreeList(defaultParams);
            _InitListXuhao();
            CloseLoading();
            if (typeof (window[callBack]) == "function") {
                window[callBack]();
            }
        }
        if (!$.isEmptyObject(jsonList)) //判断是否为空对象
        {
            Bind(jsonList);
        }
        else if (url != "" && dataSourceFrom == "ajax") {
            Loading();
            var params = GetInitListParams();
            var ajaxOptions = { type: "get", url: url, data: params, async: async }
            Ajax(ajaxOptions, function (data, options) {
                Bind(data);
            });
        }
        return this;
    }
})(jQuery);

//多级分类样式，点击事件的初始化等，配合TreeBind使用
; (function ($) {
    var $_treeListObj;
    var $_treeListItem;
    var _treeSaveState = true;
    var _hideTreeSubNode = true;
    var _treeCookieName = GetPageName();
    if (Request("treeCookieName") != "") {
        _treeCookieName = Request("treeCookieName");
    }

    var folderopennode = GetLocalStorage(_treeCookieName); //html5本地储存,不支持的浏览器会用cookie替代
    if (folderopennode == undefined) {
        folderopennode = "";
    }
    $.fn.InitTreeList = function (thisOptions) {
        var defaultParams = { saveState: true, hideSubNode: true };
        defaultParams = ExtendObject(defaultParams, thisOptions);
        var showFooterBar = defaultParams.showFooterBar;
        _treeSaveState = defaultParams.saveState;
        if (!_treeSaveState) {
            folderopennode = "";
        }
        _hideTreeSubNode = defaultParams.hideSubNode;
        $_treeListObj = this;
        $_treeListItem = $_treeListObj.find(".data-treelist-bind-item");
        $_treeListItem.each(function () {
            var $this = $(this);
            var $objspan = $this.find("span.node");
            var id = $this.attr("data-id");
            $objspan.attr("data-id", id);
            if ($objspan.hasClass("node_0")) {
                if (_hideTreeSubNode) {
                    $objspan.addClass("fa fa-folder");
                }
                else {
                    $objspan.addClass("fa fa-folder-open");
                }
            }
            else {
                $objspan.addClass("fa fa-file-text-o");
            }

            if (_hideTreeSubNode) {
                if ($this.attr("data-parentId")!= "0") {
                    $this.hide();
                }
            }
        });

        //注册点击事件，从父级开始注册，避免排序后事件丢失
        $_treeListObj.off("click").on("click", ".node", function () {
            var id = $(this).attr("data-id");
            ShowSubNode($(this), id);
            //event.stopPropagation();    //  阻止事件冒泡
        });

        if (_hideTreeSubNode) {
            if (folderopennode != "") {
                var Afolderopennode = folderopennode.split(',');
                for (i = 0; i < Afolderopennode.length; i++) {
                    if (Afolderopennode[i] != "") {
                        var $item = $("#item_" + Afolderopennode[i]);
                        var spanobj = $item.find("span.node");
                        ShowSubNode(spanobj, $item.attr("data-id"));
                    }
                }
            }
        }
    }
    function ShowSubNode(spanObj,id) {
        folderopennode = "";
        //$_treeListItem = $_treeListObj.children().children(".item");
        var $childrentritem = $_treeListObj.find(".data-treelist-bind-item[data-parentId=" + id + "]");
        var $currenspan = spanObj;
        if ($currenspan.hasClass("file")) { return; }
        var isopen = 1;
        if ($currenspan.hasClass("fa-folder-open")) {
            $currenspan.removeClass("fa-folder-open").addClass("fa-folder");
            isopen = 1;
        }
        else if ($currenspan.hasClass("fa-folder")) {
            $currenspan.removeClass("fa-folder").addClass("fa-folder-open");
            isopen = 0;
        };
        $childrentritem.each(function () {
            var $this = $(this);
            // if ($this.attr("parent_guid") == guid) {
            if (isopen == 1) {
                //$(this).hide();
                HideChildrenNode(id);
            }
            else {
                //$(this).show();
                ShowChildrenNode(id);
                //if ($this.find("span.node").hasClass("fa-folder-open")) {

                //}
            }
            //}

        });

        if (_treeSaveState) {
            $_treeListItem.each(function () {
                var $this = $(this);
                var $node = $this.find("span.node");
                if ($node.hasClass("fa-folder-open") && $this.is(":visible")) {
                    folderopennode += "," + $this.attr("data-id");
                }
            });
            SetLocalStorage(_treeCookieName, folderopennode + ",");
        }
    }

    function HideChildrenNode(id) {
        var $childTr = $_treeListObj.find(".data-treelist-bind-item[data-parentId=" + id + "]");
        $childTr.each(function () {
            var $this = $(this);
            if ($this.find("span.node").hasClass("fa-folder-open")) {
                $this.find("span.node").removeClass("fa-folder-open").addClass("fa-folder");
            }
            $this.hide();
            if ($this.find("span.node").length > 0) {
                HideChildrenNode($this.attr("data-id")); //递归隐藏
            }
        });
    }

    function ShowChildrenNode(id) {
        var $childTr = $_treeListObj.find(".data-treelist-bind-item[data-parentId=" + id + "]");
        $childTr.each(function () {
            var $this = $(this);
            $this.show();
            if ($this.find("span.node").hasClass("fa-folder-open")) {
                ShowChildrenNode($this.attr("data-id")); //递归显示
            }
        });
    }

    function GetPageName() {
        var url = location.href.replace("http://", "").replace("https://", "").replace(new RegExp("\/", ("gm")), "");
        return url;
    }
})(jQuery);

//select表单数据绑定,thisOptions参数示例：var thisParam={url:"",async: true,valueField:"Id", textField:"Name", data:undefined, isTree: false, linkage: false, onlySelectFinal: false };
//如果是isTree为true,表示采用树形绑定，linkage:true,表示是联动菜单，则json数据中必须有字段level、is_final,guid和parent_guid
; (function ($) {
    $.fn.SelectBind = function (thisOptions,jsonList) {
        var $thisObj = this;
        var defaultParams = { url: "", async: true, valueField: "Id", textField: "Name", isTree: false, linkage: false, onlySelectFinal: false, dataSourceFrom: ""};
        var thisParams = $thisObj.attr("data-custom-params");
        defaultParams = ExtendObject({}, defaultParams, thisParams, thisOptions);
        var space = "", level = 1;
        var isTree = defaultParams.isTree;
        var linkage = defaultParams.linkage;
        var onlySelectFinal = defaultParams.onlySelectFinal;
        var url = defaultParams.url;
        var async = defaultParams.async;
        var dataSourceFrom = defaultParams.dataSourceFrom;
        if (jsonList == undefined)
        {
            if (url == "") {
                dataSourceFrom = "attr";
            }
            else
            {
                dataSourceFrom = "ajax";
            }
        }
        if (dataSourceFrom == "attr") {
            jsonList = $thisObj.attr("data-source");
        }
        //注册联动菜单事件
        var RegOnchange = function ($obj,data) {
            $obj.change(function () {
                //var $this = $(this);
                var $option = $obj.find("option:selected");
                var objIdName;
                var $lastSelect = $obj.nextAll("select:last");
                if ($lastSelect.length > 0) {
                    objIdName = $lastSelect.attr("id");
                }
                else {
                    objIdName = $obj.attr("id");
                }
                var thislevel = $option.attr("data-level");
                thislevel = parseInt(thislevel);
                var id = $option.attr("data-id");
                var is_final = $option.attr("data-isFinal");
                var dataValidate = $obj.attr("data-validate");
                if (dataValidate != undefined)
                {
                    dataValidate = " data-validate=\"" + dataValidate + "\"";
                }
                else
                {
                    dataValidate = "";
                }
                if (is_final == "0")//非最终菜单
                {
                    var options = GetOptions(data, (thislevel + 1), id, defaultParams, isTree, linkage, onlySelectFinal);
                    $obj.nextAll("select").remove();//清除后面的所有select
                    $obj.after(" <select class=\"form-control\" style=\"width:auto;\"  id=\"" + objIdName + "\" name=\"" + objIdName + "\"" + dataValidate + "><option value=\"\">请选择...</option></select>");
                    //$obj.append(options);
                    $obj.removeAttr("id");
                    $obj.removeAttr("name");
                    var $lastSelect = $obj.next('select');

                    $lastSelect.append(options);
                    RegOnchange($lastSelect,data);
                }
                else {
                    var $lastSelect = $obj.nextAll('select:last');
                    if ($lastSelect.length > 0) {
                        var id = $lastSelect.attr("id");
                        $obj.attr("id", id).attr("name", id);
                    }
                    $obj.nextAll("select").remove();//清除后面的所有select
                }
            });
        }

        var GetOptions = function (jsonData, level, parentId, defaultParams, isTree, linkage, onlySelectFinal) {
            var options = "";
            var levelData;
            if (isTree) {
                levelData = GetLevelData(jsonData, level, parentId)
            }
            else {
                levelData = jsonData;
            }
            $.each(levelData, function (key, obj) {
                hasData = true;
                //var value = eval("obj." + defaultParams.valueField);
                //var text = eval("obj." + defaultParams.textField);
                var value = obj[defaultParams.valueField];
                var text = obj[defaultParams.textField];
                if (linkage && isTree) {
                    var isFinal = obj.IsFinal;
                    var level = parseInt(obj.Level);
                    var thisId = obj.Id;
                    if (onlySelectFinal && isFinal == 0) {
                        //value = "";
                    }
                    options += "<option value=\"" + value + "\"  data-id='" + thisId + "' data-parentId='" + obj.ParentId + "' data-level='" + level + "' data-isFinal='" + isFinal + "'>" + text + "</option>";
                }
                else if (isTree) {
                    var className = "";
                    var disabled = "";
                    var isFinal = obj.IsFinal;
                    var level = parseInt(obj.Level);
                    if (isFinal == "0" && onlySelectFinal) {
                        disabled = " disabled";
                    }
                    if (isFinal == 0) {
                        //className = " class=\"node\"";
                    }
                    var space = "";
                    for (var i = 1; i < level; i++) {
                        space += "&nbsp; &nbsp;";
                    }
                    if (space != "") {
                        space += "|--";
                    }
                    var thisId = obj.Id;
                    options += "<option value=\"" + value + "\" data-id=\"" + thisId + "\"  data-parentId=\"" + obj.ParentId + "\" data-level='" + level + "' data-isFinal='" + isFinal + "'" + className + disabled + ">" + space + text + "</option>";
                    options += GetOptions(jsonData, level + 1, thisId, defaultParams, isTree, linkage, onlySelectFinal);
 
                }
                else {
                    options += "<option value=\"" + value + "\">" + text + "</option>"
                }
            });

            return options;
        }

        var GetLevelData = function (jsonArray, level, parentId) {
            var targetArray = new Array();
            var targetArrayIndex = 0;
            for (var i = 0; i < jsonArray.length; i++) {
                if (parseInt(jsonArray[i]["Level"]) == level && jsonArray[i]["ParentId"] == parentId) {
                    targetArray[targetArrayIndex] = jsonArray[i];
                    targetArrayIndex++;
                }
            }
            return targetArray.sort(function (a, b) { return (parseInt(a.Xuhao) > parseInt(b.Xuhao) ? 1 : -1) });
            //if (level == 1) {
            //    return targetArray.sort(function (a, b) { return (parseInt(a.xuhao) > parseInt(b.xuhao) ? 1 : -1) });
            //}
            //else {
            //    //return targetArray.sort(function (a, b) { return (parseInt(a.xuhao) > parseInt(b.xuhao) ? -1 : 1) });
            //}
            return targetArray;
        }

        //绑定数据
        var Bind = function ($obj, data) {
            data = JsonParse(data);
            if (data == undefined) {
                return;
            }
            var options = GetOptions(data, 1, "", defaultParams, isTree, linkage, onlySelectFinal);
            if (isTree && linkage) {
                $obj.attr("data-linkage", "true");
                RegOnchange($obj,data);
            }
            $obj.append(options)
        }

        if (!$.isEmptyObject(jsonList)) //判断是否为空对象
        {
            $thisObj.data("TreeListData", jsonList);
            Bind($thisObj, jsonList)
        }
        else if (url != "" && dataSourceFrom == "ajax") {
            var ajaxOptions = { type: "get", url: url, data:"", async: async }
            Ajax(ajaxOptions, function (data, options) {;
                $thisObj.data("TreeListData", data); //FormBind中使用
                Bind($thisObj, data)
            });
        }
        return this; //为了支持链式操作
    }
})(jQuery);


/*json数据填充表单*/
; (function ($) {
    $.fn.FormBind = function(thisOptions,jsonData) {

        var $thisObj = this;
        if ($thisObj.length == 0) {
            alert("未找到FormBind绑定对象!");
            return;
        }
        var defaultParams = { url: "", async: true, bindId: true, fieldPrefix: "", dataSourceFrom: "", onlyBindOne: false, callBack: "",}; //列表页时建议吧bindId设为flashe
        var thisParams = $thisObj.attr("data-custom-params");
        defaultParams = ExtendObject({}, defaultParams, thisParams, thisOptions);
        var isBindId = defaultParams.bindId;
        var fieldPrefix = defaultParams.fieldPrefix;
        var url = defaultParams.url;
        var async = defaultParams.async;
        var dataSourceFrom = defaultParams.dataSourceFrom;
        var onlyBindOne = defaultParams.onlyBindOne;
        var callBack = defaultParams.callBack;
        if (onlyBindOne)
        {
            if ($thisObj.data("formBinded"))
            {
                return;
            }
        }
        if (dataSourceFrom == "attr") {
            jsonData = $thisObj.attr("data-source");
        }
        if (jsonData == undefined) {
            dataSourceFrom = "ajax";
        }
        var Bind = function ($obj, jsonValue) {
            jsonValue = JsonParse(jsonValue)
            if (jsonValue == undefined) {
                return this;
            }
            $.each(jsonValue, function (name, ival) {
                name = fieldPrefix + name;
                var $fillobj = $obj.find("#" + name);
                if ($fillobj.length == 0) { return true; }
                if (ival == null) { return true; }
                if ($fillobj.attr("data-formBind") == "false")
                {
                    return;
                }
                $fillobj.data("value", ival);
                if ($fillobj.is('input')) {
                    if (!isBindId && name.toLowerCase() == "id") {
                        return;
                    }
                    $fillobj = $obj.find("input[name ='" + name + "']");
                    if ($fillobj.attr("type") == "checkbox") {
                        $fillobj.SetValue(ival);
                    }
                    else if ($fillobj.attr("type") == "radio") {
                        $fillobj.SetValue(ival);
                    }
                    else {
                        $fillobj.SetValue(ival);
                        //if ($fillobj.eq(0).hasClass("ui-uploadPanel"))
                        //{
                        //   // _InitUploadPanel($fillobj.eq(0)); //初始化管理界面,ui.js中定义
                        //}
                    }
                }
                else if ($fillobj.is("select")) {
                    if ($fillobj.hasClass("ui-convertData")) {
                        if ($fillobj.attr("data-source") == undefined) {
                            $fillobj.ConvertData({ ids: ival,isFormBind: true});
                        }else
                        {
                            $fillobj.ConvertData({ids:"",isFormBind: true,dataSourceFrom:"attr"});
                        }
                    }
                    else if ($fillobj.attr("data-linkage")) //联动菜单
                    {
                        $fillobj.BindLinkageSelect(ival);
                    }
                    else {
                        $fillobj.SetValue(ival);
                    }
                }
                else {
                    $fillobj.SetValue(ival);
                }
            })
            var $laydateIcon = $("input.laydate-icon");
            $laydateIcon.each(function () {
                var $this = $(this);
                var maxLength = $this.attr("maxlength");
                if (typeof (maxLength) != "undefined") {
                    $this.val($this.val().Left(parseInt(maxLength)));
                }
            });
            if(onlyBindOne)
            {
                $obj.data("formBinded", "1");
            }
            if (typeof (window[callBack]) == "function") {
                window[callBack]();
            }
        }

        if (!$.isEmptyObject(jsonData)) //判断是否为空对象
        {
            Bind($thisObj, jsonData);
        }
        else if (url!= "" && dataSourceFrom == "ajax") {
            var ajaxOptions = { type: "get", url: url, data: "", async: async}
            Ajax(ajaxOptions, function (data, options) {
                Bind($thisObj, data);
            });
        }
        return this; //为了支持链式操作
    }
})(jQuery);

//绑定联动菜单的默认值,主要用于配合FormBind使用
; (function ($) {
    $.fn.BindLinkageSelect = function (selectValue) {
        var $thisObj = this;
        var jsonData = $thisObj.data("TreeListData"); //在fillselect方法中绑定
        if ($thisObj.length == 0) { return; }
        jsonData = JsonParse(jsonData);
        if (jsonData == undefined) {
            return;
        }
        var GetParentIds = function (thisId, jsonData) {
            var ids = "";
            var parentId = "0";
            for (var i = 0; i < jsonData.length; i++) {
                $.each(jsonData[i], function (key, val) {
                    if (key == "Id" && val == thisId) {
                        parentId = jsonData[i].ParentId;
                        return false;
                    }
                });
                if (parentId!= "0") {
                    break;
                }
            }
            if (parentId =="") {
                return "";
            }
            for (var i = 0; i < jsonData.length; i++) {
                var id = "";
                $.each(jsonData[i], function (key, val) {
                    if (key == "Id" && val == parentId) {
                        id = jsonData[i].Id;
                        return false;
                    }
                });
                if (id != "") {
                    ids += id + "," + GetParentIds(id, jsonData)
                    break;
                }
            }
            return ids;
        }
        var ids = selectValue + "," + GetParentIds(selectValue, jsonData);
        if (ids == "") { return; }
        var arrIds = Unique(ids);
        //var arrIds = ids.split(",");
        var arrLength = arrIds.length;
        for (var i = 0; i < arrLength; i++) {
            var thisval = arrIds[arrLength - i - 1];
            if (i == 0) {
                $thisObj.SetSelected(thisval);
                $thisObj.trigger("change"); //触发change事件
            }
            else {
                var $selectObj = $thisObj.nextAll().eq(i - 1);
                if ($selectObj.length > 0) {
                    $selectObj.SetSelected(thisval);
                    $selectObj.trigger("change");
                }
            }
        }
    }
})(jQuery);


//根据ids转换为对应字段，多个ids转换后的值用半角逗号隔开,根据值在jsonList里面查找匹配的数据
; (function ($) {
    $.fn.ConvertText = function (thisOptions,jsonList) {
        var $thisObj = this;
        if ($thisObj.length == 0) {
            console.log("未找到ConvertText对象!");
            return;
        }
        var defaultParams = { url: "", valueField: "Id", textField: "Name" ,emptyStr: "", dataSourceFrom: ""}; //emptyStr表示值为空时用什么字符替换掉。
        var thisParams = $thisObj.attr("data-custom-params");
        defaultParams = ExtendObject({}, defaultParams, thisParams, thisOptions);

        var emptyStr = defaultParams.emptyStr;
        var url = defaultParams.url;
        var dataSourceFrom = defaultParams.dataSourceFrom;
        if (dataSourceFrom == "attr") {
            jsonList = $thisObj.attr("data-source");
        }
        if (jsonList == undefined)
        {
            dataSourceFrom = "ajax";
        }
        $thisObj.hide();
        var ids = "";
        var field = defaultParams.textField;
        var valueField = defaultParams.valueField;
        var Bind = function ($obj,data) {
            data = JsonParse(data);
            $obj.each(function () {
                var $this = $(this);
                var thisId;
                if ($this.is('input')) {
                    thisId = $this.val();
                }
                else {
                    thisId = $this.text();
                }

                var arrId = thisId.split(",");
                var ival = "";

                if (data != undefined) {
                    var dataLength = data.length;
                    for (var i = 0; i < dataLength; i++) {
                        var item = data[i];
                        for (var k = 0; k < arrId.length; k++) {
                            if (arrId[k] == item[valueField]) {
                                if (ival != "") {
                                    ival += ","
                                }
                                ival += item[field];  //eval("item." + field);
                            }
                        }
                    }
                }


                if (ival == "") {
                    ival = emptyStr;
                }
                if ($this.is('input')) {
                    $this.val(ival);
                }
                else {
                    $this.text(ival)
                }
                $this.show();
            });
        }
        $thisObj.each(function (index) {
            var $this = $(this);
            var theval;
            if ($this.is('input')) {
                theval = $this.val();
            }
            else {
                theval = $this.text();
            }
            //if (!IsNum(theval)) {
            //theval = "0";
            //}
            if (ids != "") {
                ids += ",";
            }
            ids += theval;
        });
        if (ids == "" || field == "") { return true; }
        if (!$.isEmptyObject(jsonList)) //判断是否为空对象
        {
            Bind($thisObj,jsonList);
            return true;
        }
        else if (url != "" && dataSourceFrom == "ajax")
        {
            var params = "ids=" + encodeURIComponent(ids) + "&field=" + field;
            var ajaxOptions = { type: "get", url: url, data: params, async: true }
            Ajax(ajaxOptions, function (data, options) {
                Bind($thisObj,data)
            });
        }
        return this;
    }
})(jQuery);

//根据ids加载数据项，填充表单,配合FormBind使用
; (function ($) {
    $.fn.ConvertData = function (thisOptions,jsonList) {
        var $thisObj = this; //不直接用this，避免在私有方法内部this指向都不一样，如ajax内
        if ($thisObj.length == 0) {
            alert("未找到ConvertText对象!");
            return;
        }
        var tagName = $thisObj.get(0).tagName.toLowerCase();
        var defaultParams = { url: "", valueField: "Id", textField: "Name", ids: "", isTree: false, isFormBind: false, dataSourceFrom: ""}; //valueField和textField表示value字段和文本字段,isFromBind检测是否是formBind方法内部调用
        var thisParams = $thisObj.attr("data-custom-params");
        defaultParams = ExtendObject({}, defaultParams, thisParams, thisOptions);
        var url = defaultParams.url;
        var field = defaultParams.textField;
        var ids = defaultParams.ids;
        var isFormBind = defaultParams.isFormBind;
        var dataSourceFrom = defaultParams.dataSourceFrom;
        if (dataSourceFrom == "attr") {
            jsonList = $thisObj.attr("data-source");
        }
        if (jsonList == undefined)
        {
            dataSourceFrom= "ajax";
        }
        var Bind = function (data) {
            var $obj = $thisObj;
            if (tagName == "select")
            {
                $obj.SelectBind(defaultParams, data);
                if (typeof ($obj.attr("multiple")) == "undefined" && data != undefined) {
                    $obj.children("option:last").prop("selected", true);
                }
            }
            else
            {
                var setText = "";
                $.each(data, function (key, obj) {
                    var value = obj[defaultParams.valueField];
                    var text = obj[defaultParams.textField];
                    setText += "," + text;
                });
                $thisObj.SetValue(Unique(setText));
            }
            if (!isFormBind) {
                setTimeout(function () { $obj.triggerHandler("input"); }, 10);//延迟触发onput事件 
            }
        }
        if (!$.isEmptyObject(jsonList) && isFormBind) //优先从数据源中读取,这里的jsonList必须是后台通过ids筛选出来的数据源，不能是所有列表
        {
            Bind(jsonList, $thisObj);
            return this;
        }

        if (dataSourceFrom != "ajax")
        {
            return;
        }
        if (url == "" || ids == "") {
            return this;
        }
        var params = "field=" + field + "&ids=" + encodeURIComponent(ids);
        if (!isFormBind) {
            Loading();
        }
        var ajaxOptions = { type: "get", url: url, data: params, async: true }
        Ajax(ajaxOptions, function (data, options) {
            Bind(data, $thisObj);
            if (!isFormBind) {
                CloseLoading();
            }
        });
        return this;
    }
})(jQuery);

//对列表页的关联数据进行转换，根据key找valye
; (function ($) {
    $.fn.TransformByJson = function (jsonValue, findKey, valueKey) {
        var $thisObj = this;
        function FindValueNyJson(jsonArray, findKey, findValue, valueKey) {
            var rv = "";
            for (var i = 0; i < jsonArray.length; i++) {
                var thevalue = "";
                var isok = 0;
                $.each(jsonArray[i], function (name, ival) {
                    if (findKey == name && ival == findValue) {
                        isok = 1;
                    }
                    if (name == valueKey) {
                        thevalue = ival;
                    }
                }
                );
                if (isok == 1) {
                    rv = thevalue;
                }
            }
            return rv;
        }

        $thisObj.each(function () {
            var $this = $(this);
            var result = "";
            var arrValue = $this.html().split(",");
            for (i = 0; i < arrValue.length; i++) {
                if (result != "") {
                    result += ",";
                }
                result += FindValueNyJson(rolsJson, findKey, arrValue[i], "name");
            }
            $this.html(result);
        });
    }
})(jQuery);

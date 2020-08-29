Vue.mixin({
    methods: {
        //弹出窗口
        dialog: function (options) {
            var vue = this;
            var defaultParams = { title: "标题", url: "", additionals: "", width: "100%", height: "100%", target: 'self', beforeExecute: "", shadeClose: true };
            defaultParams = extend(defaultParams, options);
            var canExecuting = true;
            var beforeExecute = defaultParams.beforeExecute;
            try {
                if (typeof (beforeExecute) == "string") {
                    if (beforeExecute != "") {
                        canExecuting = eval(beforeExecute);
                    }
                }
                else if (typeof (beforeExecute) == "function") {
                    canExecuting = beforeExecute();
                }
            }
            catch (err) {
                canExecuting = false;
                console.log(err)
            }
            if (canExecuting == false) { return; }
            ui.dialog(defaultParams);
        },
        ajax: function (options) {
            var loadingInstance = this.$loading();
            ajax(options, function () { loadingInstance.close(); });
        },
        submit: function (options) {
            var defaultParams = { type: "post", contentType: "application/x-www-form-urlencoded;charset=utf-8", url: "", data: {}, async: true, beforeExecute: "", beforeRequest: "", success: "", failCallback: "", showSuccessMsg: true, showFailMsg: true, confirmMsg: "", successMsg: "提交成功！", cancel: false, cancelMsg: "提交被取消" };
            defaultParams = extend(defaultParams, options);
            var confirmMsg = defaultParams.confirmMsg;
            var successMsg = defaultParams.successMsg;
            var async = defaultParams.async;
            var beforeExecute = defaultParams.beforeExecute;
            var beforeRequest = defaultParams.beforeRequest;
            var callback = defaultParams.success;
            var failCallBack = defaultParams.failCallback;
            var ajaxUrl = defaultParams.url;
            var showSuccessMsg = defaultParams.showSuccessMsg;
            var showFailMsg = defaultParams.showFailMsg;
            var canExecuting = true;
            var data = defaultParams.data;
            var cancel = defaultParams.cancel;
            var vue = this;
            if (cancel) {
                vue.$notify({
                    title: '提示',
                    message: defaultParams.cancelMsg,
                    type: 'warning'
                });
                return;
            }
            if (ajaxUrl == "") {
                alert("url参数未设置!")
            }
            try {
                if (typeof (beforeExecute) == "string") {
                    if (beforeExecute != "") {
                        canExecuting = eval(beforeExecute);
                    }

                }
                else if (typeof (beforeExecute) == "function") {
                    canExecuting = beforeExecute();
                }
            }
            catch (err) {
                console.log(err)
            }

            if (canExecuting == false) { return; }

            if (confirmMsg != "") {

                vue.$confirm(confirmMsg, '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning',
                    callback: function (action, instance) {
                        switch (action) {
                            case "confirm":
                                request();
                                break;
                            case "cancel":
                                break;
                            case "close":
                                break;
                        }
                    }
                })
            }
            else {
                request();
            }

            function request() {
                try {
                    if (typeof (beforeRequest) == "string") {
                        if (beforeRequest != "") {
                            canExecuting = eval(beforeRequest);
                        }
                    }
                    else if (typeof (beforeRequest) == "function") {
                        canExecuting = beforeRequest();
                    }
                }
                catch (err) {
                    console.log(err)
                }
                if (canExecuting == false) { return; }

                var callBack = function (data) {
                    try {
                        if (typeof (callback) == "string") {
                            if (callback != "") {
                                eval(callback);
                            }
                        }
                        else if (typeof (callback) == "function") {
                            callback(data);
                        }
                    }
                    catch (err) {
                        console.log(err)
                    }
                }


                var notifyCallBack = function (data) {
                    if (typeof (data) != "object") {
                        data = jsonParse(data);
                    }
                    if (data.State == 1) {
                        var delayCallBack = 600;
                        if (showSuccessMsg) {
                            if (successMsg != "") {
                                successMsg = successMsg;
                            }
                            else if (data.Msg != "") {
                                successMsg = data.Msg;
                            }
                            vue.$notify({
                                title: '成功',
                                message: successMsg,
                                type: 'success',
                                position: 'top-right'
                            });
                            setTimeout(function () { callBack(data); }, delayCallBack);
                        }
                        else {
                            callBack(data);
                        }
                    }
                    else {
                        if (data.Msg != "" && showFailMsg) {
                            vue.$notify({
                                title: '提示',
                                message: data.Msg,
                                type: 'error',
                                position: 'top-left'
                            });
                        }
                        try {
                            if (typeof (failCallBack) == "string") {
                                if (failCallBack != "") {
                                    eval(failCallBack);
                                }
                            }
                            else if (typeof (failCallBack) == "function") {
                                failCallBack(data);
                            }
                        }
                        catch (err) {
                            console.log(err)
                        }
                    }
                }
                var error = function () {
                    vue.$message.error("ajax http请求错误，请联系管理员处理！")
                }
                var ajaxOptions = { type: defaultParams.type, contentType: defaultParams.contentType, url: ajaxUrl, data: data, async: async, error: error, success: function (data) { notifyCallBack(data); } }
                vue.ajax(ajaxOptions);
            }
        },
    }
})

//列表页外部的常用全局方法
var dataListExternal = {
    methods: {
        //对集合进行排序，支持多级数据集
        updateXuhao: function (options) {
            var defaultParams = { type:"", url: "", row: {}, dataList: [], keyField: "Id", sortField: "Xuhao", parentIdField: "ParentId", childrenField: "Children" };
            defaultParams = extend(defaultParams, options);
            var vue = this;
            var type = defaultParams.type;
            var url = defaultParams.url;
            var row = defaultParams.row;
            var dataList = defaultParams.dataList;
            console.log(dataList)
            var sortField = defaultParams.sortField;
            var childrenField = defaultParams.childrenField;
            var keyField = defaultParams.keyField;
            var parentIdField = defaultParams.parentIdField;
            var id = row[keyField];
            var parentId = row[parentIdField];//获取当前行的父级id
            var prevIndex = 0;
            var nextIndex = 0;
            var currentIndex = 0;
            var newDataList = []; //构造一个新的数组,用于传输到后台，默认的数据属性太多没有必要都传递到后台去
            //列表序号对调
            var startSort = function (dataList) {
                newDataList = [];
                //1、先整理顺序
                dataList.forEach(function (item, index) {
                    var i = index + 1;
                    var currentParentId = item[parentIdField];
                    if (currentParentId == parentId)//同一级的数据才进行处理
                    {
                        item[sortField] = i;
                        if (item[keyField] == id) {
                            prevIndex = i - 1;
                            currentIndex = i;
                            nextIndex = i + 1;
                        }
                    }
                });
                //2、再进行顺序对调
                dataList.forEach(function (item, index) {
                    var i = index + 1;
                    var currentParentId = item[parentIdField];
                    if (currentParentId == parentId)//同一级的数据才进行处理
                    {
                        switch (type) {
                            case "-":
                            case "up":
                            case -1:
                                if (prevIndex == i) {
                                    item[sortField] = i + 1;
                                }
                                if (currentIndex == i && i > 1) {
                                    item[sortField] = i - 1;
                                }
                                break;
                            case "+":
                            case "down":
                            case 1:
                                if (currentIndex == i && i < dataList.length) {
                                    item[sortField] = i + 1;
                                }
                                if (nextIndex == i) {
                                    item[sortField] = i - 1;
                                }
                                break;
                        }
                        //重构减少http传输
                        var newRow = {}
                        newRow[keyField] = item[keyField];
                        newRow[sortField] = item[sortField]
                        newDataList.push(newRow);
                        index++;
                    }
                });
            }

            //对列表进行顺序排序
            var reSort = function (dataList, sortField, nodeField) {

                if (sortField == undefined) {
                    sortField = "Xuhao"; //默认序号字段
                }
                if (nodeField == undefined) {
                    nodeField = "Children"; //默认节点字段
                }

                dataList.sort(function (a, b) { return a[sortField] - b[sortField] });//1级排序
                //树形数据继续对数据进行递归排序
                dataList.some(function (item) {
                    if (parentId == item[parentIdField]) { //第一级或默认只有一级的情况
                        newDataList = dataList; //新的数组，提交到服务器进行更新的数据
                        return true;
                    }
                    else //第一级找不到继续往下找
                    {
                        var childrenList = item[nodeField];
                        if (Array.isArray(childrenList)) {
                            reSort(childrenList, sortField, nodeField); //递归排序
                        }
                    }
                });
            };

            if (type != "0" && type != "")
            {
                reSort(dataList, sortField, childrenField);
                startSort(newDataList);
            }

            reSort(dataList, sortField, childrenField);
            //console.log(dataList)
            vue.submit({ url: url, data: { data: JSON.stringify(newDataList) }, showSuccessMsg: false })

        },
        //获取选中列表的属性值，不填写属性默认读取Id
        getSelectedPropertys: function (selectedItem, prop) {
            if (!Array.isArray(selectedItem)) {
                throw "getSelectedPropertys的第2个参数必须是数组"
            }
            if (prop == undefined) {
                prop = "Id";
            }
            var props = [];
            selectedItem.map(function (item, index, ary) {
                if (item[prop] != undefined) {
                    props.push(item[prop]);
                }
            })
            return props;
        },
        //回调方法,设置列表页选中项目的属性
        setSelectedItem: function (dataList, selectedItems, setProperty, setValue) {
            var vue = this;
            var selectedItem = [];
            if (!Array.isArray(deleteItems)) {
                selectedItem.push(deleteItems);
            }
            else {
                selectedItem = deleteItems;
            }
            var selectedIds = [];
            selectedItems.forEach(function (item) {
                selectedIds.push(item[key]);
            });
            dataList.forEach(function (item, index) {
                if (selectedIds.contains(item[key])) {
                    item[setProperty] = setValue;
                }
                else {
                    vue.$set(item, setProperty, setValue);
                }
            });
        },

        //删除列表项目的方法
        deleteItem: function (dataList, deleteItems, key) {
            if (key == undefined) {
                key = "Id";
            }
            var vue = this;
            var selectedItem = [];
            if (!Array.isArray(deleteItems)) {
                selectedItem.push(deleteItems);
            }
            else {
                selectedItem = deleteItems;
            }
            var selectedIds = [];
            selectedItem.forEach(function (item) {
                selectedIds.push(item[key]);
            });
            dataList.forEach(function (item, index) {
                if (selectedIds.contains(item[key])) {
                    dataList.splice(index, 1);
                }
                if (item.Children != undefined) {
                    vue.deleteItem(item.Children, deleteItems);
                }
            });
        },

        //设置前的检测选中项目
        checkSelectedItems: function (selectedItem) {
            if (selectedItem.length == 0) {
                vue.$message.error("请选择要操作的项!")
                return false;
            }
            return true;
        }
    }
};
Vue.mixin(dataListExternal);

//百度编辑器
Vue.component("ui-editor", {
    props: {
        value: { default: "" },
        action: { type: String, default: "/E/EditorUploadApi/", required: false },
        toolbars: { type: String, default: "normal", required: false },
        height: { type: Number, default: 300 },
        data: { type: Object, default: function () { return { guid: '', tableName: '', fieldName: '' } }, required: true },
    },
    data: function () {
        return {
            instanceId: "ueditorObject",
            content: this.value,
            ueditor: {},
        }
    },
    methods: {
        reset: function () { //编辑器重置为可视化模式，源码模式下修改无法获取到修改的内容
            if (this.ueditor.queryCommandState('source') != 0){
                this.ueditor.execCommand('source');
                vue.content = ueditor.getContent();
                vue.$emit("input", vue.content);
            }  
        }
    },
    created: function(){
        if(window["ueditorInstanceNums"] == undefined)
        {
            window["ueditorInstanceNums"] = 1;
        }
        else
        {
            window["ueditorInstanceNums"] = window["ueditorInstanceNums"]+1;
        }
        this.instanceId = "ueditorObject" + window["ueditorInstanceNums"];
    },
    mounted: function () {
        var vue = this;
        vue.ueditor = UE.getEditor(vue.instanceId,
            {
                serverUrl: vue.action,
                initialFrameWidth: null,
                initialFrameHeight: vue.height,  //初始化编辑器高度,默认320
                toolbars: _UeditorZdyConfig[vue.toolbars]
            });
        var ueditor = vue.ueditor;
        ueditor.ready(function () {
            ueditor.execCommand("serverparam", vue.data);
            ueditor.addListener('blur', function () {
                vue.content = ueditor.getContent();
                vue.$emit("input", vue.content);

            });
        });
    },
    template: '<textarea ref="editor" :id="instanceId" :name="instanceId" v-model="content"></textarea>'
});


//Id转文本组件
Vue.component("el-input-convert", {
    props: {
        convertUrl: { type: String, default: "", required: false },
        value: {//v-mode传递进来，内部不需要需用
            type: Number | undefined,
            default: 0,
            required: false
        },
        clearable:{
            type: Boolean,
            default: false,
            required: false
        },
    },
    data: function () {
        return {
            name: "",
        }
    },
    methods: {
        getName: function () {
            var vue = this;
            var data = this.serverData;
            var defaultOptions = { async: true, type: "get", url: this.convertUrl, data: data, cache: true };
            defaultOptions = extend(defaultOptions, this.config);
            defaultOptions.success = function (data) {
                if (data.Name != null && data.Name != undefined) {
                    vue.name = data.Name;
                }
            };
            if (defaultOptions.url == "") {
                return;
            }
            vue.ajax(defaultOptions);
        },
        clearName: function () {
            var vue = this;
            vue.name = "";
            vue.$emit('input', 0)
        }
    },
    watch: {
        convertUrl: {
            handler: function (newName, oldName) {
                if (newName != oldName) {
                    this.getName();
                }
            },
            immediate: true,
            deep: true
        },
    },
    template: '<el-input :value="name" v-bind="$attrs" v-on:clear="clearName" :clearable="clearable" :readonly="!clearable"><template slot="append"><slot></slot></template></el-input>'
});


//ui-page-panel
Vue.component("ui-page-panel", {
    props: {
        value: {
            type: Object,
            default: function () { return {} },
            required: false
        },
    },
    data: function () {
        return {
            pageInfo: this.value
        }
    },
    watch: {
        value: function (newValue, oldValue) {
            this.pageInfo = newValue;
        }
    },
    methods: {
        goPage: function (page) {
            if (page != undefined) {
                this.pageInfo.CurrentPage = page;
            }
            this.$emit("input", this.pageInfo);
            this.$emit("change");
        },
        changePageSize: function () {
            this.pageInfo.CurrentPage = 1;
            this.$emit("input", this.pageInfo);
            this.$emit("change");
        },

    },
    computed: {
        pageItem: function () {
            var pageItem = [];
            var pageInfo = this.pageInfo;
            var currentPage = pageInfo.CurrentPage;
            var recordCount = pageInfo.RecordCount;
            if (recordCount == 0) {
                return [{ value: 1, text: "第1页" }];
            }
            var pageSize = pageInfo.PageSize;
            var pageCount = 1;
            if (recordCount % pageSize > 0) {
                pageCount = Math.floor(recordCount / pageSize) + 1;
            }
            else {
                pageCount = recordCount / pageSize;
            }
            if (currentPage > pageCount) {
                currentPage = pageCount;
            }
            pageInfo.PageCount = pageCount;
            var startpage = currentPage - 10;
            if (startpage < 1) {
                startpage = 1;
            }
            var endpage = currentPage + 10;
            if (endpage >= pageCount) {
                endpage = pageCount;
            }
            for (var i = startpage; i <= endpage; i++) {
                pageItem.push({ value: i, text: "第" + i + "页" });
            }
            if (startpage > 1) {
                if (startpage > 2) {
                    pageItem.unshift({ value: startpage - 1, text: "..." });
                }
                pageItem.unshift({ value: 1, text: "首页" });
            }
            if (endpage < pageCount) {
                if (endpage < pageCount - 1) {
                    pageItem.push({ value: endpage + 1, text: "..." });
                }
                pageItem.push({ value: pageCount, text: "尾页" });
            }
            return pageItem;
        }
        , pageSizeItem: function () {
            var pageItem = [10, 15, 20, 30, 40, 50, 100];
            var pageSize = this.pageInfo.PageSize;
            if (pageItem.indexOf(pageSize) < 0) {
                pageItem.push(pageSize);
            }
            return pageItem.sort(function (a, b) { return a - b });
        }
    },
    template: "\
    <div class=\"ui-pagination clearfix\"> \
        <div class=\"right\">\
                <span class=\"lb_recordcount input-group-addon\">共{{pageInfo.RecordCount}}条</span>\
                <el-button type=\"button\" size=\"mini\"  v-bind:disabled=\"pageInfo.CurrentPage<=1\" v-on:click=\"goPage(pageInfo.CurrentPage-1)\">上一页</el-button><el-button type=\"button\" size=\"mini\"  v-bind:disabled=\"pageInfo.CurrentPage>=pageInfo.PageCount\" v-on:click=\"goPage(pageInfo.CurrentPage+1)\">下一页</el-button>\
                <el-select  size=\"mini\" v-model=\"pageInfo.CurrentPage\" v-on:change=\"goPage()\">\
                    <el-option  :value=\"item.value\" v-for=\"(item,index) in pageItem\" :key='index' :label=\"item.text\"></el-option>\
                </el-select>\
                <el-select size=\"mini\" v-model=\"pageInfo.PageSize\" v-on:change=\"changePageSize()\">\
                   <el-option :value=\"item\" v-for=\"(item,index) in pageSizeItem\" :key='index' :label=\"item+'条/页'\"></el-option>\
                </el-select>\
        </div>\
    </div>"
});

//ui-verificationCode验证码组件
Vue.component("ui-verification-code-image", {
    props: {
        src: { default: null },
    },
    data: function () {
        return {
            random: "",
            autoMinutes:30,//自动刷新分钟数
            timer:null
        }
    },
    created: function ()
    {
        this.autoRefresh();
    },
    methods: {
        change: function () {
            var _this = this;
            var r = Math.floor(Math.random() * 100000000);
            var imgSrc = this.src;
            if (imgSrc.indexOf("?") < 0) {
                r = "?" + r;
            }
            r = "&" + r;
            this.random = r;
            _this.autoRefresh();
        },
        autoRefresh: function () //定时刷新
        {
            var _this = this;
            if (_this.timer != null)
            {
                clearTimeout(_this.timer);
            }
            _this.timer = setTimeout(function () { _this.change() }, (this.autoMinutes) * 60 * 1000);
        }
    },
    template: '<img :src="src+random" class="ui-verification-code-cmage"  style="cursor:pointer;max-width:auto" v-on:click="change">'
});


//上传文件共有属性方法
var _uploadMixinsData_ = {
    data: function () {
        return {
            dialogImageUrl: '',
            dialogVisible: false,
            fileLists: this.fileList,
            hideUpload: false,
            acceptExt: [".jpg", ".jpeg", ".png", ".gif"],
            uploadBtnState: false
        }
    },
    props: {
        data: {
            type: Object,
            default: function () { return { fileType: "image" } },
            required: false,
            loadingInstance: null
        },
        btnTxt: {
            type: String,
            default: "点击上传"  //可选择array或string
        },
        disabled: {
            type: Boolean,
            default: false,
            required: false
        },
        returnType: {
            type: String,
            default: "array"  //可选择array或string
        },
        value: {//v-mode传递进来，内部不需要需用
            type: Array | String | undefined,
            default: function () { return [] },
            required: false
        },
        action: {//----------接口地址
            type: String,
            default: '#'
        },
        accept: {
            type: Array | String,
            default: [".jpg", ".jpeg", ".png", ".gif"],
            required: false
        },
        limit: {  //-------限制个数
            type: Number,
            default: 5
        },
        multiple: {//------是否支持多选择文件
            type: Boolean,
            default: false
        },
        disabled: {  //------是否禁止
            type: Boolean,
            default: false
        },
        maxSize: {//------------最大尺寸限制，0则不限制，单位kb
            type: Number,
            default: 1
        },
        fileList: {  //-------------数据源(数据绑定时实现双向绑定:file-list.sync)
            type: Array,
            default: []
        },
        drag: {  //-----------是否启动拖拽
            type: Boolean,
            default: true
        }
    },
    methods: {
        //更新父级v-model
        updateImgSrc: function (fileLists) {
            var newdata = fileLists.map(function (item) {
                return item.url;
            })
            if (this.returnType == "string") {
                newdata = newdata.join(",");
            }
            this.$emit('input', newdata);
        },
        handlePreview: function (file)
        {
            window.open(file.url);
        },
        handleRemove: function (file) {  //-----------删除
            var _this = this
            _this.fileLists.forEach(function (item, index) {
                if (item.uid == file.uid) {
                    _this.fileLists.splice(index, 1)
                }
            })
            this.showUploadBthHandel();
        },
        checkLimit: function () {

        },
        rightFileList: function (file) {  //-----------右边点击
            var _this = this
            try {
                this.fileLists.forEach(function (item, index) {
                    if (file.uid == item.uid) {
                        if (index + 1 != _this.fileLists.length) {
                            var midData = _this.fileLists[index + 1].url
                            _this.fileLists[index + 1].url = _this.fileLists[index].url
                            _this.fileLists[index].url = midData
                        }
                        else {
                            var startData = _this.fileLists[index].url
                            for (var i = _this.fileLists.length - 1; i > 0; i--) {
                                _this.fileLists[i].url = _this.fileLists[i - 1].url
                            }
                            _this.fileLists[0].url = startData
                        }
                        throw new Error('end');
                    }
                })
            } catch (e) {
                if (e.message != 'end') throw e;
            }
            this.updateImgSrc(_this.fileLists)
        },
        leftFileList: function (file) {  //---------------左边点击
            var _this = this
            try {
                this.fileLists.forEach(function (item, index) {
                    if (file.uid == item.uid) {
                        if (index != 0) {
                            var midData = _this.fileLists[index - 1].url
                            _this.fileLists[index - 1].url = _this.fileLists[index].url
                            _this.fileLists[index].url = midData
                        }
                        else {
                            var endData = _this.fileLists[index].url
                            for (var i = 0; i < _this.fileLists.length - 1; i++) {
                                _this.fileLists[i].url = _this.fileLists[i + 1].url
                            }
                            _this.fileLists[_this.fileLists.length - 1].url = endData
                        }
                        throw new Error('end');
                    }
                })
            } catch (e) {
                if (e.message != 'end') throw e;
            }
            this.updateImgSrc(_this.fileLists)
        },
        handlePictureCardPreview: function (file) {//----------预览
            this.dialogImageUrl = file.url;
            this.dialogVisible = true;
        },
        onImageError: function (err, file, fileLists) {//-------上传失败,http服务器错误
            this.loadingInstance.close();
            this.$message.error("文件上传失败，请稍后再试!");
        },
        onRequestOver: function (response, file, fileList) {  //--------http请求结束后的回调
            this.loadingInstance.close();
            this.fileLists = fileList
            if (!response.State) //response.State==0时表示已被服务器端终止上传并返回提示
            {
                this.handleRemove(file);
                this.$message.error(response.Msg);
            }
            else {
                file.url = response.Url;
            }
        },
        onChangeImageUpload: function (file, FileList) {  //-----------上传成功/失败,正在上传
            //console.log("onChangeImageUpload")
            this.showUploadBthHandel();
        },
        onLimItExceed: function (file, FileList) {  //-----------超出上传个数
            this.$message.error("最多只能上传" + this.limit + "个文件，请删除后再上传！");
        },
        beforeUpload: function (file) { //--------上传之前校验
            var _this = this;
            console.log(_this.maxSize)
            if (!_this.validateSize(file) && _this.maxSize > 0) {
                console.log(_this.maxSize)
                _this.$message.error("文件大小不能超过" + _this.maxSize / 1024 + "MB！");
                return false;
            }
            if (!_this.validateExt(file)) {
                _this.$message.error("禁止上传的" + _this.acceptExt.join(",") + "格式的文件！");
                return false;
            }
            _this.loadingInstance = _this.$loading();
            return true;
        },
        validateSize: function (file, resolve, reject) { //---验证大小
            var isSizeM = file.size / 1024 < this.maxSize;
            return isSizeM ? true : false
        },
        validateExt: function (file, resolve, reject) { //---验证格式
            var fileName = file.name;
            var indexStart = fileName.lastIndexOf(".");
            var indexEnd = fileName.length;
            var fileExt = fileName.substring(indexStart, indexEnd);//后缀名
            var arrayAccept = this.accept;
            if (arrayAccept == "*") {
                return true;
            }
            if (!Array.isArray(arrayAccept)) {
                arrayAccept = arrayAccept.split(",");
                this.acceptExt = arrayAccept;
            }
            return arrayAccept.indexOf(fileExt.toLowerCase()) >= 0;
        },
        showUploadBthHandel: function () { //上传按钮显示和隐藏控制
            this.hideUpload = this.fileLists.length >= this.limit && this.limit > 0;
            if (this.data.fileType == "images" || this.data.fileType == "image") {
                var dom = this.$refs.upload.getElementsByClassName('el-upload')[0];
                if (this.hideUpload) {
                    dom.style.display = "none"
                }
                else {
                    dom.style.display = "inline-block"
                }
            }
            else {
                if (this.hideUpload) {
                    this.uploadBtnState = true;
                }
                else {
                    this.uploadBtnState = false;
                }
            }

        }
    },
    mounted: function () {
        this.showUploadBthHandel();
    },
    watch: {
        fileLists: {
            handler: function (newVal, oldVal) {
                this.updateImgSrc(newVal)
            },
            //deep:true,
            immediate: true
        }
    }
}

//带缩约图显示

Vue.component('ui-picture-upload', {
    template: "<div ref='upload'><el-upload  v-bind='$attrs'  :action='action' :data='data' list-type='picture-card' :on-success='onRequestOver'" +
    ":accept='accept' :multiple='multiple' :limit='limit' :before-upload='beforeUpload' :drag='false'" +
    ":on-change='onChangeImageUpload' :on-exceed='onLimItExceed' :file-list='fileLists'" +
    ":disabled='disabled' :on-error='onImageError'>" +
    "<i class='el-icon-plus'></i><div slot='file' slot-scope='file'><img class='el-upload-list__item-thumbnail' style='height: 148px;' :src='file.file.url'>" +
    "<label class='el-upload-list__item-status-label'><i class='el-icon-upload-success el-icon-check'></i></label>" +
    "<span class='el-upload-list__item-actions' style='display: flex;justify-content: center;align-items: center;'>" +
    "<span v-if='!disabled && fileLists.length>1' v-on:click='rightFileList(file.file)'>" +
    "<i class='el-icon-arrow-right' style='color: white;position: absolute;right: 5px;top: 64px;cursor:pointer;'></i>" +
    "</span>" +
    "<span v-if='!disabled && fileLists.length>1' v-on:click='leftFileList(file.file)'>" +
    "<i class='el-icon-arrow-left' style='color: white;position: absolute;left: 5px;top: 64px;cursor:pointer;'></i>" +
    "</span>" +
    "<span style='margin-left:-10px;' class='el-upload-list__item-preview' v-on:click='handlePictureCardPreview(file.file)'>" +
    "<i class='el-icon-zoom-in'></i></span>" +
    "<span style='margin-left:10px;' v-if='!disabled' class='el-upload-list__item-delete' v-on:click='handleRemove(file.file)'>" +
    "<i class='el-icon-delete'></i></span></span></div></el-upload>" +
    "<el-dialog :visible.sync='dialogVisible'><img width='100%' :src='dialogImageUrl'></el-dialog></div>",
    mixins: [_uploadMixinsData_],
})

//不带缩约图

Vue.component('ui-file-upload', {
    template: "<div ref='upload'><el-upload  v-bind='$attrs'  :action='action' :drag='false' :data='data'  list-type='text' :on-success='onRequestOver'" +
    ":accept='accept' :multiple='multiple' :on-preview=\"handlePreview\" :limit='limit' :on-remove='handleRemove' :before-upload='beforeUpload'" +
    ":on-change='onChangeImageUpload' :on-exceed='onLimItExceed' :file-list='fileLists'" +
    ":disabled='disabled' :on-error='onImageError'>" +
    "<el-button size=\"small\" type=\"primary\">{{btnTxt}}</el-button>" +
    "</el-upload></div>",
    mixins: [_uploadMixinsData_],
})

//tag标签

Vue.component('ui-tag', {
    template: "<div><el-tag :key='index' v-for='(item,index) in dataLists' :closable='closable' :type='type'" +
    ":disable-transitions='disableTransitions' @close='handleClose(item)' :hit='hit' :color='color'" +
    ":size='size' :effect='effect' @click='handleClick(item)' style='margin-left: 10px;'>{{item}}</el-tag>" +
    "<el-input class='input-new-tag' style='width: 120px;margin-left: 10px;' v-if='inputVisible' v-model='inputValue' ref='saveTagInput' size='small'" +
    "@keyup.enter.native='handleInputConfirm' @blur='handleInputConfirm'></el-input>" +
    "<el-button style='margin-left: 10px;' v-else class='button-new-tag' size='small' @click='showInput'>{{buttonText}}</el-button></div>",
    data: function () {
        return {
            inputVisible: false,
            inputValue: '',
            dataLists: [],
        }
    },
    props: {
        value: {  //-----------数据源
            type: Array | String,
            default: []
        },
        closable: {  //-------是否有关闭
            type: Boolean,
            default: true
        },
        type: { //------------类型success/info/warning/danger
            type: String,
            default: ''
        },
        disableTransitions: {  //------是否关闭动画
            type: Boolean,
            default: false
        },
        hit: {  //-----------是否有边框描边
            type: Boolean,
            default: false
        },
        color: {//----------------背景色
            type: String,
            default: ''
        },
        size: {  //------------尺寸medium / small / mini
            type: String,
            default: ''
        },
        effect: {//-----------主题dark / light / plain
            type: String,
            default: 'light'
        },
        buttonText: {  //------------按钮文本
            type: String,
            default: '+添加'
        },
        returnType: {
            type: String | Array,
            default: ''
        }
    },
    created: function () {
        //如果数据源不是数组则转换为数组
        var midList;
        if (this.value == undefined || this.value == null || this.value == "") {
            midList = [];
        }
        else if (!Array.isArray(this.value)) {
            midList = this.value.split(',')
        }
        this.dataLists = midList
    },
    methods: {
        handleClose: function (val) {
            this.dataLists.splice(this.dataLists.indexOf(val), 1);
            this.returnTypeFlag(this.dataLists)
        },
        handleClick: function (val) {

        },
        returnTypeFlag: function (dataList) {
            //如果传递的v-model是数组，则返回数组,反之则返回逗号隔开的字符串
            if (Array.isArray(this.value)) {
                this.$emit('input', dataList)
            }
            else {
                this.$emit('input', dataList.join(","))
            }
        },
        handleInputConfirm: function () {
            var inputValue = this.inputValue;
            if (inputValue) {
                this.dataLists.push(inputValue);
            }
            this.inputVisible = false;
            this.inputValue = '';
            this.returnTypeFlag(this.dataLists)
        },
        showInput: function () {
            this.inputVisible = true;
            //dom节点渲染完毕后执行
            this.$nextTick(function () {
                this.$refs.saveTagInput.$refs.input.focus();
            });
        }
    }
})

//级联共有属性

var _cascaderMinix_ = {
    data: function () {
        return {
            selectedOptionsVal: [],  //-------获取已绑定的数据源
            selectedOptionsValList: [],  //---------显示已绑定的数据源
            selectedOldList: [],  //---------全部数据源
            selectedMidList: [],  //---------判断数据源
            selectValue: ''
        }
    },
    watch: {
        value: {
            handler: function (newVal, oldVal) {
                try {
                    this.selectValue = newVal
                    this.createdVal()
                } catch (e) {
                    console.log(e)
                }
            },
            deep: true
        },
        options: {
            handler: function (newVal, oldVal) {
                try {
                    this.options = newVal
                    this.createdVal()
                } catch (e) {
                    console.log(e)
                }
            },
            deep: true
        }
    },
    created: function () {
        this.selectValue = this.value
        this.createdVal()  //-----------初始化
    },
    props: {
        options: {  //----------数据源
            type: Array,
            default: {}
        },
        clearable: {  //--------------输入框可清空
            type: Boolean,
            default: true
        },
        props: {
            type: Object,
            default: function () {
                return {
                    expandTrigger: 'hover',
                    multiple: false
                }
            }
        },
        value: {  //----------默认选中
            type: String | Number,
            default: ''
        },
        placeholder: {  //-----提示
            type: String,
            default: '请选择'
        },
        disabled: {  //------是否禁用
            type: Boolean,
            default: false
        },
        size: {
            type: String,
            default: ''
        },
        collapseTags: {  //------多选情况下是否折叠
            type: Boolean,
            default: false
        }
    },
    methods: {
        createdVal: function () {  //--------------------实例化数据源，根据子级ID找到相应的父级数据
            try {
                var _this = this
                var selectarr = this.selectValue.toString().split(',')
                _this.selectedOldList = []
                this.selectedMidList = _this.forOptions(_this.options, [])
                this.getArray(this.selectedMidList)
                if (_this.selectedOldList.length <= 0 || _this.options.length <= 0) {
                    return;
                }
                selectarr.forEach(function (selectval, index) {
                    for (var i = 0; i < _this.selectedOldList.length; i++) {
                        for (var j = 0; j < _this.selectedOldList[i].length; j++) {
                            if (_this.selectedOldList[i][j] == selectval) {
                                if (_this.selectedOldList[i][_this.selectedOldList[i].length - 1] == selectval) {
                                    if (!_this.props.multiple) {
                                        _this.selectedOldList[i] = _this.selectedOldList[i].map(Number)
                                    }
                                    _this.selectedOptionsVal.push(_this.selectedOldList[i])
                                }
                                return;
                            }
                        }
                    }
                })
                if (!_this.props.multiple) {
                    if (_this.selectedOptionsVal.length <= 0) {
                        return;
                    }
                    _this.selectedOptionsValList = _this.selectedOptionsVal[0]
                }
                else {
                    _this.selectedOptionsValList = _this.selectedOptionsVal
                }
                _this.selectedOptionsVal = []
            } catch (e) {
                throw e;
            }

        },
        getSelectedValue: function (val) {  //---------------获取最后子级的value,组成字符串
            console.log(val)
            var data = val
            if (this.props.multiple) {
                var selectedval = ''
                val.forEach(function (item, inx) {
                    item.forEach(function (itemval, index) {
                        if (inx == val.length - 1) {
                            if (index == item.length - 1) {
                                selectedval += itemval
                                return
                            }
                        }
                        else {
                            if (inx != val.length - 1) {
                                if (index == item.length - 1) {
                                    selectedval += itemval + ','
                                    return
                                }
                            }
                            else {
                                if (index == item.length - 1) {
                                    selectedval += itemval
                                    return
                                }
                            }
                        }
                    })
                })
            }
            else {

                if (val.length == 0) {
                    selectedval = ''
                }
                else {
                    selectedval = val[val.length - 1]
                }
            }
            this.$emit('input', selectedval)
        },
        forOptions: function (departmentlist, oldDepartment) {  //------------------------初始化数据源
            var _this = this
            if (!Array.isArray(departmentlist)) {
                alert("数据源只能为数组！")
            }
            var newDepartment = [];
            departmentlist.forEach(function (item, inx) {
                newDepartment.push(JSON.parse(JSON.stringify(oldDepartment)))
                newDepartment[inx].push(item.value.toString());
                //if (!_this.props.multiple) {
                //    item.value = item.value.toString()
                //}
                if (Array.isArray(item.children)) {
                    newDepartment[inx] = _this.forOptions(item.children, newDepartment[inx]);
                }
            })
            return newDepartment;
        },
        getArray: function (departmentlist) {
            var _this = this
            departmentlist.forEach(function (item, inx) {
                if (Array.isArray(item) && Array.isArray(item[0])) {
                    _this.getArray(item)
                } else {
                    _this.selectedOldList.push(item)
                }
            })
        }
    }
}

// 级联多选单选

Vue.component('ui-cascader', {
    template: "<el-cascader :size='size' :collapse-tags='collapseTags' :clearable='clearable' :placeholder='placeholder' :disabled='disabled' v-model='selectedOptionsValList' @change='getSelectedValue' :options='options' :props='props'></el-cascader>",
    mixins: [_cascaderMinix_]
})

// 级联面板多选单选

Vue.component('ui-cascader-panel', {
    template: "<el-cascader-panel :placeholder='placeholder' :collapse-tags='collapseTags' :disabled='disabled' v-model='selectedOptionsValList' @change='getSelectedValue' :options='options' :props='props'></el-cascader-panel>",
    mixins: [_cascaderMinix_]
})

//下拉菜单
//-----公用属性方法
var _selectCheckbox_ = {
    props: {
        multiple: {  //-----------true多选false单选
            type: Boolean,
            default: false
        },
        clearable: {  //--------------选择器清空,仅适用于单选
            type: Boolean,
            default: true
        },
        filterable: {  //--------------选择器清空,仅适用于单选
            type: Boolean,
            default: false
        },
        options: {  //-------------数据源
            type: Array,
            default: function () {
                return [];
            }
        },
        size: {
            type: String,
            default: ''
        },
        value: {   //------------默认选中
            type: String | Array | Number,
            default: function () {
                return ''
            }
        },
        disabled: {   //------------是否禁用
            type: Boolean,
            default: false
        },
        multipleLimit: {  //------------用户最多选择的个数,默认为0不限制
            type: Number,
            default: 0
        },
        placeholder: {  //----------------提示语句
            type: String,
            default: '请选择'
        }
    },
    methods: {
        flagInit: function () {
            this.inIt()
        },
        flagInitCheck: function () {
            this.inItData()
        },
        inItData: function () {
            var _this = this
            this.selectedModel = []
            if (this.value == '' || this.value == null) {
                _this.selectedModel = ''
                return
            }
            var midModel = []
            if (this.multiple) {
                if (typeof _this.value == 'object' || typeof _this.value == 'array') {
                    midModel = _this.value
                }
                else {
                    midModel = this.value.toString().split(',')
                }
                midModel.forEach(function (val) {
                    _this.optionArr.forEach(function (item) {
                        if (item.value.toString() == val.toString()) {
                            _this.selectedModel.push(item.value)
                        }
                    })
                })
            }
            else {
                _this.optionArr.forEach(function (item) {
                    if (item.value.toString() == _this.value.toString()) {
                        _this.selectedModel = item.value
                    }
                })
            }
        },
        getSelectedVals: function (selectedText) {  //-----------选中后的调用
            var selected = ''
            if (selectedText == '' || selectedText == null) {
                selected = ''
            }
            else {
                if (this.multiple) {
                    if (!Array.isArray(this.value)) {
                        selectedText.forEach(function (item, inx) {
                            if (selectedText.length - 1 == inx) {
                                selected += item
                            }
                            else {
                                selected += item + ','
                            }
                        })
                    }
                    else {
                        selected = []
                        selected = selectedText
                    }

                }
                else {
                    if (!Array.isArray(this.value)) {
                        selected = selectedText
                    }
                    else {

                        selected = []
                        selected[0] = selectedText
                    }
                }
            }
            this.$emit('input', selected)  //----------回调父级的方法
        },
    }
}

//单选框
Vue.component('ui-radio', {
    template: "<el-radio-group v-model='selectedModel' :disabled='disabled'" +
    ":border='border' :size='size'  @change='getSelectedVal'>" +
    "<el-radio v-for='item in options' :key='item.value.toString()' :label='item.value.toString()'>" +
    "{{item.label}}</el-radio><slot></slot></el-radio-group>",
    mixins: [_selectCheckbox_],
    data: function () {
        return {
            optionArr: [],
            selectedModel: '',
        }
    },
    props: {
        border: {
            type: Boolean,
            default: false
        },
        size: {
            type: String,
            default: 'mini'
        }
    },
    created: function () {
        this.flagInit()
    },
    methods: {
        getSelectedVal: function (val) {
            var selected = ''
            if (Array.isArray(this.value)) {
                selected = []
                selected.push(val)
            }
            else {
                selected = val
            }
            console.log(selected)
            this.$emit('input', selected)
        },
        inIt: function () {
            if (Array.isArray(this.value)) {
                this.selectedModel = this.value[0].toString()
            }
            else {
                this.selectedModel = this.value.toString()
            }
        }
    }
})

//下拉表单

Vue.component('ui-select', {
    template: "<el-select :style='{width:width}' filterable v-model='selectedModel' :size='size' :disabled='disabled' :multiple='multiple'" +
    ":multiple-limit='multipleLimit' :clearable='clearable' :placeholder='placeholder' @change='getSelectedVals'>" +
    "<el-option v-for='item in options' :key='item.value' :label='item.label' :value='item.value'>" +
    "</el-option><slot></slot></el-select>",
    mixins: [_selectCheckbox_],
    props: {
        width: {
            type: String,
            default: '100%'
        }
    },
    data: function () {
        return {
            selectedModel: '',
            optionArr: [],
        }
    },
    created: function () {
        this.getDataChildren();
    },
    methods: {
        getDataChildren: function () {
            var _this = this;
            this.optionArr = JSON.parse(JSON.stringify(this.options))
            if (this.$slots.default != undefined) {
                this.$slots.default.forEach(function (item) {
                    if (item.data != undefined) {
                        _this.optionArr.push(item.componentOptions.propsData)
                    }
                })
            }
            this.flagInitCheck()
        },
    },
    watch: {
        value: {
            handler: function (newVal, oldVal) {
                this.flagInitCheck()
            },
            immediate: true
        },
        options: {
            handler: function (newVal, oldVal) {
                this.getDataChildren()
            },
            immediate: true
        },
    }
});

//多选框

Vue.component('ui-checkbox', {
    template: "<el-checkbox-group v-model='selectedModel' @change='getSelectedVal'>" +
    "<el-checkbox v-for='(item,index) in options' :label='item.value' :key='item.value'>{{item.label}}</el-checkbox><slot></slot></el-checkbox-group>",
    mixins: [_selectCheckbox_],
    data: function () {
        return {
            selectedModel: '',
            optionArr: [],
        }
    },
    created: function () {
        this.getCheckBoxData()
    },
    methods: {
        getCheckBoxData: function () {
            var _this = this
            this.optionArr = JSON.parse(JSON.stringify(this.options))
            if (this.$slots.default != undefined) {
                this.$slots.default.forEach(function (item) {
                    if (item.data != undefined) {
                        _this.optionArr.push({
                            label: item.componentOptions.children[0].text,
                            value: item.componentOptions.propsData.label
                        })
                    }
                })
            }
            this.flagInit()
        },
        inIt: function () {
            var _this = this
            this.selectedModel = []
            if (this.value == '' || this.value == null) {
                _this.selectedModel = []
                return
            }
            var midModel = []
            if (typeof _this.value == 'object' || typeof _this.value == 'array') {
                midModel = _this.value
            }
            else {
                midModel = this.value.toString().split(',')
            }
            midModel.forEach(function (val) {
                _this.optionArr.forEach(function (item) {
                    if (item.value.toString() == val.toString()) {
                        _this.selectedModel.push(item.value)
                    }
                })
            })
        },
        getSelectedVal: function (selectedText) {  //-----------选中后的调用
            var selected = ''
            if (Array.isArray(this.value)) {
                selected = []
                selected = selectedText
            }
            else {
                selectedText.forEach(function (item, inx) {
                    if (selectedText.length - 1 == inx) {
                        selected += item
                    }
                    else {
                        selected += item + ','
                    }
                })
            }
            this.$emit('input', selected)  //----------回调父级的方法
        }
    },
    watch: {
        value: {
            handler: function (newVal, oldVal) {
                this.flagInit()
            },
            immediate: true
        },
        options: {
            handler: function (newVal, oldVal) {
                this.flagInit()
            },
            immediate: true,
        },
    }
})

//对话框

Vue.component('ui-dialog', {
    template: "<el-dialog v-on:open='inits' :title='title' :visible.sync='dialogVisible' :width='width'>" +
    "<div :style='{height:height}'><div style='text-align: right;'>" +
    "<el-input size='small' clearable style='width:200px;' v-model='searchInfo.keyword' placeholder='搜索关键词'>" +
    "<el-button size='small' slot='append' v-on:click='loadData'>搜索</el-button></el-input></div>" +
    "<el-table ref='tables' :row-key='getRowKey'  :data='tableData' border highlight-current-row v-loading='loading' v-on:select='userChoose'" +
    "tooltip-effect='dark' v-on:select-all='handleSelectionChange' style='width: 100%;margin-top:20px;max-height: 400px;overflow-y: scroll;'>" +
    "<el-table-column type='selection' :reserve-selection='true' width='55'></el-table-column>" +
    "<el-table-column :label='thTitle'>" +
    "<template slot-scope='scope'>{{ scope.row.label }}</template>" +
    "</el-table-column></el-table>" +
    "<ui-page-panel style='text-align: right;' v-model='pageInfos' v-on:change='loadData'></ui-page-panel>" +
    "<div style='padding-left:30px;margin-top: 20px;'>" +
    "<el-button size='small' type='primary' v-on:click='postSubmit'>确定</el-button>" +
    "<el-button size='small' v-on:click='closeSelf'>关闭</el-button>" +
    "</div></div></el-dialog>",
    props: {
        title: { //--------标题
            type: String,
            default: ''
        },
        visible: {
            type: Boolean,//------是否显示
            default: false
        },
        width: {
            type: String,//-------宽度
            default: '50%'
        },
        value: {  //------------默认选中值
            type: Array | String | Number,
            default: function () {
                return [];
            }
        },
        url: {  //-----------Api地址
            type: String,
            default: ''
        },
        height: {  //-----------高度
            type: String,
            default: 'auto'
        },
        pageInfo: {
            type: Object,
            default: function () {
                return {}
            }
        },
        multiple: {
            type: Boolean,
            default: true
        },
        thTitle: {
            type: String,
            default: '标题'
        },

    },
    data: function () {
        return {
            tableData: [],
            selectList: [],
            pageInfos: {},
            searchInfo: { keyword: "" },
            loading: true,
            dialogVisible: false,
            SelectionChangeFlg: true,
            newValue: [],
            addEventFirstInit: false
        }
    },
    created: function () {
    },
    methods: {
        handleSelectionChange: function (val) {  //-------------监听被选中
            var _this = this
            this.selectList = val
            if (val.length <= 0) {
                _this.newValue = []
            }
            else {
                val.forEach(function (item, index) {
                    var addPush = true
                    _this.newValue.forEach(function (items, indexs) {
                        if (item.value == items) {
                            addPush = false
                        }
                    })
                    if (addPush) {
                        _this.newValue.push(item.value)
                    }
                })
            }
        },
        getRowKey: function (row) {
            return row.value;
        },
        userChoose: function (list, row) {  //-----行监听
            var _this = this
            var oldselectList = this.selectList
            this.selectList = []
            if (this.multiple) {
                this.selectList = list
                var addPush = true
                _this.newValue.forEach(function (item, index) {
                    if (item == row.value) {
                        addPush = false
                        _this.newValue.splice(index, 1)
                    }
                })
                if (addPush) {
                    _this.newValue.push(row.value)
                }
            } else {
                this.$refs.tables.clearSelection();
                if (oldselectList.length > 0 && oldselectList[0] == row) {
                    this.selectList = []
                    _this.newValue = []
                }
                else {
                    this.$refs.tables.toggleRowSelection(row, true);
                    this.selectList[0] = row
                    _this.newValue[0] = row.value
                    //console.log(typeof this.newValue)
                }
            }
        },
        loadData: function (callbacks) {  //---------Api
            var searchInfos = { label: '' }
            searchInfos.label = this.searchInfo.keyword
            var serverData = extend(searchInfos, this.pageInfos);
            var _this = this
            ajax({
                url: _this.url,
                data: serverData,
                success: function (responseData) {
                    if (responseData != '') {
                        _this.tableData = responseData.Data
                        setTimeout(function () {
                            _this.tableData.forEach(function (item, index) {  //--------------重置默认
                                _this.$refs.tables.toggleRowSelection(_this.tableData[index], false);
                            })
                        }, 0)
                        _this.pageInfos = responseData.PageInfo
                        _this.addEventFirstInit = true
                        _this.loading = false
                        _this.setToggleRow(_this.tableData)
                    }
                    if (callbacks != undefined && typeof callbacks != 'object') {
                        callbacks()
                    }
                }
            });
        },
        inits: function () {  //----------打开回调
            var _this = this
            if (!this.multiple) {
                _this.newValue[0] = this.value
            }
            else {
                _this.newValue = JSON.parse(JSON.stringify(this.value))
            }
            _this.pageInfos = _this.PageInfo
            this.loadData(function () {
                setTimeout(function () {

                }, 0)
            })
        },
        setToggleRow: function (datas) {  //---------设置默认选中
            var _this = this
            var valuelist = _this.newValue

            if (!this.multiple) {
                this.$refs.tables.$el.childNodes[1].childNodes[0].childNodes[1].childNodes[0].childNodes[0].childNodes[0].style.display = 'none'
            }
            else {
                this.$refs.tables.$el.childNodes[1].childNodes[0].childNodes[1].childNodes[0].childNodes[0].childNodes[0].style.display = 'block'
            }
            if (valuelist != '' || valuelist.length > 0) {
                _this.SelectionChangeFlg = true
                setTimeout(function () {

                    valuelist.forEach(function (val) {
                        datas.forEach(function (item, index) {
                            if (val == item.value) {
                                _this.$refs.tables.toggleRowSelection(datas[index], true);
                            }
                        })
                    })
                    if (_this.multiple) {
                        if (_this.addEventFirstInit) {
                            _this.selectList.forEach(function (item, inx) {
                                var removePush = false
                                valuelist.forEach(function (val) {
                                    if (item.value == val) {
                                        removePush = true
                                    }
                                })
                                if (!removePush) {
                                    _this.selectList.splice(inx, 1)
                                }
                            })
                            _this.addEventFirstInit = false
                        }
                    }
                }, 0)
            }
            else {
                setTimeout(function () {
                    datas.forEach(function (item, index) {  //--------------重置默认
                        _this.$refs.tables.toggleRowSelection(datas[index], false);
                    })
                }, 0)
            }
        },
        postSubmit: function () {  //--------确定
            if (this.multipleLimit > 0 && this.multipleLimit < this.selectList.length) {
                this.$message.error('最多选择' + this.multipleLimit + '条数据,请重新选择！');
                return;
            }
            this.$emit('chaoptions', this.selectList)
            var selected = []
            if (this.multiple) {
                this.selectList.forEach(function (item, index) {
                    selected.push(item.value)
                })
            }
            else {
                selected = ''
                if (this.selectList.length == 0) {
                    selected = ''
                }
                else {
                    selected = this.selectList[0].value
                }
            }
            this.$emit('input', selected)
            this.closeSelf()
        },
        closeSelf: function () {  //------取消
            this.dialogVisible = false
        }
    },
    watch: {
        visible: {
            handler: function (newVal, oldVal) {
                this.dialogVisible = this.visible
            },
            immediate: true
        },
        dialogVisible: {  //------监听对话框
            handler: function (newVal, oldVal) {
                if (!newVal) {
                    this.$emit('changes')
                }
            },
            immediate: true
        },
        value: {
            handler: function (newVal, oldVal) {

            },
            immediate: true
        }
    },
})

//下拉选择框菜单

Vue.component('ui-select-popup', {
    template: "<div style='margin-top:12px;display:flex;flex-direction:row;'><el-select ref='options' :style='{width:selectWidth}' v-model='selectedModel' :disabled='disabled' :multiple='multiple'" +
    ":multiple-limit='multipleLimit' :collapse-tags='collapseTags' :clearable='clearable' :placeholder='placeholder' @change='getSelectedVals' filterable>" +
    "<el-option v-for='item in optionNewArr'  :key='item.value' :label='item.label' :value='item.value'>" +
    "</el-option><slot></slot></el-select><el-button style='position: relative;left: -3px;border-radius-left: 0 4px 4px 0;' v-on:click='openDialog'>{{btnTitle}}</el-button>" +
    "<ui-dialog v-model='selectedModel' :multiple-limit='multipleLimit'  :th-title='thTitle' :multiple='multiple' :pageInfo='pageInfo' :height='height' :url='url' :width='width' :title='title' :visible='dialogVisval' v-on:changes='closeDialog' v-on:chaoptions='changeOptions'></ui-dialog></div>",
    mixins: [_selectCheckbox_],
    props: {
        selectWidth: {  //------下拉宽度
            type: String,
            default: '100%'
        },
        btnTitle: {  //-------按钮标题
            type: String,
            default: '选择'
        },
        title: {   //----------顶部标题
            type: String,
            default: '选择界面'
        },
        url: {  //---------Api地址
            type: String,
            default: ''
        },
        width: {  //-----------对话框宽度
            type: String,
            default: '50%'
        },
        height: {  //-----------对话框高度
            type: String,
            default: 'auto'
        },
        pageInfo: {
            type: Object,
            default: function () {
                return {}
            }
        },
        collapseTags: {
            type: Boolean,
            default: true
        },
        thTitle: {
            type: String,
            default: '标题'
        }
    },
    data: function () {
        return {
            dialogVisval: false,//---------显示对话框
            selectedModel: '',
            optionArr: [],
            optionNewArr: [],
            optionsCunArr: [],
        }
    },
    watch: {
        selectedModel: {
            handler: function (newVal, oldVal) {
                if (newVal.length > 0 || newVal != '') {
                    this.getSelectedVals(newVal)
                }
            },
            immediate: true
        },
    },
    created: function () {
        var _this = this
        setTimeout(function () {
            _this.$refs.options.$el.childNodes[1].childNodes[1].style.border = '1px solid #DCDFE6'
        }, 0)
        this.optionsCunArr = JSON.parse(JSON.stringify(this.options))
        this.getDataChildren();
    },
    methods: {
        openDialog: function () {
            this.dialogVisval = true
        },
        closeDialog: function () {
            this.dialogVisval = false
        },
        getDataChildren: function () {
            var _this = this
            this.optionArr = JSON.parse(JSON.stringify(this.options))
            this.optionNewArr = JSON.parse(JSON.stringify(this.options))
            if (this.$slots.default != undefined) {
                this.$slots.default.forEach(function (item) {
                    if (item.data != undefined) {
                        _this.optionArr.push(item.componentOptions.propsData)
                    }
                })
            }
            this.flagInitCheck()
        },
        changeOptions: function (val) {
            var _this = this
            this.optionNewArr = JSON.parse(JSON.stringify(this.optionsCunArr))
            if (this.optionNewArr.length <= 0) {
                this.optionNewArr = val
                return;
            }
            else {
                this.optionNewArr = this.unique(this.mergeArray(this.optionNewArr, val))
            }
        },
        unique: function (arr) { //------------删除原数组重复值并生成新的数组
            var hashTable = {};
            var data = [];
            for (var i = 0, l = arr.length; i < l; i++) {
                if (!hashTable[arr[i].value]) {
                    hashTable[arr[i].value] = true;
                    data.push(arr[i]);
                }
            }
            return data
        },
        mergeArray: function (arr1, arr2) {  //-------合并数组
            return arr1.concat(arr2)
        }
    }
})

//发送验证码

Vue.component('ui-input-code', {
    template: "<el-input clearable  :placeholder='placeholder' v-model='modelText' class='input-with-select' v-on:input='changeCode'>" +
    "<template  slot='append'><el-button  :loading='btnloading' v-on:click='sendCode' :style=\"{cursor:sendCodeFlag?'pointer':'not-allowed'}\"  style='margin-left:-10px;margin-right:-10px'>{{btnTitleNews}} </el-button> </template>" +
        "</el-input>",
    data: function () {
        return {
            modelText: '',
            parameter: {},//--------Api参数
            sendCodeFlag: true,//-------是否可以发送
            btnTitleNews: '',
            delaySize: 120,//-----延迟秒数
            btnloading: false,
        }
    },
    created: function () {
        this.modelText = this.value;
        this.btnTitleNews = this.btnTitle
    },
    props: {
        placeholder: {
            type: String,
            default: '请输入验证码'
        },
        value: {
            type: String,
            default: ''
        },
        focusTarget: {
            type: String,
            default: ''
        },
        btnTitle: {
            type: String,
            default: '获取验证码'
        },
        type: {
            type: String,
            default: 'email'
        },
        urlApi: {
            type: String, //---------获取发送api
            default: '/E/SmsCode/Send'
        },
        urlCode: {  //-------获取TokenApi
            type: String,
            default: "/E/CodeBase/Send"
        },
        account: {   //---------获取手机号/email账号
            type: String,
            default: ''
        }
    },
    methods: {
        sendCode: function () {  //-发送验证码
            if (this.sendCodeFlag) {
                var _this = this
                
                var validationFlag = this.validationText();
                if (validationFlag) {
                    this.sendCodeFlag = false
                    this.btnloading = true
                    this.callToken(function () {
                        _this.callApi(_this.type)
                    })
                }
            }
        },
        changeCode: function (val) {//-------back-value
            this.$emit('input', val)
        },
        callToken: function (callbacks) {  //----------获取Token
            var _this = this
            _this.ajax({
                url: _this.urlCode,
                data: {},
                async: true,
                success: function (responseData) {
                    _this.parameter.Token = responseData.token;
                    callbacks()
                },
                error: function () {
                    setTimeout(function () {
                        _this.sendCodeFlag = true
                        _this.btnloading = false
                    }, 1000)
                    _this.$message.error('接口调用失败。请联系开发人员');
                }
            });
        },
        timingDelay: function () {  //--------定时器
            var _this = this
            var seconds = _this.delaySize;
            var time = setInterval(function () {
                if (seconds == _this.delaySize)
                {
                    _this.btnloading = false;
                }
                if (seconds <= 0) {
                    clearInterval(time)
                    _this.btnTitleNews = _this.btnTitle
                    _this.sendCodeFlag = true
                    return;
                }
                _this.btnTitleNews = seconds + '秒'
                --seconds;
            }, 1000)
        },
        callApi: function (type) {  //------调用Api
            var _this = this
            if (type == 'email') {
                this.parameter.email = this.account;
            }
            else {
                this.parameter.mobile = this.account;
            }
            _this.ajax({
                url: _this.urlApi,
                type: "post",
                data: _this.parameter,
                success: function (responseData) {
                    if (responseData.State == 1) {
                        _this.timingDelay()
                    }
                    else {
                        setTimeout(function () {
                            _this.btnloading = false
                            _this.sendCodeFlag = true
                            _this.$message.error(responseData.Msg);
                        }, 1000)
                    }
                },
                error: function () {
                    _this.btnloading = false
                    _this.sendCodeFlag = true
                    //_this.$message.error(responseData.Msg);
                }
            });
        },
        focus: function () {  //提示后获取焦点
            var focusTarget = this.focusTarget;
            if (focusTarget == "") {
                return;
            }
            var focusTarget = document.querySelector(focusTarget);
            if (focusTarget != null) {
                focusTarget.focus();
            }
        },
        validationText: function () {  //----------验证文本
            if (this.type == 'email') {
                if (this.account == '' || this.account == null) {
                    this.focus();
                    this.$message.error('请填写邮箱账号!')
                    return false
                }
                var emailFlag = isEmail(this.account);
                if (!emailFlag) {
                    this.focus();
                    this.$message.error("邮箱账号填写错误，请重新填写!");
                    return false;
                }
                else {
                    return true;
                }
            }
            if (this.type == 'mobile') {
                if (this.account == '' || this.account == null) {
                    this.focus();
                    this.$message.error('请填写手机号码!')
                    return false
                }
                var mobileFlag = isMobile(this.account);
                if (!mobileFlag) {
                    this.focus();
                    this.$message.error("手机号码填写错误，请重新填写!");
                    return false;
                }
                else {
                    return true;
                }
            }
        }
    }
})


//自定义组件
Vue.component('ui-script', {
    template: "<component :is='componentName' v-model='value' v-if='isTrue' :parameter='parameter'></component>",
    data: function () {
        return {
            isTrue: false,
        }
    },
    props: {
        value: {  //-----------数据源
            type: Array | String,
            default: ""
        },
        src: {  //js地址
            type: Array | String,
            default: ""
        },
        componentName: {  //组件名称
            type: String,
            default: ""
        },
        parameter: {  //自定义json参数
            type: Object,
            default: function () {
                return {}
            }
        },
    },
    created: function () {
        var _this = this;
        var url = _this.src
        if (url != undefined && url != null && url != "") {
            var script = document.createElement("script");
            script.type = "text/javascript";
            script.src = url;
            document.head.appendChild(script);
            if (script.readyState) {
                script.onreadystatechange = function () {
                    if (script.readyState == 'loaded' || script.readyState == 'complete') {
                        script.onreadystatechange = null;
                        _this.isTrue = true;
                    }
                };

            } else {//其他浏览器
                script.onload = function () {
                    _this.isTrue = true;
                };
            }
        }
    },
    methods: {
    },
    watch: {
        value: {
            handler: function (newVal, oldVal) {
                this.$emit('input', newVal)
            },
            immediate: true,
            deep: true
        },
    },
})






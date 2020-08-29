//设置，删除后的回调
function CallBack() {
    loadData();
}

//设置后刷新父页面
function PostBack() {
    parent.loadData();
    //Confirm("提交成功！是否返回列表管理界面？", { icon: 1 }, function () {
    //    CloseDialog();
    //});
}


//设置后关闭页面，
function PostCloseBack() {
    CloseDialog();
}

//设置后关闭并刷新页面，如文件改名，添加文件等等
function PostCloseRefreshBack() {
    parent.loadData();
    CloseDialog();
}


//添加和修改数据方法，一般
function AddEditBack() {
    if (Request("id") == "") {
        var url = location.href;
        var $xuhao = $("#xuhao");
        if ($xuhao.length > 0) {
            var xuhao = $xuhao.val();
            if (!IsInt(xuhao)) {
                xuhao = "1";
            }
            xuhao = parseInt(xuhao);
            if (url.indexOf("?") < 0) {
                url += "?xuhao=" + (xuhao + 1);
            }
            else if (url.indexOf("?xuhao=") > 0 || url.indexOf("&xuhao=") > 0) {
                url = url.replace(/(\?|&)xuhao=[0-9]*/, "$1xuhao=" + (xuhao + 1));
            }
            else {
                url += "&xuhao=" + (xuhao + 1);
            }
        }
        Confirm("添加成功！是否继续添加？", { icon: 1, closeBtn: 0 }, function () {
            location.href = url;//添加页面务必刷新，否则会导致guid重复
        }, function () { CloseDialog(); });
    }
    else {
        //Confirm("提交成功！是否返回列表管理界面？", { icon: 1 }, function () {
        //    CloseDialog();
        //});
    }
}


//增加和编辑数据页面的回调，直接刷新
function PostRefreshBack() {
    parent.loadData();
    AddEditBack();
}


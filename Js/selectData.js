//select视图页面专用
var objName = Request("objname");
if (objName == "") {
    $("body").html("objname参数不能为空!")
}
var $parentObj = parent.$(objName);
if ($parentObj.length == 0) {
    $("body").html("父级对象" + objName + "不存在!")
}
var fieldType = $parentObj.get(0).tagName.toLowerCase();
if (fieldType == "select") {
    if (typeof ($parentObj.attr("multiple")) != "undefined") {
        fieldType = "multipleSelect";
    }
}

//已经选择的设置为disabled
function SetSelectedDisabled()
{
    var hasSelectIds = "";
    if (fieldType == "input") {
        hasSelectIds = $parentObj.val();
        var $checkObj = $(".checked-item");
        //$checkObj.attr("type", "radio").attr("name", "_checked_item_");
        $(".item").find("[data-input-value='" + hasSelectIds + "']").prop("checked", true);
        return;
    }
    else {
        var $options = $parentObj.children("option");
        $options.each(function (i) {
            hasSelectIds += $(this).val() + ",";
        });
    }

    var arrHasSelectIds = hasSelectIds.split(",");
    for (var k = 0; k < arrHasSelectIds.length; k++) {
        $("#item_" + arrHasSelectIds[k]).find(".checked-item").prop("checked", true);
    }
}

//单选
$(document).on("click", ".checked-item", function () {
    var $this = $(this);
    var selectedStr = $this.val();
    if ($this.prop("checked"))
    {
        SetParentValue(selectedStr);
    }
    else
    {
        RemoveParentValue(selectedStr);
    }
});

//点确定按钮选择
function SelectData() {
    var selectedStr = "";
    var $checkObj = $(".checked-item");
    selectedStr = $checkObj.GetValue();
    RemoveParentValue(selectedStr);
    SetParentValue(selectedStr);
    CloseDialog();
}

function SetParentValue(selectedStr)
{
    if (fieldType == "input") {
        selectedStr = Unique(selectedStr);
        $parentObj.val(selectedStr);
        return;
    }
    if (selectedStr == "") {
        return;
    }
    //var $options = $parentObj.children("option");
    //if (fieldType == "select") //单选先删除之前的旧数据
    //{
    //    $options.each(function () {
    //        var $this = $(this);
    //        if ($this.val() != "" && $this.val() != "0") {
    //            $this.remove();
    //        }
    //    });
    //}
    //else
    //{

    //}
    $parentObj.ConvertData({ ids: selectedStr, isFormBind: false, dataSourceFrom: "ajax" });
    if (fieldType == "select")//单选则默认选中最后一个
    {
        var length = $parentObj.children("option").length;
        $parentObj.children("option").eq(length - 1).prop("selected", true);
    }
}

function RemoveParentValue(selectedStr) {
    if (selectedStr == "") { return; }

    if (fieldType == "input") {
        var inputVal = $parentObj.val("");
        $parentObj.val("");
        return;
    }
    var $options = $parentObj.children("option");
    var arrayStr = selectedStr.split(",");
    for (var i = 0; i < arrayStr.length;i++)
    {
        $options.each(function () {
            var $this = $(this);
            if ($this.val() != "" && $this.val() == arrayStr[i])
            {
                $this.remove();
                if (fieldType == "select")//单选则默认选中最后一个
                {
                    var length = $parentObj.children("option").length;
                    $parentObj.children("option").eq(length - 1).prop("selected", true);
                }
                return false;
            }
        });
    };
}
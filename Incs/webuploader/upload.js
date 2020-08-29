var jsonData = new Array(); //服务器返回的jsonData
var hasError = false;
var $parentobj = parent.$(parentObjName);
if ($parentobj.length == 0) {
    $("#uploader").html("找不到对象！");
    hasError = true;
}
//判断是否和父级页面域名一样
if (parent.location == self.location) {
    $(".main").html("无效的请求！");
    hasError = true;
}
//判断域名是否匹配
if (document.domain != parent.document.domain) {
    $("#uploader").html("非法请求！");
    hasError = true;
}

var defaultoptions = { fileType: "image", fileNumLimit: "1", fileSizeLimit: "0", fileSingleSizeLimit: "1024", extensions: ".gif,.jpg,.jpeg,.png", mimeTypes: "*/*", tableName: "", fieldName: "", watermark: false, thumbnail: false, thumbnailWidth: "200", thumbnailHeight: "200", sortByDate: true, sortByFileType: true, rename: true, savePath: "/Upload/", saveFileName: "", deleteRepeat: false, saveToAttachmentData: true, callBack: "", savePathObjName: "", guid: "", language:"cn" };
var uploadOptions = $parentobj.attr("data-upload-params")
defaultoptions = ExtendObject(defaultoptions, uploadOptions);
var sortByDate = defaultoptions.sortByDate; //是否按日期分类保存文件，如：/upload/images/2018/10/30/xxx.png的日期部分
var sortByFileType = defaultoptions.sortByFileType; //是否对文件分类，图片分到../images目录，其他文件分到/files目录。
var fileType = defaultoptions.fileType;
var savePath = defaultoptions.savePath;//文件保存根路径，不设置则默认为/upload
var saveFileName = defaultoptions.saveFileName; //文件保存名称，不需要填写文件后缀，不设置则由系统默认命名，需要rename设置为false时才有效。
var language = defaultoptions.language;
var $uploadRemark = $("#uploadRemark");
var $ploadBtn = $("#uploadBtn");
switch (language)
{
    case "en":
        $uploadRemark.text("You can drag files here for upload.");
        $ploadBtn.text("Start uploading");
        break;
}
var savePathObjName = defaultoptions.savePathObjName; //保存路径的对象，如果设置了则从父级的此对象中获取savePath，如savePathObjName:"#idName"
if (savePathObjName != "") {
    var $savePathObjName = parent.$(savePathObjName);
    if ($savePathObjName.length > 0) {
        savePath = $savePathObjName.val();
    }
}

var deleteRepeat = defaultoptions.deleteRepeat;//是否删除同名文件,
var saveToAttachmentData = defaultoptions.saveToAttachmentData;// 是否保存在附件表中进行管理，如果设置为true，需要对下面三个参数赋值

var tableName = defaultoptions.tableName; //附件对应的表名
var fieldName = defaultoptions.fieldName; //附件对应的字段名
var guid = defaultoptions.guid;  //前端页面的guid
if (saveToAttachmentData) {
    if (tableName == "") {
        $("#uploader").html("无效的tableName参数！");
    }
    if (fieldName == "") {
        $("#uploader").html("无效的fieldName参数！");
    }
}
if (guid == "") {
    var $parentGuid = parent.$("#Guid");
    if ($parentGuid.length == 0) {
        $("#uploader").html("页面中必须包含Id为Guid的对象！");
        hasError = true;
    }
    guid = $parentGuid.val();
}

if (guid.length < 30) {
    $("#uploader").html("guid值貌似不太对！");
    hasError = true;
}
var fileNumLimit = defaultoptions.fileNumLimit; //文件总数限制
var uploadedNum = $parentobj.attr("data-uploadedNum");//后台保存xuhao用 
if (uploadedNum == undefined)
{
    uploadedNum = 1;
}
if (fileNumLimit > 0)
{
    if (fileType == "images" || fileType == "files") {
        if ($parentobj.attr("data-fileNumLimit")) {
            fileNumLimit = $parentobj.attr("data-fileNumLimit");
        }
    }
}

var fileSizeLimit = defaultoptions.fileSizeLimit; //单位kb，总大小
var fileSingleSizeLimit = defaultoptions.fileSingleSizeLimit; //单位kb，单个文件大小
var extensions = defaultoptions.extensions;
var reg = new RegExp("[.]", "gm");
extensions = extensions.replace(reg, "");  //允许的文件后缀，不带点，多个用逗号分割。
var watermark = defaultoptions.watermark;
var thumbnail = defaultoptions.thumbnail;
var thumbnail_Width = defaultoptions.thumbnailWidth; //插件中预定义了thumbnailWidth和thumbnailHeight变量，这里加了下划线区分
var thumbnail_Height = defaultoptions.thumbnailHeight;
var rename = defaultoptions.rename; //是否重命名，选择重命名，则系统自动按yyy-mm-dd的格式命名。
var mimeTypes = defaultoptions.mimeTypes //mime类型"
if (typeof ($parentobj.attr("mimeTypes")) != "undefined") {
    mimeTypes = $parentobj.attr("mimeTypes");
}
var callBack = defaultoptions.callBack; //父级页的回调
function CallBack(successNum) {
    if (jsonData.length > 0) {
        if (callBack != "") {
            if (typeof (parent.window[callBack]) == "function") {
                parent.window[callBack](jsonData);
            }
        }
        else {
            parent.UploadPaneledCallBack(parentObjName, jsonData)
        }

    }
    CloseDialog();
}

function CloseDialog() //关闭弹出层
{
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
}
var __RequestVerificationToken = $("[name='__RequestVerificationToken']").eq(0).val();

jQuery(function () {
    var $ = jQuery,    // just in case. Make sure it's not an other libaray.

        $wrap = $('#uploader'),

        // 图片容器
        $queue = $('<ul class="filelist"></ul>')
            .appendTo($wrap.find('.queueList')),

        // 状态栏，包括进度和控制按钮
        $statusBar = $wrap.find('.statusBar'),

        // 文件总体选择信息。
        $info = $statusBar.find('.info'),

        // 上传按钮
        $upload = $wrap.find('.uploadBtn'),

        // 没选择文件之前的内容。
        $placeHolder = $wrap.find('.placeholder'),

        // 总体进度条
        $progress = $statusBar.find('.progress').hide(),

        // 添加的文件数量
        fileCount = 0,

        // 添加的文件总大小
        fileSize = 0,

        // 优化retina, 在retina下这个值是2
        ratio = window.devicePixelRatio || 1,

        // 缩略图大小
        thumbnailWidth = 110 * ratio,
        thumbnailHeight = 110 * ratio,

        // 可能有pedding, ready, uploading, confirm, done.
        state = 'pedding',

        // 所有文件的进度信息，key为file id
        percentages = {},

        supportTransition = (function () {
            var s = document.createElement('p').style,
                r = 'transition' in s ||
                    'WebkitTransition' in s ||
                    'MozTransition' in s ||
                    'msTransition' in s ||
                    'OTransition' in s;
            s = null;
            return r;
        })(),

        // WebUploader实例
        uploader;

    if (!WebUploader.Uploader.support()) {
        alert('Web Uploader 不支持您的浏览器！如果你使用的是IE浏览器，请尝试升级 flash 播放器');
        throw new Error('WebUploader does not support the browser you are using.');
    }
    // 实例化
    uploader = WebUploader.create({
        pick: {
            id: '#filePicker',
            label: (language == "cn" ? "选择上传文件" :"Select upload file")
        },
        dnd: '#uploader .queueList',
        paste: document.body,

        accept: {
            title: 'Files',
            extensions: extensions,
            mimeTypes: mimeTypes
        },
        formData: {
            upload: 1,
            fieldName: fieldName,
            tableName: tableName,
            fileType: fileType,
            watermark: watermark,
            thumbnail: thumbnail,
            thumbnailWidth: thumbnail_Width,
            thumbnailHeight: thumbnail_Height,
            rename: rename,
            guid: guid,
            uploadedNum: uploadedNum,
            savePath: savePath,
            saveFileName: saveFileName,
            deleteRepeat: deleteRepeat,
            saveToAttachmentData: saveToAttachmentData,
            sortByDate: sortByDate,
            sortByFileType: sortByFileType,
            __RequestVerificationToken: __RequestVerificationToken
        },
        // swf文件路径
        swf: BASE_URL + 'Uploader.swf',

        disableGlobalDnd: true,

        chunked: true,
        server: serverUploadUrl,
        fileNumLimit: fileNumLimit,
        fileSizeLimit: fileSizeLimit * 1024,    // 字节
        fileSingleSizeLimit: fileSingleSizeLimit * 1024   //字节
    });

    // 添加“添加文件”的按钮，
    uploader.addButton({
        id: '#filePicker2',
        label: (language == "cn" ? "继续添加" : "Continue to add")
    });

    // 当有文件添加进来时执行，负责view的创建
    function addFile(file) {
        var $li = $('<li id="' + file.id + '">' +
            '<p class="title">' + file.name + '</p>' +
            '<p class="imgWrap"></p>' +
            '<p class="progress"><span></span></p>' +
            '</li>'),

            $btns = $('<div class="file-panel">' +
                '<span class="cancel">删除</span>' +
                '<span class="rotateRight">向右旋转</span>' +
                '<span class="rotateLeft">向左旋转</span></div>').appendTo($li),
            $prgress = $li.find('p.progress span'),
            $wrap = $li.find('p.imgWrap'),
            $info = $('<p class="error"></p>'),

            showError = function (code) {
                switch (code) {
                    case 'exceed_size':
                        text = '文件大小超出';
                        break;

                    case 'interrupt':
                        text = '上传暂停';
                        break;

                    default:
                        text = '上传失败，请重试';
                        break;
                }

                $info.text(text).appendTo($li);
            };
        if (fileCount >= fileNumLimit) {
            if (fileNumLimit != 0) {
                $("#filePicker2").hide();
            }
        }
        if (file.getStatus() === 'invalid') {
            showError(file.statusText);
        } else {
            // @todo lazyload
            $wrap.text('预览中');
            uploader.makeThumb(file, function (error, src) {
                if (error) {
                    $wrap.text('');
                    return;
                }

                var img = $('<img src="' + src + '">');
                $wrap.empty().append(img);
            }, thumbnailWidth, thumbnailHeight);

            percentages[file.id] = [file.size, 0];
            file.rotation = 0;
        }

        file.on('statuschange', function (cur, prev) {
            if (prev === 'progress') {
                $prgress.hide().width(0);
            } else if (prev === 'queued') {
                $li.off('mouseenter mouseleave');
                $btns.remove();
            }

            // 成功
            if (cur === 'error' || cur === 'invalid') {
                console.log(file.statusText);
                showError(file.statusText);
                percentages[file.id][1] = 1;
            } else if (cur === 'interrupt') {
                showError('interrupt');
            } else if (cur === 'queued') {
                percentages[file.id][1] = 0;
            } else if (cur === 'progress') {
                $info.remove();
                $prgress.css('display', 'block');
            } else if (cur === 'complete') {
                $li.append('<span class="success"></span>');
            }

            $li.removeClass('state-' + prev).addClass('state-' + cur);
        });

        $li.on('mouseenter', function () {
            $btns.stop().animate({ height: 30 });
        });

        $li.on('mouseleave', function () {
            $btns.stop().animate({ height: 0 });
        });

        $btns.on('click', 'span', function () {
            var index = $(this).index(),
                deg;

            switch (index) {
                case 0:
                    uploader.removeFile(file);
                    return;

                case 1:
                    file.rotation += 90;
                    break;

                case 2:
                    file.rotation -= 90;
                    break;
            }

            if (supportTransition) {
                deg = 'rotate(' + file.rotation + 'deg)';
                $wrap.css({
                    '-webkit-transform': deg,
                    '-mos-transform': deg,
                    '-o-transform': deg,
                    'transform': deg
                });
            } else {
                $wrap.css('filter', 'progid:DXImageTransform.Microsoft.BasicImage(rotation=' + (~~((file.rotation / 90) % 4 + 4) % 4) + ')');
                // use jquery animate to rotation
                // $({
                //     rotation: rotation
                // }).animate({
                //     rotation: file.rotation
                // }, {
                //     easing: 'linear',
                //     step: function( now ) {
                //         now = now * Math.PI / 180;

                //         var cos = Math.cos( now ),
                //             sin = Math.sin( now );

                //         $wrap.css( 'filter', "progid:DXImageTransform.Microsoft.Matrix(M11=" + cos + ",M12=" + (-sin) + ",M21=" + sin + ",M22=" + cos + ",SizingMethod='auto expand')");
                //     }
                // });
            }


        });

        $li.appendTo($queue);
    }

    // 负责view的销毁
    function removeFile(file) {
        var $li = $('#' + file.id);
        delete percentages[file.id];
        updateTotalProgress();
        $li.off().find('.file-panel').off().end().remove();
        if (fileCount < fileNumLimit) {
            $("#filePicker2").show();
        }
    }

    function updateTotalProgress() {
        var loaded = 0,
            total = 0,
            spans = $progress.children(),
            percent;

        $.each(percentages, function (k, v) {
            total += v[0];
            loaded += v[0] * v[1];
        });

        percent = total ? loaded / total : 0;

        spans.eq(0).text(Math.round(percent * 100) + '%');
        spans.eq(1).css('width', Math.round(percent * 100) + '%');
        updateStatus();
    }

    function updateStatus() {
        var text = '', stats;

        if (state === 'ready') {
            text = '选中' + fileCount + '个文件，共' +
                WebUploader.formatSize(fileSize) + '。';

        } else if (state === 'confirm') {
            stats = uploader.getStats();
            if (stats.uploadFailNum) {
                text = '已成功上传' + stats.successNum + '个文件，' +
                    stats.uploadFailNum + '个文件上传失败，<a class="retry" href="#">重新上传</a>失败文件或<a class="ignore" href="#">忽略</a>'
            }

        } else {
            stats = uploader.getStats();
            text = '共' + fileCount + '个文件（' +
                WebUploader.formatSize(fileSize) +
                '），已上传' + stats.successNum + '个';

            if (stats.uploadFailNum) {
                text += '，失败' + stats.uploadFailNum + '个';
            }
        }

        $info.html(text);
    }

    function setState(val) {
        var file, stats;

        if (val === state) {
            return;
        }

        $upload.removeClass('state-' + state);
        $upload.addClass('state-' + val);
        state = val;

        switch (state) {
            case 'pedding':
                $placeHolder.removeClass('element-invisible');
                $queue.parent().removeClass('filled');
                $queue.hide();
                $statusBar.addClass('element-invisible');
                uploader.refresh();
                break;

            case 'ready':
                $placeHolder.addClass('element-invisible');
                $('#filePicker2').removeClass('element-invisible');
                $queue.parent().addClass('filled');
                $queue.show();
                $statusBar.removeClass('element-invisible');
                uploader.refresh();
                var text = (language == "cn" ? "开始上传" : "Start uploading");
                $upload.text(text);
                break;

            case 'uploading':
                $('#filePicker2').addClass('element-invisible');
                $progress.show();
                var text = (language == "cn" ? "暂停上传" : "Suspend upload");
                $upload.text(text);
                break;

            case 'paused':
                $progress.show();
                var text = (language == "cn" ? "继续上传" : "Continue uploading");
                $upload.text(text);
                break;

            case 'confirm':
                $progress.hide();
                var text = (language == "cn" ? "开始上传" : "Start uploading");
                $upload.text(text).addClass('disabled');

                stats = uploader.getStats();
                if (stats.successNum && !stats.uploadFailNum) {
                    setState('finish');
                    return;
                }
                break;
            case 'finish':
                stats = uploader.getStats();
                if (stats.successNum) {
                    //所有文件上传完毕后执行方法
                    CallBack(stats.successNum);
                } else {
                    // 没有成功的图片，重设
                    state = 'done';
                    location.reload();
                }
                break;
        }

        updateStatus();
    }

    uploader.onUploadProgress = function (file, percentage) {
        var $li = $('#' + file.id),
            $percent = $li.find('.progress span');

        $percent.css('width', percentage * 100 + '%');
        percentages[file.id][1] = percentage;
        updateTotalProgress();
    };

    uploader.onFileQueued = function (file) {
        fileCount++;
        fileSize += file.size;

        if (fileCount === 1) {
            $placeHolder.addClass('element-invisible');
            $statusBar.show();
        }

        addFile(file);
        setState('ready');
        updateTotalProgress();
    };

    uploader.onFileDequeued = function (file) {
        fileCount--;
        fileSize -= file.size;

        if (!fileCount) {
            setState('pedding');
        }

        removeFile(file);
        updateTotalProgress();

    };
    var index = 0;
    uploader.on('uploadSuccess', function (file, response) {
        response = JsonParse(response);
        if (response.State != 1) {
            uploader.stop();
            alert(response.Msg);
        }
        else {
            var chunks = response.Chunks;
            if (chunks > 1)
                {
                $.post(serverMergeUrl, { guid: guid }, function (result)
                    {
                    });
            }
            jsonData[index] = { "path": response.Path, "thumbnail": response.Thumbnail, "name": response.Name, "id": response.Id, "xuhao": response.Xuhao};
                index++;
            }
        });

    uploader.on('all', function (type) {
        var stats;
        switch (type) {
            case 'uploadFinished':
                setState('confirm');
                break;

            case 'startUpload':
                setState('uploading');
                break;

            case 'stopUpload':
                setState('paused');
                break;

        }
    });
    uploader.onError = function (code) {
        switch (code) {
            case "Q_TYPE_DENIED":
                layer.msg("对不起，只能上传" + extensions + "格式的文件！");
                break;
            case "F_DUPLICATE":
                layer.msg('对不起，此文件已经选择！');
                break;
            case "Q_EXCEED_SIZE_LIMIT":
                layer.msg("对不起，所有文件大小不能超过" + fileSizeLimit + "kb！");
                break;
            case "F_EXCEED_SIZE":
                layer.msg("对不起，每个文件大小不能超过" + fileSingleSizeLimit + "kb！");
                break;
            case "Q_EXCEED_NUM_LIMIT":
                layer.msg("对不起，只能选择" + fileNumLimit + "个文件！");
                break;
            default:
                layer.msg(code);
                break;
        }


    };

    $upload.on('click', function () {
        if ($(this).hasClass('disabled')) {
            return false;
        }

        if (state === 'ready') {
            uploader.upload();
        } else if (state === 'paused') {
            uploader.upload();
        } else if (state === 'uploading') {
            uploader.stop();
        }
    });

    $info.on('click', '.retry', function () {
        uploader.retry();
    });

    $info.on('click', '.ignore', function () {
        alert('todo');
    });
    $upload.addClass('state-' + state);
    updateTotalProgress();
});
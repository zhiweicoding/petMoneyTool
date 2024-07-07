<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>添加评价</title>
    <@css.css/>
</head>
<body ontouchstart>
<#--String commDesc,-->
<#--String protectId,-->
<#--String imgUrl1,-->
<#--String imgUrl2-->
<div class="weui-cells weui-cells_form" style="margin-top: 5px;padding-top: 5px;">
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">用户城市</label></div>
        <div class="weui-cell__bd">
            <input id="commDesc" class="weui-input" type="text" placeholder="如：北京">
        </div>
    </div>

    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="name" class="weui-label">签署协议</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input open-popup" id="protectId" data-target="#half" type="text" value=""
                   placeholder="请点击选择" onfocus="this.blur();">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">上传图片 点击加号上传图片</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg1" class="weui-uploader__input"
                               onchange="chooseImage(this,'secondPic1')"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="secondPic1" class="weui-uploader__file weui-uploader__file_status tumbPic"
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)">
                            <div class="weui-uploader__file-content"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">上传图片 点击加号上传图片</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg2" class="weui-uploader__input"
                               onchange="chooseImage(this,'secondPic2')"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="secondPic2" class="weui-uploader__file weui-uploader__file_status tumbPic"
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)">
                            <div class="weui-uploader__file-content"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="weui-btn-area">
    <a class="weui-btn weui-btn_primary" href="javascript:savePic()" id="showTooltips">上传</a>
</div>

<div id="firstCanvas" class="bac" style="display: none;">
    <section id="capture">
        <div class="car-capture">
            <canvas id="captureCanvas2" class="car-img car-canvas"></canvas>
            <div class="car-mask-big"></div>
        </div>
        <footer class="ui-tc">
            <h4 class="color-grey2 ui-mb40 ui-mt40">请根据提示框选取合适位置，然后点击确定</h4>
            <button id="btnCaptureFirst" class="weui-btn weui-btn_default">确定
            </button>
        </footer>
    </section>
</div>

<div id="secondCanvas" class="bac" style="display: none;">
    <section id="capture">
        <div class="car-capture">
            <canvas id="captureCanvas22" class="car-img car-canvas"></canvas>
            <div class="car-mask-small"></div>
        </div>
    </section>
    <footer class="ui-tc">
        <h4 class="color-grey2 ui-mb40 ui-mt40">请根据提示框选取合适位置，然后点击确定</h4>
        <button id="btnCaptureSecond" class="weui-btn weui-btn_default">确定
        </button>
    </footer>
</div>

<div id="half" class='weui-popup__container popup-bottom' data-id="popup_id">
    <div class="weui-popup__overlay"></div>
    <div class="weui-popup__modal" style="height: 80%;">
        <div class="toolbar">
            <div class="toolbar-inner">
                <a href="javascript:;" class="picker-button close-popup">关闭</a>
                <h1 class="title">协议列表</h1>
            </div>
        </div>
        <div class="modal-content">
            <div class="page__bd" id="searchBody">
                <#list array as array>
                    <div class="weui-cell weui-cell_swiped close-popup"
                         onclick="protectChange('${array.protectId}','${array.nickName}')">
                        <div class="weui-cell__bd">
                            <div class="weui-form-preview">
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label" style="margin-top: 10px;">
                                        <img alt="头像" src="${array.avatarUrl}"
                                             style="width: 70px;height: 70px;border-radius: 10px;margin-left: 10px;"/>
                                    </label>
                                    <div class="weui-form-preview__value" style="margin-top: 10px;">
                                        <p>品种：${array.symbolName}</p>
                                        <p>销售：${array.sellName} - 价格：${array.petPrice}</p>
                                        <p>昵称：${array.nickName}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </#list>
            </div>
        </div>
    </div>
</div>

<@js.js/>
<script>
    var baseResourcesPath = '${base}/resources/'
</script>
<script src="${base}/resources/shopJs/bundle.js"></script>
<script src="https://unpkg.com/qiniu-js@2.5.1/dist/qiniu.min.js"></script>


<script>

    var symbolId = '';
    var upFileUrl = '';

    var locatProtectId = '';

    $(document).on("open", ".weui-popup__container", function (res) {
        console.log("open popup" + res.currentTarget.dataset.id);
    }).on("close", ".weui-popup__container", function () {
        console.log("close popup");
    });

    function protectChange(protectId, nickName) {
        locatProtectId = protectId
        $('#protectId').val(protectId)
    }

    function turnChangeFree(thisD, idStr) {
        if ($(thisD).is(":checked")) {
            $('#' + idStr).prop("checked", false)
        } else {
            $('#' + idStr).prop("checked", true)
        }

    }

    function turnChangeHalf(thisD, idStr) {
        if ($(thisD).is(":checked")) {
            $('#' + idStr).prop("checked", false)
        } else {
            $('#' + idStr).prop("checked", true)
        }

    }

    function savePic() {

        // var switchCP = $('#switchCP').is(':checked')
        var commDesc = $('#commDesc').val();
        var protectId = $('#protectId').val();
        var secondPic1 = $('#secondPic1').attr('dataImageReal')
        var secondPic2 = $('#secondPic2').attr('dataImageReal')
        if (!commDesc) {
            $.toast("请先填写城市", "forbidden");
            return false;
        }
        if (!protectId || protectId == '') {
            $.toast("请先选择协议", "forbidden");
            return false;
        }
        if (!secondPic1) {
            $.toast("请先上传图片1", "forbidden");
            return false;
        }

        $.showLoading();
        var formData = new FormData()

        formData.append('commDesc', commDesc);
        formData.append('protectId', protectId);
        formData.append('imgUrl1', convertBase64UrlToBlob(secondPic1));
        if (secondPic2) {
            formData.append('imgUrl2', convertBase64UrlToBlob(secondPic2));
        }

        $.ajax({
            url: '${base}/shop/commentPage/addDym',
            type: 'POST',
            cache: false,
            data: formData,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    window.location.replace('${base}/shop/msgPage/commentStepTwo')
                } else if (res.msgCode == 10001) {
                    $.toast("操作失败", "cancel", function (toast) {
                        console.log(toast);
                    });
                } else if (res.msgCode == 10003) {
                    window.location.replace('${base}/shop/loginPage/index?from=2')
                }

            }
        })

    }

    function chooseImage(event, showDiv) {
        if (!isCanvasSupported()) {
            console.log("已存在");
        } else {
            var file = event.files[0];
            if (!/image\/\w+/.test(file.type)) {
                alert("请确保文件为图像类型");
                return false;
            }
            var reader = new FileReader();

            genBase64(file, function (baseImg) {
                $('#' + showDiv).css("background-image", "url(" + baseImg + ")");
                $('#' + showDiv).attr('dataImageReal', baseImg);
            });

        }

    }

    //判断是否存在画布
    function isCanvasSupported() {
        var elem = document.createElement('canvas');
        return !!(elem.getContext && elem.getContext('2d'));
    }

    function convertBase64UrlToBlob(urlData) {

        var bytes = window.atob(urlData.split(',')[1]);        //去掉url的头，并转换为byte

        //处理异常,将ascii码小于0的转换为大于0
        var ab = new ArrayBuffer(bytes.length);
        var ia = new Uint8Array(ab);
        for (var i = 0; i < bytes.length; i++) {
            ia[i] = bytes.charCodeAt(i);
        }

        return new Blob([ab], {type: 'image/png'});
    }

    function genBase64(file, call) {
        var reader = new FileReader();  //本地预览
        reader.onload = function () {
            call(reader.result)
        }
        reader.readAsDataURL(file);    //Base64
    }

    $('.delete-swipeout').click(function () {
        $(this).parents('.weui-cell').remove()
    })
    $('.close-swipeout').click(function () {
        $(this).parents('.weui-cell').swipeout('close')
    })

</script>

</body>
</html>
<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>上传好评</title>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
    <style>
        /*.toolbar-inner .title{*/
        /*font-size: 18px;*/
        /*}*/
    </style>
</head>
<body ontouchstart>


<#--<header class='demos-header'>-->
<#--<h1 class="demos-title">上传宠物</h1>-->
<#--</header>-->

<div class="weui-cells weui-cells_form" style="margin-top: 5px;padding-top: 5px;">
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">用户昵称</label></div>
        <div class="weui-cell__bd">
            <input id="usernameIn" class="weui-input" type="text" placeholder="如：张三">
        </div>
    </div>

    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">上传头像</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg" class="weui-uploader__input" onchange="chooseImage(this)"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="secondPic" class="weui-uploader__file weui-uploader__file_status tumbPic"
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)" onclick="secondClick()">
                            <div class="weui-uploader__file-content"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>

<div class="weui-cells__title" style="font-size: 17px;line-height: 1.5;color: #333;">好评信息</div>
<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <textarea id="petDesc" class="weui-textarea" placeholder="如： 特别好看 " rows="2"></textarea>
        </div>
    </div>
</div>

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">好评图片1</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg" class="weui-uploader__input" onchange="chooseOpinion(this,'one')"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="onePic" class="weui-uploader__file weui-uploader__file_status "
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)"
                            onclick="chooseOpinion(this,'one')">
                            <div class="weui-uploader__file-content"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">好评图片2</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg" class="weui-uploader__input" onchange="chooseOpinion(this,'two')"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="twoPic" class="weui-uploader__file weui-uploader__file_status "
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)"
                            onclick="chooseOpinion(this,'two')">
                            <div class="weui-uploader__file-content"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">好评图片3</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg" class="weui-uploader__input" onchange="chooseOpinion(this,'three')"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="threePic" class="weui-uploader__file weui-uploader__file_status "
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)"
                            onclick="chooseOpinion(this,'three')">
                            <div class="weui-uploader__file-content"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">好评图片4</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg" class="weui-uploader__input" onchange="chooseOpinion(this,'four')"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="fourPic" class="weui-uploader__file weui-uploader__file_status "
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)"
                            onclick="chooseOpinion(this,'four')">
                            <div class="weui-uploader__file-content"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">好评图片5</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg" class="weui-uploader__input" onchange="chooseOpinion(this,'five')"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="fivePic" class="weui-uploader__file weui-uploader__file_status "
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)"
                            onclick="chooseOpinion(this,'five')">
                            <div class="weui-uploader__file-content"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">好评图片6</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg" class="weui-uploader__input" onchange="chooseOpinion(this,'six')"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="sixPic" class="weui-uploader__file weui-uploader__file_status "
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)"
                            onclick="chooseOpinion(this,'six')">
                            <div class="weui-uploader__file-content"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">好评图片7</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg" class="weui-uploader__input" onchange="chooseOpinion(this,'seven')"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="sevenPic" class="weui-uploader__file weui-uploader__file_status "
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)"
                            onclick="chooseOpinion(this,'seven')">
                            <div class="weui-uploader__file-content"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">好评图片8</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg" class="weui-uploader__input" onchange="chooseOpinion(this,'eight')"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="eightPic" class="weui-uploader__file weui-uploader__file_status "
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)"
                            onclick="chooseOpinion(this,'eight')">
                            <div class="weui-uploader__file-content"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">好评图片9</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg" class="weui-uploader__input" onchange="chooseOpinion(this,'nine')"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li id="ninePic" class="weui-uploader__file weui-uploader__file_status "
                            style="background-image:url(${base}/resources/shopImg/pic_160.png)"
                            onclick="chooseOpinion(this,'nine')">
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

<@js.js/>
<script src="${base}/resources/shopJs/bundle.js"></script>
<script src="https://unpkg.com/qiniu-js@2.5.1/dist/qiniu.min.js"></script>


<script>

    function getBase64Image(img) {
        var canvas = document.createElement("canvas");
        $("canavs").hide();
        canvas.width = img.width;
        canvas.height = img.height;
        var ctx = canvas.getContext("2d");
        ctx.drawImage(img, 0, 0, img.width, img.height);
        var ext = img.src.substring(img.src.lastIndexOf(".") + 1).toLowerCase();
        var dataURL = canvas.toDataURL("image/" + ext);
        return dataURL;
    }

    function savePic() {
        var username = $('#usernameIn').val();
        var secondPic = $('#secondPic').attr('dataImageReal')
        var onePic = $('#onePic').attr('dataImageReal')
        var twoPic = $('#twoPic').attr('dataImageReal')
        var threePic = $('#threePic').attr('dataImageReal')
        var fourPic = $('#fourPic').attr('dataImageReal')
        var fivePic = $('#fivePic').attr('dataImageReal')
        var sixPic = $('#sixPic').attr('dataImageReal')
        var sevenPic = $('#sevenPic').attr('dataImageReal')
        var eightPic = $('#eightPic').attr('dataImageReal')
        var ninePic = $('#ninePic').attr('dataImageReal')
        var petDesc = $('#petDesc').val();
        if (!petDesc) {
            $.toast("请先填写好评", "forbidden");
            return false;
        }
        if (!username) {
            $.toast("请先选择昵称", "forbidden");
            return false;
        }
        if (secondPic == '') {
            $.toast("请先上传用户头像", "forbidden");
            return false;
        }
        if (onePic == '') {
            $.toast("请先上传图片", "forbidden");
            return false;
        }
        $.showLoading();
        var formData = new FormData()

        formData.append('secondPic', convertBase64UrlToBlob(secondPic));
        formData.append('onePic', convertBase64UrlToBlob(onePic));
        if (twoPic) {
            formData.append('twoPic', convertBase64UrlToBlob(twoPic));
        }
        if (threePic) {
            formData.append('threePic', convertBase64UrlToBlob(threePic));
        }
        if (fourPic) {
            formData.append('fourPic', convertBase64UrlToBlob(fourPic));
        }
        if (fivePic) {
            formData.append('fivePic', convertBase64UrlToBlob(fivePic));
        }
        if (sixPic) {
            formData.append('sixPic', convertBase64UrlToBlob(sixPic));
        }
        if (sevenPic) {
            formData.append('sevenPic', convertBase64UrlToBlob(sevenPic));
        }
        if (eightPic) {
            formData.append('eightPic', convertBase64UrlToBlob(eightPic));
        }
        if (ninePic) {
            formData.append('ninePic', convertBase64UrlToBlob(ninePic));
        }
        formData.append("username", username)
        formData.append("petDesc", petDesc)
        $.ajax({
            url: '${base}/shop/opinion/dym',
            type: 'POST',
            cache: false,
            data: formData,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    window.location.replace('${base}/shop/msgPage/index?goodId=0&turnPage=10')
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

    function secondClick() {
        var secondPic = document.getElementById('secondPic').getAttribute("dataImage");
        if (!secondPic) {
            $.toast("请先上传图片", "forbidden");
            return false;
        }
        $('#secondCanvas').css('display', 'block');
        var imgEdit2;
        var img = new Image();
        img.src = secondPic;
        img.onload = function () {
            imgEdit2 = new veImage({canvas: document.getElementById('captureCanvas22'), image: this});
        };
        $('#btnCaptureSecond').on('click', function () {
            // $('#firstPic').attr('dataImage', imgEdit2.crop(550, 380, 100, 120));
            var base64Img = imgEdit2.crop(360, 360, 190, 175)
            $('#secondPic').css("background-image", "url(" + base64Img + ")");
            $('#secondPic').attr('dataImageReal', base64Img);
            $('#secondCanvas').css('display', 'none');
        });
    }

    function chooseImage(event) {
        if (!isCanvasSupported()) {
            console.log("已存在");
        } else {
            var file = event.files[0];
            if (!/image\/\w+/.test(file.type)) {
                alert("请确保文件为图像类型");
                return false;
            }

            genBase64(file, function (baseImg) {
                $(".tumbPic").css("background-image", "url(" + baseImg + ")");
                $(".tumbPic").attr("dataImage", baseImg);
                $(".tumbPic").attr("dataImageReal", baseImg);

                secondClick();
            });

        }

    }

    function chooseOpinion(event, fileName) {
        if (!isCanvasSupported()) {
            console.log("已存在");
        } else {
            var file = event.files[0];
            if (!/image\/\w+/.test(file.type)) {
                alert("请确保文件为图像类型");
                return false;
            }

            genBase64(file, function (baseImg) {
                $('#' + fileName + 'Pic').css("background-image", "url(" + baseImg + ")");
                $('#' + fileName + 'Pic').attr('dataImageReal', baseImg);
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

</script>

</body>
</html>
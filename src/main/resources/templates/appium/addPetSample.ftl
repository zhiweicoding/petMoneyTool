<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>上传宠物</title>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
</head>
<body ontouchstart>


<div class="weui-cells__title" style="font-size: 17px;line-height: 1.5;color: #333;">宠物简介</div>
<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <textarea id="shopMaster" class="weui-textarea" placeholder="如： 哪个猫舍的" rows="2"></textarea>
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <textarea id="sendSecret" class="weui-textarea" placeholder="如： 秘钥" rows="2"></textarea>
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <textarea id="petDesc" class="weui-textarea" placeholder="如： 五粉通脖 " rows="2"></textarea>
        </div>
    </div>
</div>

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">竖向视频上传</p>
                </div>
                <div class="weui-uploader__bd">
                    <ul class="weui-uploader__files" id="uploaderFilesVideo" style="display: none">
                        <li class="weui-uploader__file weui-uploader__file_status">
                            <div class="weui-uploader__file-content" id="uploadLoadingId">1%</div>
                        </li>
                    </ul>
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputVideo" class="weui-uploader__input" type="file" accept="video/*">
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<div class="weui-btn-area">
    <a class="weui-btn weui-btn_primary" href="javascript:savePic()" id="showTooltips">上传</a>
</div>

<@js.js/>
<script>
    var baseResourcesPath = '${base}/resources/'
</script>
<script src="${base}/resources/shopJs/bundle.js"></script>
<script src="https://unpkg.com/qiniu-js@2.5.1/dist/qiniu.min.js"></script>


<script>

    var upFileUrl = '';

    $("#uploaderInputVideo").on('change', function () {
        var fileName = $('#uploaderInputVideo').val()
        var file = $('#uploaderInputVideo').get(0).files[0]
        var suffix = fileName.substring(fileName.lastIndexOf("."), fileName.length);
        //七牛云上传
        $.ajax({
            type: 'post',
            url: "${base}/shop/goodPage/QiniuUpToken",
            data: {
                "suffix": suffix
            },
            dataType: 'json',
            success: function (res) {
                if (res.msgCode == 10000) {
                    $('#uploaderFilesVideo').show();
                    var observer = {
                        next(result) {
                            var numberPercent = Math.floor(result.total.percent);
                            var percent = numberPercent + "%";
                            $("#uploadLoadingId").html(percent);
                        },
                        error(err) {
                            window.location.reload()
                        },
                        complete(res1) {
                            var imgUrl = 'https://photo.youchongxiong.com/' + res.msgBody.fileName + '?vframe/jpg/offset/0/w/360'
                            upFileUrl = 'https://photo.youchongxiong.com/' + res.msgBody.fileName;
                            $("#uploadLoadingId").html('100%');

                            $.showLoading();
                            var shopMaster = $('#shopMaster').val();
                            var sendSecret = $('#sendSecret').val();
                            var petDesc = $('#petDesc').val();
                            var formData = new FormData()
                            formData.append('videoUrl', upFileUrl);
                            formData.append('imgUrl', imgUrl);
                            formData.append('petDesc', petDesc);
                            formData.append('shopMaster', shopMaster);
                            formData.append('sendSecret', sendSecret);
                            $.ajax({
                                url: '${base}/appium/petPage/addDym',
                                type: 'POST',
                                cache: false,
                                data: formData,
                                processData: false,
                                dataType: 'json',
                                contentType: false,
                                success: function (res) {
                                    $.hideLoading();
                                    window.location.reload()
                                }
                            })
                        }
                    };
                    var putExtra = {
                        fname: "",                          //原文件名
                        params: {},                         //用来放置自定义变量
                        mimeType: null                      //限制上传文件类型
                    };
                    var config = {
                        useCdnDomain: true,
                    };
                    var observable = qiniu.upload(file, res.msgBody.fileName, res.msgBody.token, putExtra, config);
                    observable.subscribe(observer)          // 上传开始
                } else if (res.msgCode == 10001) {
                    window.location.reload()
                }
            }, error: function () {//服务器响应失败处理函数
                window.location.reload()
            }
        });

    });

</script>

</body>
</html>
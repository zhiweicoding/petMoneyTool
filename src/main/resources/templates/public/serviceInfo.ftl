<!DOCTYPE html>
<html lang="en">
<head>
    <title>申请售后</title>

    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon">
    <link rel="stylesheet" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/info.css"/>
    <link rel="stylesheet" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/weui.min.css">
    <link rel="stylesheet" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/jquery-weui.min.css">
    <link rel="stylesheet" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/demos.css"/>
    <link rel="stylesheet" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/style.css"/>
    <style>
        .weui-uploader__title {
            font-size: 15px;
            color: #333333;
        }

        .weui-cells__title {
            color: #333333;
        }

        .weui-textarea {
            font-size: 15px;
        }

        .weui-input {
            font-size: 15px;
        }

        .weui-msg__title {
            font-size: 20px;
        }

        .fontcss {
            color: #444444;
            font-size: 18px;
        }

        .weui-btn_primary {
            background-color: #08acee;
        }

        .weui-btn_primary:hover {
            background-color: #0f99ee;
        }
    </style>
</head>
<body ontouchstart>
<section class="aui-flexView">
    <section class="aui-scrollView">
        <div class="aui-step">
            <ul class="aui-step-content">
                <li id="step1" class="aui-step-item ">
                    <em class="aui-step-mark"></em>
                    <div class="aui-step-text">申请售后</div>
                </li>
                <li id="step2" class="aui-step-item ">
                    <em class="aui-step-mark"></em>
                    <div class="aui-step-text">平台审核</div>
                </li>
                <li id="step3" class="aui-step-item">
                    <em class="aui-step-mark"></em>
                    <div class="aui-step-text">猫舍核实</div>
                </li>
                <li id="step4" class="aui-step-item ">
                    <em class="aui-step-mark"></em>
                    <div class="aui-step-text">公示结果</div>
                </li>
            </ul>
        </div>
        <div class="divHeight"></div>
        <div class="aui-flex-header backTitle">申请售后</div>
        <div class="stepBody">
            <div class="weui-cells__title">输入联系方式</div>
            <div class="weui-cells">
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="number" id="phone" placeholder="请输入您的联系方式">
                    </div>
                </div>
            </div>
            <div class="weui-cells__title">签署协议手机</div>
            <div class="weui-cells">
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="number" id="protectId" placeholder="请输入签署协议的手机号码">
                    </div>
                </div>
            </div>
            <div class="weui-cells__title">申请信息自述</div>
            <div class="weui-cells weui-cells_form">
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <textarea class="weui-textarea" id="tall" placeholder="请输入文本" rows="3"></textarea>
                        <div class="weui-textarea-counter"><span>0</span>/200</div>
                    </div>
                </div>
            </div>

            <div class="weui-cells weui-cells_form">
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <div class="weui-uploader">
                            <div class="weui-uploader__hd">
                                <p class="weui-uploader__title">宠物医院营业执照或执政许可证</p>
                            </div>
                            <div class="weui-uploader__bd">
                                <ul class="weui-uploader__files" id="uploaderBox0" style="display: none"
                                    onclick="remove(0)">
                                    <li class="weui-uploader__file weui-uploader__file_status">
                                        <div class="weui-uploader__file-content" id="uploadLoadingId0">1%</div>
                                    </li>
                                </ul>
                                <div class="weui-uploader__input-box" id="msgHome0">
                                    <input id="inputMsg0" class="weui-uploader__input"
                                           type="file"
                                           onchange="uploadUrl(0,'inputMsg0','uploaderBox0','uploadLoadingId0')"
                                           accept="image/*">
                                </div>
                                <ul class="weui-uploader__files" id="uploaderFiles">
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
                                <p class="weui-uploader__title">正规宠物医院的FPV测板结果</p>
                            </div>
                            <div class="weui-uploader__bd">
                                <ul class="weui-uploader__files" id="uploaderBox1" style="display: none"
                                    onclick="remove(1)">
                                    <li class="weui-uploader__file weui-uploader__file_status">
                                        <div class="weui-uploader__file-content" id="uploadLoadingId1">1%</div>
                                    </li>
                                </ul>
                                <div class="weui-uploader__input-box" id="msgHome1">
                                    <input id="inputMsg1" class="weui-uploader__input"
                                           type="file"
                                           onchange="uploadUrl(1,'inputMsg1','uploaderBox1','uploadLoadingId1')"
                                           accept="image/*">
                                </div>
                                <ul class="weui-uploader__files" id="uploaderFiles">
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
                                <p class="weui-uploader__title">正规宠物医院的血检单（血常规）</p>
                            </div>
                            <div class="weui-uploader__bd">
                                <ul class="weui-uploader__files" id="uploaderBox2" style="display: none"
                                    onclick="remove(2)">
                                    <li class="weui-uploader__file weui-uploader__file_status">
                                        <div class="weui-uploader__file-content" id="uploadLoadingId2">1%</div>
                                    </li>
                                </ul>
                                <div class="weui-uploader__input-box" id="msgHome2">
                                    <input id="inputMsg2" class="weui-uploader__input"
                                           type="file"
                                           onchange="uploadUrl(2,'inputMsg2','uploaderBox2','uploadLoadingId2')"
                                           accept="image/*">
                                </div>
                                <ul class="weui-uploader__files" id="uploaderFiles">
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
                                <p class="weui-uploader__title">执业兽医师签字的诊断证明</p>
                            </div>
                            <div class="weui-uploader__bd">
                                <ul class="weui-uploader__files" id="uploaderBox3" style="display: none"
                                    onclick="remove(3)">
                                    <li class="weui-uploader__file weui-uploader__file_status">
                                        <div class="weui-uploader__file-content" id="uploadLoadingId3">1%</div>
                                    </li>
                                </ul>
                                <div class="weui-uploader__input-box" id="msgHome3">
                                    <input id="inputMsg3" class="weui-uploader__input"
                                           type="file"
                                           onchange="uploadUrl(3,'inputMsg3','uploaderBox3','uploadLoadingId3')"
                                           accept="image/*">
                                </div>
                                <ul class="weui-uploader__files" id="uploaderFiles">
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
                                <p class="weui-uploader__title">正规宠物医院的门牌照</p>
                            </div>
                            <div class="weui-uploader__bd">
                                <ul class="weui-uploader__files" id="uploaderBox4" style="display: none"
                                    onclick="remove(4)">
                                    <li class="weui-uploader__file weui-uploader__file_status">
                                        <div class="weui-uploader__file-content" id="uploadLoadingId4">1%</div>
                                    </li>
                                </ul>
                                <div class="weui-uploader__input-box" id="msgHome4">
                                    <input id="inputMsg4" class="weui-uploader__input"
                                           type="file"
                                           onchange="uploadUrl(4,'inputMsg4','uploaderBox4','uploadLoadingId4')"
                                           accept="image/*">
                                </div>
                                <ul class="weui-uploader__files" id="uploaderFiles">
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
                                <p class="weui-uploader__title">猫咪猫瘟完整视频录像</p>
                            </div>
                            <div class="weui-uploader__bd">
                                <ul class="weui-uploader__files" id="uploaderBox5" style="display: none"
                                    onclick="remove(5)">
                                    <li class="weui-uploader__file weui-uploader__file_status">
                                        <div class="weui-uploader__file-content" id="uploadLoadingId5">1%</div>
                                    </li>
                                </ul>
                                <div class="weui-uploader__input-box" id="msgHome5">
                                    <input id="inputMsg5" class="weui-uploader__input"
                                           type="file"
                                           onchange="uploadUrl(5,'inputMsg5','uploaderBox5','uploadLoadingId5')"
                                           accept="video/*">
                                </div>
                                <ul class="weui-uploader__files" id="uploaderFiles">
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="aui-pro-button">
                <a href="javascript:savePic('${openId}');">提交售后申请</a>
            </div>
        </div>

        <div class="stepBody">
            <div class="weui-msg">
                <div class="weui-msg__icon-area"><i class="weui-icon-waiting weui-icon_msg"></i></div>
                <div class="weui-msg__text-area">
                    <h2 class="weui-msg__title">提交申请成功</h2>
                    <p class="weui-msg__desc">您的售后证明材料已经提交平台审核，请您耐心等待结果，审核预计4小时左右</p>
                </div>
            </div>
        </div>

        <div class="stepBody">
            <div class="weui-msg">
                <div class="weui-msg__icon-area"><i class="weui-icon-waiting weui-icon_msg"></i></div>
                <div class="weui-msg__text-area">
                    <h2 class="weui-msg__title">平台审核成功</h2>
                    <p class="weui-msg__desc">平台工作人员正在和猫舍人员核实信息，请您耐心等待结果，审核预计24小时左右</p>
                </div>
            </div>
        </div>

        <div class="stepBody">
            <div class="weui-msg">
                <div class="weui-msg__icon-area"><i class="weui-icon-waiting weui-icon_msg"></i></div>
                <div class="weui-msg__text-area">
                    <h2 class="weui-msg__title">${resultMsg}</h2>
                    <p class="weui-msg__desc">${resultTitle}</p>
                </div>
                <div class="weui-msg__opr-area">
                    <p class="weui-btn-area">
                        <a href="javascript:sendNotice('${serviceId}','已知晓结果',0);" class="weui-btn weui-btn_primary ">已知晓结果</a>
                        <a href="javascript:sendNotice('${serviceId}','申请平台人工介入',1);" class="weui-btn fontcss ">申请平台人工介入</a>
                    </p>
                </div>
            </div>
        </div>

        <div style="height: 100px;width: 100%"></div>
    </section>
</section>

<script src="${base}/resources/shopJs/jquery.min.js"></script>
<script src="${base}/resources/shopJs/fastclick.min.js"></script>
<script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/swiper.min.js"></script>
<script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/jquery-weui.min.js"></script>
<script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/clipboard.min.js"></script>
<script>
    var baseResourcesPath = '${base}/resources/'
</script>
<script src="${base}/resources/shopJs/bundle.js"></script>
<script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/qiniu.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);

        jumpWhich('${step}')
    });

    function jumpWhich(index) {
        var stepItem = $('.aui-step-item')
        var stepBody = $('.stepBody')

        switch (index) {
            case '1':
                stepItem.eq(0).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info').addClass('aui-step-item-current-info')
                stepItem.eq(1).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info')
                stepItem.eq(2).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info')
                stepItem.eq(3).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info')
                $('.backTitle').html('申请售后')
                stepBody.eq(0).show()
                stepBody.eq(1).hide()
                stepBody.eq(2).hide()
                stepBody.eq(3).hide()

                break
            case '2':
                stepItem.eq(0).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info').addClass('aui-step-item-current')
                stepItem.eq(1).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info').addClass('aui-step-item-current-info')
                stepItem.eq(2).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info')
                stepItem.eq(3).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info')
                $('.backTitle').html('平台审核')
                stepBody.eq(0).hide()
                stepBody.eq(1).show()
                stepBody.eq(2).hide()
                stepBody.eq(3).hide()

                break
            case '3':
                stepItem.eq(0).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info').addClass('aui-step-item-current')
                stepItem.eq(1).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info').addClass('aui-step-item-current')
                stepItem.eq(2).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info').addClass('aui-step-item-current-info')
                stepItem.eq(3).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info')
                $('.backTitle').html('猫舍核实')

                stepBody.eq(0).hide()
                stepBody.eq(1).hide()
                stepBody.eq(2).show()
                stepBody.eq(3).hide()
                break
            case '4':
                stepItem.eq(0).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info').addClass('aui-step-item-current')
                stepItem.eq(1).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info').addClass('aui-step-item-current')
                stepItem.eq(2).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info').addClass('aui-step-item-current')
                stepItem.eq(3).removeClass('aui-step-item-current').removeClass('aui-step-item-current-info').addClass('aui-step-item-current-info')
                $('.backTitle').html('公示结果')
                stepBody.eq(0).hide()
                stepBody.eq(1).hide()
                stepBody.eq(2).hide()
                stepBody.eq(3).show()
                break
        }
    }

    var msg0 = ''
    var msg1 = ''
    var msg2 = ''
    var msg3 = ''
    var msg4 = ''
    var msg5 = ''

    function remove(index) {
        $('#uploaderBox' + index).hide()
        $('#msgHome' + index).show()
        switch (index) {
            case 0:
                msg = ''
                break
            case 1:
                msg1 = ''
                break
            case 2:
                msg2 = ''
                break
            case 3:
                msg3 = ''
                break
            case 4:
                msg4 = ''
                break
            case 5:
                msg5 = ''
                break
        }
    }

    function uploadUrl(index, msg, box, percentBox) {
        var fileName = $('#' + msg).val()
        var file = $('#' + msg).get(0).files[0]
        var suffix = fileName.substring(fileName.lastIndexOf("."), fileName.length);
        $.ajax({
            type: 'post',
            url: "${base}/shop/goodPage/QiniuUpToken",
            data: {
                "suffix": suffix
            },
            dataType: 'json',
            success: function (res) {
                if (res.msgCode == 10000) {
                    $('#' + box).show();
                    var observer = {
                        next(result) {
                            var numberPercent = Math.floor(result.total.percent);
                            var percent = numberPercent + "%";
                            $("#" + percentBox).html(percent);
                        },
                        error(err) {
                            window.location.reload()
                        },
                        complete(res1) {
                            $.toptip('上传成功', 'success');
                            $("#" + percentBox).html('重新上传');
                            $('#msgHome' + index).hide()
                            switch (index) {
                                case 0:
                                    msg0 = 'https://photo.youchongxiong.com/' + res.msgBody.fileName;
                                    break
                                case 1:
                                    msg1 = 'https://photo.youchongxiong.com/' + res.msgBody.fileName;
                                    break
                                case 2:
                                    msg2 = 'https://photo.youchongxiong.com/' + res.msgBody.fileName;
                                    break
                                case 3:
                                    msg3 = 'https://photo.youchongxiong.com/' + res.msgBody.fileName;
                                    break
                                case 4:
                                    msg4 = 'https://photo.youchongxiong.com/' + res.msgBody.fileName;
                                    break
                                case 5:
                                    msg5 = 'https://photo.youchongxiong.com/' + res.msgBody.fileName;
                                    break
                            }

                        }
                    };
                    var putExtra = {
                        fname: "",
                        params: {},
                        mimeType: null
                    };
                    var config = {
                        useCdnDomain: true,
                    };
                    var observable = qiniu.upload(file, res.msgBody.fileName, res.msgBody.token, putExtra, config);
                    observable.subscribe(observer)
                } else if (res.msgCode == 10001) {
                    $.toptip('上传失败', 'error');
                }
            }, error: function () {
                $.toptip('上传失败', 'error');
            }
        });
    }

    function savePic(openId) {

        var protectId = $('#protectId').val();
        var phone = $('#phone').val();
        var tall = $('#tall').val();
        if (!phone) {
            $.toast("请填写联系号码", "cancel");
            return false;
        }
        if (!tall) {
            $.toast("请填写问题描述", "cancel");
            return false;
        }
        if (msg0 == '') {
            $.alert("请上传宠物医院营业执照或执证许可证", "提示");
            return false;
        }
        if (msg1 == '') {
            $.alert("请上传正规宠物医院的FPV测板结果", "提示");
            return false;
        }
        if (msg2 == '') {
            $.alert("请上传正规宠物医院的血检单（血常规）", "提示");
            return false;
        }
        if (msg3 == '') {
            $.alert("请上传执业兽医师签字的诊断证明", "提示");
            return false;
        }
        if (msg4 == '') {
            $.alert("请上传正规宠物医院的门牌照", "提示");
            return false;
        }
        $.showLoading();
        var formData = new FormData()

        formData.append('phone', phone);
        formData.append('tall', tall);
        formData.append("url0", msg0)
        formData.append("url1", msg1)
        formData.append("url2", msg2)
        formData.append("url3", msg3)
        formData.append("url4", msg4)
        formData.append("url5", msg5)
        formData.append("protectId", protectId)
        formData.append("orderId", '${orderId}')
        formData.append("openId", openId)
        formData.append("serviceType", 2)
        $.ajax({
            url: '${base}/wxPublic/service/addDym',
            type: 'POST',
            cache: false,
            data: formData,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    $.toast("上传成功", function () {
                        jumpWhich('2')
                    });

                } else if (res.msgCode == 10001) {
                    $.alert(res.msgBody.msgInfo, "上传失败");
                }

            }
        })

    }

    function sendNotice(serviceId, result,code) {
        $.showLoading();
        var formData = new FormData()

        formData.append('serviceId', serviceId);
        formData.append('result', result);
        $.ajax({
            url: '${base}/wxPublic/service/serverResult',
            type: 'POST',
            cache: false,
            data: formData,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    if(code==0){
                        $.alert('感谢您对优宠熊平台的信任，后续会联系对应的人员与您联系','提示')
                    }else{
                        $.alert('您的诉求已经提交平台人工，稍后会有人工客服联系您，请您耐心等待','提示')
                    }
                } else if (res.msgCode == 10001) {
                    $.toast("记录失败", "cancel", function (toast) {
                        console.log(toast);
                    });
                }

            }
        })
    }
</script>


</body>
</html>

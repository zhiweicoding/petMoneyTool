<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>售后界面</title>
    <meta name="viewport"
          content="width=device-width,initial-scale=1,user-scalable=0,minimum-scale=1,maximum-scale=1,minimal-ui,viewport-fit=cover">
    <meta name="format-detection" content="telephone=no">
    <meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
    <meta name="keywords" content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,宠物猫,正规购宠平台,买猫,卖猫,猫市场,宠物猫交易网,优宠熊,宠物平台,天津宠物交易,天津买猫,天津宠物市场,猫,优宠,家庭繁育猫舍">
    <meta name="description"
          content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta name="theme-color" content="#3baa24">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <link rel="apple-touch-icon-precomposed"
          href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico">
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge;chrome=1">
    <meta name="screen-orientation" content="portrait">
    <meta name="x5-orientation" content="portrait">
    <style type="text/css" abt="234"></style>
    <meta name="screen-orientation" content="portrait">
    <meta name="x5-orientation" content="portrait">
    <meta name="theme-color" content="#ffffff">
    <meta name="pathname" content="aweme_mobile_video">
    <meta name="format-detection" content="telephone=yes"/>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
    <style type="text/css">

    </style>

</head>

<body ontouchstart>


<#--<header class='demos-header'>-->
<#--<h1 class="demos-title">上传宠物</h1>-->
<#--</header>-->

<div class="weui-cells weui-cells_form" style="margin-top: 5px;padding-top: 5px;">
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">宠物标题</label></div>
        <div class="weui-cell__bd">
            <input id="petTitle" class="weui-input" type="text" placeholder="如：美短虎斑">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">宠物年龄</label></div>
        <div class="weui-cell__bd">
            <input id="petAge" class="weui-input" type="text" placeholder="2月大" value="2月大">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">宠物价格</label></div>
        <div class="weui-cell__bd">
            <input id="money" class="weui-input" type="number" placeholder="如：3000">
        </div>
    </div>

    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="name" class="weui-label">宠物品种</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="symbolId" type="text" value="" placeholder="请点击选择">
        </div>
    </div>

    <#--<div class="weui-cell weui-cell_switch">-->
    <#--<div class="weui-cell__bd">可否试养</div>-->
    <#--<div class="weui-cell__ft">-->
    <#--<label for="switchCP" class="weui-switch-cp">-->
    <#--<input id="switchCP" class="weui-switch-cp__input" type="checkbox">-->
    <#--<div class="weui-switch-cp__box"></div>-->
    <#--</label>-->
    <#--</div>-->
    <#--</div>-->

    <#--<div class="weui-cell weui-cell_switch">-->
    <#--<div class="weui-cell__bd">是否参与免费</div>-->
    <#--<div class="weui-cell__ft">-->
    <#--<label for="freeCp" class="weui-switch-cp">-->
    <#--<input id="freeCp" class="weui-switch-cp__input" type="checkbox" checked-->
    <#--onchange="turnChangeFree(this,'halfPriceCP')">-->
    <#--<div class="weui-switch-cp__box"></div>-->
    <#--</label>-->
    <#--</div>-->
    <#--</div>-->

    <#--<div class="weui-cell weui-cell_switch">-->
    <#--<div class="weui-cell__bd">是否参与半价</div>-->
    <#--<div class="weui-cell__ft">-->
    <#--<label for="halfPriceCP" class="weui-switch-cp">-->
    <#--<input id="halfPriceCP" class="weui-switch-cp__input" type="checkbox"-->
    <#--onchange="turnChangeHalf(this,'freeCp')">-->
    <#--<div class="weui-switch-cp__box"></div>-->
    <#--</label>-->
    <#--</div>-->
    <#--</div>-->

    <div class="weui-cell weui-cell_switch">
        <div class="weui-cell__bd">公/母（选中为公）</div>
        <div class="weui-cell__ft">
            <label for="genderCP" class="weui-switch-cp">
                <input id="genderCP" class="weui-switch-cp__input" type="checkbox" checked="checked">
                <div class="weui-switch-cp__box"></div>
            </label>
        </div>
    </div>

</div>

<div class="weui-cells__title" style="font-size: 17px;line-height: 1.5;color: #333;">宠物简介</div>
<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <textarea id="petDesc" class="weui-textarea" placeholder="如： 五粉通脖 " rows="2"></textarea>
        </div>
    </div>
</div>

<div class="weui-cells" style="margin-top: 0px;">
    <a class="weui-cell weui-cell_access" href="javascript:canNotWrite('cannotwritesomeid');">
        <div class="weui-cell__bd">
            <p>添加更多</p>
        </div>
        <div class="weui-cell__ft">可选</div>
    </a>
    <div id="cannotwritesomeid" style="display: none;">
        <div class="weui-cell weui-cell_switch">
            <div class="weui-cell__bd">是否打疫苗</div>
            <div class="weui-cell__ft">
                <label for="yimiaoCP" class="weui-switch-cp">
                    <input id="yimiaoCP" class="weui-switch-cp__input" type="checkbox" checked="checked"
                           onclick="isyimiaoCheck(this,'yimiaoNumId')">
                    <div class="weui-switch-cp__box"></div>
                </label>
            </div>
        </div>

        <div class="weui-cell" id="yimiaoNumId">
            <div class="weui-cell__bd">
                <p>接种疫苗次数</p>
            </div>
            <div class="weui-cell__ft">
                <div class="weui-count">
                    <a class="weui-count__btn weui-count__decrease"></a>
                    <input id="yimiaoNumInputId" class="weui-count__number" type="number" value="0"/>
                    <a class="weui-count__btn weui-count__increase"></a>
                </div>
            </div>
        </div>

        <div class="weui-cell weui-cell_switch">
            <div class="weui-cell__bd">是否驱虫</div>
            <div class="weui-cell__ft">
                <label for="quchongCP" class="weui-switch-cp">
                    <input id="quchongCP" class="weui-switch-cp__input" type="checkbox" checked="checked">
                    <div class="weui-switch-cp__box"></div>
                </label>
            </div>
        </div>

        <div class="weui-cell weui-cell_switch">
            <div class="weui-cell__bd">是否协议质保</div>
            <div class="weui-cell__ft">
                <label for="zhibaoCP" class="weui-switch-cp">
                    <input id="zhibaoCP" class="weui-switch-cp__input" type="checkbox" checked="checked">
                    <div class="weui-switch-cp__box"></div>
                </label>
            </div>
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

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">上传图片 点击加号上传图片 再完成截取</p>
                </div>
                <div class="weui-uploader__bd">
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInputImg" class="weui-uploader__input" onchange="chooseImage(this)"
                               type="file"
                               accept="image/*">
                    </div>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <#--<li id="firstPic" class="weui-uploader__file weui-uploader__file_status tumbPic"-->
                        <#--style="background-image:url(${base}/resources/shopImg/pic_160.png)" onclick="firstClick()">-->
                        <#--<div class="weui-uploader__file-content">1</div>-->
                        <#--</li>-->
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

    var symbolId = '';
    var upFileUrl = '';
    $(function () {

        $.post('${base}/shop/goodPage/querySymbol', {
            typeId: 'Tdfd0aaa653484560b884026746f012f3'
        }, function (res) {
            var values = []
            if (res.msgCode == 10000) {
                values = res.msgBody
            }
            $("#symbolId").picker({
                title: "请选择品种",
                cols: [
                    {
                        textAlign: 'center',
                        values: values
                    }
                ],
                onChange: function (p, v, dv) {
                },
                onClose: function (p, v, d) {
                }
            });

        })
    })

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
                    var observer = {                         //设置上传过程的监听函数
                        next(result) {                        //上传中(result参数带有total字段的 object，包含loaded、total、percent三个属性)
                            var numberPercent = Math.floor(result.total.percent); //查看进度[loaded:已上传大小(字节);total:本次上传总大小;percent:当前上传进度(0-100)]
                            var percent = numberPercent + "%";     //已经上传的百分比

                            $("#uploadLoadingId").html(percent);
                        },
                        error(err) {
                            //失败后
                            $.toast("上传失败", "cancel", function (toast) {
                                console.log(toast);
                            });
                        },
                        complete(res1) {                      //成功后
                            //?imageView2/2/h/100：展示缩略图，不加显示原图
                            // $("#img").attr("src", "****/" + res.imgUrl + "?imageView2/2/h/100");
                            var imgUrl = 'https://photo.youchongxiong.com/' + res.msgBody.fileName + '?vframe/jpg/offset/0'
                            upFileUrl = 'https://photo.youchongxiong.com/' + res.msgBody.fileName;
                            $("#uploadLoadingId").html('100%');

                            var imgLink = imgUrl;
                            var tempImage = new Image();
                            tempImage.src = imgLink;
                            tempImage.crossOrigin = "*";
                            tempImage.onload = function () {
                                var baseImg = getBase64Image(tempImage);
                                $(".tumbPic").css("background-image", "url(" + baseImg + ")");
                                $(".tumbPic").attr("dataImage", baseImg);
                                $(".tumbPic").attr("dataImageReal", baseImg);

                                secondClick();
                            }


                        }
                    };
                    var putExtra = {
                        fname: "",                          //原文件名
                        params: {},                         //用来放置自定义变量
                        mimeType: null                      //限制上传文件类型
                    };
                    var config = {
                        // region: qiniu.region.z0,             //存储区域(z0: 代表华东;不写默认自动识别)
                        // concurrentRequestLimit: 3,            //分片上传的并发请求量
                        useCdnDomain: true,
                    };
                    var observable = qiniu.upload(file, res.msgBody.fileName, res.msgBody.token, putExtra, config);
                    observable.subscribe(observer)          // 上传开始
                } else if (res.msgCode == 10001) {
                    $.toast("上传失败", "cancel", function (toast) {
                        console.log(toast);
                    });
                } else if (res.msgCode == 10003) {
                    window.location.replace('${base}/shop/loginPage/index?from=2')
                }
            }, error: function () {//服务器响应失败处理函数
                $.toast("上传失败", "cancel", function (toast) {
                    console.log(toast);
                });
            }
        });

    });

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

        // var switchCP = $('#switchCP').is(':checked')
        var genderCP = $('#genderCP').is(':checked')
        // var halfPriceCP = $('#halfPriceCP').is(':checked')
        // var freeCp = $('#freeCp').is(':checked')
        var yimiaoCP = $('#yimiaoCP').is(':checked')
        var quchongCP = $('#quchongCP').is(':checked')
        var zhibaoCP = $('#zhibaoCP').is(':checked')
        var petTitle = $('#petTitle').val();
        var yimiaoNumId = $('#yimiaoNumInputId').val();
        var petDesc = $('#petDesc').val();
        var symbolId = $('#symbolId').val();
        var money = $('#money').val();
        var petAge = $('#petAge').val();
        // var uploaderInput = $('#uploaderInput').get(0).files[0];
        // var firstPic = $('#firstPic').attr('dataImageReal')
        var secondPic = $('#secondPic').attr('dataImageReal')
        if (!petDesc) {
            $.toast("请先填写介绍", "forbidden");
            return false;
        }
        if (!symbolId) {
            $.toast("请先选择品种", "forbidden");
            return false;
        }
        if (!money) {
            $.toast("请先填写价格", "forbidden");
            return false;
        }
        if (upFileUrl == '') {
            $.toast("请先上传视频", "forbidden");
            return false;
        }
        // if (!firstPic) {
        //     $.toast("请先上传图片", "forbidden");
        //     return false;
        // }
        // if (!secondPic) {
        //     $.toast("请先上传图片", "forbidden");
        //     return false;
        // }
        $.showLoading();
        var formData = new FormData()

        formData.append('uploaderInputUrl', upFileUrl);
        if (petTitle == '') {
            formData.append('petTitle', symbolId + '~' + petAge);
        } else {
            formData.append('petTitle', petTitle + '~' + petAge);
        }
        formData.append('petDesc', petDesc);
        // formData.append('firstPic', convertBase64UrlToBlob(firstPic));
        if (secondPic) {
            formData.append('secondPic', convertBase64UrlToBlob(secondPic));
        }
        formData.append("money", money)
        formData.append("symbolId", symbolId)
        formData.append("switchCP", false)
        formData.append("genderCP", genderCP)

        formData.append("quchong", quchongCP)
        formData.append("yimiao", yimiaoCP)
        formData.append("zhibaoxieyi", zhibaoCP)
        formData.append("halfPrice", false)
        formData.append("freeCp", false)
        formData.append("yimiaoNum", yimiaoNumId)
        $.ajax({
            url: '${base}/shop/goodPage/addDym',
            type: 'POST',
            cache: false,
            data: formData,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    <#--window.location.replace('${base}/shop/msgPage/index?goodId=' + res.msgBody + '&turnPage=0')-->
                    window.location.replace('${base}/shop/msgPage/index?goodId=0&turnPage=0')
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

    function imgClick(url) {
        // var secondPic = document.getElementById('secondPic').getAttribute("dataImage");
        $('#secondCanvas').css('display', 'block');
        var imgEdit2;
        var img = new Image();
        img.src = url;
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
        // var uploaderInput = document.getElementById("uploaderInput").files[0];
        if (!isCanvasSupported()) {
            console.log("已存在");
        } else {
            var file = event.files[0];
            if (!/image\/\w+/.test(file.type)) {
                alert("请确保文件为图像类型");
                return false;
            }
            var reader = new FileReader();

            // compress(event, function (base64Img) {
            //     $(".tumbPic").css("background-image", "url(" + base64Img + ")");
            //     $(".tumbPic").attr("dataImage", base64Img);
            //     $(".tumbPic").attr("dataImageReal", base64Img);
            //     // console.log(base64Img);
            // });

            genBase64(file, function (baseImg) {
                $(".tumbPic").css("background-image", "url(" + baseImg + ")");
                $(".tumbPic").attr("dataImage", baseImg);
                $(".tumbPic").attr("dataImageReal", baseImg);

                secondClick();
            });

        }

    }

    // function chooseImage(event) {
    //     // var uploaderInput = document.getElementById("uploaderInput").files[0];
    //     if (!isCanvasSupported()) {
    //         console.log("已存在");
    //     } else {
    //         compress(event, function (base64Img) {
    //             $(".tumbPic").css("background-image", "url(" + base64Img + ")");
    //             $(".tumbPic").attr("dataImage", base64Img);
    //             $(".tumbPic").attr("dataImageReal", base64Img);
    //             console.log(base64Img);
    //         });
    //     }
    //
    // }

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

    function canNotWrite(res) {
        $('#' + res).toggle()
    }

    function isyimiaoCheck(self, res) {
        var isCheck = $(self).is(':checked')
        if (isCheck) {
            $('#' + res).show()
        } else {
            $('#' + res).hide()
        }
    }

    var MAX = 10, MIN = 0;
    $('.weui-count__decrease').click(function (e) {
        var $input = $(e.currentTarget).parent().find('.weui-count__number');
        var number = parseInt($input.val() || "0") - 1
        if (number < MIN) number = MIN;
        $input.val(number)
    })
    $('.weui-count__increase').click(function (e) {
        var $input = $(e.currentTarget).parent().find('.weui-count__number');
        var number = parseInt($input.val() || "0") + 1
        if (number > MAX) number = MAX;
        $input.val(number)
    })

    $('.delete-swipeout').click(function () {
        $(this).parents('.weui-cell').remove()
    })
    $('.close-swipeout').click(function () {
        $(this).parents('.weui-cell').swipeout('close')
    })

</script>
</body>

</html>
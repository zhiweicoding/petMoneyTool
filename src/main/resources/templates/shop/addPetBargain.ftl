<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>上传领养宠物</title>
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
<#--<h1 class="demos-title">上传领养宠物</h1>-->
<#--</header>-->

<div class="weui-cells weui-cells_form" style="margin-top: 5px;padding-top: 5px;">
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">宠物标题</label></div>
        <div class="weui-cell__bd">
            <input id="petTitle" class="weui-input" type="text" placeholder="如：美短虎斑">
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
            <textarea id="petDesc" class="weui-textarea" placeholder="如： 五粉通脖 母 3月大 2针疫苗 驱虫已做" rows="3"></textarea>
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

<@js.js/>
<script>
    var baseResourcesPath = '${base}/resources/'
</script>
<script src="${base}/resources/shopJs/bundle.js"></script>
<script src="https://unpkg.com/qiniu-js@2.5.1/dist/qiniu.min.js"></script>

<script>

    var upFileUrl = '';

    $(function () {

        $.post('${base}/shop/goodPage/querySymbol',{
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
                    // console.log(p, v, dv);
                },
                onClose: function (p, v, d) {
                    // console.log("close");
                }
            });

        })
    })

    $("#uploaderInputVideo").on('change', function () {
        var fileName = $('#uploaderInputVideo').val()
        var file = $('#uploaderInputVideo').get(0).files[0]
        var suffix = fileName.substring(fileName.lastIndexOf("."), fileName.length);
        var size = file.size > 1024
                ? file.size / 1024 > 1024
                        ? file.size / (1024 * 1024) > 1024
                                ? (file.size / (1024 * 1024 * 1024)).toFixed(2) + 'GB'
                                : (file.size / (1024 * 1024)).toFixed(2) + 'MB'
                        : (file.size / 1024).toFixed(2) + 'KB'
                : (file.size).toFixed(2) + 'B';
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
                            debugger
                            $.toast("上传失败", "cancel", function (toast) {
                                console.log(toast);
                            });
                        },
                        complete(res1) {                      //成功后
                            //?imageView2/2/h/100：展示缩略图，不加显示原图
                            // $("#img").attr("src", "****/" + res.imgUrl + "?imageView2/2/h/100");
                            upFileUrl = 'https://photo.youchongxiong.com/' + res.msgBody.fileName;
                            $("#uploadLoadingId").html('100%');
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
            }, error: function () {                             //服务器响应失败处理函数
                debugger
                $.toast("上传失败", "cancel", function (toast) {
                    console.log(toast);
                });
            }
        });
    });

    function savePic() {
        var yimiaoCP = $('#yimiaoCP').is(':checked')
        var quchongCP = $('#quchongCP').is(':checked')
        var zhibaoCP = $('#zhibaoCP').is(':checked')
        var yimiaoNumId = $('#yimiaoNumInputId').val();

        var genderCP = $('#genderCP').is(':checked')
        var petTitle = $('#petTitle').val();
        var petDesc = $('#petDesc').val();
        var symbolId = $('#symbolId').val();
        var money = $('#money').val();
        var secondPic = $('#secondPic').attr('dataImageReal')
        if (!petTitle) {
            $.toast("请先填写标题", "forbidden");
            return false;
        }
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
        if (!secondPic) {
            $.toast("请先上传图片", "forbidden");
            return false;
        }
        $.showLoading();
        var formData = new FormData()

        formData.append('uploaderInputUrl', upFileUrl);
        formData.append('petTitle', petTitle);
        formData.append('petDesc', petDesc);
        // formData.append('firstPic', convertBase64UrlToBlob(firstPic));
        formData.append('secondPic', convertBase64UrlToBlob(secondPic));
        formData.append("money", money)
        formData.append("symbolId", symbolId)
        formData.append("genderCP", genderCP)

        formData.append("quchong", quchongCP)
        formData.append("yimiao", yimiaoCP)
        formData.append("zhibaoxieyi", zhibaoCP)
        formData.append("yimiaoNum", yimiaoNumId)
        $.ajax({
            url: '${base}/shop/bargainPage/addDym',
            type: 'POST',
            cache: false,
            data: formData,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    window.location.replace('${base}/shop/msgPage/index?goodId=' + res.msgBody + '&turnPage=1')
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
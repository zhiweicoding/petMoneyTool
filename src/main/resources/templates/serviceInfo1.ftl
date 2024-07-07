<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>服务保障</title>
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/demos.css"/>
    <link rel="stylesheet" href="${base}/resources/serviceInfo/serviceInfo.css"/>
    <style>
        .headImg {
            width: 100%;
            min-height: 1.87rem;
            vertical-align: top;
        }

        .weui-navbar__item.weui-bar__item--on {
            color: #f2270c;
            background-color: #ffffff;
        }

        .weui-navbar__item {
            font-weight: bolder;
        }

        .class-title {
            width: 100%;
            position: relative;
            margin-top: -15px;
            padding-top: 10px;
            padding-bottom: 5px;
            height: auto;
            border-radius: 15px 15px 0 0;
            background: #fff;
            font-style: normal;
            text-decoration: none;
            border: none;
            font-weight: 400;
            box-sizing: border-box;
            -webkit-tap-highlight-color: transparent;
            -webkit-font-smoothing: antialiased;
            display: block;
            list-style: disc none;
        }

        .class-title-content {
            display: flex;
            flex-direction: row;
            padding: 0;
            margin: 0;
            list-style: none;
            font-style: normal;
            text-decoration: none;
            border: none;
            font-weight: 400;
            box-sizing: border-box;
            -webkit-tap-highlight-color: transparent;
            -webkit-font-smoothing: antialiased;
        }

        .class-title-item {
            max-width: 20%;
            min-width: 20%;
            position: relative;
            color: #888888;
        }

        .classSelect {
            color: #222222;
            font-weight: bolder;
        }

        .wid33 {
            width: 25%;
        }

        .title-select {
            color: #f2270c;
        }

        .t-i-1 {
            display: flex;
            flex-direction: column;
        }

        .class-select-n {
            width: 100%;
            height: 100%;
            font-size: 15px;
            padding-left: 2px;
            padding-right: 2px;
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden;
            text-align: center;
        }

        .line_x_content {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 6px;
            width: 100%;
            height: 100%;
        }

        .line_x_class {
            background-color: #333;
            width: 25%;
            height: 1px;
        }

        .t-i-2 {
            background: #ef4034;
            border: 1px solid #fff;
            border-radius: 15px 15px 15px 0;
            font-size: 13px;
            color: #fff;
            min-width: 10px;
            height: 14px;
            line-height: 14px;
            position: absolute;
            right: -16px;
            top: -16px;
        }

        .t-i-2 span {
            padding-left: 5px;
            display: block;
            font-size: 14px;
        }

        .class-list-item {
            display: flex;
            display: -webkit-flex;
            flex-direction: row;
            width: 100%;
            flex-wrap: wrap;
        }

        .class-select-item {
            display: flex;
            flex-direction: row;
            height: 24px;
            line-height: 24px;
            border-radius: 16px;
            margin-left: 16px;
            margin-top: 12px;
            font-size: 14px;
            justify-content: center;
        }

        .class-select-item-n {
            background-color: #f6f6f6;
            color: #2e2d2d;
            border: 1px solid hsla(0, 0%, 100%, 0);
        }

        .class-select-item-s {
            color: #f2270c;
            border: 1px solid #f2270c;
            background-color: #fcedeb;
        }

        .item-des {
            padding-left: 8px;
            padding-right: 8px;
            overflow: hidden;
            font-size: 14px;
            line-height: 24px;
        }

        .item-price {
            padding-left: 6px;
            padding-right: 8px;
            font-size: 12px;
            line-height: 24px;
            white-space: nowrap;
        }


    </style>
</head>
<body ontouchstart>
<div id="app">
    <div data-v-b73b9b08="" class="introduce">
        <div class="weui-tab">
            <#--<div class="weui-navbar">-->
            <#--<a class="weui-navbar__item weui-bar__item--on" href="#tab1">-->
            <#--服务介绍-->
            <#--</a>-->
            <#--<a class="weui-navbar__item" href="#tab2">-->
            <#--为什么买-->
            <#--</a>-->
            <#--</div>-->
            <div class="weui-tab__bd">
                <div id="tab1" class="weui-tab__bd-item weui-tab__bd-item--active">
                    <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/headv1.jpg"
                         class="headImg"><!---->
                    <ul class="class-title">
                        <div class="class-title-content">
                            <div class="class-title-item classSelect" id="title1" onclick="show(1)">
                                <div class="t-i-1">
                                    <p class="class-select-n">专业咨询</p>
                                </div>
                            </div>
                            <div class="class-title-item " id="title5" onclick="show(5)">
                                <div class="t-i-1">
                                    <p class="class-select-n">药品保障</p>
                                </div>

                            </div>
                            <div class="class-title-item " id="title2" onclick="show(2)">
                                <div class="t-i-1">
                                    <p class="class-select-n">全面保障</p>
                                </div>

                            </div>
                            <div class="class-title-item " id="title3" onclick="show(3)">
                                <div class="t-i-1">
                                    <p class="class-select-n">意外保护</p>
                                </div>
                            </div>
                            <div class="class-title-item" id="title4" onclick="show(4)">
                                <div class="t-i-1">
                                    <p class="class-select-n">延长保障</p>
                                </div>
                            </div>
                        </div>
                    </ul>
                    <div class="class-list-item" id="priceD1">
                        <div class="class-select-item class-select-item-s" id="sonC1" onclick="showImg(1)">
                            <div class="item-des">养宠医师</div>
                            <div style="color: rgb(227, 228, 232);">|</div>
                            <div class="item-price">终身免费</div>
                        </div>
                    </div>
                    <div class="class-list-item" id="priceD5">
                        <div class="class-select-item class-select-item-s" id="sonC8" onclick="showImg(8)">
                            <div class="item-des">免费寄送药品一次</div>
                            <div style="color: rgb(227, 228, 232);">|</div>
                            <div class="item-price">￥49.9.00</div>
                        </div>
                    </div>
                    <div class="class-list-item" id="priceD2">
                        <div class="class-select-item class-select-item-s" id="sonC2" onclick="showImg(2)">
                            <div class="item-des">1年全保换</div>
                            <div style="color: rgb(227, 228, 232);">|</div>
                            <div class="item-price">￥249.00</div>
                        </div>
                    </div>
                    <div class="class-list-item" id="priceD3">
                        <div class="class-select-item class-select-item-s" id="sonC3" onclick="showImg(3)">
                            <div class="item-des">感染猫瘟热保3月</div>
                            <div style="color: rgb(227, 228, 232);">|</div>
                            <div class="item-price">￥${money}</div>
                        </div>
                        <div class="class-select-item class-select-item-n" id="sonC4" onclick="showImg(4)">
                            <div class="item-des">感染猫传染性腹膜炎保3月</div>
                            <div style="color: rgb(227, 228, 232);">|</div>
                            <div class="item-price">￥${money}</div>
                        </div>
                        <div class="class-select-item class-select-item-n" id="sonC5" onclick="showImg(5)">
                            <div class="item-des">意外死亡保1月</div>
                            <div style="color: rgb(227, 228, 232);">|</div>
                            <div class="item-price">￥${money}</div>
                        </div>
                    </div>
                    <div class="class-list-item" id="priceD4">
                        <div class="class-select-item class-select-item-s" id="sonC6" onclick="showImg(6)">
                            <div class="item-des">30天疾病报销</div>
                            <div style="color: rgb(227, 228, 232);">|</div>
                            <div class="item-price">￥129.00</div>
                        </div>
                        <div class="class-select-item class-select-item-n" id="sonC7" onclick="showImg(7)">
                            <div class="item-des">1年365天疾病报销</div>
                            <div style="color: rgb(227, 228, 232);">|</div>
                            <div class="item-price">￥249.00</div>
                        </div>
                    </div>
                    <img id="img1" style="width:auto;height:auto;max-width:100%;"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/1.jpg"
                         class="">
                    <img id="img2" style="width:auto;height:auto;max-width:100%;"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/2.jpg"
                         class="">
                    <img id="img3" style="width:auto;height:auto;max-width:100%;"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/3.jpg"
                         class="">
                    <img id="img4" style="width:auto;height:auto;max-width:100%;"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/4.jpg"
                         class="">
                    <img id="img5" style="width:auto;height:auto;max-width:100%;"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/5.jpg"
                         class="">
                    <img id="img6" style="width:auto;height:auto;max-width:100%;"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/6.jpg"
                         class="">
                    <img id="img7" style="width:auto;height:auto;max-width:100%;"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/7.jpg"
                         class="">
                    <img id="img8" style="width:auto;height:auto;max-width:100%;"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/8.jpg"
                         class="">
                    <img style="width:auto;height:auto;max-width:100%;"
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/server_common_v1.jpg"
                         class="">
                </div>
                <div id="tab2" class="weui-tab__bd-item">
                    <img data-v-b73b9b08=""
                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/headv1.jpg"
                         class="headImg"><!---->
                    <h1>页面二</h1>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/temp-upload/jquery.min.js"></script>
<script src="${base}/resources/serviceInfo/swiper.min.js"></script>
<script src="${base}/resources/serviceInfo/fastclick.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
        $('#priceD1').hide()
        $('#priceD2').hide()
        $('#priceD3').hide()
        $('#priceD4').hide()
        $('#priceD5').hide()
        $('#priceD1').show()
        $('#img2').hide()
        $('#img3').hide()
        $('#img4').hide()
        $('#img5').hide()
        $('#img6').hide()
        $('#img7').hide()
        $('#img8').hide()
    });

    function show(id) {
        $('#priceD1').hide()
        $('#priceD2').hide()
        $('#priceD3').hide()
        $('#priceD4').hide()
        $('#priceD5').hide()
        $('#priceD' + id).show()
        $('#title1').removeClass('classSelect')
        $('#title2').removeClass('classSelect')
        $('#title3').removeClass('classSelect')
        $('#title4').removeClass('classSelect')
        $('#title5').removeClass('classSelect')
        $('#title' + id).addClass('classSelect')
        $('#img1').hide()
        $('#img2').hide()
        $('#img3').hide()
        $('#img4').hide()
        $('#img5').hide()
        $('#img6').hide()
        $('#img7').hide()
        $('#img8').hide()
        switch (id) {
            case 1:
                $('#img1').show()
                $('#sonC1').addClass('class-select-item-s')
                $('#sonC2').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC3').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC4').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC5').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC6').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC7').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC8').removeClass('class-select-item-s').addClass('class-select-item-n')
                break
            case 2:
                $('#img2').show()
                $('#sonC1').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC2').addClass('class-select-item-s')
                $('#sonC3').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC4').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC5').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC6').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC7').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC8').removeClass('class-select-item-s').addClass('class-select-item-n')
                break
            case 3:
                $('#img3').show()
                $('#sonC1').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC2').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC3').addClass('class-select-item-s')
                $('#sonC4').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC5').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC6').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC7').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC8').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC' + id).addClass('class-select-item-s')
                break
            case 4:
                $('#img6').show()
                $('#sonC1').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC2').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC3').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC4').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC5').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC6').addClass('class-select-item-s')
                $('#sonC7').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC8').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC' + id).addClass('class-select-item-s')
                break
            case 5:
                $('#img8').show()
                $('#sonC1').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC2').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC3').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC4').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC5').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC6').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC7').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC8').removeClass('class-select-item-s').addClass('class-select-item-n')
                $('#sonC' + id).addClass('class-select-item-s')
                break
        }
    }

    function showImg(id) {
        $('#sonC1').removeClass('class-select-item-s').addClass('class-select-item-n')
        $('#sonC2').removeClass('class-select-item-s').addClass('class-select-item-n')
        $('#sonC3').removeClass('class-select-item-s').addClass('class-select-item-n')
        $('#sonC4').removeClass('class-select-item-s').addClass('class-select-item-n')
        $('#sonC5').removeClass('class-select-item-s').addClass('class-select-item-n')
        $('#sonC6').removeClass('class-select-item-s').addClass('class-select-item-n')
        $('#sonC7').removeClass('class-select-item-s').addClass('class-select-item-n')
        $('#sonC8').removeClass('class-select-item-s').addClass('class-select-item-n')
        $('#sonC' + id).addClass('class-select-item-s')
        $('#img1').hide()
        $('#img2').hide()
        $('#img3').hide()
        $('#img4').hide()
        $('#img5').hide()
        $('#img6').hide()
        $('#img7').hide()
        $('#img8').hide()
        $('#img' + id).show()
    }
</script>
<script src="${base}/resources/serviceInfo/jquery-weui.min.js"></script>

</body>
</html>
<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>展示所有订单信息</title>
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <link href="${base}/resources/shopCss/orderStyleL.css" rel="stylesheet" type="text/css"/>
    <link href="${base}/resources/mescollOption/mescroll.min.css" rel="stylesheet" type="text/css"/>
    <link href="${base}/resources/common.css" rel="stylesheet" type="text/css"/>
    <link href="${base}/resources/mescollOption/mescroll-option.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${base}/resources/shopJs/jquery.min.js"></script>
    <script type="text/javascript" src="${base}/resources/shopJs/tab.js"></script>
    <script type="text/javascript" src="${base}/resources/mescollOption/mescroll.min.js"></script>
    <script type="text/javascript" src="${base}/resources/mescollOption/mescroll-option.js"></script>
    <link rel="stylesheet" href="${base}/resources/shopCss/jquery-weui.min-self.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/weui.min-self.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/demos.css"/>
    <link rel="stylesheet" href="${base}/resources/common.css"/>
    <script src="${base}/resources/common.js"></script>
    <script src="https://photo.youchongxiong.com/jquery-weui.min.js"></script>
    <script src="https://photo.youchongxiong.com/swiper.min.js"></script>
    <script src="http://apps.bdimg.com/libs/fastclick/1.0.0/fastclick.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
    <script>
        $(function () {
            FastClick.attach(document.body);
        });
    </script>
    <style>

        .kefuImg {
            position: fixed;
            z-index: 888;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            font-size: 14px;
            background: #fff;
            padding: 8px;
            border: 1px solid #444444;
            top: 42%;
            right: 2%;
        }

        .kefuImg2 {
            position: fixed;
            z-index: 888;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            font-size: 14px;
            background: #fff;
            padding: 8px;
            border: 1px solid #444444;
            top: 50%;
            right: 2%;
        }

    </style>
</head>
<body ontouchstart>
<!--展示上拉加载的数据列表-->
<section class="aui-flexView">
    <section class="aui-scrollView">
        <div class="aui-tab" data-ydui-tab>
            <div class="tab-panel">
                <div class="tab-panel-item tab-active news-list" id="newsList">
                    <#list array as array>
                        <div class="weui-panel weui-panel_access">
                            <div class="weui-panel__hd">下单时间：${array.createTimeStr}</div>
                            <div class="weui-panel__bd">
                                <#list array.goodMapperBeans as good>
                                    <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                                        <div class="weui-media-box__hd">
                                            <img class="weui-media-box__thumb" src="${good.listPicUrl}">
                                        </div>
                                        <div class="weui-media-box__bd">
                                            <h4 class="weui-media-box__title">${"￥"+good.ipadMoney+' x '+good.goodNumber}</h4>
                                            <p class="weui-media-box__desc">${good.goodBrief}</p>
                                        </div>
                                    </a>
                                </#list>
                            </div>
                            <div class="weui-form-preview__bd">
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">订单金额</label>
                                    <span class="weui-form-preview__value">${'￥'+array.orderActualPrice}</span>
                                </div>
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">收货地址</label>
                                    <span class="weui-form-preview__value">${array.addressUserName+','+ array.addressMobile+','+ array.addressFullRegion+array.addressName}</span>
                                </div>
                            </div>
                            <div class="weui-form-preview__ft">
                                <button class="weui-form-preview__btn weui-form-preview__btn_default" id="showTooltips" data-clipboard-text="${array.addressUserName+','+ array.addressMobile+','+ array.addressFullRegion+array.addressName}">复制地址</button>
                                <button  class="weui-form-preview__btn weui-form-preview__btn_primary" onclick="inputTrackNum('${array.orderId}');">发货</button>
                            </div>
                        </div>
<#--                        <a href="javascript:void(0);" class="aui-content-list">-->
<#--                            <div class="aui-flex b-line">-->
<#--                                <div style="display: flex;flex-direction: column;">-->
<#--                                    <#list array.goodMapperBeans as good>-->
<#--                                        <div class="aui-car-img" style="margin-top: 25px;">-->
<#--                                            <div class="aui-car-release"-->
<#--                                                 style="width: 100%;font-size: 16px;">${"￥"+good.ipadMoney+' x '+good.goodNumber}</div>-->
<#--                                            <img src="${good.listPicUrl}" style="width: 80px;height: 80px" alt="">-->
<#--                                        </div>-->
<#--                                    </#list>-->
<#--                                </div>-->
<#--                                <div class="aui-flex-box">-->
<#--                                    <h2>${'价格: ￥'+array.orderActualPrice}</h2>-->
<#--                                    <div class="aui-flex b-line" style="padding: 5px;">-->
<#--                                        <div class="aui-flex-box">-->
<#--                                            <h3>${"地址:"+ array.addressUserName+','+ array.addressMobile+','+ array.addressFullRegion + array.addressName}</h3>-->
<#--                                        </div>-->
<#--                                    </div>-->
<#--                                    <div>-->
<#--                                        <button-->
<#--                                                data-clipboard-text="${array.addressUserName+','+ array.addressMobile+','+ array.addressFullRegion+array.addressName}"-->
<#--                                                id="showTooltips">复制地址-->
<#--                                        </button>-->
<#--                                        <button onclick="inputTrackNum('${array.orderId}')">填写地址</button>-->
<#--                                    </div>-->
<#--                                    <p>${array.createTimeStr}</p>-->
<#--                                </div>-->
<#--                            </div>-->
<#--                        </a>-->
                    </#list>
                </div>
            </div>
        </div>


    </section>
</section>
<div id="qrcode" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;display: none;"></div>
<script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/activity/expansion/clipboard.min.js"></script>
<script type="text/javascript">
    var btns = document.querySelectorAll('button');
    var clipboard = new ClipboardJS(btns);

    clipboard.on('success', function (e) {
        console.log(e);
        $.toptip('操作成功', 'success');
    });
    clipboard.on('error', function (e) {
        $.toptip('操作失败', 'error');

    });
</script>
<script type="text/javascript" charset="utf-8">
    var baseUrl = '${base}'

    function inputTrackNum(orderId) {
        $.prompt("输入快递单号", function (text) {
            $.showLoading();
            $.post('${base}/shop/orderLangList/inputTrack', {
                trackNum: text,
                orderId: orderId
            }, function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    $.toptip('操作成功', 'success');
                    location.reload();
                } else {
                    $.toptip('操作失败', 'error');
                }

            })
        }, function () {
            //点击取消后的回调函数
        });

    }

</script>
</body>
</html>
<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<#import "common/mobileCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>分类-优宠熊</title>
    <meta name="viewport"
          content="width=device-width,initial-scale=1,user-scalable=0,minimum-scale=1,maximum-scale=1,minimal-ui,viewport-fit=cover">
    <meta name="format-detection" content="telephone=no">
    <meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
    <meta name="keywords"
          content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,宠物猫,正规购宠平台,买猫,卖猫,猫市场,宠物猫交易网,优宠熊,宠物平台,天津宠物交易,天津买猫,天津宠物市场,猫,优宠,家庭繁育猫舍">
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
    <link rel="stylesheet" type="text/css"
          href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/miniprogram/icon.css">
    <link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/home.css">
    <link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/core.css">
    <link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/type.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">
    <link rel="stylesheet" href="${base}/resources/mobileCss/loadmoreandreload.css">
    <link rel="stylesheet" href="${base}/resources/mobileCss/suspend.css">

    <style type="text/css">

        html body span {
            font-size: 16px;
            font-family: arial, sans-serif;
        }

        .type-head {
            margin-top: -50px;
            position: absolute;
            right: 10%;
        }

        .type-span-head {
            border: 1px solid white;
            border-radius: 20px;
            font-size: 14px;
            color: #fff;
            padding: 5px 10px;
            cursor: pointer;
        }

        .type-span-head:active {
            border: 1px solid #b1b1b1;
            border-radius: 20px;
            font-size: 14px;
            color: #b1b1b1;
            padding: 5px 10px;
            cursor: pointer;
        }

        .aui-list-product-item {
            margin-top: 8px;
            margin-bottom: 8px;
        }

        .aui-list-product-item-img-img {
            padding: 0 5px;
        }

        .aui-list-product-item-text-title {
            font-size: 16px;
            margin-top: 3px;
            margin-bottom: 3px;
        }

        .aui-list-product-item-text-desc {
            font-size: 14px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .aui-list-product-item-price {
            font-weight: bold;
            font-size: 18px;
        }

        .aui-comment {
            font-size: 13px;
        }

        .aui-grid {
            width: 100%;
            height: 40%;
            z-index: 8888;
            background: #fff;
            position: absolute;
            top: 6.2%;
            display: none;
        }

        .aui-new-search-content {
            padding-top: 0px;
            position: fixed;
            overflow-y: auto;
            z-index: 9999;
            width: 100%;
        }

        .aui-col-xs-3 {
            height: 50px;
        }

        .tab-type-active {
            font-size: 14px;
        }

        .tab-type {
            font-size: 14px;
        }
    </style>
</head>

<body>
<section class="aui-new-search-content">
    <div class="aui-new-search-tab">
        <ul>
            <li style="width: 33%">
                <span id="typeSpanId" onclick="showDialog()" class="aui-active"
                      data-span="0" data-value="${symbol.symbolId}">${symbol.symbolName} ▼</span>
            </li>
            <li style="width: 33%">
                <span id="priceSpanId" data-span="1" data-value="1" onclick="tabClick(this)">价格 ▲</span>
                <#--<span>价格 ▲</span>-->
            </li>
            <li style="width: 33%">
                <span id="newSpanId" data-span="2" data-value="1" onclick="tabClick(this)">优宠精选</span>
            </li>
        </ul>
    </div>
</section>
<section class="aui-list-product">

    <div style="margin-top: 55px;height: 1px;width: 100%;"></div>

    <div class='loading_box' style="display: none;">
        <div class='loading3 loading3_1'></div>
        <div class='loading3 loading3_2'></div>
        <div class='loading3 loading3_3'></div>
    </div>

    <div id="scrollBody" class="aui-list-product-box aui-list-product-box-clear">
        <#list goodArray as goodArray>
            <a href="${base}/webMobile/good/index/${goodArray.goodId}" class="aui-list-product-item">
                <div class="aui-list-product-item-img">
                    <img class="aui-list-product-item-img-img" src="${goodArray.listPicUrl}" style="object-fit: cover;"
                         alt="${goodArray.goodBrief}-优宠熊">
                </div>
                <div class="aui-list-product-item-text">
                    <h2 class="aui-list-product-item-text-title">${goodArray.goodTitle}</h2>
                    <h3 class="aui-list-product-item-text-desc">
                        ${goodArray.goodBrief}
                    </h3>
                    <div class="aui-list-product-mes-box">
                        <div>
							<span class="aui-list-product-item-price">
								<em>¥</em>
                                ${goodArray.frontMoney}
							</span>
                        </div>
                        <div class="aui-comment">${goodArray.likeNum}人喜欢</div>
                    </div>
                </div>
            </a>
        </#list>

    </div>

    <div class='tips1' style="margin-bottom: 40px;display: none;">
        <div class='loading_box'>
            <div class='loading1'></div>
        </div>
        <div class='havenoclass' style="display: none;">没有更多内容了</div>
    </div>


</section>

<section id="dialogType" class="aui-grid">
    <div class="aui-row">
        <#list symbolArray as symbolArray>
            <#if symbolArray.symbolId==symbol.symbolId>
                <div class="aui-col-xs-3">
                    <div class="aui-grid-label">
                    <span class="tab-type-active"
                          onclick="subTabClick('${symbolArray.symbolId}')">${symbolArray.symbolName}</span>
                    </div>
                </div>
            <#else>
                <div class="aui-col-xs-3">
                    <div class="aui-grid-label">
                    <span class="tab-type"
                          onclick="subTabClick('${symbolArray.symbolId}')">${symbolArray.symbolName}</span>
                    </div>
                </div>
            </#if>
        </#list>
    </div>
</section>


<a href="tel:18822166342">
    <img alt="优宠熊电话联系" class='circle-float'
         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/webhelp/mobilephone.png'/>
</a>

<a href="https://www.sobot.com/chat/h5/index.html?sysNum=d7953744f07b4b4a89ace7d2a41d5e27">
    <img alt="优宠熊网络客服" class='circle-float-kefu'
         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/webhelp/detail_kefu.png'/>
</a>

</body>

<@common.footerDiv/>
<@js.commonJs/>
<script type="text/javascript">
    /**
     * Javascript API调用Tab
     */
    !function ($) {
        var $tab = $('#J_Tab');

        $tab.tab({
            nav: '.tab-nav-item',
            panel: '.tab-panel-item',
            activeClass: 'tab-active'
        });

        $tab.find('.tab-nav-item').on('opened.ydui.tab', function (e) {
            console.log('索引：%s - [%s]已经打开了', e.index, $(this).text());
        });
    }(jQuery);

    function showDialog() {
        $('#dialogType').toggle()
        $('html,body').animate({scrollTop: 0}, 'slow');
    }

    function hideDialog() {
        $('#dialogType').hide()
    }

    var currentPage = 2

    function tabClick(obj) {
        $.showLoading()
        var tabObj = $(obj);
        $('.aui-new-search-tab ul li span').removeClass('aui-active');
        tabObj.addClass('aui-active');
        var whichSpan = tabObj.attr('data-span');
        var tab = $('.aui-list-product-box-clear');

        var typeSpan = $('#typeSpanId');
        var priceSpan = $('#priceSpanId');
        var newSpan = $('#newSpanId');
        var typeSpanValue = typeSpan.attr('data-value');
        var priceSpanValue = priceSpan.attr('data-value');
        var newSpanId = newSpan.attr('data-value');//data-span
        if (whichSpan == '2' && newSpanId == '0') {
            newSpanId = '1'
        } else if (whichSpan == '2' && newSpanId == '1') {
            newSpanId = '0'
        } else if (whichSpan == '1' && priceSpanValue == '0') {
            priceSpan.html('价格 ▲')
            priceSpanValue = '1'
        } else if (whichSpan == '1' && priceSpanValue == '1') {
            priceSpan.html('价格 ▼')
            priceSpanValue = '0'
        }
        $.post('${base}/webMobile/type/catQuery', {
            price: priceSpanValue,
            isNew: newSpanId,
            symbolId: typeSpanValue,
            symbolName: "",
            currentPage: 1
        }, function (e) {
            $.hideLoading()
            if (e.msgCode == 10000) {
                var msgBody = e.msgBody
                tab.empty();
                var tempBean = '';
                var goodArray = msgBody.goodArray;
                currentPage = msgBody.currentPage
                for (var i = 0; i < goodArray.length; i++) {
                    var goodBean = goodArray[i]
                    // language=HTML
                    tempBean = tempBean + '<a href="${base}/webMobile/good/index/' + goodBean.goodId + '" class="aui-list-product-item">' +
                        '  <div class="aui-list-product-item-img">' +
                        '      <img class="aui-list-product-item-img-img"  src="' + goodBean.listPicUrl + '" alt="' + goodBean.goodBrief + '-优宠熊">' +
                        '  </div>' +
                        '  <div class="aui-list-product-item-text">' +
                        '      <h2 class="aui-list-product-item-text-title" >' + goodBean.goodTitle + '</h2>' +
                        '      <h3 class="aui-list-product-item-text-desc"  >' + goodBean.goodBrief + '</h3>' +
                        '      <div class="aui-list-product-mes-box">' +
                        '          <div>' +
                        '           <span class="aui-list-product-item-price">' +
                        '               <em>¥ </em>' + goodBean.retailPrice +
                        '           </span>' +
                        '          </div>' +
                        '          <div class="aui-comment">' + goodBean.likeNum + '人喜欢</div>' +
                        '      </div>' +
                        '  </div>' +
                        '</a>'
                }
                tab.append(tempBean)
                typeSpan.html(msgBody.symbol.symbolName + " ▼")
                typeSpan.attr('data-value', msgBody.symbol.symbolId)
                priceSpan.attr('data-value', msgBody.price)
                newSpan.attr('data-value', msgBody.isNew)
            }
        })
    }

    function subTabClick(symbolId) {
        $.showLoading()
        $('.aui-new-search-tab ul li span').removeClass('aui-active');
        $('#typeSpanId').addClass('aui-active');
        var tab = $('.aui-list-product-box-clear');

        var typeSpan = $('#typeSpanId');
        var priceSpan = $('#priceSpanId');
        var newSpan = $('#newSpanId');
        typeSpan.attr('data-value', symbolId);
        var priceSpanValue = priceSpan.attr('data-value');
        var newSpanId = newSpan.attr('data-value');//data-span

        $.post('${base}/webMobile/type/catQuery', {
            price: priceSpanValue,
            isNew: newSpanId,
            symbolId: symbolId,
            symbolName: "",
            currentPage: 1
        }, function (e) {
            $.hideLoading()
            if (e.msgCode == 10000) {
                var msgBody = e.msgBody
                tab.empty();
                var tempBean = '';
                var goodArray = msgBody.goodArray;
                currentPage = msgBody.currentPage
                for (var i = 0; i < goodArray.length; i++) {
                    var goodBean = goodArray[i]
                    // language=HTML
                    tempBean = tempBean + '<a href="${base}/webMobile/good/index/' + goodBean.goodId + '" class="aui-list-product-item">' +
                        '  <div class="aui-list-product-item-img">' +
                        '      <img class="aui-list-product-item-img-img"  src="' + goodBean.listPicUrl + '" alt="' + goodBean.goodBrief + '-优宠熊">' +
                        '  </div>' +
                        '  <div class="aui-list-product-item-text">' +
                        '      <h2 class="aui-list-product-item-text-title" >' + goodBean.goodTitle + '</h2>' +
                        '      <h3 class="aui-list-product-item-text-desc"  >' + goodBean.goodBrief + '</h3>' +
                        '      <div class="aui-list-product-mes-box">' +
                        '          <div>' +
                        '           <span class="aui-list-product-item-price">' +
                        '               <em>¥ </em>' + goodBean.retailPrice +
                        '           </span>' +
                        '          </div>' +
                        '          <div class="aui-comment">' + goodBean.likeNum + '人喜欢</div>' +
                        '      </div>' +
                        '  </div>' +
                        '</a>'
                }
                tab.append(tempBean)
                typeSpan.html(msgBody.symbol.symbolName + " ▼")
                typeSpan.attr('data-value', msgBody.symbol.symbolId)
                priceSpan.attr('data-value', msgBody.price)
                newSpan.attr('data-value', msgBody.isNew)

                $('.aui-row').empty();
                var symbolArray = msgBody.symbolArray
                var currentSymbolBean = msgBody.symbol;
                var symbolBean = '';
                for (var i = 0; i < symbolArray.length; i++) {
                    var temp = symbolArray[i];
                    var symbolClass = '';
                    if (currentSymbolBean.symbolId == temp.symbolId) {
                        symbolClass = 'tab-type-active';
                    } else {
                        symbolClass = 'tab-type';
                    }
                    symbolBean = symbolBean + '<div class="aui-col-xs-3">' +
                        '<div class="aui-grid-label">' +
                        '<span class="' + symbolClass + '" onclick="subTabClick(\'' + temp.symbolId + '\')">' + temp.symbolName + '</span>' +
                        '</div>' +
                        '</div>'
                }
                $('.aui-row').append(symbolBean)
                hideDialog()
            }
        })

    }

    (function (window) {
        var _element = document.getElementById('scrollBody'),
            _refreshText = document.querySelector('.loading_box'),
            _startPos = 0,
            _transitionHeight = 0;

        _element.addEventListener('touchstart', function (e) {
            console.log('初始位置：', e.touches[0].pageY);
            _startPos = e.touches[0].pageY;
            _element.style.position = 'relative';
            _element.style.transition = 'transform 0s';
        }, false);

        _element.addEventListener('touchmove', function (e) {
            console.log('当前位置：', e.touches[0].pageY);
            _transitionHeight = e.touches[0].pageY - _startPos;

            if (_transitionHeight > 0 && _transitionHeight < 60) {
                $('.loading_box').show()
            }
        }, false);

        _element.addEventListener('touchend', function (e) {
            _element.style.transition = 'transform 0.5s ease 1s';
            _element.style.transform = 'translateY(0px)';

            $.showLoading()
            $('#typeSpanId').addClass('aui-active');
            var tab = $('.aui-list-product-box-clear');

            var typeSpan = $('#typeSpanId');
            var priceSpan = $('#priceSpanId');
            var newSpan = $('#newSpanId');
            var symbolId = typeSpan.attr('data-value');
            var priceSpanValue = priceSpan.attr('data-value');
            var newSpanId = newSpan.attr('data-value');//data-span

            $.post('${base}/webMobile/type/catQuery', {
                price: priceSpanValue,
                isNew: newSpanId,
                symbolId: symbolId,
                symbolName: "",
                currentPage: 1
            }, function (e) {
                $.hideLoading()
                if (e.msgCode == 10000) {
                    var msgBody = e.msgBody
                    tab.empty();
                    var tempBean = '';
                    var goodArray = msgBody.goodArray;
                    currentPage = msgBody.currentPage
                    for (var i = 0; i < goodArray.length; i++) {
                        var goodBean = goodArray[i]
                        // language=HTML
                        tempBean = tempBean + '<a href="${base}/webMobile/good/index/' + goodBean.goodId + '" class="aui-list-product-item">' +
                            '  <div class="aui-list-product-item-img">' +
                            '      <img class="aui-list-product-item-img-img"  src="' + goodBean.listPicUrl + '" alt="' + goodBean.goodBrief + '-优宠熊">' +
                            '  </div>' +
                            '  <div class="aui-list-product-item-text">' +
                            '      <h2 class="aui-list-product-item-text-title" >' + goodBean.goodTitle + '</h2>' +
                            '      <h3 class="aui-list-product-item-text-desc"  >' + goodBean.goodBrief + '</h3>' +
                            '      <div class="aui-list-product-mes-box">' +
                            '          <div>' +
                            '           <span class="aui-list-product-item-price">' +
                            '               <em>¥ </em>' + goodBean.retailPrice +
                            '           </span>' +
                            '          </div>' +
                            '          <div class="aui-comment">' + goodBean.likeNum + '人喜欢</div>' +
                            '      </div>' +
                            '  </div>' +
                            '</a>'
                    }
                    tab.append(tempBean)

                    $('.loading_box').hide()
                }
            })
        }, false);
    })(window);

    (function (window) {
        // 获取当前滚动条的位置
        function getScrollTop() {
            var scrollTop = 0;
            if (document.documentElement && document.documentElement.scrollTop) {
                scrollTop = document.documentElement.scrollTop;
            } else if (document.body) {
                scrollTop = document.body.scrollTop;
            }
            return scrollTop;
        }

        // 获取当前可视范围的高度
        function getClientHeight() {
            var clientHeight = 0;
            if (document.body.clientHeight && document.documentElement.clientHeight) {
                clientHeight = Math.min(document.body.clientHeight, document.documentElement.clientHeight);
            } else {
                clientHeight = Math.max(document.body.clientHeight, document.documentElement.clientHeight);
            }
            return clientHeight;
        }

        // 获取文档完整的高度
        function getScrollHeight() {
            return Math.max(document.body.scrollHeight, document.documentElement.scrollHeight);
        }

        var _text = document.querySelector('.tips1'),
            _container = document.getElementById('scrollBody');

        var isLoading = true

        window.onscroll = function () {
            if (isLoading) {
                if (getScrollTop() + getClientHeight() == getScrollHeight()) {
                    $('.tips1').show()
                    isLoading = false;
                    if (currentPage == -1) {
                        $('.loading_box').hide();
                        $('.havenoclass').show()
                    } else {
                        $('.loading_box').show();
                        $('.havenoclass').hide()

                        $.showLoading()
                        var typeSpanValue = $('#typeSpanId').attr('data-value');
                        var priceSpanValue = $('#priceSpanId').attr('data-value');
                        var newSpanId = $('#newSpanId').attr('data-value');
                        var tab = $('.aui-list-product-box-clear');
                        $.post('${base}/webMobile/type/catQuery', {
                            price: priceSpanValue,
                            isNew: newSpanId,
                            symbolId: typeSpanValue,
                            symbolName: "",
                            currentPage: currentPage
                        }, function (e) {
                            $.hideLoading()
                            isLoading = true
                            if (e.msgCode == 10000) {
                                var msgBody = e.msgBody
                                var tempBean = '';
                                var goodArray = msgBody.goodArray;
                                currentPage = msgBody.currentPage
                                if (currentPage == -1) {
                                    $('.loading_box').hide();
                                    $('.havenoclass').show()
                                } else {
                                    $('.loading_box').hide();
                                    $('.havenoclass').hide()

                                    for (var i = 0; i < goodArray.length; i++) {
                                        var goodBean = goodArray[i]
                                        // language=HTML
                                        tempBean = tempBean + '<a href="${base}/webMobile/good/index/' + goodBean.goodId + '" class="aui-list-product-item">' +
                                            '  <div class="aui-list-product-item-img">' +
                                            '      <img class="aui-list-product-item-img-img"  src="' + goodBean.listPicUrl + '" alt="' + goodBean.goodBrief + '-优宠熊">' +
                                            '  </div>' +
                                            '  <div class="aui-list-product-item-text">' +
                                            '      <h2 class="aui-list-product-item-text-title" >' + goodBean.goodTitle + '</h2>' +
                                            '      <h3 class="aui-list-product-item-text-desc"  >' + goodBean.goodBrief + '</h3>' +
                                            '      <div class="aui-list-product-mes-box">' +
                                            '          <div>' +
                                            '           <span class="aui-list-product-item-price">' +
                                            '               <em>¥ </em>' + goodBean.retailPrice +
                                            '           </span>' +
                                            '          </div>' +
                                            '          <div class="aui-comment">' + goodBean.likeNum + '人喜欢</div>' +
                                            '      </div>' +
                                            '  </div>' +
                                            '</a>'
                                    }
                                    tab.append(tempBean)
                                }
                            }
                        })
                    }
                }
            }

        };

    })(window);
</script>
<script>
    var footerActive = $('.aui-footer-item');
    footerActive.removeClass('aui-footer-active');
    footerActive.eq(1).addClass('aui-footer-active');
</script>
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?17beb155aceef2dd9b74677419a1b70d";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</html>
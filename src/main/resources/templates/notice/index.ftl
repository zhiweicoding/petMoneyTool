<#import "common/mobileCommon.ftl" as common>
<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>首页-优宠熊</title>
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
    <script
            type="text/javascript">!function () {
            function t(t) {
                return this.config = t, this
            }

            t.prototype = {
                reset: function () {
                    var t = Math.min(document.documentElement.clientWidth, 750) / 750 * 100;
                    document.documentElement.style.fontSize = t + "px";
                    var e = parseFloat(window.getComputedStyle(document.documentElement).fontSize), n = t / e;
                    /(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent) || document.documentElement.setAttribute("flatform", "android"), 1 != n && (document.documentElement.style.fontSize = t * n + "px")
                }
            }, window.Adapter = new t, window.Adapter.reset(), window.onload = function () {
                window.Adapter.reset()
            }, window.onresize = function () {
                window.Adapter.reset()
            }
        }();
    </script>
    <link rel="stylesheet" href="${base}/resources/mobileCss/index.css">
    <link rel="stylesheet" type="text/css" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/miniprogram/icon.css">
    <link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/home.css">
    <link rel="stylesheet" type="text/css" href="${base}/resources/mobileCss/core.css">
    <link rel="stylesheet" href="${base}/resources/mobileCss/suspend.css">


    <style type="text/css">

    </style>

</head>

<body ontouchstart>
<div class="aui-content-box">
    <div class="container">
        <div style="width: 90%;margin-left:5%">
            <div class="search">
                <a href="${base}/webMobile/search" class="input">
                    <img class="icon" src="https://photo.youchongxiong.com/search-img.png">
                    <span class="txt">优宠搜索, 共${resultBody.petCount}爱宠</span>
                </a>
            </div>
        </div>

        <div class="banner m-slider" data-ydui-slider>
            <div class="slider-wrapper">
                <#list resultBody.bannerUrlBeanList as bannerUrlBeanList>
                    <div class="slider-item">
                        <a href="${bannerUrlBeanList.configMsg}">
                            <img src="${base}${bannerUrlBeanList.configUrl}"
                                 alt="${bannerUrlBeanList.configContent}">
                        </a>
                    </div>
                </#list>
            </div>
            <!-- <div class="slider-pagination"></div> -->
        </div>
        <div style="width: 90%;margin-left:5%">
            <div class='protect-line'>
                <div class='protect-item'>
                    <img src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/index_dui_gou.png'
                         class='index-duigou-img'>
                    <div class='index-duigou-text'>终身免费咨询</div>
                </div>
                <div class='protect-item' style='margin-left: 25px;'>
                    <img src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/index_dui_gou.png'
                         class='index-duigou-img'>
                    <div class='index-duigou-text'>签署质保协议</div>
                </div>
                <div class='protect-item' style='margin-left: 25px;'>
                    <img src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/index_dui_gou.png'
                         class='index-duigou-img'>
                    <div class='index-duigou-text'>猫瘟免费更换</div>
                </div>
            </div>

        </div>

        <div class='backline5'></div>

        <div style="width: 90%;margin-left:5%">
            <div class="news">
                <div class="news_head">
                    <div class="head_left">养猫技巧</div>
                    <div class="head_right" onclick="openUrl('${base}/msgList/index')">更多></div>
                </div>
                <div class="news_body">
                    <#list resultBody.msgDetailMapperBeanList as msgDetailMapperBeanList>
                        <div class="news_item" onclick="openUrl('${base}/msgList/${msgDetailMapperBeanList.msgId}')">
                            <img class="news_item_img" width="1.8rem" height="1rem"
                                 src="${msgDetailMapperBeanList.msgImgUrl}" alt="${msgDetailMapperBeanList.tags}"/>
                            <div class="news_item_content">
                                <div class="news_item_title">${msgDetailMapperBeanList.msgTitle}</div>
                                <div class="news_item_body">
                                    ${msgDetailMapperBeanList.msgContent}
                                </div>
                            </div>

                        </div>
                    </#list>
                </div>
            </div>
        </div>

        <div class='backline5'></div>

        <div style="width: 90%;margin-left:5%">

            <div class='partCl'>
                <#--3-->
                <a class='partA' href='${base}/webMobile/actPage/index?currentPage=0&htmlType=1'>
                    <div style='position:relative;'>
                        <img class='partimg'
                             src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/part2092520181229.png'
                             lazy-load alt="优宠熊正规宠物购买平台">
                        <div class='someActivity'></div>
                    </div>
                    <div class='parttxt'>精选猫咪</div>
                </a>
                <a class='partB' href='${base}/webMobile/actPage/index?currentPage=0&htmlType=2'>
                    <img class='partimg'
                         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/part209251201812291326.png'
                         lazy-load alt="优宠熊正规宠物购买平台">
                    <div class='parttxt'>优宠领养</div>
                </a>
                <a class='partC' href='${base}/webMobile/actPage/index?currentPage=0&htmlType=3'>
                    <div style='position:relative;'>
                        <img class='partimg'
                             src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/part209251201812291328.png'
                             lazy-load alt="优宠熊正规宠物购买平台">
                        <div class='someActivity2'></div>
                    </div>
                    <div class='parttxt'>砍价购买</div>
                </a>
            </div>

            <a class='partD' href='${base}/webMobile/actPage/index?currentPage=0&htmlType=4'>
                <img src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/freebrand4.png' class='img'
                     mode='widthFix' alt="优宠熊正规宠物购买平台">
                <div class='sub'>
                    <div class='title'>优宠熊·每日上新 猫咪</div>
                    <div class='line'>点击马上查看更多 ></div>
                </div>
            </a>
        </div>
        <!-- <div class="dialog ">
            <div class="dialog_mask"></div>
            <div class="dialog_container"
                style='background: url("https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/temp-upload/show20190328.png") no-repeat;  background-size: 100% 100%;'>
            </div>

        </div> -->

        <div class='backline3'></div>
        <div style="width: 90%;margin-left:5%">
            <div class="a-section a-topic" style='margin-top:1.5px;'>
                <a class="h" href="${base}/webMobile/buyShow/index?scrollId=0" style='margin-bottom:4px;'>
                    <span class="txt">买家秀
                    </span>
                    <span class='more'>更多 ></span>
                </a>
                <div class="b">
                    <#list resultBody.commentMapperBeanList as commentMapperBeanList>
                        <a class="buyPeopleItem" href="${base}/webMobile/buyShow/index?scrollId=${commentMapperBeanList.commId}">
                            <div class='buyPartHead'>
                                <div class="buyPartName">${commentMapperBeanList.commDesc}的用户</div>
                                <div class="buyPartTime">${commentMapperBeanList.createTimeStrShort}</div>
                            </div>
                            <div class="buyPartDetail">购买一只${commentMapperBeanList.symbolName}</div>
                            <div class='imgHelp'>
                                <img class="img" src="${commentMapperBeanList.imgUrlArray[0]}"
                                     alt="${commentMapperBeanList.commDesc}"
                                     background-size="cover" mode='aspectFill' lazy-load>
                            </div>
                        </a>
                    </#list>
                    <a class="buyPeopleItemOther" href="${base}/webMobile/buyShow/index?scrollId=0">
                        <div style='position:relative;'>
                            <img class="moreImg"
                                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/123123-47e333ef95dfaf464c74adcd864aa9ea%E7%9A%84%E5%89%AF%E6%9C%AC.png"
                                 background-size="cover" mode='aspectFill' lazy-load>

                            <div class='buyShowMoreBody'>
                                <div class='buyPeopleColumn'>查看更多</div>
                                <div class='backlineSmall'></div>
                                <div class='buyPeopleColumn'>MORE ></div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <#list resultBody.boxGoodBodyList as boxGoodBodyList>
            <div class='backline4'></div>

            <div class="good-grid">
                <div class="h">
                    <span class='tx'>${boxGoodBodyList.symbolName}</span>
                </div>
                <div class="b">
                    <#list boxGoodBodyList.indexGoodList as indexGoodList>
                        <#if indexGoodList_index%2!=0>
                            <div class="item item-b">
                                <a href="${base}/webMobile/good/index/${indexGoodList.goodId}" class="a">
                                    <div style='position:relative;'>
                                        <img class="img"
                                             src="${indexGoodList.listPicUrl}"
                                             alt="${indexGoodList.goodTitle}-${indexGoodList.goodBrief}-优宠熊"
                                             background-size="cover" mode='scaleToFill' lazy-load>

                                        <div class='numberColumn'>精品</div>
                                    </div>
                                    <div class="name">
                                        <div class='goodName'>${indexGoodList.goodTitle}</div>
                                        <div class="goodPrice">￥${indexGoodList.retailPrice}</div>
                                    </div>
                                    <span class="desc">${indexGoodList.goodBrief}</span>
                                </a>
                            </div>
                        <#else >
                            <div class="item ">

                                <a href="${base}/webMobile/good/index/${indexGoodList.goodId}" class="a">
                                    <div style='position:relative;'>
                                        <img class="img"
                                             src="${indexGoodList.listPicUrl}"
                                             alt="${indexGoodList.goodTitle}-${indexGoodList.goodBrief}-优宠熊"
                                             background-size="cover" mode='scaleToFill' lazy-load>

                                        <div class='numberColumn'>精品</div>
                                    </div>
                                    <div class="name">
                                        <div class='goodName'>${indexGoodList.goodTitle}</div>
                                        <div class="goodPrice">￥${indexGoodList.retailPrice}</div>
                                    </div>
                                    <span class="desc">${indexGoodList.goodBrief}</span>
                                </a>
                            </div>
                        </#if>
                    </#list >

                    <div class="item item-b item-more" onclick="openUrl('${base}/webMobile/type/cat?symbolId=${boxGoodBodyList.symbolId}')">
                        <div class="more-a" bindtap='redirectPage' data-symbol="{{item.id}}" id="{{item.id}}">
                            <div class="txt" data-symbol="{{item.id}}" id="{{item.id}}">
                                更多${boxGoodBodyList.symbolName}</div>
                            <img class="icon"
                                 src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/icon_go_more.png"
                                 alt="${boxGoodBodyList.symbolName}-优宠熊" background-size="cover">
                        </div>
                    </div>
                </div>
            </div>
        </#list>


    </div>
</div>

<a href="tel:18822166342">
    <img alt="优宠熊电话联系" class='circle-float'
         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/webhelp/mobilephone.png'/>
</a>

<a href="https://www.sobot.com/chat/h5/index.html?sysNum=d7953744f07b4b4a89ace7d2a41d5e27">
    <img alt="优宠熊网络客服" class='circle-float-kefu'
         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/webhelp/detail_kefu.png'/>
</a>

<@common.footerDiv/>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/jquery.min.js"></script>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/tab.js"></script>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/banner07142243/slider.js"></script>

<script>

    function openUrl(url) {
        window.location.href=url
    }

    var footerActive = $('.aui-footer-item');
    footerActive.removeClass('aui-footer-active');
    footerActive.eq(0).addClass('aui-footer-active');
</script>
</body>

</html>
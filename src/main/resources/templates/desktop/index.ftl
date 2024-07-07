<#import "common/desktopCss.ftl" as css>
<#import "common/desktopJs.ftl" as js>
<#import "common/desktopCommon.ftl" as common>
<!doctype html>
<html lang="zh-cmn-Hans" class="wdj-web-view wdj-web-view-index">
<head>
    <meta charset="utf-8"/>
    <title>优宠熊-布偶猫哪里买-金渐层-银渐层猫-缅因猫多少钱一只-正规宠物购买平台</title>
    <meta name="keywords" content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台">
    <meta name="description"
          content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta property="og:url" content="http://www.youchongxiong.com/">
    <meta property="og:type" content="article">
    <meta property="og:title" content="优宠熊-布偶猫哪里买-金渐层-银渐层猫-缅因猫多少钱一只-正规宠物购买平台">
    <meta property="og:description" content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta property="og:image" content="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico">
    <meta name="renderer" content="webkit">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <@css.commonCss/>
    <@css.indexCss/>
    <@css.endCss/>
<body data-page="index" id="indexPage" class="wdj-web-view wdj-web-view-index log-param-f" param-f="home">
<@common.topDiv />
<@common.rightDiv />
<@common.rightDivFloat />

<!-- ==================== S header ==================== -->
<div class="headerbody">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="4000">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <#--<li data-target="#myCarousel" data-slide-to="0" class="active"></li>-->
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <#--<div class="item">-->
            <#--<img src="https://photo.youchongxiong.com/index-banner-second.png" alt="Third slide">-->
            <#--</div>-->
            <div class="item active">
                <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/webhelp/index-banner-first.jpg"
                     alt="First slide">
            </div>
            <div class="item">
                <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/webhelp/index-banner-third.jpg"
                     alt="Second slide">
            </div>
        </div>

    </div>
</div>
<!-- ==================== E Header ==================== -->


<!-- 菜单导航 -->
<div class="tab-nav">
    <ul>
        <li class="tab-nav-li current" id="explore" onclick="showWhich(1)">发现宠物</li>
<#--        <li class="tab-nav-li" id="awards" onclick="showWhich(2)">总销量排行榜</li>-->
<#--        <li class="tab-nav-li" id="tops" onclick="showWhich(3)">好评排行榜</li>-->
<#--        <li class="block"></li>-->
    </ul>

</div>

<div class="tab-container">
    <div class="explore clearfix log-param-f" param-f="home_explore">
        <ul>
            <#list findArray as findPet>
                <li class="review-card ">
                    <div class="review-content">
                        <a class="review-title" href="${base}/type/${findPet.symbolUrl}">
                            ${findPet.symbolTitle}
                        </a>
                        <p class="review-subtitle">${findPet.symbolName}·${findPet.createTime?string("MM-dd")} </p>
                        <img src="${findPet.imgUrlIndex}" width="435px;" height="245px;">
                        <p class="review-desc">${findPet.symbolDesc}</p>
                    </div>
                    <div class="review-card-header clearfix">
                        <div class="left-price">
                            <div class="price-desc">市场价格</div>
                            <div class="price">
                                <span class="original-price">¥
                                    <i>${findPet.deceivePrice}</i>
                                </span>
                                <span class="promo-price">¥
                                    <em>${findPet.marketPrice}</em>
                                </span>
                            </div>
                            <div class="right-price">
                                <a href="${base}/type/${findPet.symbolUrl}" class="install-btn">了解更多</a>
                            </div>
                        </div>
                    </div>

                </li>
            </#list>
        </ul>
    </div>
    <div class="awards">
        <ul>
            <#list sellArray as sellPetArray>
                <li class="award">
                    <div class="status-avil">
                        <a href="${base}/good/index/${sellPetArray.goodId}" class="link-box hover-avil"
                           target="_blank">
                            <img class="item-pic" data-type="item" data-eid="8cVYeYY" src="${sellPetArray.photoUrl1}">
                            <h4>
                                <span class="desc">
                                    ${sellPetArray.goodTitle}
                                </span>
                            </h4>
                            <h3 class="nowrap" title="${sellPetArray.goodTitle}">
                                <span class="price-point" style="text-align:left;float:left;">
                                    <i class="icon iconfont icon-gift"
                                       style="width:16px;height:16px;margin-right:4px;"></i>
                                    前100名享7折优惠
                                </span>
                                <#if sellPetArray.goodBrief?length gt 9>
                                    ${sellPetArray.goodBrief?substring(0,8)}...
                                <#else>
                                    ${sellPetArray.goodBrief!}
                                </#if>
                            </h3>

                            <div class="item-prices">
                                <div class="item-info">
                                    <div class="price" style="margin-top:2px;margin-left:-1px;">
                                        <i>&yen;</i>
                                        <em class="J_actPrice">
                                            <span class="yen">${sellPetArray.retailPrice}</span>
                                            <#--<span class="cent"-->
                                            <#--style="margin-left:-10px;">.${sellPetArray.newPrice2}</span>-->
                                        </em>
                                    </div>
                                    <div class="dock" style="text-align:left;">
                                        <div class="dock-price">
                                            <del class="orig-price">&yen;${sellPetArray.marketPrice}</del>
                                            <!-- <span class="benefit icon-zyfx">30天赔付</span> -->
                                        </div>
                                        <div class="prompt">
                                            <div class="sold-num">
                                                <em>${sellPetArray.goodNumber}</em>
                                                条已付款
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-link">
                                    抢!
                                </div>
                            </div>
                            <#if sellPetArray_index=0>
                                <div class="biz-mark jmp">
                                    冠军
                                </div>
                            <#elseif sellPetArray_index=1>
                                <div class="biz-mark jmp">
                                    亚军
                                </div>
                            <#elseif sellPetArray_index=2>
                                <div class="biz-mark jmp">
                                    季军
                                </div>
                            </#if>

                        </a>
                    </div>
                </li>
            </#list>
        </ul>

    </div>
    <div class="tops">
        <ul>
            <#list msgList as msgList>
                <li class="review-card ">
                    <div class="review-content">
                        <a class="review-title" href="${base}/static/${msgList.msgUrl}.htm">
                            ${msgList.msgTitle}
                        </a>
                        <p class="review-subtitle">${msgList.createTimeStr} </p>
                        <img alt="${msgList.msgTitle}" src="${msgList.msgImgUrl}" width="435px;" height="245px;"/>
                        <p class="review-desc">${msgList.msgContent}</p>
                    </div>
                    <div class="review-card-header clearfix">
                        <div class="left-price">
                            <div class="right-price">
                                <a href="${base}/static/${msgList.msgUrl}.htm" class="install-btn">阅读文章</a>
                            </div>
                        </div>
                    </div>

                </li>
            </#list>
        </ul>
    </div>
</div>

<@common.footer/>
<script>
    var basePath = '${base}/resources/';
</script>
<@js.commonJs/>
<script>
    $(function () {
        var headerNav = $('.header-nav');
        headerNav.find('li').each(function () {
            $(this).find('a').css('color', '').css('font-weight', '');
        });
        headerNav.find('li').eq(0).find('a').css('color', '#b4a078').css('font-weight', 'bold');
    })

    function showWhich(num) {
        $('.explore').removeClass("clearfix").removeClass("log-param-f").hide()
        $('.awards').removeClass("clearfix").removeClass("log-param-f").hide()
        $('.tops').removeClass("clearfix").removeClass("log-param-f").hide()
        $('#explore').removeClass("current")
        $('#awards').removeClass("current")
        $('#tops').removeClass("current")
        switch (num) {
            case 1:
                $('.explore').addClass("clearfix").addClass("log-param-f")
                $('#explore').addClass("current")
                $('.explore').show()
                break
            case 2:
                $('.awards').addClass("clearfix").addClass("log-param-f")
                $('#awards').addClass("current")
                $('.awards').show()
                break
            case 3:
                $('.tops').addClass("clearfix").addClass("log-param-f")
                $('#tops').addClass("current")
                $('.tops').show()
                break
        }
    }
</script>
</body>

</html>
<#import "common/desktopCss.ftl" as css>
<#import "common/desktopJs.ftl" as js>
<#import "common/desktopCommon.ftl" as common>
<!DOCTYPE html>
<html class="js rgba opacity cssanimations borderradius boxshadow csstransitions csstransforms textshadow">
<head>
    <meta charset="utf-8"/>
    <title>新闻列表-优宠熊正规宠物购买平台</title>
    <meta name="keywords" content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,宠物猫,正规购宠平台,买猫,卖猫,猫市场,宠物猫交易网,优宠熊,宠物平台,天津宠物交易,天津买猫,天津宠物市场,猫,优宠,家庭繁育猫舍">
    <meta name="description"
          content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta property="og:url" content="http://www.youchongxiong.com/">
    <meta property="og:type" content="article">
    <meta property="og:title" content="优宠熊正规宠物购买平台">
    <meta property="og:description" content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta property="og:image" content="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico">
    <meta name="renderer" content="webkit">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <@css.commonCss/>
    <@css.listCss/>
    <@css.endCss/>
    <script>
        $(function () {
            var u = navigator.userAgent, app = navigator.appVersion;
            var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1; //android终端或者uc浏览器
            var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
            if (isAndroid || isiOS) {
                window.location.href = "${base}/webMobile/"
            }
        });
    </script>
<body style="">
<@common.topDiv />
<@common.rightDiv />
<@common.rightDivFloat />
<div class="g-bd-list backgroud-white" id="j-freemarkerRender">
    <div class="g-bd">
        <div class="g-row">
            <div style="margin-bottom: -20px;">
                <div class="m-crumbs " id="j-yx-crumbs" style="display: block;">
                    <a href="/">首页</a>
                    <span style="margin:0 5px 0 5px;">></span>
                    <span class="z-cur">资讯列表</span>
                </div>
            </div>
            <div class="g-main" style="width: 100%;">
                <div id="main">
                    <ul>
                        <#list consultArray as msgList>
                            <li class="msglistli">
                                <#--<a href="${base}/msgList/${msgList.msgUrl}" class="msgImg">-->
                                <a href="${base}/msgList/${msgList.msgUrl}" class="msgImg">
                                    <img class="msgDetailImg" src="${base}/resources/img/loading.jpg"
                                         data-original="${msgList.msgImgUrl}" width="200px" height="135px">
                                </a>
                                <div class="msgContent">
                                    <div class="msgContentBody">
                                        <a href="${base}/msgList/${msgList.msgUrl}">
                                            <p class="msgContentTitle">${msgList.msgTitle}</p>
                                        </a>
                                        <a href="${base}/msgList/${msgList.msgUrl}">
                                            <p class="msgContentInfo">${msgList.msgContent}</p>
                                        </a>
                                    </div>
                                    <div class="msgContentFoot">
                                        <#list msgList.tags as tags>
                                            <a class="msgContentFootTag">${tags}</a>
                                        </#list>
                                    </div>
                                </div>
                            </li>
                        </#list>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<@common.footer/>
<script>
    var basePath = '${base}/resources/';
</script>
<@js.commonJs/>
<script>
    $(function () {
        $('.msgDetailImg').lazyload();
        var headerNav = $('.header-nav');
        headerNav.find('li').each(function () {
            $(this).find('a').css('color', '').css('font-weight', '');
        });
        headerNav.find('li').eq(2).find('a').css('color', '#b4a078').css('font-weight', 'bold');
    })
</script>
</body>

</html>
<#import "common/desktopCss.ftl" as css>
<#import "common/desktopJs.ftl" as js>
<#import "common/desktopCommon.ftl" as common>
<!DOCTYPE html>
<html class="js rgba opacity cssanimations borderradius boxshadow csstransitions csstransforms textshadow">
<head>
    <meta charset="utf-8"/>
    <title>${bean.msgTitle}-优宠熊正规宠物购买平台</title>
    <meta name="keywords" content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,宠物猫,正规购宠平台,买猫,卖猫,猫市场,宠物猫交易网,优宠熊,宠物平台,天津宠物交易,天津买猫,天津宠物市场,猫,优宠,家庭繁育猫舍">
    <meta name="description"
          content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta property="og:url" content="http://www.youchongxiong.com/">
    <meta property="og:type" content="article">
    <meta property="og:title" content="${bean.msgTitle}-优宠熊正规宠物购买平台">
    <meta property="og:description" content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta property="og:image" content="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico">
    <meta name="renderer" content="webkit">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <@css.commonCss/>
    <@css.helpCss/>
    <style id="system" type="text/css">
        .yx-cp-base {
            font-family: "Heiti SC", "Lucida Grande", "Hiragino Sans GB", "Hiragino Sans GB W3", verdana;
        }

        .yx-cp-base input {
            font-family: "Heiti SC", "Lucida Grande", "Hiragino Sans GB", "Hiragino Sans GB W3", verdana;
        }

        .yx-cp-base textarea {
            font-family: "Heiti SC", "Lucida Grande", "Hiragino Sans GB", "Hiragino Sans GB W3", verdana;
        }

        object,
        embed {
            -webkit-animation-duration: .001s;
            -webkit-animation-name: playerInserted;
            -ms-animation-duration: .001s;
            -ms-animation-name: playerInserted;
            -o-animation-duration: .001s;
            -o-animation-name: playerInserted;
            animation-duration: .001s;
            animation-name: playerInserted;
        }

        @-webkit-keyframes playerInserted {
            from {
                opacity: 0.99;
            }
            to {
                opacity: 1;
            }
        }

        @-ms-keyframes playerInserted {
            from {
                opacity: 0.99;
            }
            to {
                opacity: 1;
            }
        }

        @-o-keyframes playerInserted {
            from {
                opacity: 0.99;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes playerInserted {
            from {
                opacity: 0.99;
            }
            to {
                opacity: 1;
            }
        }

        h1, h2, h3, h4, h5, h6, p, blockquote {
            margin: 0;
            padding: 0;
        }

        p {
            margin-bottom: 9px;
        }

        h1, h2, h3, h4, h5, h6 {
            color: #404040;
            line-height: 36px;
        }

        h1 {
            margin-bottom: 18px;
            font-size: 30px;
        }

        h2 {
            font-size: 24px;
        }

        h3 {
            font-size: 18px;
        }

        h4 {
            font-size: 16px;
        }

        h5 {
            font-size: 14px;
        }

        h6 {
            font-size: 13px;
        }

        hr {
            margin: 0 0 19px;
            border: 0;
            border-bottom: 1px solid #ccc;
        }

        blockquote {
            padding: 13px 13px 21px 15px;
            margin-bottom: 18px;
            font-family: georgia, serif;
            font-style: italic;
        }

        blockquote:before {
            content: "C";
            font-size: 40px;
            margin-left: -10px;
            font-family: georgia, serif;
            color: #eee;
        }

        blockquote p {
            font-size: 14px;
            font-weight: 300;
            line-height: 18px;
            margin-bottom: 0;
            font-style: italic;
        }

        code, pre {
            font-family: Monaco, Andale Mono, Courier New, monospace;
        }

        code {
            background-color: #fee9cc;
            color: rgba(0, 0, 0, 0.75);
            padding: 1px 3px;
            font-size: 12px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
        }

        pre {
            display: block;
            padding: 14px;
            margin: 0 0 18px;
            line-height: 16px;
            font-size: 11px;
            border: 1px solid #d9d9d9;
            white-space: pre-wrap;
            word-wrap: break-word;
        }

        pre code {
            background-color: #fff;
            color: #737373;
            font-size: 11px;
            padding: 0;
        }

        object, embed {
            -webkit-animation-duration: .001s;
            -webkit-animation-name: playerInserted;
            -ms-animation-duration: .001s;
            -ms-animation-name: playerInserted;
            -o-animation-duration: .001s;
            -o-animation-name: playerInserted;
            animation-duration: .001s;
            animation-name: playerInserted;
        }

        @-webkit-keyframes playerInserted {
            from {
                opacity: 0.99;
            }
            to {
                opacity: 1;
            }
        }

        @-ms-keyframes playerInserted {
            from {
                opacity: 0.99;
            }
            to {
                opacity: 1;
            }
        }

        @-o-keyframes playerInserted {
            from {
                opacity: 0.99;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes playerInserted {
            from {
                opacity: 0.99;
            }
            to {
                opacity: 1;
            }
        }

        .syl-page-article img.syl-page-img:not(.ignore-img) {
            max-width: 100%;
            display: block;
            margin: 0 auto;
            width: 90%;
        }

        .pgc-img > img {
            max-width: 100%;
            display: block;
            margin: 0 auto;
            width: 90%;
        }

        .syl-page-article.syl-device-pc {
            font-family: PingFang SC, Hiragino Sans GB, Microsoft YaHei, WenQuanYi Micro Hei, Helvetica Neue, Arial, sans-serif;
            line-height: 1.75;
            margin-bottom: 24px;
        }

        .font_m.syl-page-article.syl-device-pc, .syl-page-article.syl-device-pc {
            font-size: 16px;
        }

        .syl-page-article.syl-device-pc, .syl-page-article.syl-device-pc > div {
            color: #222;
            word-wrap: break-word;
        }

        .syl-page-article.syl-device-pc > div > p, .syl-page-article.syl-device-pc > p {
            margin: 16px 0;
        }

    </style>
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
                    <a href="/msgList/index">资讯信息</a>
                    <span style="margin:0 5px 0 5px;">></span>
                    <span class="z-cur">${bean.msgTitle}</span>
                </div>
            </div>
            <div class="g-main" style="width: 100%;padding:20px 5px;margin: 0">
                <div id="main">
                    <div class="m-helpCon" style="width: 100%">
                        ${bean.msgHtml}
                    </div>
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
        var headerNav = $('.header-nav');
        headerNav.find('li').each(function () {
            $(this).find('a').css('color', '').css('font-weight', '');
        });
        headerNav.find('li').eq(3).find('a').css('color', '#b4a078').css('font-weight', 'bold');
    })
</script>
</body>

</html>
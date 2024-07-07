<#import "common/mobileCommon.ftl" as common>
<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>邀请评价</title>
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
    <link rel="stylesheet" href="${base}/resources/appraise/appraise.css">
    <style>

    </style>

</head>

<body ontouchstart>

<section class="aui-flexView">
    <section class="aui-scrollView">
        <div class="aui-flex aui-flex-bg">
            <div class="aui-flex-goods">
                <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/goods-img.png" alt="">
            </div>
            <div class="aui-flex-box">
                <div class="aui-goods-st">商品评分</div>
                <div id="start" class="block clearfix">
                    <div class="star_score"></div>
                    <div class="attitude"></div>
                </div>
            </div>
        </div>
        <div class="aui-Input-box">
            <textarea>不错不错 不错 商品非常好</textarea>
        </div>
        <div class="aui-item-box">
            <div class="aui-layout">
                <a href="javascript:;" class="aui-palace-grid"
                   data-ydui-actionsheet="{target:'#actionSheet',closeElement:'#cancel'}">
                    <div class="aui-palace-grid-icon">
                        <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/camera.png" alt="">
                    </div>
                    <div class="aui-palace-grid-text">
                        <h2>照片/视频</h2>
                    </div>
                </a>
            </div>
            <div class="aui-item-che">
                <label class="cell-item">
                    <label class="cell-right">
                        <input type="radio" value="2" name="checked">
                        <i class="cell-checkbox-icon"></i>
                    </label>
                    <span class="cell-left">匿名评价</span>
                </label>
            </div>
        </div>

    </section>
</section>

<div class="m-actionsheet" id="actionSheet">
    <div class="aui-show-box">

        <div class="aui-show-image">
            <a href="javascript:;" class="aui-action-item b-line" style="color:#f0250f">录视频</a>
            <a href="javascript:;" class="aui-action-item b-line">拍照片</a>
            <a href="javascript:;" class="aui-action-item">我的相册</a>
        </div>
        <a href="javascript:;" id="cancel" class="aui-action-item">取消</a>
    </div>
</div>

<script src="${base}/resources/shopJs/jquery.min.js"></script>
<script src="${base}/resources/shopJs/fastclick.min.js"></script>
<script type="text/javascript" src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/stars.js"></script>
<script type="text/javascript" src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/layer.js"></script>
<script type="text/javascript">
    $(function () {
        FastClick.attach(document.body);
    });
    scoreFun($("#start"), {
        fen_d: 22,

        ScoreGrade: 5 //星星显示数量
    });
    $(".show_number li p").each(function (index, element) {
        var num = $(this).attr("tip");
        var www = num * 2 * 16;
        //
        $(this).css("width", www);
        $(this).parent(".atar_Show").siblings("span").text(num + " ");
    });
</script>
</body>

</html>
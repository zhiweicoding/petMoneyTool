<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>支付成功</title>

    <@css.css/>
    <style>
        .weui-footer {
            margin: 150px 0 10px;
        }
    </style>
</head>
<body ontouchstart>

<div class="weui-msg">
    <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
    <div class="weui-msg__text-area">
        <h2 class="weui-msg__title">支付成功</h2>
        <p class="weui-msg__desc">您已成功支付50元定金，定金会自动膨胀为200元优宠熊购猫现金，可以购猫时使用。需要使用时点击立即使用分享给优宠熊的工作人员，工作人员会为您扫码识别，减免现金。</p>
    </div>
    <div class="weui-msg__opr-area">
        <p class="weui-btn-area">
            <button id="copyBtn" data-clipboard-text="${exId}"
                    class="weui-btn weui-btn_primary">立即使用
            </button>
        </p>
    </div>
    <div class="weui-msg__extra-area">
        <div class="weui-footer">
            <p class="weui-footer__links">
                <a href="http://www.youchongxiong.com" class="weui-footer__link">优宠熊</a>
            </p>
            <p class="weui-footer__text">Copyright © 2021 youchongxiong.com</p>
        </div>


    </div>

</div>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://photo.youchongxiong.com/jquery-weui.min.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.4.0.js"></script>
<script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/activity/expansion/clipboard.min.js"></script>

<script>
    <#--wx.ready(function () {-->
    <#--wx.updateAppMessageShareData({-->
    <#--title: '分享给优宠熊工作人员使用',-->
    <#--desc: '双12提前过，100元变300元',-->
    <#--link: 'http://wwww.youchongxiong/activity/expansion/payFor?exId=${exId}',-->
    <#--imgUrl: 'https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/activity/expansion/youchongixonglogo.png',-->
    <#--success: function () {-->
    <#--// 设置成功-->
    <#--}-->
    <#--})-->
    <#--});-->
    var btns = document.querySelectorAll('button');
    var clipboard = new ClipboardJS(btns);

    clipboard.on('success', function (e) {
        console.log(e);
        $.confirm("优惠码已复制到剪切板，可以直接发送给优宠熊工作人员，核销使用，祝您购猫愉快！", "请发送给工作人员", function () {
        }, function () {
        });
    });
    clipboard.on('error', function (e) {
        $.toast("复制失败", "cancel", function (toast) {
            console.log(toast);
        });
    });

</script>
</body>
</html>

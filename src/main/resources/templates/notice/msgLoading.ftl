<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>申请成功</title>

    <@css.css/>
    <style>
        .weui-footer {
            margin: 150px 0 10px;
        }
    </style>
</head>
<body ontouchstart>

<div class="weui-msg">
    <div class="weui-msg__icon-area"><i class="weui-icon-waiting weui-icon_msg"></i></div>
    <div class="weui-msg__text-area">
        <h2 class="weui-msg__title">申请资料已提交</h2>
        <p class="weui-msg__desc">您的申请资料已通过初审，审核通过后可以使用。本次审核大概需要花费15分钟左右的时间，
            期间您可以在公众号中查看审核结果。
        </p>
        <p class="weui-msg__desc">
            如有问题可以留言咨询公众号客服或拨打<a href="tel:18302284459" class="weui-footer__link">客服热线</a>
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
<@js.js/>
</body>
</html>

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
    <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
    <div class="weui-msg__text-area">
        <h2 class="weui-msg__title">申请成功</h2>
        <p class="weui-msg__desc">恭喜您，已经获得免费购猫权限。请在公众号中咨询客服挑选猫咪或者点击购猫使用小程序挑选猫咪</p>
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

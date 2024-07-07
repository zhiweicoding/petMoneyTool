<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>绑定成功</title>

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
        <h2 class="weui-msg__title">绑定成功</h2>
        <p class="weui-msg__desc">您已经完成绑定操作，如需更改请联系客服  <a href="tel:18722268416" class="weui-footer__link">客服热线</a></p>
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

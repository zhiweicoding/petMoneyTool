<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>上传商品</title>
    <@css.css/>
</head>
<body ontouchstart>

<div class="weui-msg">
    <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
    <div class="weui-msg__text-area">
        <h2 class="weui-msg__title">操作成功</h2>
    </div>
    <div class="weui-msg__opr-area">
        <p class="weui-btn-area">
            <a href="javascript:window.location.replace('${base}/shop/goodPage/index');"
               class="weui-btn weui-btn_primary">返回首页</a>
            <a href="javascript:window.location.replace('${base}/shop/commentPage/page');"
               class="weui-btn weui-btn_default">继续添加</a>
        </p>
    </div>
</div>

<style>
    .weui-footer {
        margin: 250px 0 10px;
    }
</style>

<@js.js/>


</body>
</html>
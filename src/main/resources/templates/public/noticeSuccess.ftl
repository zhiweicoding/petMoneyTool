<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>扫码成功</title>
    <@css.css/>
</head>
<body ontouchstart>

<div class="weui-msg">
    <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
    <div class="weui-msg__text-area">
        <h2 class="weui-msg__title">操作成功</h2>
        <p class="weui-msg__desc">扫码成功，可关闭页面</p>
    </div>
</div>


<style>
    .weui-footer {
        margin: 250px 0 10px;
    }
</style>

<@js.js/>

<script>

</script>

</body>
</html>
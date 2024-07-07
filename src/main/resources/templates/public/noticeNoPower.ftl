<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>没有权限</title>
    <@css.css/>
</head>
<body ontouchstart>

<div class="weui-msg">
    <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
    <div class="weui-msg__text-area">
        <h2 class="weui-msg__title">操作失败</h2>
        <p class="weui-msg__desc">扫码成功，但是您不具备扫码权限，请不要擅自操作。避免财产损失</p>
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
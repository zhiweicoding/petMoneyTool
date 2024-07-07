<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>展示信息</title>
    <@css.css/>
    <style>
        ul {
            padding: 0 10%;
        }

        li {
            font-size: 19px;
            color: #333333;
        }

        h3 {
            color: #333333;
            padding: 0 10%;
        }
    </style>
</head>
<body ontouchstart>
<header class="demos-header">
    <h1 class="demos-title">收货地址</h1>
</header>
<h3>${msg}</h3>
<header class="demos-header">
    <h1 class="demos-title">购买额外服务</h1>
</header>
<ul>
    <li>${msg2}</li>
    <li>${msg3}</li>
    <li>${msg4}</li>
    <li>${msg5}</li>
    <li>${msg6}</li>
    <li>${msg7}</li>
    <li>${msg8}</li>
    <li>${msg9}</li>
</ul>
<div class="weui-btn-area" style="padding:0;left:0;margin:0;width: 100%; position: fixed; bottom: 0%;z-index: 999"
     id="buttonID">
    <button class="weui-btn weui-btn_primary"
            data-clipboard-text="${msg}" id="showTooltips"
            style="border-radius: 0px;background-color: #b4282d;">复制收货地址
    </button>
</div>

<style>
    .weui-footer {
        margin: 250px 0 10px;
    }
</style>

<@js.js/>

<script type="text/javascript">
    var btns = document.querySelectorAll('button');
    var clipboard = new ClipboardJS(btns);

    clipboard.on('success', function (e) {
        console.log(e);
        $.toptip('操作成功', 'success');
    });
    clipboard.on('error', function (e) {
        $.toptip('操作失败', 'error');

    });
</script>

</body>
</html>
<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>发送返现通知</title>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
    <style>
        /*.toolbar-inner .title{*/
        /*font-size: 18px;*/
        /*}*/
    </style>
</head>
<body ontouchstart>

<div class="weui-cells weui-cells_form" style="margin-top: 5px;padding-top: 5px;">
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">微信昵称</label></div>
        <div class="weui-cell__bd">
            <input id="weixinName" class="weui-input" type="text" placeholder="请输入微信昵称">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">本次返现</label></div>
        <div class="weui-cell__bd">
            <input id="moneyThisWay" class="weui-input" type="number" placeholder="请输入本次返现">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">总费用</label></div>
        <div class="weui-cell__bd">
            <input id="moneyAll" class="weui-input" type="number" placeholder="请输入总费用">
        </div>
    </div>

</div>

<div class="weui-btn-area">
    <a class="weui-btn weui-btn_primary" href="javascript:savePic()" id="showTooltips">发送通知</a>
</div>

<@js.js/>
<script>
    var baseResourcesPath = '${base}/resources/'
</script>

<script>

    var showFail = false

    function savePic() {

        var weixinName = $('#weixinName').val();
        var moneyThisWay = $('#moneyThisWay').val();
        var moneyAll = $('#moneyAll').val();
        if (!moneyAll || !weixinName || !moneyThisWay) {
            $.toast("请全部填写所有信息", "forbidden");
            return false;
        }
        $.showLoading();
        var formData = new FormData()

        formData.append('weixinName', weixinName);
        formData.append('moneyThisWay', moneyThisWay);
        formData.append('moneyAll', moneyAll);
        $.ajax({
            url: '${base}/shop/freePage/notice/sendNotice',
            type: 'POST',
            cache: false,
            data: formData,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    var msgBody = res.msgBody
                    if (msgBody == 0) {
                        window.location.reload()
                    } else {
                        $.toast("操作失败", "cancel", function (toast) {
                        });
                    }

                } else if (res.msgCode == 10001) {
                    $.toast("操作失败", "cancel", function (toast) {
                        console.log(toast);
                    });
                } else if (res.msgCode == 10003) {
                    window.location.replace('${base}/shop/loginPage/index?from=2')
                }

            }
        })

    }

</script>

</body>
</html>
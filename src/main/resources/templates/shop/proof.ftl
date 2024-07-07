<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>发送收款凭证</title>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
</head>
<body ontouchstart>
<div class="weui-cells weui-cells_form" style="margin-top: 5px;padding-top: 5px;">

    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">宠物定金</label></div>
        <div class="weui-cell__bd">
            <input id="money" class="weui-input" type="number" placeholder="如：3000">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="name" class="weui-label">宠物品种</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="symbolName" type="text" value="" placeholder="请输入宠物品种">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">手机号码</label></div>
        <div class="weui-cell__bd">
            <input id="phone" class="weui-input" type="number" placeholder="请填写手机号码">
        </div>
    </div>

    <div class="weui-btn-area">
        <a class="weui-btn weui-btn_primary" href="javascript:savePic()" id="showTooltips">确认发送</a>
    </div>


    <@js.js/>

    <script>
        function savePic() {
            var phone = $('#phone').val()
            var money = $('#money').val()
            var symbolName = $('#symbolName').val()
            if (symbolName == '') {
                $.toast("请先输入品种信息", "forbidden");
                return false;
            }
            if (money == '') {
                $.toast("请先输入定金数额", "forbidden");
                return false;
            }
            if (phone == '') {
                $.toast("请先输入手机号码", "forbidden");
                return false;
            }
            $.confirm("您确定发送吗，操作不可逆?", "确定发送", function () {

                $.post('${base}/shop/proofPage/dymProof', {
                    shopId: '${shopId}',
                    phone: phone,
                    symbolName: symbolName,
                    money: money
                }, function (res) {
                    if (res.msgCode == 10000) {
                        $.toast("发送成功", "ok");
                        window.location.replace('${base}/shop/goodPage/index')
                    } else {
                        $.toast("发送失败", "fail");
                    }

                })
            }, function () {
                //取消操作
            });
        }
    </script>
</html>

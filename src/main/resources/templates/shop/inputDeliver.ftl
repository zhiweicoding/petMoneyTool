<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>录入快递单号</title>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
    <style>
        .weui-footer {
            margin: 250px 0 10px;
        }
    </style>
</head>
<body ontouchstart>

<div class="weui-cells weui-cells_form" style="margin-top: 10px;padding-top: 5px;">
    <div class="weui-cell">
        <div class="weui-cell__hd">
            <label class="weui-label">类型</label>
        </div>
        <div class="weui-cell__bd">
            <input id="deliverId" class="weui-input" type="text" value="${type}" disabled>
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd">
            <label class="weui-label">用户名</label>
        </div>
        <div class="weui-cell__bd">
            <input id="deliverId" class="weui-input" type="text" value="${nickName}" disabled>
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <textarea class="weui-textarea" placeholder="${buyAny}" rows="3" disabled></textarea>
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__bd" id="addressStrId" onclick="copyAddress('addressStrId','${remark}')">
            <textarea class="weui-textarea" placeholder="${remark}" rows="3" disabled></textarea>

            <div style="width: 100%;">
                <img src="${base}/resources/shopImg/icon_nav_copy.png"
                     style="width: 15px;height: 15px;"/>
                <span style="color: #666;">点击复制</span>
            </div>
        </div>
    </div>
    <div class="weui-cell ">
        <div class="weui-cell__hd">
            <label class="weui-label">快递号</label>
        </div>
        <div class="weui-cell__bd">
            <#--<input id="deliverId" class="weui-input" type="number" placeholder="请输入快递号">-->
        </div>
    </div>
</div>

<div class="weui-btn-area">
    <a class="weui-btn weui-btn_primary" href="javascript:makeSure()" id="showTooltips">确定</a>
</div>


<@js.js/>
<script>
    var baseResourcesPath = '${base}/resources/'
</script>

<script>

    var anyId = '${anyId}'

    function copyAddress(thisDiv, textStr) {
        var spanDiv = document.getElementById(thisDiv);
        var clipboard = new Clipboard(spanDiv, {
            text: function () {
                return textStr;
            }
        });

        clipboard.on('success', function (e) {
            $.toast("复制成功")
        });

        clipboard.on('error', function (e) {
            $.toast("复制失败")
        });
    }

    function makeSure() {
        var deliverId = $('#deliverId')
        $.post('${base}/shop/deliverOrderPage/save', {
            anyId: anyId,
            deliverId: deliverId
        }, function (res) {
            if (res.msgCode = 10000) {
                $.toast('添加成功')
            } else if (res.msgCode == 10001) {
                $.toast('加载出错')
            }
        })
    }

</script>

</body>
</html>
<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>商家信息</title>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
    <style>
        /*.toolbar-inner .title{*/
        /*font-size: 18px;*/
        /*}*/
    </style>
</head>
<body ontouchstart>


<header class='demos-header'>
    <h1 class="demos-title">商家信息</h1>
</header>

<div class="weui-cells weui-cells_form">
    <input value="${shopBean.shopId}" id="shopId" name="shopId" title="shopId" type="text" hidden/>
    <div class="weui-cell">
        <div class="weui-cell__hd">
            <label class="weui-label">店铺名称</label>
        </div>
        <div class="weui-cell__bd">
            <input id="title" class="weui-input" type="text" placeholder="如：某某宠物乐园" value="${shopBean.shopName}">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">店铺简介</label></div>
        <div class="weui-cell__bd">
            <textarea id="desc" class="weui-textarea" placeholder="如：售卖高端宠物猫"
                      rows="3">${shopBean.shopDesc}</textarea>
        </div>
    </div>

    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">店主信息</label></div>
        <div class="weui-cell__bd">
            <input id="masterName" class="weui-input" type="text" placeholder="如：张三" value="${shopBean.shopMasterName}">
        </div>
    </div>

    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">联系电话</label></div>
        <div class="weui-cell__bd">
            <input id="phone" class="weui-input" type="tel" placeholder="如：187*******16"
                   value="${shopBean.shopPhone}">
        </div>
    </div>

    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="date" class="weui-label">店铺位置</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="end" type="text"
                   value="" placeholder="请选择位置">
        </div>
    </div>

    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">详细地址</label></div>
        <div class="weui-cell__bd">
            <textarea id="location" class="weui-textarea" placeholder="如: xx路xx小区3号底商"
                      rows="3">${shopBean.shopLocation}</textarea>
        </div>
    </div>

</div>

<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <div class="weui-uploader">
                <div class="weui-uploader__hd">
                    <p class="weui-uploader__title">店铺logo</p>
                </div>
                <div class="weui-uploader__bd">
                    <#if shopBean.shopIcon??>
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li class="weui-uploader__file" style="background-image:url('${shopBean.shopIcon}')"></li>
                    </ul>
                </#if>
                <div class="weui-uploader__input-box">
                    <input id="uploaderInput" class="weui-uploader__input" type="file" accept="image/*">
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<div class="weui-btn-area">
    <a class="weui-btn weui-btn_primary" href="javascript:savePic()" id="showTooltips">上传</a>
</div>

<@js.js/>
<script>
    var baseResourcesPath = '${base}/resources/'
</script>

<script>

    var endVar = $("#end");
    var locationId = ''

    endVar.cityPicker({
        title: "选择店铺地址",
        onChange: function (picker, values, displayValues) {
            locationId = values[2]
        }
    });
    endVar.val('${shopBean.provinceName} ${shopBean.cityName} ${shopBean.districtName}')

    function savePic() {

        var title = $('#title').val();
        var desc = $('#desc').val();
        var masterName = $('#masterName').val();
        var phone = $('#phone').val();
        var uploaderInput = $('#uploaderInput').get(0).files[0];
        var location = $('#location').val()
        $.showLoading();
        var formData = new FormData()

        formData.append('shopIconFile', uploaderInput);
        formData.append('shopName', title);
        formData.append('shopDesc', desc);
        formData.append('masterName', masterName);
        formData.append('shopPhone', phone);
        formData.append("shopLocation", location)
        formData.append("shopLocationId", locationId)
        $.ajax({
            url: '${base}/shop/infoPage/modInfo',
            type: 'POST',
            cache: false,
            data: formData,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    $.toast("操作成功", function (toast) {
                        window.location.replace('${base}/shop/goodPage/index')
                    });

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
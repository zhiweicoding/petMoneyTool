<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>填写用户协议</title>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
</head>
<body ontouchstart>
<div class="weui-cells weui-cells_form" style="margin-top: 5px;padding-top: 5px;">
    <div class="weui-cells__title">宠物信息</div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">宠物价格</label></div>
        <div class="weui-cell__bd">
            <input id="money" class="weui-input" type="number" placeholder="如：3000">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">宠物数量</label></div>
        <div class="weui-cell__bd">
            <input id="petNumber" class="weui-input" type="number" placeholder="如：2">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">信息描述</label></div>
        <div class="weui-cell__bd">
            <textarea id="detailMsg" class="weui-textarea"  placeholder="请描述宠物基本信息" rows="5" ></textarea>
        </div>
    </div>

    <div class="weui-cells__title">协议内容</div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="name" class="weui-label">宠物来源</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="shopId" type="text" value="" placeholder="请点击选择">
        </div>
    </div>

    <#--<div class="weui-cell weui-cell_select">-->
        <#--<div class="weui-cell__bd">-->
            <#--<select class="weui-select" id="protectMsg" name="select1">-->
                <#--<option selected="" value="1">保障1天</option>-->
                <#--<option value="3">保障3天</option>-->
                <#--<option value="7">保障7天</option>-->
            <#--</select>-->
        <#--</div>-->
    <#--</div>-->

    <div class="weui-cells__title" style="font-size: 17px;line-height: 1.5;color: #333;">补充信息</div>
    <div class="weui-cells weui-cells_form">
        <div class="weui-cell">
            <div class="weui-cell__bd">
                <textarea id="remarkInfo" class="weui-textarea" placeholder="如无有特殊说明，无需填写" rows="2"></textarea>
            </div>
        </div>
    </div>

    <div class="weui-btn-area">
        <a class="weui-btn weui-btn_primary" href="javascript:savePic()" id="showTooltips">确认并分享</a>
    </div>


<@js.js/>
    <script src="https://photo.youchongxiong.com/moment.min.js"></script>
    <script>
        var baseResourcesPath = '${base}/resources/'

        var shopArray = [];
        var symbolArray = [];
        var symbolId = '';
        var shopId = '';
        $(function () {

            $.post('${base}/shop/protectPage/qShop', {}, function (res) {
                var tempArray = []
                if (res.msgCode == 10000) {
                    shopArray = res.msgBody
                    for (var shopIndex in shopArray) {
                        tempArray.push(shopArray[shopIndex].shopName)
                    }
                }


                $("#shopId").picker({
                    title: "请选择宠物来源",
                    cols: [
                        {
                            textAlign: 'center',
                            values: tempArray
                        }
                    ],
                    onChange: function (p, v, dv) {
                        var activeIndex = p.cols[0].activeIndex
                        shopId = shopArray[activeIndex].shopId
                        // console.log(shopId)
                    },
                    onClose: function (p, v, d) {
                    }
                });
                shopId = shopArray[1].shopId
                $("#shopId").val('家庭繁育猫舍')
                $("#shopId").data().picker.value=['家庭繁育猫舍']
            })


        })

        function savePic() {
            var money = $('#money').val();
            var petNumber = $('#petNumber').val();
            var detailMsg = $('#detailMsg').val();
            var protectMsg = 1
            var remarkInfo = $('#remarkInfo').val()

            if (!money) {
                $.toast("请先填写价格", "forbidden");
                return false;
            }
            if (shopId == '') {
                $.toast("请先选择店铺信息", "forbidden");
                return false;
            }
            if (petNumber == '') {
                $.toast("请先填写宠物数量", "forbidden");
                return false;
            }
            if (detailMsg == '') {
                $.toast("请先填写宠物详细信息", "forbidden");
                return false;
            }
            $.showLoading();
            var formData = new FormData()
            formData.append('money', money)
            formData.append("petNumber", petNumber)
            formData.append("detailMsg", detailMsg)
            formData.append("protectMsg", protectMsg)//2
            formData.append("shopId", shopId)
            formData.append("typeId", 'Tdfd0aaa653484560b884026746f012f3')
            formData.append("remarkInfo", remarkInfo)
            $.ajax({
                url: '${base}/shop/protectPage/addDymWholesale',
                type: 'POST',
                cache: false,
                data: formData,
                processData: false,
                dataType: 'json',
                contentType: false,
                success: function (res) {
                    $.hideLoading();
                    if (res.msgCode == 10000) {
                        window.location.replace('${base}/shop/protectPage/protectShare?protectId=' + res.msgBody)
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

        function convertBase64UrlToBlob(urlData) {

            var bytes = window.atob(urlData.split(',')[1]);        //去掉url的头，并转换为byte

            //处理异常,将ascii码小于0的转换为大于0
            var ab = new ArrayBuffer(bytes.length);
            var ia = new Uint8Array(ab);
            for (var i = 0; i < bytes.length; i++) {
                ia[i] = bytes.charCodeAt(i);
            }

            return new Blob([ab], {type: 'image/png'});
        }

    </script>

</body>
</html>
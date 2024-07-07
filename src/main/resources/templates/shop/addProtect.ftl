<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>生成购猫协议</title>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
    <style>
        .weui-cell__bd {
            -webkit-user-select: text !important;
        }

        .weui-input {
            -webkit-user-select: text !important;
        }
    </style>
</head>
<body ontouchstart>
<div class="weui-cells weui-cells_form" style="margin-top: 5px;padding-top: 5px;">
    <div class="weui-cells__title">宠物信息</div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="name" class="weui-label">宠物品种</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="symbolId" type="text" value="" placeholder="请点击选择">
        </div>
    </div>
    <div class="weui-cell weui-cell_select">
        <div class="weui-cell__bd">
            <select class="weui-select" id="petSex" name="select1">
                <option selected="" value="1">性别 - 公</option>
                <option value="2">性别 - 母</option>
            </select>
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="date" class="weui-label">出生日期</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="birth" type="text" placeholder="点击选择">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">宠物价格</label></div>
        <div class="weui-cell__bd">
            <input id="money" class="weui-input" type="number" placeholder="如：3000">
        </div>
    </div>
    <div class="weui-cells__title">疫苗驱虫</div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="date" class="weui-label">一次疫苗药物</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="firstVD" type="text" placeholder="如：辉瑞妙三多" value="辉瑞妙三多">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="date" class="weui-label">一次疫苗时间</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="firstV" type="text" placeholder="点击选择">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="date" class="weui-label">二次疫苗药物</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="secondVD" type="text" placeholder="如：辉瑞妙三多" value="辉瑞妙三多">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="date" class="weui-label">二次疫苗时间</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="secondV" type="text" placeholder="点击选择">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="date" class="weui-label">三次疫苗药物</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="thirdVD" type="text" placeholder="如：辉瑞妙三多" value="辉瑞妙三多">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="date" class="weui-label">三次疫苗时间</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="thirdV" type="text" placeholder="点击选择">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="date" class="weui-label">驱虫药物</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="quchongD" type="text" placeholder="填写药物名称" value="大宠爱">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="date" class="weui-label">驱虫时间</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="quchong" type="text" placeholder="点击选择">
        </div>
    </div>

    <div class="weui-cells__title">协议内容</div>
    <#--<div class="weui-cell">-->
        <#--<div class="weui-cell__hd"><label for="name" class="weui-label">宠物来源</label></div>-->
        <#--<div class="weui-cell__bd">-->
            <#--<input class="weui-input" id="shopId" type="text" value="${shopName}" placeholder="请点击选择">-->
        <#--</div>-->
    <#--</div>-->

    <div class="weui-cell weui-cell_select">
        <div class="weui-cell__bd">
            <select class="weui-select" id="protectMsg" name="select1">
                <option selected="" value="7">保障7天</option>
                <option value="1">保障1天</option>
                <option value="15">保障15天</option>
                <option value="30">保障30天</option>
                <option value="90">保障90天</option>
            </select>
        </div>
    </div>

    <#--<div class="weui-cell weui-cell_switch">-->
        <#--<div class="weui-cell__bd">参与免费购猫</div>-->
        <#--<div class="weui-cell__ft">-->
            <#--<input id="freeCp"  class="weui-switch" type="checkbox" >-->
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
        var shopId='${shopId}'
        var shopName='${shopName}'

        var shopArray = [];
        var symbolArray = [];
        var symbolId = '';
        $(function () {

            $.post('${base}/shop/protectPage/qSymbol', {
                typeId: 'Tdfd0aaa653484560b884026746f012f3'
            }, function (res) {
                var tempArray = []
                if (res.msgCode == 10000) {
                    symbolArray = res.msgBody
                    for (var symbolIndex in symbolArray) {
                        tempArray.push(symbolArray[symbolIndex].symbolName)
                    }
                }
                $("#symbolId").picker({
                    title: "请选择品种",
                    cols: [
                        {
                            textAlign: 'center',
                            values: tempArray
                        }
                    ],
                    onChange: function (p, v, dv) {
                        var activeIndex = p.cols[0].activeIndex
                        symbolId = symbolArray[activeIndex].symbolId
                        console.log(symbolId)
                    },
                    onClose: function (p, v, d) {
                    }
                });

            })

            <#--$.post('${base}/shop/protectPage/qShop', {}, function (res) {-->
                <#--var tempArray = []-->
                <#--if (res.msgCode == 10000) {-->
                    <#--shopArray = res.msgBody-->
                    <#--for (var shopIndex in shopArray) {-->
                        <#--tempArray.push(shopArray[shopIndex].shopName)-->
                    <#--}-->
                <#--}-->


                <#--$("#shopId").picker({-->
                    <#--title: "请选择宠物来源",-->
                    <#--cols: [-->
                        <#--{-->
                            <#--textAlign: 'center',-->
                            <#--values: tempArray-->
                        <#--}-->
                    <#--],-->
                    <#--onChange: function (p, v, dv) {-->
                        <#--var activeIndex = p.cols[0].activeIndex-->
                        <#--shopId = shopArray[activeIndex].shopId-->
                        <#--// console.log(shopId)-->
                    <#--},-->
                    <#--onClose: function (p, v, d) {-->
                    <#--}-->
                <#--});-->
                <#--shopId = shopArray[1].shopId-->
                <#--$("#shopId").val('家庭繁育猫舍')-->
                <#--$("#shopId").data().picker.value=['家庭繁育猫舍']-->
            <#--})-->

        })

        $('#firstVD').on('input', function () {
            var tempStr = $('#firstVD').val()
            $('#secondVD').val(tempStr)
            $('#thirdVD').val(tempStr)
        })

        $("#birth").calendar({
            onChange: function (p, values, displayValues) {
                console.log(values[0]);
                var currentDateStr = values[0]
                var currentDate = moment(currentDateStr, "YYYY/MM/DD")
                var firstVDIn = $('#firstV')
                var secondVDIn = $('#secondV')
                var thirdVDIn = $('#thirdV')
                var quchong=$('#quchong')
                quchong.val(currentDate.add(56, 'days').format('YYYY/MM/DD'))
                firstVDIn.val(currentDate.add(7, 'days').format('YYYY/MM/DD'))
                secondVDIn.val(currentDate.add(21, 'days').format('YYYY/MM/DD'))
                thirdVDIn.val(currentDate.add(21, 'days').format('YYYY/MM/DD'))
            }
        });

        $("#firstV").calendar({
            onChange: function (p, values, displayValues) {
                console.log(values[0]);
                var currentDateStr = values[0]
                var currentDate = moment(currentDateStr, "YYYY/MM/DD")
                var firstVDIn = $('#firstV')
                var secondVDIn = $('#secondV')
                var thirdVDIn = $('#thirdV')
                var quchong = $('#quchong')
                quchong.val(currentDate.add(-7, 'days').format('YYYY/MM/DD'))
                secondVDIn.val(currentDate.add(27, 'days').format('YYYY/MM/DD'))
                thirdVDIn.val(currentDate.add(21, 'days').format('YYYY/MM/DD'))
            }
        });

        $("#secondV").calendar({
            onChange: function (p, values, displayValues) {
                // console.log(values[0]);
                // var currentDateStr = values[0]
                // var currentDate = moment(currentDateStr, "YYYY/MM/DD")
                // var secondVDIn = $('#secondV')
                // secondVDIn.val(currentDate.format('YYYY-MM-DD'))
            }
        });

        $("#thirdV").calendar({
            onChange: function (p, values, displayValues) {
                // console.log(values[0]);
                // var currentDateStr = values[0]
                // var currentDate = moment(currentDateStr, "YYYY/MM/DD")
                // var thirdVDIn = $('#thirdV')
                // thirdVDIn.val(currentDate.format('YYYY-MM-DD'))
            }
        });

        $("#quchong").calendar({
            onChange: function (p, values, displayValues) {
                // console.log(values[0]);
                // var currentDateStr = values[0]
                // var currentDate = moment(currentDateStr, "YYYY/MM/DD")
                // var quchong = $('#quchong')
                // quchong.val(currentDate.format('YYYY-MM-DD'))
            }
        });

        $("#birth").calendar({
            onChange: function (p, values, displayValues) {
                // console.log(values[0]);
                // var currentDateStr = values[0]
                // var currentDate = moment(currentDateStr, "YYYY/MM/DD")
                // var birth = $('#birth')
                // birth.val(currentDate.format('YYYY-MM-DD'))
            }
        });


        function savePic() {
            var petSex = $('#petSex').val()
            var birth = $('#birth').val()
            var money = $('#money').val();
            var firstVD = $('#firstVD').val()
            var secondVD = $('#secondVD').val()
            var thirdVD = $('#thirdVD').val()
            var firstV = $('#firstV').val()
            var secondV = $('#secondV').val()
            var thirdV = $('#thirdV').val()
            var quchong = $('#quchong').val()
            var quchongD = $('#quchongD').val()
            var protectMsg = $('#protectMsg').val()
            var remarkInfo = $('#remarkInfo').val()
            // var freeCp = $('#freeCp').is(':checked')

            if (!money) {
                $.toast("请先填写价格", "forbidden");
                return false;
            }
            if (!firstVD || !secondVD || !thirdVD || !firstV || !secondV || !thirdV) {
                $.toast("请先填写疫苗信息", "forbidden");
                return false;
            }
            if (!quchong || !quchongD) {
                $.toast("请先填写驱虫信息", "forbidden");
                return false;
            }
            if (!birth) {
                $.toast("请先填写出生日期", "forbidden");
                return false;
            }
            // if (shopId == '') {
            //     $.toast("请先选择店铺信息", "forbidden");
            //     return false;
            // }
            if (symbolId == '') {
                $.toast("请先选择品种信息", "forbidden");
                return false;
            }
            $.showLoading();
            var formData = new FormData()
            formData.append('petSex', petSex)
            formData.append('birth', birth)
            formData.append('money', money)
            formData.append('firstVD', firstVD)
            formData.append("secondVD", secondVD)
            formData.append("thirdVD", thirdVD)
            formData.append("firstV", firstV)
            formData.append("secondV", secondV)
            formData.append("thirdV", thirdV)
            formData.append("quchong", quchong)
            formData.append("quchongD", quchongD)
            formData.append("protectMsg", protectMsg)//2
            formData.append("shopId", '${shopId}')
            formData.append("symbolId", symbolId)
            formData.append("freeCp", false)
            formData.append("typeId", 'Tdfd0aaa653484560b884026746f012f3')
            formData.append("remarkInfo", remarkInfo)
            $.ajax({
                url: '${base}/shop/protectPage/addDym',
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
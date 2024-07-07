<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>上传宠物</title>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
    <style>
        /*.toolbar-inner .title{*/
        /*font-size: 18px;*/
        /*}*/
    </style>
</head>
<body ontouchstart>
<input id="goodId" name="goodId" value="${bean.goodId}" style="display: none;"/>
<div class="weui-cells__title" style="font-weight: bold;font-size: 18px;line-height: 1.5;color: #333;">基本信息</div>
<div class="weui-cells weui-cells_form" style="margin-top: 5px;padding-top: 5px;">
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">宠物标题</label></div>
        <div class="weui-cell__bd">
            <input id="petTitle" class="weui-input" value="${bean.goodTitleOne}" type="text" placeholder="如：美短虎斑">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">宠物年龄</label></div>
        <div class="weui-cell__bd">
            <input id="petAge" class="weui-input" type="text" placeholder="2月大" value="${bean.goodTitleTwo}">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">宠物价格</label></div>
        <div class="weui-cell__bd">
            <input id="money" class="weui-input" type="number" placeholder="如：3000" value="${bean.retailPrice}">
        </div>
    </div>

    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">定金价格</label></div>
        <div class="weui-cell__bd">
            <input id="moneyFront" class="weui-input" type="number" placeholder="如：3000" value="${bean.frontMoney}">
        </div>
    </div>

    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">尾款价格</label></div>
        <div class="weui-cell__bd">
            <input id="moneySecond" class="weui-input" type="number" placeholder="如：3000" value="${bean.secondMoney}">
        </div>
    </div>

    <div class="weui-cell">
        <div class="weui-cell__hd"><label for="name" class="weui-label">宠物品种</label></div>
        <div class="weui-cell__bd">
            <input class="weui-input" id="symbolId" type="text" value="${bean.symbolName}" placeholder="请点击选择">
        </div>
    </div>

</div>

<div class="weui-cells__title" style="font-weight: bold;font-size: 18px;line-height: 1.5;color: #333;">宠物性别</div>
<div class="weui-cells weui-cells_radio weui-flex">
    <label class="weui-cell weui-check__label weui-flex__item" for="x21">
        <div class="weui-cell__bd ">
            <p>弟弟</p>
        </div>
        <div class="weui-cell__ft">
            <#if bean.gender==0>
                <input type="radio" class="weui-check" name="radio2" value="1" id="x21" checked="checked">
            <#else >
                <input type="radio" class="weui-check" name="radio2" value="1" id="x21">
            </#if>
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label weui-flex__item" for="x22">
        <div class="weui-cell__bd">
            <p>妹妹</p>
        </div>
        <div class="weui-cell__ft">
            <#if bean.gender==1>
                <input type="radio" name="radio2" class="weui-check" value="2" id="x22" checked="checked">
            <#else >
                <input type="radio" name="radio2" class="weui-check" value="2" id="x22">
            </#if>
            <span class="weui-icon-checked"></span>
        </div>
    </label>
</div>

<div class="weui-cells__title" style="font-weight: bold;font-size: 18px;line-height: 1.5;color: #333;">支付比例</div>
<div class="weui-cells weui-cells_radio weui-flex">
    <label class="weui-cell weui-check__label weui-flex__item" for="x11">
        <div class="weui-cell__bd">
            <p>3-7</p>
        </div>
        <div class="weui-cell__ft">
            <#if bean.stepNum==1>
                <input type="radio" class="weui-check" value="1" name="radio1" id="x11" checked="checked"
                       onclick="radioCheck(1)">
            <#else >
                <input type="radio" class="weui-check" value="1" name="radio1" id="x11" onclick="radioCheck(1)">
            </#if>
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label weui-flex__item" for="x12">

        <div class="weui-cell__bd">
            <p>4-6</p>
        </div>
        <div class="weui-cell__ft">
            <#if bean.stepNum==2>
                <input type="radio" name="radio1" value="2" class="weui-check" id="x12" checked="checked"
                       onclick="radioCheck(2)">
            <#else >
                <input type="radio" name="radio1" value="2" class="weui-check" id="x12" onclick="radioCheck(2)">
            </#if>
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label weui-flex__item" for="x13">

        <div class="weui-cell__bd">
            <p>5-5</p>
        </div>
        <div class="weui-cell__ft">
            <#if bean.stepNum==3>
                <input type="radio" name="radio1" value="3" class="weui-check" id="x13" checked="checked"
                       onclick="radioCheck(3)">
            <#else >
                <input type="radio" name="radio1" value="3" class="weui-check" id="x13" onclick="radioCheck(3)">
            </#if>
            <span class="weui-icon-checked"></span>
        </div>
    </label>
    <label class="weui-cell weui-check__label weui-flex__item" for="x14">

        <div class="weui-cell__bd">
            <p>全款</p>
        </div>
        <div class="weui-cell__ft">
            <#if bean.stepNum==4>
                <input type="radio" name="radio1" value="4" class="weui-check" id="x14" checked="checked"
                       onclick="radioCheck(4)">
            <#else >
                <input type="radio" name="radio1" value="4" class="weui-check" id="x14" onclick="radioCheck(4)">
            </#if>
            <span class="weui-icon-checked"></span>
        </div>
    </label>
</div>

<div class="weui-cells__title" style="font-weight: bold;font-size: 18px;line-height: 1.5;color: #333;">宠物简介</div>
<div class="weui-cells weui-cells_form">
    <div class="weui-cell">
        <div class="weui-cell__bd">
            <textarea id="petDesc" class="weui-textarea" placeholder="如： 五粉通脖 " rows="2">${bean.goodBrief}</textarea>
        </div>
    </div>
</div>

<div class="weui-cells" style="margin-top: 0px;">
    <a class="weui-cell weui-cell_access" href="javascript:canNotWrite('cannotwritesomeid');">
        <div class="weui-cell__bd">
            <p>添加更多</p>
        </div>
        <div class="weui-cell__ft">可选</div>
    </a>
    <div id="cannotwritesomeid" style="display: none;">
        <div class="weui-cell weui-cell_switch">
            <div class="weui-cell__bd">是否打疫苗</div>
            <div class="weui-cell__ft">
                <label for="yimiaoCP" class="weui-switch-cp">
                    <#if bean.yimiao==1>
                        <input id="yimiaoCP" class="weui-switch-cp__input" type="checkbox" checked="checked"
                               onclick="isyimiaoCheck(this,'yimiaoNumId')">
                    <#else >
                        <input id="yimiaoCP" class="weui-switch-cp__input" type="checkbox"
                               onclick="isyimiaoCheck(this,'yimiaoNumId')">
                    </#if>
                    <div class="weui-switch-cp__box"></div>
                </label>
            </div>
        </div>

        <div class="weui-cell" id="yimiaoNumId">
            <div class="weui-cell__bd">
                <p>接种疫苗次数</p>
            </div>
            <div class="weui-cell__ft">
                <div class="weui-count">
                    <a class="weui-count__btn weui-count__decrease"></a>
                    <input id="yimiaoNumInputId" class="weui-count__number" type="number" value="${bean.yimiaoNum}"/>
                    <a class="weui-count__btn weui-count__increase"></a>
                </div>
            </div>
        </div>

        <div class="weui-cell weui-cell_switch">
            <div class="weui-cell__bd">是否驱虫</div>
            <div class="weui-cell__ft">
                <label for="quchongCP" class="weui-switch-cp">
                    <#if bean.quchong==1>
                        <input id="quchongCP" class="weui-switch-cp__input" type="checkbox" checked="checked">
                    <#else >
                        <input id="quchongCP" class="weui-switch-cp__input" type="checkbox">
                    </#if>

                    <div class="weui-switch-cp__box"></div>
                </label>
            </div>
        </div>

        <div class="weui-cell weui-cell_switch">
            <div class="weui-cell__bd">是否协议质保</div>
            <div class="weui-cell__ft">
                <label for="zhibaoCP" class="weui-switch-cp">
                    <#if bean.xieyi==1>
                        <input id="zhibaoCP" class="weui-switch-cp__input" type="checkbox" checked="checked">
                    <#else >
                        <input id="zhibaoCP" class="weui-switch-cp__input" type="checkbox">
                    </#if>

                    <div class="weui-switch-cp__box"></div>
                </label>
            </div>
        </div>

        <div class="weui-cell weui-cell_switch">
            <div class="weui-cell__bd">是否每日上新列表</div>
            <div class="weui-cell__ft">
                <label for="isNewCP" class="weui-switch-cp">
                    <#if bean.xieyi==1>
                        <input id="isNewCP" class="weui-switch-cp__input" type="checkbox" checked="checked">
                    <#else >
                        <input id="isNewCP" class="weui-switch-cp__input" type="checkbox">
                    </#if>

                    <div class="weui-switch-cp__box"></div>
                </label>
            </div>
        </div>

    </div>

</div>

<div class="weui-btn-area">
    <a class="weui-btn weui-btn_primary" href="javascript:savePic()" id="showTooltips">上传</a>
</div>

<div id="secondCanvas" class="bac" style="display: none;">
    <section id="capture">
        <div class="car-capture">
            <canvas id="captureCanvas22" class="car-img car-canvas"></canvas>
            <div class="car-mask-small"></div>
        </div>
    </section>
    <footer class="ui-tc">
        <h4 class="color-grey2 ui-mb40 ui-mt40">请根据提示框选取合适位置，然后点击确定</h4>
        <button id="btnCaptureSecond" class="weui-btn weui-btn_default">确定
        </button>
    </footer>
</div>

<@js.js/>
<script src="https://unpkg.com/qiniu-js@2.5.1/dist/qiniu.min.js"></script>


<script>

    var upFileUrl = '';
    $(function () {

        $.post('${base}/shop/goodPage/querySymbol', {
            typeId: 'Tdfd0aaa653484560b884026746f012f3'
        }, function (res) {
            var values = []
            if (res.msgCode == 10000) {
                values = res.msgBody
            }
            $("#symbolId").picker({
                title: "请选择品种",
                cols: [
                    {
                        textAlign: 'center',
                        values: values
                    }
                ],
                onChange: function (p, v, dv) {
                },
                onClose: function (p, v, d) {
                }
            });

        })

    })

    function radioCheck(num) {
        var money = $('#money').val()
        switch (num) {
            case 1:
                $('#moneyFront').val(money * 0.3)
                $('#moneySecond').val(money * 0.7)
                break;
            case 2:
                $('#moneyFront').val(money * 0.4)
                $('#moneySecond').val(money * 0.6)
                break;
            case 3:
                $('#moneyFront').val(money * 0.5)
                $('#moneySecond').val(money * 0.5)
                break;
            case 4:
                $('#moneyFront').val(money)
                $('#moneySecond').val(0)
                break;
        }
    }

    function turnChangeFree(thisD, idStr) {
        if ($(thisD).is(":checked")) {
            $('#' + idStr).prop("checked", false)
        } else {
            $('#' + idStr).prop("checked", true)
        }

    }

    function turnChangeHalf(thisD, idStr) {
        if ($(thisD).is(":checked")) {
            $('#' + idStr).prop("checked", false)
        } else {
            $('#' + idStr).prop("checked", true)
        }

    }

    function savePic() {

        var payScale = $("input[name='radio1']:checked").val();
        var gender = $("input[name='radio2']:checked").val();
        var yimiaoCP = $('#yimiaoCP').is(':checked')
        var quchongCP = $('#quchongCP').is(':checked')
        var zhibaoCP = $('#zhibaoCP').is(':checked')
        var isNewCP = $('#isNewCP').is(':checked')
        var petTitle = $('#petTitle').val();
        var goodId = $('#goodId').val();
        var yimiaoNumId = $('#yimiaoNumInputId').val();
        var petDesc = $('#petDesc').val();
        var symbolId = $('#symbolId').val();
        var money = $('#money').val();
        var moneyFront = $('#moneyFront').val();
        var moneySecond = $('#moneySecond').val();
        var petAge = $('#petAge').val();
        if (!petDesc) {
            $.toast("请先填写介绍", "forbidden");
            return false;
        }
        if (!symbolId) {
            $.toast("请先选择品种", "forbidden");
            return false;
        }
        if (!money) {
            $.toast("请先填写价格", "forbidden");
            return false;
        }
        if (parseFloat(money) == 0) {
            $.toast("价格不能为0", "forbidden");
            return false;
        }
        if (parseFloat(money) !== (parseFloat(moneyFront) + parseFloat(moneySecond))) {
            $.toast("定金尾款相加不等于总价", "forbidden");
            return false;
        }
        var formData = new FormData()

        if (petTitle == '') {
            formData.append('petTitle', symbolId + '~' + petAge);
        } else {
            formData.append('petTitle', petTitle + '~' + petAge);
        }
        formData.append('petDesc', petDesc);
        formData.append("money", money)
        formData.append("symbolId", symbolId)
        formData.append("switchCP", false)
        formData.append("payScale", payScale == 4 ? '1' : '0')
        formData.append("moneyFront", moneyFront)
        formData.append("moneySecond", moneySecond)
        formData.append("gender", gender)

        formData.append("quchong", quchongCP)
        formData.append("yimiao", yimiaoCP)
        formData.append("zhibaoxieyi", zhibaoCP)
        formData.append("halfPrice", false)
        formData.append("freeCp", false)
        formData.append("isNew", isNewCP)
        formData.append("yimiaoNum", yimiaoNumId)
        formData.append("goodId", goodId)

        if (parseFloat(money) < 1000) {
            $.confirm("价格小于1000，请确定价格没有问题!", "确认上传", function () {
                $.showLoading();
                $.ajax({
                    url: '${base}/shop/goodTempPage/modDym',
                    type: 'POST',
                    cache: false,
                    data: formData,
                    processData: false,
                    dataType: 'json',
                    contentType: false,
                    success: function (res) {
                        $.hideLoading();
                        if (res.msgCode == 10000) {
                            $.alert("修改成功，点击确定返回宠物列表", "温馨提示", function () {
                                window.location.replace('${base}/shop/goodListPage/init')
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
            }, function () {
                //取消操作
            });
        } else {
            $.showLoading();
            $.ajax({
                url: '${base}/shop/goodTempPage/modDym',
                type: 'POST',
                cache: false,
                data: formData,
                processData: false,
                dataType: 'json',
                contentType: false,
                success: function (res) {
                    $.hideLoading();
                    if (res.msgCode == 10000) {
                        $.alert("修改成功，点击确定返回宠物列表", "温馨提示", function () {
                            window.location.replace('${base}/shop/goodListPage/init')
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

    function genBase64(file, call) {
        var reader = new FileReader();  //本地预览
        reader.onload = function () {
            call(reader.result)
        }
        reader.readAsDataURL(file);    //Base64
    }

    function canNotWrite(res) {
        $('#' + res).toggle()
    }

    function isyimiaoCheck(self, res) {
        var isCheck = $(self).is(':checked')
        if (isCheck) {
            $('#' + res).show()
        } else {
            $('#' + res).hide()
        }
    }

    var MAX = 10, MIN = 0;
    $('.weui-count__decrease').click(function (e) {
        var $input = $(e.currentTarget).parent().find('.weui-count__number');
        var number = parseInt($input.val() || "0") - 1
        if (number < MIN) number = MIN;
        $input.val(number)
    })
    $('.weui-count__increase').click(function (e) {
        var $input = $(e.currentTarget).parent().find('.weui-count__number');
        var number = parseInt($input.val() || "0") + 1
        if (number > MAX) number = MAX;
        $input.val(number)
    })

    $('.delete-swipeout').click(function () {
        $(this).parents('.weui-cell').remove()
    })
    $('.close-swipeout').click(function () {
        $(this).parents('.weui-cell').swipeout('close')
    })

</script>

</body>
</html>
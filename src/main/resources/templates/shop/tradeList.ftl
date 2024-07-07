<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>宠物列表</title>
    <@css.css/>
</head>
<body ontouchstart>
<div class="page__pd">
    <div class="weui-search-bar" id="searchBar">
        <form class="weui-search-bar__form" action="${base}/shop/tradePage/list">
            <div class="weui-search-bar__box">
                <i class="weui-icon-search"></i>
                <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索" required=""
                       name="anyText">
                <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
            </div>
            <label class="weui-search-bar__label" id="searchText"
                   style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);">
                <i class="weui-icon-search"></i>
                <span>搜索</span>
            </label>
        </form>
        <a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">取消</a>
    </div>
    <div class="weui-panel weui-panel_access">
        <div class="weui-panel__bd">
            <#list array as array>
                <a href="javascript:clickDiv('${array.orderId}','${array.orderActualPrice}');" class="weui-media-box weui-media-box_appmsg"
                   id="${array.tradeId}">
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title" style="font-size: 14px;">
                            ${array.userMapperBean.nickName}
                            <span class="weui-media-box__title-after">${array.createTimeStr}</span>
                        </h4>
                        <p class="weui-media-box__desc">
                            ${array.goodMapperBeans[0].goodTitle}-${array.goodMapperBeans[0].goodBrief}
                        </p>
                        <p class="weui-media-box__desc">
                            ${array.addressUserName}-${array.addressMobile}
                        </p>
                        <p class="weui-media-box__desc">
                            ${array.addressFullRegion}${array.addressName}
                        </p>
                        <p class="weui-media-box__desc" style="word-wrap:break-word;">
                            ${array.extParams}
                        </p>
                        <#--CANCEL_ORDER(-1),//取消订单-->
                        <#--NO_ADDRESS(-2),//没有填写地址-->
                        <#--PREPARE_ORDER(0),//预下单-->
                        <#--PAY_ALL(1),//已支付-->
                        <#--SHIP_CAT(2),//已发猫,现在没有使用-->
                        <#--RECEIPT_CAT(3),//已收猫，现在没有使用-->
                        <#--REFUNDING_ORDER(4),//退款申请-->
                        <#--PART_MONEY(5),//付定金-->
                        <#--SIGN_PROTECT(6),//签署协议-->
                        <#--REFUNDED_ORDER(7),//已换猫，现在没有使用-->
                        <#--CASH_PAY(8),//现金付款-->
                        <#--ORDER_STOP(99)//订单关闭-->
                        <p class="weui-media-box__desc">
                            状态:
                            <#if array.orderStatus==0>
                                预下单
                            <#elseif array.orderStatus==1>
                                支付全款
                            <#elseif array.orderStatus==5>
                                付定金
                            <#elseif array.orderStatus==6>
                                签署协议
                            </#if>

                            全款${array.orderActualPrice}元
                        </p>
                    </div>
                </a>
            </#list>
        </div>
    </div>

</div>
<style>
    .weui-panel {
        margin: 0;
    }

    .weui-media-box {
        padding: 8px 15px;
    }

    .weui-panel__bd .weui-media-box__hd {
        width: 50px;
        height: 50px;
        line-height: 50px;
        position: relative;
    }

    .weui-media-box__desc {
        margin-top: 5px;
        -webkit-line-clamp: 10
    }

</style>

<@js.js/>
<script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
<script type="text/javascript">
    var orderIdLocal = '';
    var orderActPriceLocal = "";

    function clickDiv(orderId,actPrice) {
        orderIdLocal = orderId
        orderActPriceLocal = actPrice
        $.actions({
            title: "选择操作",
            onClose: function () {
                console.log("close");
            },
            actions: [
                {
                    text: "取消订单",
                    className: "color-primary",
                    onClick: function () {
                        $.post('${base}/shop/tradePage/modifyStatus', {
                            orderId: orderIdLocal,
                            orderStatus: "-1"
                        }, function (res) {
                            var values = []
                            if (res.msgCode == 10000) {
                                $.toast("修改成功")
                            }
                        })

                    }
                },
                {
                    text: "预下单",
                    className: "color-primary",
                    onClick: function () {
                        $.post('${base}/shop/tradePage/modifyStatus', {
                            orderId: orderIdLocal,
                            orderStatus: "0"
                        }, function (res) {
                            var values = []
                            if (res.msgCode == 10000) {
                                $.toast("修改成功")
                            }
                        })

                    }
                },
                {
                    text: "付定金",
                    className: "color-primary",
                    onClick: function () {
                        $.post('${base}/shop/tradePage/modifyStatus', {
                            orderId: orderIdLocal,
                            orderStatus: "5"
                        }, function (res) {
                            var values = []
                            if (res.msgCode == 10000) {
                                $.toast("修改成功")
                            }
                        })

                    }
                },
                {
                    text: "签署协议",
                    className: "color-primary",
                    onClick: function () {
                        $.post('${base}/shop/tradePage/modifyStatus', {
                            orderId: orderIdLocal,
                            orderStatus: "6"
                        }, function (res) {
                            var values = []
                            if (res.msgCode == 10000) {
                                $.toast("修改成功")
                            }
                        })

                    }
                },
                {
                    text: "支付尾款",
                    className: "color-primary",
                    onClick: function () {
                        $.post('${base}/shop/tradePage/modifyStatus', {
                            orderId: orderIdLocal,
                            orderStatus: "1"
                        }, function (res) {
                            var values = []
                            if (res.msgCode == 10000) {
                                $.toast("修改成功")
                            }
                        })

                    }
                },
                {
                    text: "修改金额",
                    className: "color-primary",
                    onClick: function () {
                        $.prompt({
                            text: "请输入数字，否则保存会导致保存失败",
                            title: "输入新的价格",
                            onOK: function (text) {
                                $.post('${base}/shop/tradePage/modifyPrice', {
                                    orderId: orderIdLocal,
                                    price: text
                                }, function (res) {
                                    var values = []
                                    if (res.msgCode == 10000) {
                                        $.toast("修改成功")
                                    }
                                })
                            },
                            onCancel: function () {
                                console.log("取消了");
                            },
                            input: orderActPriceLocal
                        });


                    }
                },
                {
                    text: "修改运费",
                    className: 'color-primary',
                    onClick: function () {
                        $.prompt({
                            text: "请输入数字，否则保存会导致保存失败",
                            title: "输入新的运费",
                            onOK: function (text) {
                                $.post('${base}/shop/tradePage/modifyTrans', {
                                    orderId: orderIdLocal,
                                    price: text
                                }, function (res) {
                                    var values = []
                                    if (res.msgCode == 10000) {
                                        $.toast("修改成功")
                                    }
                                })
                            },
                            onCancel: function () {
                                console.log("取消了");
                            },
                            input: '0'
                        });

                    }
                }
            ]
        });
    }
</script>

<script>


</script>

</body>
</html>
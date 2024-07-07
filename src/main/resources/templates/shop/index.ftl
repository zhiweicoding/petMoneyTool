<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>商户首页</title>
    <@css.css/>
    <style>
        .demos-second-title {
            font-size: 17px;
            color: #666666;
        }

        .demos-second-title span {
            color: #ef0d19;
            font-size: 20px;
            font-weight: bold;
        }

        .notice-h1 {
            font-size: 18px;
            font-weight: bolder;
            color: #b4a078;
        }

        .notice-h2 {
            font-size: 16px;
            color: #b4a078;
        }

        .notice-span {
            font-size: 20px;
            font-weight: bold;
            color: #b4a078;
            margin-left: 5px;
            margin-right: 5px;
        }
    </style>
</head>
<body ontouchstart>

<#--<header class='demos-header'>-->
<#--    <h1 class="demos-title">优宠熊商家版</h1>-->
<#--    <p class='demos-sub-title'>优宠熊宠物平台</p>-->
<#--</header>-->
<div class="demos-header" style="padding: 30px 0 20px 10px;">
    <div class="notice-h1">亲爱的${shopName}：</div>
    <div class="notice-h2">您的努力已经给中国<span class="notice-span">${count}</span>个家庭</div>
    <div class="notice-h2">带去了快乐与陪伴</div>

</div>
<div class="weui-grids">
    <#--${resultFlag.shopMapperBean.shopName}-->
    <#--${resultFlag.resultCode}-->
    <a href="${base}/shop/protectListPage/init" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_protect_list.png" alt="">
        </div>
        <p class="weui-grid__label">
            我生成的协议
        </p>
    </a>
    <a href="${base}/shop/sellPage/sort" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_data.png" alt="">
        </div>
        <p class="weui-grid__label">
            销售排行榜
        </p>
    </a>
    <a href="${base}/shop/sellPage/index" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_chart2.png" alt="">
        </div>
        <p class="weui-grid__label">
            销售总结
        </p>
    </a>

    <a href="javascript:uploadProtectOption();" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_protect.png" alt="">
        </div>
        <p class="weui-grid__label">
            生成协议
        </p>
    </a>
    <a href="javascript:uploadOption()" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_uploadGood.png" alt="">
        </div>
        <p class="weui-grid__label">
            上新猫咪
        </p>
    </a>
    <a href="javascript:createCoupon()" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_uploadGood.png" alt="">
        </div>
        <p class="weui-grid__label">
            生成优惠券
        </p>
    </a>
    <a href="${base}/shop/goodListPage/init" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_symbol_id.png" alt="">
        </div>
        <p class="weui-grid__label">
            我上传的猫咪
        </p>
    </a>
    <a href="${base}/shop/orderListPage/mineOrder" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_good_list.png" alt="">
        </div>
        <p class="weui-grid__label">
            我的订单
        </p>
    </a>
    <#--    <a href="${base}/shop/orderListPage/init" class="weui-grid js_grid">-->
    <#--        <div class="weui-grid__icon">-->
    <#--            <img src="${base}/resources/shopImg/icon_nav_good_list.png" alt="">-->
    <#--        </div>-->
    <#--        <p class="weui-grid__label">-->
    <#--            订单列表-->
    <#--        </p>-->
    <#--    </a>-->
    <a href="${base}/breeder/s/index" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_trade.png" alt="">
        </div>
        <p class="weui-grid__label">
            查询养户
        </p>
    </a>
    <a href="${base}/shop/orderLangList/product" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_refresh.png" alt="">
        </div>
        <p class="weui-grid__label">
            用品发货
        </p>
    </a>

    <#--<a href="${base}/shop/protectPage/indexWholesale" class="weui-grid js_grid">-->
    <#--<div class="weui-grid__icon">-->
    <#--<img src="${base}/resources/shopImg/icon_nav_protect_all.png" alt="">-->
    <#--</div>-->
    <#--<p class="weui-grid__label">-->
    <#--生成批发协议-->
    <#--</p>-->
    <#--</a>-->
    <#--<a href="${base}/shop/protectPage/list" class="weui-grid js_grid">-->
    <#--<div class="weui-grid__icon">-->
    <#--<img src="${base}/resources/shopImg/icon_nav_protect_list.png" alt="">-->
    <#--</div>-->
    <#--<p class="weui-grid__label">-->
    <#--我生成的协议-->
    <#--</p>-->
    <#--</a>-->
    <#--    <#if resultFlag.resultCode<2 >-->
    <#--        <a href="${base}/shop/opinion/index" class="weui-grid js_grid">-->
    <#--            <div class="weui-grid__icon">-->
    <#--                <img src="${base}/resources/shopImg/icon_nav_uploadGood.png" alt="">-->
    <#--            </div>-->
    <#--            <p class="weui-grid__label">-->
    <#--                上传评价-->
    <#--            </p>-->
    <#--        </a>-->
    <#--    </#if>-->
    <#--<#if resultFlag.resultCode<2 >-->
    <#--    <a href="javascript:void();" class="weui-grid js_grid">-->
    <#--        <div class="weui-grid__icon" onclick="refreshRedis()">-->
    <#--            <img src="${base}/resources/shopImg/icon_nav_refresh.png" alt="">-->
    <#--        </div>-->
    <#--        <p class="weui-grid__label" onclick="refreshRedis()">-->
    <#--            上新更新-->
    <#--        </p>-->
    <#--    </a>-->
    <#--</#if>-->
    <#--    <a href="${base}/shop/userListPage/init" class="weui-grid js_grid">-->
    <#--        <div class="weui-grid__icon">-->
    <#--            <img src="${base}/resources/shopImg/icon_nav_back_free.png" alt="">-->
    <#--        </div>-->
    <#--        <p class="weui-grid__label">-->
    <#--            免费申请干预-->
    <#--        </p>-->
    <#--    </a>-->
    <a href="${base}/shop/proofPage/index" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_notice_pao.png" alt="">
        </div>
        <p class="weui-grid__label">
            生成收款凭证
        </p>
    </a>
    <div onclick="sharePhoto()" id="mySharePhoto" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_erweima.png" alt="">
        </div>
        <p class="weui-grid__label">
            我的二维码
        </p>
    </div>
    <a href="${base}/shop/userInfoPage/modUser" class="weui-grid js_grid">
        <div class="weui-grid__icon">
            <img src="${base}/resources/shopImg/icon_nav_peizhi.png" alt="">
        </div>
        <p class="weui-grid__label">
            修改密码
        </p>
    </a>
</div>

<div class="weui-btn-area">
    <a class="weui-btn weui-btn_primary" href="${base}/shop/loginPage/out">退出登录</a>
</div>

<div class="weui-footer">
    <p class="weui-footer__links">
        <a href="http://youchongxiong.com" class="weui-footer__link">优宠熊 商家版</a>
    </p>
    <p class="weui-footer__text">Copyright © 2021 youchongxiong.com</p>
</div>

<div id="qrcodeFull" class='weui-popup__container'>
    <div class="weui-popup__overlay"></div>
    <div class="weui-popup__modal">
        <div class="weui-flex">
            <div class="weui-flex__item">
                <div class="placeholder" style="width: 100%;">
                    <div id="qrcode" style="margin:0 auto;width: 250px;padding-top: 50px;padding-bottom: 20px;"></div>
                    <img id="imgOne" style="margin:0 auto;width: 100%; height:auto;padding: 50px 0 20px 0;"/>
                    <p style="width: 100%;text-align: center;margin-bottom: 30px;">请长按图片保存到相册，分享给朋友</p>
                </div>
            </div>
        </div>
        <a href="javascript:void();" class="weui-btn weui-btn_primary close-popup">关闭</a>
    </div>
</div>

<style>
    .weui-footer {
        margin: 200px 0 10px;
    }
</style>

<@js.js/>
<script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
<script>
    function sharePhoto() {
        console.error('click')
        var qrcode = $("#qrcode").qrcode({
            width: 250, //宽度
            height: 250, //高度
            background: "#ffffff",
            foreground: "#000000",
            text: "https://www.youchongxiong.com/wxMobile/code/actPage/${Session.shop_session_key.unionId}^6",
        }).hide();

        var canvas = qrcode.find('canvas').get(0);
        $('#imgOne').attr('src', canvas.toDataURL('image/jpg'));
        $('#qrcodeFull').addClass("weui-popup__container--visible");
        $('#qrcodeFull').show()
        $("#qrcodeFull").css('display', 'block');
    }

    function refreshRedis() {
        $.showLoading();
        $.post('${base}/shop/goodPage/refreshRedis', {}, function (res) {
            if (res.msgCode == 10000) {
                $.hideLoading();
                $.toast("操作成功", "success", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10001) {
                $.hideLoading();
                $.toast("操作失败", "cancel", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10003) {
                $.hideLoading();
                $.toast("无权限操作", "cancel", function (toast) {
                    console.log(toast);
                });
            }
        })
    }

    function freeBack() {
        $.showLoading();
        $.post('${base}/shop/goodPage/refreshGood', {}, function (res) {
            $.hideLoading();
            console.log('upload good')
            if (res.msgCode == 10000) {
                $.toast("操作成功", "success", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10001) {
                $.toast("操作失败", "cancel", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10003) {
                $.toast("无权限操作", "cancel", function (toast) {
                    console.log(toast);
                });
            }
        })

    }

    function uploadProtectOption() {
        $.actions({
            title: "选择协议类型",
            onClose: function () {
                console.log("close");
            },
            actions: [
                {
                    text: "购猫协议",
                    className: "color-error",
                    onClick: function () {
                        window.location.href = '${base}/shop/protectPage/index'
                    }
                },
                {
                    text: "领猫确认协议",
                    onClick: function () {
                        window.location.href = '${base}/shop/protectPage/indexLing'
                    }
                },
                {
                    text: "无偿领猫协议",
                    className: "color-warning",
                    onClick: function () {
                        window.location.href = '${base}/shop/protectPage/indexLwm'
                    }
                },
                {
                    text: "小偿领猫协议",
                    className: "color-primary",
                    onClick: function () {
                        window.location.href = '${base}/shop/protectPage/indexLgm'
                    }
                }
            ]
        });

    }

    function uploadOption() {
        $.actions({
            title: "选择上传类型",
            onClose: function () {
                console.log("close");
            },
            actions: [
                {
                    text: "上传猫咪（视频）",
                    className: "color-primary",
                    onClick: function () {
                        window.location.href = '${base}/shop/goodTempPage/add'
                    }
                },
                {
                    text: "上传猫咪（编码）",
                    onClick: function () {
                        $.prompt({
                            text: "输入需要复制的猫咪的编码",
                            title: "输入编码",
                            onOK: function (text) {
                                $.showLoading();
                                $.post('${base}/shop/goodTempPage/addDymBySecret', {
                                    secret: text
                                }, function (res) {
                                    $.hideLoading();
                                    console.log('upload good')
                                    if (res.msgCode == 10000) {
                                        var msgBody = res.msgBody
                                        if (msgBody == 'noexist') {
                                            $.toast("编码无效", "cancel", function (toast) {
                                                console.log(toast);
                                            });
                                        } else {
                                            window.location.replace('${base}/shop/msgPage/index?goodId=' + msgBody + '&turnPage=3')
                                        }
                                    } else if (res.msgCode == 10001) {
                                        $.toast("操作失败", "cancel", function (toast) {
                                            console.log(toast);
                                        });
                                    } else if (res.msgCode == 10003) {
                                        $.toast("无权限操作", "cancel", function (toast) {
                                            console.log(toast);
                                        });
                                    }
                                })
                            },
                            onCancel: function () {
                                console.log("取消了");
                            },
                            input: ''
                        });
                    }
                },
                {
                    text: "上传猫咪（图片）",
                    onClick: function () {
                        window.location.href = '${base}/shop/goodTempPage/addPhoto'
                    }
                }
            ]
        });

    }


    function createCoupon() {
        $.actions({
            title: "选择创建优惠券类型",
            onClose: function () {
                console.log("close");
            },
            actions: [
                {
                    text: "满减券(1000-100)",
                    className: "color-primary",
                    onClick: function () {
                        $.showLoading();
                        $.post('${base}/shop/couponPage/createCoupon', {}, function (res) {
                            $.hideLoading();
                            if (res.msgCode == 10000) {
                                var msgBody = res.msgBody
                                var bean = msgBody.bean
                                var couponCode = bean.couponCode
                                $.toptip('创建成功', 'success');
                                $.modal({
                                    title: "优惠券兑换码",
                                    text: "<div id='couponCodeId'>" + couponCode + "</div>",
                                    buttons: [
                                        {
                                            text: "复制给顾客", onClick: function () {
                                                copyText(couponCode)
                                            }
                                        },
                                        {text: "取消", className: "default"},
                                    ]
                                });
                            } else if (res.msgCode == 10001) {
                                $.toast("创建失败", "cancel", function (toast) {
                                    console.log(toast);
                                });
                            } else if (res.msgCode == 10003) {
                                $.toast("无权限操作", "cancel", function (toast) {
                                    console.log(toast);
                                });
                            }
                        })
                    }
                }
            ]
        });

    }

    /**复制文本 */
    function copyText(node) {
        if (!node) {
            return;
        }
        var result;
        // 将复制内容添加到临时textarea元素中
        var tempTextarea = document.createElement('textarea');
        document.body.appendChild(tempTextarea);
        if (typeof (node) == 'object') {
            // 复制节点中内容
            // 是否表单
            if (node.value) {
                tempTextarea.value = node.value;
            } else {
                tempTextarea.value = node.innerHTML;
            }
        } else {
            // 直接复制文本
            tempTextarea.value = node;
        }
        // 判断设备
        var u = navigator.userAgent;
        if (u.match(/(iPhone|iPod|iPad);?/i)) {
            // iOS
            // 移除已选择的元素
            window.getSelection().removeAllRanges();
            // 创建一个Range对象
            var range = document.createRange();
            // 选中
            range.selectNode(tempTextarea);
            // 执行选中元素
            window.getSelection().addRange(range);
            // 复制
            result = document.execCommand('copy');
            // 移除选中元素
            window.getSelection().removeAllRanges();

        } else {
            // 选中
            tempTextarea.select();
            // 复制
            result = document.execCommand('Copy');
        }
        // 移除临时文本域
        document.body.removeChild(tempTextarea);
        if (result) {
            $.toast("复制成功", "success", function (toast) {
                console.log(toast);
            });
        } else {
            $.toast("复制", "cancel", function (toast) {
                console.log(toast);
            });
        }

        return result;
    }
</script>

</body>
</html>
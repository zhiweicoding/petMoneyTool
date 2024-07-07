$(function () {
    $("img").on("click", function () {
        return false;
    });

    //动态添加大转盘的奖品与奖品区域背景颜色
    var luckArray2 = []
    var luckArrayStr2 = luckArrayStr2FromBack
    var arr2 = luckArrayStr2.split(',');
    for (var index2 in arr2) {
        luckArray2.push(arr2[index2])
    }
    var lastOne2 = arr2[arr2.length - 1]
    turnplate2.restaraunts = luckArray2;
    turnplate2.colors = ["#FBDB00", "#FACA00", "#FBDB00", "#FACA00", "#FBDB00", "#FACA00", "#FBDB00", "#FACA00", "#FFEB64"];

    var rotateTimeOut = function () {
        $('#wheelcanvas2').rotate({
            angle: 0,
            animateTo: 2160,
            duration: 20000,
            callback: function () {
                alert('网络超时，请检查您的网络设置！');
            }
        });
    };


    //旋转转盘 item:奖品位置; txt：提示语;
    var rotateFn2 = function (item, txt, data) {
        var angles2 = item * (360 / turnplate2.restaraunts.length) - (360 / (turnplate2.restaraunts.length * 2));
        if (angles2 < 270) {
            angles2 = 270 - angles2;
        } else {
            angles2 = 360 - angles2 + 270;
        }
        $('#wheelcanvas2').stopRotate();
        $('#wheelcanvas2').rotate({
            angle: 0,
            animateTo: angles2 + 1800,
            duration: 20000,
            callback: function () {
                $.showLoading();
                var formData = new FormData()

                formData.append('msg', lastOne2);
                formData.append('couponCardType', 4);
                formData.append('configId', "125");
                formData.append('goodType', "4");
                $.ajax({
                    url: baseUrl + '/wxPublic/luck/save',
                    type: 'POST',
                    cache: false,
                    data: formData,
                    processData: false,
                    dataType: 'json',
                    contentType: false,
                    success: function (res) {
                        $.hideLoading();
                        if (res.msgCode == 10000) {
                            msgBody = res.msgBody
                            var dialogBean = msgBody.dialogBean
                            showLuckDialog(dialogBean.money, dialogBean.title, dialogBean.detail, dialogBean.buttonName, dialogBean.functionName)
                            if (dialogBean.needSave) {
                                save2();
                            }
                        } else if (res.msgCode == 10001) {

                            $.toast("领取失败", "cancel", function (toast) {
                                console.log(toast);
                            });
                        } else if (res.msgCode == 10003) {
                            window.location.reload()
                        }

                    }
                })
                turnplate2.bRotate = !turnplate2.bRotate;
            }
        });
    };

    /********弹窗页面控制**********/

    $('#close_zj').click(function () {
        window.location.reload();
        $('#zj-main').fadeOut();
        $('#tx-main').fadeIn();//提醒框显示
        //判断用户是否确认放弃
        $(".do").click(function () {//点确认就默认放弃
            $('#tx-main').fadeOut();
            theEnd2();
            save2();
        });
        $(".not_do").click(function () {//点取消就回到提交页面
            $('#tx-main').fadeOut();
            $('#zj-main').fadeIn();
        });

        $('#ml-main').fadeIn();

    });

    /********抽奖开始**********/
    $('#tupBtn2').click(function () {
        var formData2 = new FormData()
        formData2.append('userId', userIdFromBack);
        $.showLoading();
        $.ajax({
            url: baseUrl+'/wxPublic/luck/isGoodVipLuck',
            type: 'POST',
            cache: false,
            data: formData2,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                var inMsgBody = res.msgBody
                var goodVipLife = inMsgBody.goodVipLife
                var dialogBean = inMsgBody.dialogBean
                if (res.msgCode == 10000) {
                    if (goodVipLife == 0) {
                        if (lastOne2.bRotate) return;
                        lastOne2.bRotate = !turnplate2.bRotate;
                        var item2 = luckArrayStr2FromBack.length;
                        var data2 = {"msg": lastOne2};
                        rotateFn2(item2, turnplate2.restaraunts[item2 - 1], data2);
                    } else if (goodVipLife == -1) {
                        showLuckToast("您没有购买，无法使用VIP抽奖特权", '确定', 'loadingHidden()')
                    } else {
                        showLuckToast("您已经抽取了幸运转盘，您可以点击查看优惠，来使用优惠券。", '查看优惠券', 'goThisUrl()')
                    }

                } else if (res.msgCode == 10001) {
                    $.toast("获取失败", "cancel", function (toast) {
                        console.log(toast);
                    });
                } else if (res.msgCode == 10003) {
                    window.location.reload()
                }

            }
        })
    })


});

function openActivity() {
    $('#activity_detail').show();
}

function closeActivity() {
    $('#activity_detail').hide();
}

function closeCoupon() {
    var formData2 = new FormData()
    var luckId = msgBody.luckId
    formData2.append('luckId', luckId);
    $.showLoading();
    $.ajax({
        url: baseUrl + '/wxPublic/luck/sendNotice',
        type: 'POST',
        cache: false,
        data: formData2,
        processData: false,
        dataType: 'json',
        contentType: false,
        success: function (res) {
            $.hideLoading();
            if (res.msgCode == 10000) {
                window.location.replace(baseUrl + "/wxPublic/coupon/index/" + userIdFromBack)
            } else if (res.msgCode == 10001) {
                $.toast("领取失败", "cancel", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10003) {
                window.location.reload()
            }

        }
    })
}

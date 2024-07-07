$(function () {
    $("img").on("click", function () {
        return false;
    });

    setTimeout(start, stoptime);

    //动态添加大转盘的奖品与奖品区域背景颜色
    var luckArray = []
    var luckArrayStr = luckArrayStrFromBack
    var arr = luckArrayStr.split(',');
    for (var index in arr) {
        luckArray.push(arr[index])
    }
    var lastOne = arr[arr.length - 1]
    turnplate.restaraunts = luckArray;
    turnplate.colors = ["#FBDB00", "#FACA00", "#FBDB00", "#FACA00", "#FBDB00", "#FACA00", "#FBDB00", "#FACA00", "#FFEB64"];

    var rotateTimeOut = function () {
        $('#wheelcanvas').rotate({
            angle: 0,
            animateTo: 2160,
            duration: 20000,
            callback: function () {
                alert('网络超时，请检查您的网络设置！');
            }
        });
    };


    //旋转转盘 item:奖品位置; txt：提示语;
    var rotateFn = function (item, txt, data) {
        var angles = item * (360 / turnplate.restaraunts.length) - (360 / (turnplate.restaraunts.length * 2));
        if (angles < 270) {
            angles = 270 - angles;
        } else {
            angles = 360 - angles + 270;
        }
        $('#wheelcanvas').stopRotate();
        $('#wheelcanvas').rotate({
            angle: 0,
            animateTo: angles + 1800,
            duration: 20000,
            callback: function () {
                $.showLoading();
                var formData = new FormData()

                formData.append('msg', lastOne);
                formData.append('couponCardType', 2);
                formData.append('configId', "124");
                formData.append('goodType', "2");
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
                                save();
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
                turnplate.bRotate = !turnplate.bRotate;
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
            theEnd();
            save();
        });
        $(".not_do").click(function () {//点取消就回到提交页面
            $('#tx-main').fadeOut();
            $('#zj-main').fadeIn();
        });

        $('#ml-main').fadeIn();

    });

    /********抽奖开始**********/
    $('#tupBtn').click(function () {
        var formData2 = new FormData()
        formData2.append('userId', userIdFromBack);
        $.showLoading();
        $.ajax({
            url: baseUrl + '/wxPublic/luck/isGoodLuck',
            type: 'POST',
            cache: false,
            data: formData2,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                var inMsgBody = res.msgBody
                var goodLife = inMsgBody.goodLife
                var dialogBean = inMsgBody.dialogBean
                if (res.msgCode == 10000) {
                    if (goodLife == 0) {
                        if (turnplate.bRotate) return;
                        turnplate.bRotate = !turnplate.bRotate;
                        var item = luckArrayStrFromBack.length;
                        var data = {"msg": lastOne};
                        rotateFn(item, turnplate.restaraunts[item - 1], data);
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


    if (isPlay != '0') {
        $('#activity_detail').show();
    }
});

function goUrl() {
    window.location.replace(baseUrl + "/wxPublic/coupon/index/" + userIdFromBack)
}

function goThisUrl() {
    window.location.href = baseUrl + "/wxPublic/coupon/index/" + userIdFromBack;
}

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


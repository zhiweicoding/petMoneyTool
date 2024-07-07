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
        <form class="weui-search-bar__form" action="${base}/shop/goodPage/list">
            <div class="weui-search-bar__box">
                <i class="weui-icon-search"></i>
                <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索"
                       name="anyText" value="${anyText}">
                <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
            </div>
            <label class="weui-search-bar__label" id="searchText"
                   style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);">
                <i class="weui-icon-search"></i>
                <#if anyText!>
                    <span>搜索</span>
                <#elseif anyText==''>
                    <span>搜索</span>
                <#else >
                    <span>${anyText}</span>
                </#if>
            </label>
        </form>
        <a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">取消</a>
    </div>
    <div class="weui-panel weui-panel_access">
        <div class="weui-panel__bd" id="goodList">
        </div>
    </div>

    <div class="weui-loadmore">
        <i class="weui-loading"></i>
        <span class="weui-loadmore__tips">正在加载</span>
    </div>

<#--weui-popup__container weui-popup__container--visible-->
    <div id="full" class='weui-popup__container '>
        <div class="weui-popup__overlay"></div>
        <div class="weui-popup__modal">
            <video id="showPart" height="90%" src="https://photo.youchongxiong.com/7e9d51d32063470e97858bc8570543c7"
                   controls="controls"></video>
            <a href="javascript:;" class="weui-btn weui-btn_primary close-popup">关闭</a>
        </div>
    </div>

    <div id="qrcodeFull" class='weui-popup__container '>
        <div class="weui-popup__overlay"></div>
        <div class="weui-popup__modal">
            <div class="weui-flex">
                <div class="weui-flex__item">
                    <div class="placeholder">
                        <div id="qrcode"
                             style="margin:0 auto;width: 250px;padding-top: 50px;padding-bottom: 50px;"></div>
                        <img id="imgOne" style="margin:0 auto;width: 250px;padding-top: 50px;padding-bottom: 50px;"/>
                        <p>请长按图片保存到相册，分享给朋友</p>
                    </div>
                </div>
            </div>
            <a href="javascript:;" class="weui-btn weui-btn_primary close-popup">关闭</a>
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
        -webkit-line-clamp: 1;
    }

    .weui-media-box__title {
        margin-top: -4px;
    }
</style>

<@js.js/>
<script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>

<script>

    var loading = false;
    var goodArray = [];
    var templateArray = []
    var arraySize = 0
    var gapNum = 10
    var currentPageNum = 1
    var totalPageNum = 0
    var hasNext = true
    var listType='${listType}'

    $(function () {
        var dymUrl='';
        if(listType==1){
            dymUrl='${base}/shop/goodPage/listDym';
        }else if(listType==2){
            dymUrl='${base}/shop/goodPage/listBargainDym';
        }
        $.post(dymUrl, {
            anyText: '${anyText}',
        }, function (res) {
            loading = false;
            if (res.msgCode == 10000) {
                var msgBody = res.msgBody
                goodArray = msgBody.goodArray
                arraySize = goodArray.length
                var standard1 = arraySize / gapNum
                var standard2 = arraySize % gapNum
                if (standard2 != 0) {
                    totalPageNum = parseInt(standard1 + 1)
                }
                if (arraySize > 10) {
                    templateArray = goodArray.slice((currentPageNum - 1) * gapNum,
                            currentPageNum * gapNum)
                } else {
                    templateArray = goodArray
                    $('.weui-loadmore').hide()
                    hasNext = false
                }
                if (totalPageNum > currentPageNum) {
                    currentPageNum = currentPageNum + 1
                    hasNext = true
                } else {
                    $('.weui-loadmore').hide()
                    hasNext = false
                }

                for (var goodIndex in templateArray) {
                    var goodItem = templateArray[goodIndex]
                    var goodId = goodItem.goodId
                    var videoUrlVertical = goodItem.videoUrlVertical
                    var retailPrice = goodItem.retailPrice
                    var listPicUrl = goodItem.listPicUrl
                    var canTryBuy = goodItem.canTryBuy
                    var halfPrice = goodItem.halfPrice
                    var crateTime = crtTimeFtt(goodItem.createTime)
                    var goodBrief = goodItem.goodBrief
                    var goodTitle = goodItem.goodTitle
                    var spanBadge = ''
                    if (listType == 1) {
                        if (canTryBuy == 0) {
                            spanBadge = '<span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">试养</span>'
                        } else if (canTryBuy == 1) {
                            if (halfPrice == 0) {
                                spanBadge = '<span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">精品</span>'
                            } else {
                                spanBadge = '<span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">半价</span>'
                            }
                        } else if (canTryBuy == 2) {
                            spanBadge = '<span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">领养</span>'
                        }
                    } else {
                        spanBadge = '<span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">砍价</span>'
                    }

                    var hrefBody = ' <a href="javascript:goodAction(\'' + goodId + '\');" class="weui-media-box weui-media-box_appmsg"' +
                            'id="' + goodId + '" data-video-url="' + videoUrlVertical + '"' +
                            'data-price="' + retailPrice + '" >' +
                            '<div class="weui-media-box__hd" style="width: 100px;height: 100px;">' +
                            '<img class="weui-media-box__thumb" src="' + listPicUrl + '" style="height: 100px;width: 100px;" alt="">' +
                            spanBadge +
                            '</div>' +
                            '<div class="weui-media-box__bd" style="height: 100px;">' +
                            '<h4 class="weui-media-box__title">' +
                            goodTitle +
                            '<span class="weui-media-box__title-after">' + crateTime + '</span>' +
                            '</h4>' +
                            '<h4 class="weui-media-box__title" style="font-weight:400;font-size: 15px;">价格：' + retailPrice + '</h4>' +
                            '<p class="weui-media-box__desc" style="-webkit-line-clamp:5">' + goodBrief + '</p>' +
                            '</div>' +
                            '</a>'
                    $("#goodList").append(hrefBody);
                }


            } else if (res.msgCode == 10003) {

                if(listType==1){
                    window.location.replace("${base}/shop/loginPage/index/goodPage&&list")
                }else if(listType==2){
                    window.location.replace("${base}/shop/loginPage/index/goodPage&&listBargain")
                }
            }
        })
    })

    $(document.body).infinite().on("infinite", function () {
        if (loading) return;
        if (!hasNext) {
            $('.weui-loadmore').hide()
            return;
        }
        loading = true;
        templateArray = goodArray.slice((currentPageNum - 1) * gapNum,
                currentPageNum * gapNum)
        if (totalPageNum > currentPageNum) {
            currentPageNum = currentPageNum + 1
            hasNext = true
        } else {
            hasNext = false
        }

        for (var goodIndex in templateArray) {
            var goodItem = templateArray[goodIndex]
            var goodId = goodItem.goodId
            var videoUrlVertical = goodItem.videoUrlVertical
            var retailPrice = goodItem.retailPrice
            var listPicUrl = goodItem.listPicUrl
            var canTryBuy = goodItem.canTryBuy
            var halfPrice = goodItem.halfPrice
            var crateTime = crtTimeFtt(goodItem.createTime)
            var goodBrief = goodItem.goodBrief
            var goodTitle = goodItem.goodTitle
            var spanBadge = ''
            if (listType == 1) {
                if (canTryBuy == 0) {
                    spanBadge = '<span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">试养</span>'
                } else if (canTryBuy == 1) {
                    if (halfPrice == 0) {
                        spanBadge = '<span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">精品</span>'
                    } else {
                        spanBadge = '<span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">半价</span>'
                    }
                } else if (canTryBuy == 2) {
                    spanBadge = '<span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">领养</span>'
                }
            } else {
                spanBadge = '<span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">砍价</span>'
            }

            var hrefBody = ' <a href="javascript:goodAction(\'' + goodId + '\');" class="weui-media-box weui-media-box_appmsg"' +
                    'id="' + goodId + '" data-video-url="' + videoUrlVertical + '"' +
                    'data-price="' + retailPrice + '" >' +
                    '<div class="weui-media-box__hd" style="width: 100px;height: 100px;">' +
                    '<img class="weui-media-box__thumb" src="' + listPicUrl + '" style="height: 100px;width: 100px;" alt="">' +
                    spanBadge +
                    '</div>' +
                    '<div class="weui-media-box__bd" style="height: 100px;">' +
                    '<h4 class="weui-media-box__title">' +
                    goodTitle +
                    '<span class="weui-media-box__title-after">' + crateTime + '</span>' +
                    '</h4>' +
                    '<h4 class="weui-media-box__title" style="font-weight:400;font-size: 15px;">价格：' + retailPrice + '</h4>' +
                    '<p class="weui-media-box__desc" style="-webkit-line-clamp:5">' + goodBrief + '</p>' +
                    '</div>' +
                    '</a>'
            $("#goodList").append(hrefBody);
        }
        loading = false
    });

    function crtTimeFtt(val) {
        if (val != null) {
            var date = new Date(val);
            return date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();
        }
    }

    function goodAction(goodId) {
        $.actions({
            title: "选择操作",
            onClose: function () {
                console.log("close");
            },
            actions: [{
                text: "查看当前宠物视频",
                className: "color-primary",
                onClick: function () {
                    // $.alert("发布成功");
                    var dataVideoUrl = $('#' + goodId).attr('data-video-url')
                    $('#showPart').attr('src', dataVideoUrl)
                    $('#full').addClass("weui-popup__container--visible");
                }
            }, {
                text: "导出宠物二维码(可分享)",
                className: "color-default",
                onClick: function () {
                    var qrcode = $("#qrcode").qrcode({
                        width: 250, //宽度
                        height: 250, //高度
                        text: "https://www.youchongxiong.com/wxMobile/qrcode/" + goodId
                    }).hide();

                    var canvas = qrcode.find('canvas').get(0);
                    $('#imgOne').attr('src', canvas.toDataURL('image/jpg'));
                    $('#qrcodeFull').addClass("weui-popup__container--visible");
                }
            }, {
                text: "编辑宠物价格",
                className: "color-default",
                onClick: function () {
                    $.showLoading();
                    var dataPrice = $('#' + goodId).attr('data-price')
                    $.prompt({
                        text: "原价格" + dataPrice,
                        title: "请输入修改后的价格",
                        onOK: function (text) {
                            var re = /^[0-9]+.?[0-9]*$/;
                            if (!re.test(text)) {
                                $.alert("请输入数字");
                            } else {
                                $.post('${base}/shop/goodPage/modPrice', {
                                    goodId: goodId,
                                    price: text
                                }, function (res) {
                                    $.hideLoading();
                                    if (res.msgCode == 10000) {
                                        $('#' + goodId).attr('data-price', text);
                                        $.toast("修改成功", function () {
                                            console.log('close');
                                        });
                                    } else if (res.msgCode == 10001) {
                                        $.toast("修改失败", "cancel", function (toast) {
                                            console.log(toast);
                                        });
                                    } else if (res.msgCode == 10003) {
                                        window.location.replace('${base}/shop/loginPage/index?from=2')
                                    }
                                })

                            }

                        },
                        onCancel: function () {
                            $.hideLoading();
                            // console.log("取消了");
                        },
                        input: "如: 3000",
                    });
                }
            },
                //     {
                //     text: "编辑宠物信息",
                //     className: "color-warning",
                //     onClick: function () {
                //         $.alert("你选择了“编辑”");
                //     }
                // },
                {
                    text: "删除宠物信息",
                    className: 'color-danger',
                    onClick: function () {
                        $.showLoading();
                        $.post('${base}/shop/goodPage/delDym', {
                            goodId: goodId
                        }, function (res) {
                            $.hideLoading();
                            if (res.msgCode == 10000) {
                                $('#' + goodId).remove();
                                $.toast("操作成功", function () {
                                    console.log('close');
                                });
                            } else if (res.msgCode == 10001) {
                                $.toast("操作失败", "cancel", function (toast) {
                                    console.log(toast);
                                });
                            } else if (res.msgCode == 10003) {
                                window.location.replace('${base}/shop/loginPage/index?from=2')
                            }
                        })

                    }
                }]
        });
    }
</script>

</body>
</html>
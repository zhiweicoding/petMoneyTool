<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>所有宠物</title>
    <@css.css/>
</head>
<body ontouchstart>
<div class="page__pd">
    <div class="weui-search-bar" id="searchBar">
        <form class="weui-search-bar__form" action="${base}/shop/goodPage/allList">
            <div class="weui-search-bar__box">
                <i class="weui-icon-search"></i>
                <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索"
                       name="anyText" value="${anyText}">
                <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
            </div>
            <label class="weui-search-bar__label" id="searchText"
                   style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);">
                <i class="weui-icon-search"></i>
                <#if anyText==''>
                    <span>搜索</span>
                <#else >
                    <span>${anyText}</span>
                </#if>
            </label>
        </form>
        <a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">取消</a>
    </div>
    <div class="weui-flex" style="margin-top: 8px;margin-bottom: 8px;">
        <a href="javascript:void(0);" id="addSellId" class="weui-flex__item" style="flex-direction:row;display: flex;"
           data-id="dialog">
            <div class="weui-grid__icon" onclick="uploadGood();" style="margin: 0 5px 0 20px;">
                <img src="${base}/resources/shopImg/icon_nav_refresh.png" alt="">
            </div>
            <p class="weui-grid__label" onclick="uploadGood();">
                刷新缓存
            </p>
        </a>
        <a href="javascript:void(0);" class="weui-flex__item" data-id="progress"
           style="flex-direction:row;display: flex;">
            <div class="weui-grid__icon" style="margin: 0 5px 0 20px;">
                <img src="${base}/resources/shopImg/icon_nav_symbol_id.png" alt="">
            </div>
            <input class="weui-grid__label" id="symbolId" value="<#if anyText==''>筛选品种<#else >${anyText}</#if>"
                   style="outline:none;border：none;width: 70px;height:100%;margin-top: 0;text-align: left;float: left;font-size: 15px;"/>
        </a>
        <a href="javascript:void(0);" id="addSellId" class="weui-flex__item" style="flex-direction:row;display: flex;"
           data-id="dialog">
            <div class="weui-grid__icon" style="margin: 0 5px 0 20px;" onclick="showAll()">
                <img src="${base}/resources/shopImg/icon_nav_all.png" alt="">
            </div>
            <p class="weui-grid__label" onclick="showAll()">
                查看全部
            </p>
        </a>
    </div>
    <div class="weui-panel weui-panel_access">
        <div class="weui-panel__bd">
            <#list array as array>
                <div class="weui-media-box weui-media-box_appmsg"
                     id="${array.goodId}" data-video-url="${array.videoUrlVertical}" data-price="${array.retailPrice}">
                    <div class="weui-media-box__hd" style="width: 120px;height: 120px;"
                         onclick="goodAction('${array.goodId}','${array.retailPrice}','${array.symbolName}','${array.gender}')">
                        <img id="goodImg${array.goodId}" class="weui-media-box__thumb"
                             src="${base}/resources/shopImg/loading.jpg"
                             data-original="${array.listPicUrl}"
                             style="height: 120px;width: 120px;" alt="">
                        <#if array.isCheap==1>
                            <span id="goodCheap${array.goodId}"
                                  style="font-size:20px;color: red;position: absolute;top: 30px;left: 30px;">
                            已售
                        </span>
                        </#if>
                        <span class="weui-badge"
                              style="position: absolute;top: -.4em;right: -.4em;">${array.symbolName}</span>
                    </div>
                    <div class="weui-media-box__bd" style="height: 100px;">
                        <h4 class="weui-media-box__title"
                            style="overflow: hidden;white-space: nowrap;text-overflow:ellipsis;"
                            onclick="modifyTitle('${array.goodId}','${array.goodTitle}',this)">
                            ${array.goodTitle}
                            <span class="weui-media-box__title-after">${array.createTimeStrSimple} </span>
                        </h4>
                        <h4 id="petPrice${array.goodId}" class="weui-media-box__title"
                            style="width: 100%;margin-top:2px;font-weight:400;font-size: 16px;">
                            价格：${array.retailPrice} 性别：<#if array.gender==0>弟弟<#else >妹妹</#if></h4>
                        <p id="petDetail" class="weui-media-box__desc"
                           style="width: 100%;margin-top:5px;-webkit-line-clamp:3;word-break:break-all;display:-webkit-box;-webkit-box-orient:vertical;overflow:hidden;"
                           onclick="modifyDetail('${array.goodId}',this)">${array.goodBrief}</p>
                    </div>
                </div>
            </#list>
        </div>
    </div>

    <#--<img src="${base}/resources/shopImg/icon_nav_left.png"-->
         <#--style="width:48px; height: 48px;position: absolute;top: 50%;left: 2%;border-radius:50%;"-->
         <#--onclick="beforeDay()"/>-->

    <#--<img src="${base}/resources/shopImg/icon_nav_right.png"-->
         <#--style="width:48px; height: 48px;position: absolute;top: 50%;left: 85%;border-radius:50%;"-->
         <#--onclick="afterDay()"/>-->

    <input class="weui-input" id="date3" value="${nowDay}" type="text"
           style="width:100px;opacity:0.5;position: fixed;top: 90%;left: 36%;border-radius:5px; padding:0 10px ;font-size: 18px;border: solid 1px #888;background-color: white;">

    <#--weui-popup__container weui-popup__container--visible-->
    <div id="full" class='weui-popup__container '>
        <div class="weui-popup__overlay"></div>
        <div class="weui-popup__modal">
            <video id="showPart" width="100%" height="93%"
                   src="https://photo.youchongxiong.com/7e9d51d32063470e97858bc8570543c7"
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
                             style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;"></div>
                        <img id="imgOne" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;"/>
                        <p>请长按图片保存到相册，分享给朋友</p>
                    </div>
                </div>
            </div>
            <a href="javascript:;" class="weui-btn weui-btn_primary close-popup">关闭</a>
        </div>
    </div>

    <div id="half" class='weui-popup__container popup-bottom' data-goodId="">
        <div class="weui-popup__overlay"></div>
        <div class="weui-popup__modal">
            <div class="toolbar">
                <div class="toolbar-inner">
                    <a href="javascript:;" class="picker-button close-popup">关闭</a>
                    <h1 class="title">请修改价格和性别</h1>
                </div>
            </div>
            <div class="modal-content">

                <div class="weui-cells weui-cells_form">
                    <div class="weui-cell">
                        <div class="weui-cell__hd"><label class="weui-label">宠物价格</label></div>
                        <div class="weui-cell__bd">
                            <input id="petModifyMoney" class="weui-input" type="number" value="" placeholder="如：3000">
                        </div>
                    </div>

                    <div class="weui-cell">
                        <div class="weui-cell__hd"><label for="name" class="weui-label">宠物品种</label></div>
                        <div class="weui-cell__bd">
                            <input class="weui-input" id="petModifySymbolId" type="text" value="" placeholder="请点击选择">
                        </div>
                    </div>

                    <div class="weui-cell weui-cell_switch">
                        <div class="weui-cell__bd">公/母（选中为公）</div>
                        <div class="weui-cell__ft">
                            <label for="genderCP" class="weui-switch-cp">
                                <input id="genderCP" class="weui-switch-cp__input" type="checkbox" checked="checked">
                                <div class="weui-switch-cp__box"></div>
                            </label>
                        </div>
                    </div>
                </div>
                <div id="petModifyId" data-goodId="" class="weui-btn weui-btn_primary " onclick="modifySimpleInfo()">
                    修改
                </div>
            </div>
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
        margin-top: -15px;
    }
</style>

<@js.js/>
<script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
<script src="https://cdn.bootcss.com/jquery_lazyload/1.9.7/jquery.lazyload.min.js"></script>
<script>

    var listType = '${listType}'
    var daytime = '${nowDay}'

    $(document).on("open", ".weui-popup-modal", function () {
        console.log("open popup");
    }).on("close", ".weui-popup-modal", function () {
        console.log("close popup");
    });

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
                    window.location.replace('${base}/shop/goodPage/allList?anyText=' + p.displayValue[0])
                }
            });

            $('#petModifySymbolId').picker({
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

        $("#date3").calendar({
            value: [daytime],
            dateFormat: 'yyyy-mm-dd',
            onChange: function (p, values, displayValues) {
            },
            onDayClick: function (p, dayContainer, year, month, day) {
                var dateTime=year + '-' + (Number(month) + 1) + '-' + day
                $.showLoading('加载中..')
                window.location.replace('${base}/shop/goodPage/allList?dateTime='+dateTime);
            }
        });

        $("img").lazyload({
            effect: "fadeIn",
            placeholder: "${base}/resources/shopImg/loading.jpg",
        });
    });

    function showAll() {
        window.location.replace('${base}/shop/goodPage/allList');
    }

    function beforeDay() {
        console.log('before');
    }

    function afterDay() {
        console.log('after');
    }

    function uploadGood() {
        $.showLoading();
        $.post('${base}/shop/goodPage/refreshGood', {}, function (res) {
            $.hideLoading();
            console.log('upload good')
            if (res.msgCode == 10000) {
                $.toast("刷新成功", "success", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10001) {
                $.toast("刷新失败", "cancel", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10003) {
                $.toast("无权限操作", "cancel", function (toast) {
                    console.log(toast);
                });
            }
        })

    }

    function crtTimeFtt(val) {
        if (val != null) {
            var date = new Date(val);
            return date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();
        }
    }

    function modifyDetail(id, thisDiv) {
        var petDetail = $('#petDetail').html()
        $.prompt({
            text: "数据珍贵，请谨慎修改",
            title: "请输入",
            onOK: function (text) {
                $.showLoading();

                $.post('${base}/shop/goodPage/modifyPetDetail', {
                    goodId: id,
                    detail: text
                }, function (res) {
                    $.hideLoading();
                    if (res.msgCode == 10000) {
                        $(thisDiv).html(text);
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
            },
            onCancel: function () {
                return;
            },
            input: petDetail,
        });
    }

    function modifyTitle(id, title, thisDiv) {
        $.prompt({
            text: "数据珍贵，请谨慎修改",
            title: "请输入",
            onOK: function (text) {
                $.showLoading();
                $.post('${base}/shop/goodPage/modifyPetTitle', {
                    goodId: id,
                    title: text
                }, function (res) {
                    $.hideLoading();
                    if (res.msgCode == 10000) {
                        $(thisDiv).html(text);
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
            },
            onCancel: function () {
                return;
            },
            input: title,
        });
    }

    function modifySimpleInfo() {
        var price = $('#petModifyMoney').val()
        var symbolName = $('#petModifySymbolId').val()
        var gender = $('#genderCP').is(':checked')
        if (gender == 0) {
            gender = 1
        } else {
            gender = 0
        }
        var goodId = $('#petModifyId').attr('data-goodId')
        $.post('${base}/shop/goodPage/modPetSimpleInfo', {
            goodId: goodId,
            price: price,
            symbolName: symbolName,
            gender: gender,
        }, function (res) {
            $.hideLoading();
            if (res.msgCode == 10000) {
                window.location.replace('${base}/shop/goodPage/allList?anyText=' + goodId)
            } else if (res.msgCode == 10001) {
                $.toast("修改失败", "cancel", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10003) {
                window.location.replace('${base}/shop/loginPage/index?from=2')
            }
        })
    }

    function goodAction(goodId, price, symbolName, gender) {
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
                text: "编辑宠物基本信息",
                className: "color-default",
                onClick: function () {
                    $('#petModifyMoney').val(price)
                    $('#petModifySymbolId').val(symbolName)
                    if (gender == 0) {
                        $('#genderCP').prop("checked", true)
                    } else {
                        $('#genderCP').prop("checked", false)
                    }
                    $('#petModifyId').attr('data-goodId', goodId)
                    $('#half').addClass("weui-popup__container--visible");
                }
            }, {
                text: "修改为已售",
                onClick: function () {
                    $.showLoading();
                    $.post('${base}/shop/goodPage/modifyCheap', {
                        goodId: goodId
                    }, function (res) {
                        $.hideLoading();
                        if (res.msgCode == 10000) {
                            $('#goodImg' + goodId).after('<span id="goodCheap' + goodId +
                                '" style="font-size:20px;color: red;position: absolute;top: 30px;left: 30px;">' +
                                '已售</span>');

                            $.toast("修改已售成功", function () {
                                console.log('close');
                            });
                        } else if (res.msgCode == 10001) {
                            $.toast("修改已售失败", "cancel", function (toast) {
                                console.log(toast);
                            });
                        } else if (res.msgCode == 10003) {
                            window.location.replace('${base}/shop/loginPage/index?from=2')
                        }
                    })

                }
            }, {
                text: "修改为未售",
                onClick: function () {
                    $.showLoading();
                    $.post('${base}/shop/goodPage/modifyNotCheap', {
                        goodId: goodId
                    }, function (res) {
                        $.hideLoading();
                        if (res.msgCode == 10000) {
                            $('#goodCheap' + goodId).remove()
                            $.toast("修改未售成功", function () {
                                console.log('close');
                            });
                        } else if (res.msgCode == 10001) {
                            $.toast("修改未售失败", "cancel", function (toast) {
                                console.log(toast);
                            });
                        } else if (res.msgCode == 10003) {
                            window.location.replace('${base}/shop/loginPage/index?from=2')
                        }
                    })

                }
            }, {
                text: "复制到最新",
                onClick: function () {
                    $.showLoading();
                    $.post('${base}/shop/goodPage/copy', {
                        goodId: goodId
                    }, function (res) {
                        $.hideLoading();
                        if (res.msgCode == 10000) {
                            $.toast("复制成功", function () {
                                console.log('close');
                            });
                        } else if (res.msgCode == 10001) {
                            $.toast("复制失败", "cancel", function (toast) {
                                console.log(toast);
                            });
                        } else if (res.msgCode == 10003) {
                            window.location.replace('${base}/shop/loginPage/index?from=2')
                        }
                    })

                }
            }, {
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
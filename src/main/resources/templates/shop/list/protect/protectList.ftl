<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>所有协议</title>
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <link href="${base}/resources/shopCss/goodStyle.css" rel="stylesheet" type="text/css"/>
    <#--<link href="${base}/resources/mescollOption/mescroll.min.css" rel="stylesheet" type="text/css"/>-->
    <link href="${base}/resources/common.css" rel="stylesheet" type="text/css"/>
    <#--<link href="${base}/resources/mescollOption/mescroll-option.css" rel="stylesheet" type="text/css"/>-->
    <script type="text/javascript" src="${base}/resources/shopJs/jquery.min.js"></script>
    <script type="text/javascript" src="${base}/resources/shopJs/tab.js"></script>
    <#--<script type="text/javascript" src="${base}/resources/mescollOption/mescroll.min.js"></script>-->
    <#--<script type="text/javascript" src="${base}/resources/mescollOption/mescroll-option.js"></script>-->
    <link rel="stylesheet" href="${base}/resources/shopCss/jquery-weui.min-self.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/weui.min-self.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/demos.css"/>
    <link rel="stylesheet" href="${base}/resources/common.css"/>
    <script src="${base}/resources/common.js"></script>
    <script src="https://photo.youchongxiong.com/jquery-weui.min.js"></script>
    <script src="https://photo.youchongxiong.com/swiper.min.js"></script>
    <script src="http://apps.bdimg.com/libs/fastclick/1.0.0/fastclick.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
    <script>
        $(function () {
            FastClick.attach(document.body);
        });
    </script>
    <style>

        .kefuImg {
            position: fixed;
            z-index: 888;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            font-size: 14px;
            background: #fff;
            padding: 8px;
            border: 1px solid #444444;
            top: 42%;
            right: 2%;
        }

        .kefuImg2 {
            position: fixed;
            z-index: 888;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            font-size: 14px;
            background: #fff;
            padding: 8px;
            border: 1px solid #444444;
            top: 50%;
            right: 2%;
        }

    </style>
</head>
<body ontouchstart>
<a href="javascript:refreshUrl()">
    <img alt="刷新" class="kefuImg"
         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200711/%E5%88%B7%E6%96%B0.png'/>
</a>
<a href="javascript:loadMoreDiv()">
    <img alt="加载下一页" class="kefuImg2"
         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200711/%E4%B8%8B.png'/>
</a>
<div class="page__pd">
    <div class="weui-search-bar" id="searchBar">
        <form class="weui-search-bar__form" action="${base}/shop/protectListPage/init">
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
    <div class="weui-panel weui-panel_access">
        <div class="weui-panel__bd" id="newsList">
            <#list array as array>
                <a href="javascript:openAction('${array.openId}','${array.protectId}')"
                   class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd">
                        <img class="weui-media-box__thumb" src="${array.avatarUrl}" alt=""
                             style="width: 70px;height: 70px;">
                        <span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">

                        <#if array.isDelete==0>
                            有效<#else>作废
                        </#if>
                        </span>
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">
                            用户 ${array.nickName}
                            <span class="weui-media-box__title-after">${array.protectTimeStr}</span>
                        </h4>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">用户手机号码：${array.userMobile}</p>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">销售信息：${array.sellName}
                            -${array.sellPhone}</p>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">猫咪品种：${array.symbolName}-
                            <#if array.petSex==1>
                                公
                            <#elseif array.petSex=2>
                                母
                            <#else >
                                未知
                            </#if>
                        </p>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">签署价格：${array.petPrice}-
                            <#if array.protectType==1>半价
                            <#elseif array.protectType==2>免费
                            <#else >正常购买
                            </#if>
                        </p>
                    </div>
                </a>
            </#list>
        </div>
    </div>


</div>
<div id="qrcode" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;display: none;"></div>

<style>
    .weui-panel {
        margin: 0;
    }

    .weui-media-box {
        padding: 8px 15px;
    }

    .weui-panel__bd .weui-media-box__hd {
        width: 80px;
        height: auto;
        line-height: 50px;
        position: relative;
    }

    .weui-media-box__desc {
        -webkit-line-clamp: 2;
    }

    .weui-media-box__title {
        margin-top: -4px;
    }
</style>

<script type="text/javascript" charset="utf-8">
    var baseUrl = '${base}'

    function openAction(openId, protectId) {
        $.actions({
            title: "选择操作",
            onClose: function () {
                console.log("close");
            },
            actions: [
                {
                    text: "查看协议内容",
                    className: "color-primary",
                    onClick: function () {
                        window.location.href = 'https://www.myloveqian.cn/page/protect/signPageDetail?openId=' + openId + '&protectId=' + protectId
                    }
                },
                {
                    text: "猫咪已到家",
                    onClick: function () {
                        $.confirm("是否标记猫咪已到家", "请确认", function () {
                            $.showLoading();
                            $.post('${base}/shop/protectListPage/goHome', {
                                protectId: protectId
                            }, function (res) {
                                $.hideLoading();
                                if (res.msgCode == 10000) {
                                    var msgBody = res.msgBody
                                    if (msgBody == 1) {
                                        $.toptip('操作成功', 'success');
                                    } else if (msgBody == 0) {
                                        $.toptip('请勿重复操作', 'warning');
                                    } else {
                                        $.toptip('未知错误', 'error');
                                    }
                                } else {
                                    $.alert('操作失败,请稍后重试')
                                }

                            })
                        }, function () {
                            //取消操作
                        });
                    }
                },
                {
                    text: "猫咪售后记录",
                    onClick: function () {
                        $.prompt({
                            text: "请简单描述售后内容",
                            title: "请输入",
                            onOK: function (text) {
                                $.showLoading();
                                $.post('${base}/shop/protectListPage/back', {
                                    protectId: protectId,
                                    backMsg: text
                                }, function (res) {
                                    $.hideLoading();
                                    if (res.msgCode == 10000) {
                                        var msgBody = res.msgBody
                                        if (msgBody == 1) {
                                            $.toptip('操作成功', 'success');
                                        } else {
                                            $.toptip('未知错误', 'error');
                                        }
                                    } else {
                                        $.alert('操作失败,请稍后重试')
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
                    text: "猫咪死亡记录",
                    onClick: function () {
                        $.prompt({
                            text: "请简单描述死亡原因",
                            title: "请输入",
                            onOK: function (text) {
                                $.showLoading();
                                $.post('${base}/shop/protectListPage/dead', {
                                    protectId: protectId,
                                    deadMsg: text
                                }, function (res) {
                                    $.hideLoading();
                                    if (res.msgCode == 10000) {
                                        var msgBody = res.msgBody
                                        if (msgBody == 1) {
                                            $.toptip('操作成功', 'success');
                                        } else if (msgBody == 0) {
                                            $.toptip('请勿重复操作', 'warning');
                                        } else {
                                            $.toptip('未知错误', 'error');
                                        }
                                    } else {
                                        $.alert('操作失败,请稍后重试')
                                    }

                                })
                            },
                            onCancel: function () {
                                console.log("取消了");
                            },
                            input: ''
                        });
                    }
                }
            ]
        });

    }

    function sharePhoto(goodId) {
        var qrcode = $("#qrcode").qrcode({
            width: 300, //宽度
            height: 300, //高度
            text: "https://www.youchongxiong.com/wxMobile/code/dv/" + goodId
        }).hide();

        var canvas = qrcode.find('canvas').get(0);
        $('#qrcode').empty()
        showWholePic(canvas.toDataURL('image/jpg'))
    }

    function refreshUrl() {
        $.showLoading()
        setTimeout(function () {
            $.hideLoading()
            window.location.replace('${base}/shop/protectListPage/init')
        }, 400);

    }

    var loading = true;
    var whichPageNum = 2;
    var anyTextParams = '${anyText}';
    var hasNext = true;

    function loadMoreDiv() {
        getListDataFromNet(whichPageNum, function (curPageData) {
            //设置列表数据
            setListData(curPageData, true);
            loading = false;
        }, function () {
            loading = false;
        });
    }

    /*设置列表数据*/
    function setListData(curPageData, isAppend) {
        var listDom = document.getElementById("newsList");
        if (!isAppend) {
            listDom.removeChild(listDom.childNodes[1]);
        }
        for (var i = 0; i < curPageData.length; i++) {
            var newObj = curPageData[i];

            var openId = newObj.openId
            var protectId = newObj.protectId
            var avatarUrl = newObj.avatarUrl
            var nickName = newObj.nickName
            var protectTimeStr = newObj.protectTimeStr
            var userMobile = newObj.userMobile
            var sellPhone = newObj.sellPhone
            var sellName = newObj.sellName
            var symbolName = newObj.symbolName
            var petSex = newObj.petSex
            var isDelete = newObj.isDelete
            var delBody = ''
            if (isDelete == 0) {
                delBody = '有效'
            } else {
                delBody = '作废'
            }
            var genderHtmlStr = ''
            if (petSex == 1) {
                genderHtmlStr = '弟弟'
            } else if (petSex == 2) {
                genderHtmlStr = '妹妹'
            } else {
                genderHtmlStr = '未知'
            }
            var protectType = newObj.protectType
            var typeBody = ''
            if (protectType == 1) {
                typeBody = '半价'
            } else if (protectType == 2) {
                typeBody = '免费'
            } else {
                typeBody = '正常购买'
            }
            var petPrice = newObj.petPrice

            var actionBody = "javascript:openAction('" + openId + "','" + protectId + "')"

            // language=HTML
            var htmlBody = '<a href="' + actionBody + '" class="weui-media-box weui-media-box_appmsg">' +
                '                    <div class="weui-media-box__hd">' +
                '                        <img class="weui-media-box__thumb" src="' + avatarUrl + '" alt="" style="width: 70px;height: 70px;">' +
                '                        <span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">' + delBody +
                '                        </span>' +
                '                    </div>' +
                '                    <div class="weui-media-box__bd">' +
                '                        <h4 class="weui-media-box__title">用户 ' + nickName +
                '                            <span class="weui-media-box__title-after">' + protectTimeStr + '</span>' +
                '                        </h4>' +
                '                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">用户手机号码：' + userMobile + '</p>' +
                '                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">销售信息：' + sellName + '-' + sellPhone + '</p>' +
                '                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">猫咪品种：' + symbolName + '-' + genderHtmlStr + '</p>' +
                '                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">签署价格：' + petPrice + '-' + typeBody +
                '                        </p>' +
                '                    </div>' +
                '                </a>'
            var liDom = document.createElement("li");
            liDom.innerHTML = htmlBody;

            if (isAppend) {
                listDom.appendChild(liDom);//加在列表的后面,上拉加载
            } else {
                listDom.parentNode.removeChild(listDom);
                listDom.insertBefore(liDom, listDom.firstChild);//加在列表的前面,下拉刷新
            }
        }
    }

    function getListDataFromNet(whichPageNumParams, successCallback, errorCallback) {
        $.showLoading();
        $.post('${base}/shop/protectListPage/dym', {
            anyText: anyTextParams,
            whichPageNum: whichPageNumParams
        }, function (res) {
            $.hideLoading();
            if (res.msgCode == 10000) {
                var msgBody = res.msgBody
                var tList = msgBody.tlist
                anyTextParams = msgBody.anyText
                whichPageNum = msgBody.whichPageNum
                hasNext = msgBody.hasNext
                successCallback && successCallback(tList);
            } else {
                $.toast("加载失败", "cancel", function (toast) {
                    console.log(toast);
                });
                errorCallback && errorCallback();
            }

        })
    }
</script>

</body>
</html>
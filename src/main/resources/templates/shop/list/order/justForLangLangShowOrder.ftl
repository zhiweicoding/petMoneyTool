<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>展示所有订单信息</title>
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <link href="${base}/resources/shopCss/orderStyleL.css" rel="stylesheet" type="text/css"/>
    <link href="${base}/resources/mescollOption/mescroll.min.css" rel="stylesheet" type="text/css"/>
    <link href="${base}/resources/common.css" rel="stylesheet" type="text/css"/>
    <link href="${base}/resources/mescollOption/mescroll-option.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${base}/resources/shopJs/jquery.min.js"></script>
    <script type="text/javascript" src="${base}/resources/shopJs/tab.js"></script>
    <script type="text/javascript" src="${base}/resources/mescollOption/mescroll.min.js"></script>
    <script type="text/javascript" src="${base}/resources/mescollOption/mescroll-option.js"></script>
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
    <img alt="加载更多" class="kefuImg2"
         src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200711/%E4%B8%8B.png'/>
</a>
<div class="weui-search-bar" id="searchBar">
    <form class="weui-search-bar__form" action="">
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
<!--展示上拉加载的数据列表-->
<section class="aui-flexView">
    <section class="aui-scrollView">
        <div class="aui-tab" data-ydui-tab>
            <div class="tab-panel">
                <div class="tab-panel-item tab-active news-list" id="newsList">
                    <#list array as array>
                        <#assign extParams='${array.extParams}'?eval />
                        <a href="javascript:openAction('${array.orderId}',
                        '${array.addressUserName+','+array.addressMobile+','+array.addressFullRegion+array.addressName}',
                                '${extParams.check0}',
                                '${extParams.money0}',
                                '${extParams.check1}',
                                '${extParams.money1}',
                                '${extParams.check2}',
                                '${extParams.money2}',
                                '${extParams.check3}',
                                '${extParams.money3}',
                                '${extParams.check4}',
                                '${extParams.money4}',
                                '${extParams.check5}',
                                '${extParams.money5}',
                                '${extParams.check6}',
                                '${extParams.money6}');"
                           class="aui-content-list">
                            <div class="aui-flex b-line">
                                <div class="aui-car-img">
                                    <#switch array.orderStatus>
                                        <#case 1>
                                            <div class="aui-car-release">订单已付全款</div> <#break >
                                        <#case 5>
                                            <div class="aui-car-release">订单已付定金</div>  <#break >
                                        <#case 6>
                                            <div class="aui-car-release">订单已付定金</div> <#break >
                                        <#case 0>
                                            <div class="aui-car-release">刚生成订单</div> <#break >
                                    </#switch>
                                    <img src="${array.goodMapperBeans[0].listPicUrl}"
                                         alt="">

                                </div>
                                <div class="aui-flex-box">
                                    <h2>${'销售:'+array.shopMapperBean.shopName+'<br/>'+array.goodMapperBeans[0].goodBrief}</h2>

                                    <span style="transform: scale(0.9);width: 100%">${'猫咪价格:'+array.orderActualPrice}</span>
                                    <div class="aui-flex b-line" style="padding: 5px;">
                                        <div class="aui-car-img-sub" style="width: 40px;height: 40px;">
                                            <img style="width: 40px;height: 40px;"
                                                 src="${array.userMapperBean.avatarUrl}"
                                                 alt="">
                                        </div>
                                        <div class="aui-flex-box">
                                            <#switch array.userMapperBean.isMember>
                                                <#case 1><h2>${array.userMapperBean.nickName+"(非会员)"}</h2><#break >
                                                <#case 0><h2>${array.userMapperBean.nickName+"(会员)"}</h2><#break >
                                            </#switch>

                                        </div>
                                    </div>
                                    <p>${array.goodMapperBeans[0].createTimeStr}</p>
                                </div>
                            </div>
                        </a>
                    </#list>
                </div>
            </div>
        </div>


    </section>
</section>
<div id="qrcode" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;display: none;"></div>
<script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/activity/expansion/clipboard.min.js"></script>
<script type="text/javascript" charset="utf-8">
    var baseUrl = '${base}'
    var organyText = '${anyText}'

    $("#searchInput").calendar({
        onChange: function (p, values, displayValues) {
            console.log(p, values)
            if (organyText !== values[0]) {
                $.showLoading();
                window.location.replace("${base}/shop/orderLangList/init?anyText=" + values[0])
            }
        }
    });

    function openAction(orderId, address, check0, money0, check1, money1,
                        check2, money2, check3, money3, check4, money4, check5, money5, check6, money6) {
        $.actions({
            title: "选择订单状态",
            onClose: function () {
                console.log("close");
            },
            actions: [
                {
                    text: "查看购买服务",
                    onClick: function () {
                        var serverInfo = ''
                        if (check0 != undefined && check0 != 'undefined' && check0) {
                            serverInfo = serverInfo + '选择养宠医师 ' + money0 + '元 <br/>'
                        }
                        if (check1 != undefined && check1 != 'undefined' && check1) {
                            serverInfo = serverInfo + '选择1年全保换 ' + money1 + '元 <br/>'
                        }
                        if (check2 != undefined && check2 != 'undefined' && check2) {
                            serverInfo = serverInfo + '选择感染猫瘟热保3月 ' + money2 + '元 <br/>'
                        }
                        if (check3 != undefined && check3 != 'undefined' && check3) {
                            serverInfo = serverInfo + '选择感染猫传染性腹膜炎保3月 ' + money3 + '元 <br/>'
                        }
                        if (check4 != undefined && check4 != 'undefined' && check4) {
                            serverInfo = serverInfo + '选择意外死亡保1月 ' + money4 + '元 <br/>'
                        }
                        if (check5 != undefined && check5 != 'undefined' && check5) {
                            serverInfo = serverInfo + '选择30天疾病报销 ' + money5 + '元 <br/>'
                        }
                        if (check6 != undefined && check6 != 'undefined' && check6) {
                            serverInfo = serverInfo + '选择1年365天疾病报销 ' + money6 + '元 <br/>'
                        }
                        $.alert(serverInfo, "购买服务");
                    }
                },
                {
                    text: "查看用户地址",
                    onClick: function () {
                        $.alert(address, "用户地址");

                    }
                }
            ]
        });

    }

    var loading = false;
    var whichPageNum = 2;
    var anyTextParams = '${anyText}';
    var hasNext = true;

    function refreshUrl() {
        $.showLoading()
        setTimeout(function () {
            $.hideLoading()
            window.location.replace('${base}/shop/orderListPage/init')
        }, 400);

    }

    function byTime() {

    }

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

            var orderStatus = newObj.orderStatus
            var orderStatusUrl = '';
            switch (orderStatus) {
                case 1:
                    orderStatusUrl = '<div class="aui-car-release">订单已付全款</div>';
                    break
                case 5:
                    orderStatusUrl = '<div class="aui-car-release">订单已付定金</div>';
                    break;
                case 6:
                    orderStatusUrl = '<div class="aui-car-release">订单已付定金</div>';
                    break;
                case 0:
                    orderStatusUrl = '<div class="aui-car-release">刚生成订单</div>';
                    break;
            }
            var orderId = newObj.orderId;
            var frontMoney = newObj.frontMoney;
            var secondMoney = newObj.secondMoney;
            var extParams = JSON.parse(newObj.extParams);
            var check0 = extParams.check0;
            var check1 = extParams.check1;
            var check2 = extParams.check2;
            var check3 = extParams.check3;
            var check4 = extParams.check4;
            var check5 = extParams.check5;
            var check6 = extParams.check6;
            var addressInfo = newObj.addressUserName + "," + newObj.addressMobile + "," + newObj.addressFullRegion + newObj.addressName;
            var actionMethod = "javascript:openAction('" + orderId + "','" + frontMoney + "','" + secondMoney + "','" + addressInfo + "','"
                + check0 + "','" + check1 + "','" + check2 + "','" + check3 + "','"
                + check4 + "','" + check5 + "','" + check6 + "');";

            var goodMapperBean = newObj.goodMapperBeans[0]
            var userMapperBean = newObj.userMapperBean
            var listPicUrl = goodMapperBean.listPicUrl
            var goodTitle = goodMapperBean.goodTitle
            var goodBrief = goodMapperBean.goodBrief
            var retailPrice = goodMapperBean.retailPrice
            var frontMoney = goodMapperBean.frontMoney
            var secondMoney = goodMapperBean.secondMoney
            var createTimeStr = goodMapperBean.createTimeStr
            var moneyHtml = '全款:' + retailPrice + ' 定金:' + frontMoney + ' 尾款:' + secondMoney
            var avatarUrl = userMapperBean.avatarUrl
            var nickName = userMapperBean.nickName
            var userMobile = userMapperBean.userMobile

            // language=HTML
            var htmlBody = '<a href="' + actionMethod + '" class="aui-content-list">' +
                '     <div class="aui-flex b-line">' +
                '         <div class="aui-car-img">' +
                orderStatusUrl +
                '             <img src="' + listPicUrl + '"  alt="">' +
                '         </div>' +
                '         <div class="aui-flex-box">' +
                '             <h2>' + goodTitle + '</h2>' +
                '             <h2>' + goodBrief + '</h2>' +
                '             <span style="transform: scale(0.9);width: 100%">' + moneyHtml + '</span>' +
                '             <div class="aui-flex b-line" style="padding: 5px;">' +
                '                 <div class="aui-car-img-sub" style="width: 40px;height: 40px;">' +
                '                     <img style="width: 40px;height: 40px;" src="' + avatarUrl + '" alt="">' +
                '                 </div>' +
                '                 <div class="aui-flex-box">' +
                '                     <h2>' + nickName + '</h2>' +
                '                     <h2>' + userMobile + '</h2>' +
                '                 </div>' +
                '             </div>' +
                '             <p>' + createTimeStr + '</p>' +
                '         </div>' +
                '     </div>' +
                ' </a>'

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
        $.post('${base}/shop/orderLangList/dym', {
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
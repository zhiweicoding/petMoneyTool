<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>用户列表</title>
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <link href="${base}/resources/shopCss/goodStyle.css" rel="stylesheet" type="text/css"/>
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
</head>
<body ontouchstart>
<div class="weui-search-bar" id="searchBar">
    <form class="weui-search-bar__form" action="${base}/shop/userListPage/initForOrder/${goodId}/${moneySecond}">
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
<!--滑动区域-->
<div id="mescroll" class="mescroll">
    <!--展示上拉加载的数据列表-->
    <section class="aui-flexView">
        <section class="aui-scrollView">
            <div class="aui-tab" data-ydui-tab>
                <div class="tab-panel">
                    <div class="tab-panel-item tab-active news-list" id="newsList">
                        <#list array as array>
                            <a href="javascript:openAction('${array.userId}','${goodId}','${moneySecond}');"
                               class="aui-content-list">
                                <div class="aui-flex b-line">
                                    <div class="aui-car-img">
                                        <#if array.gender==0>
                                            <div class="aui-car-release">男士</div>
                                        <#else >
                                            <div class="aui-car-release">女士</div>
                                        </#if>
                                        <img src="${array.avatarUrl}"
                                             alt="">
                                    </div>
                                    <div class="aui-flex-box">
                                        <h2>${array.nickName}</h2>
                                        <span>${array.province!'未知'}</span>
                                        <p>${array.userMobile}</p>
                                        <p>${array.createTimeStr}</p>
                                    </div>
                                </div>
                            </a>
                        </#list>
                    </div>
                </div>
            </div>
        </section>
    </section>
</div>
<div id="qrcode" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;"></div>

<script type="text/javascript" charset="utf-8">

    var goodId = '${goodId}'
    var moneySecond = '${moneySecond}'

    function openAction(userId) {
        if (parseFloat(moneySecond) <= 0) {
            $.confirm("是否确认为此用户生成订单", "请确认", function () {
                createOrder(userId)
            }, function () {
                //取消操作
            });
        } else {
            $.actions({
                title: "选择订单状态",
                onClose: function () {
                    console.log("close");
                },
                actions: [
                    {
                        text: "付定金",
                        className: "color-primary",
                        onClick: function () {
                            $.confirm("是否确认为此用户生成定金订单", "请确认", function () {
                                createOrder(userId)
                            }, function () {
                                //取消操作
                            });
                        }
                    },
                    {
                        text: "付尾款",
                        onClick: function () {
                            $.confirm("是否确认为此用户生成尾款订单", "请确认", function () {
                                createOrder(userId)
                            }, function () {
                                //取消操作
                            });
                        }
                    }
                ]
            });
        }

    }

    function createOrder(userId) {
        $.showLoading();
        $.post('${base}/shop/userListPage/createOrderPre', {
            goodId: goodId,
            userId: userId,
            moneySecond: moneySecond
        }, function (res) {
            $.hideLoading();
            if (res.msgCode == 10000) {
                switch (res.msgBody) {
                    case 0:
                        $.alert('已有订单，请勿重复添加')
                        break;
                    case -1:
                        $.alert('操作失败,请稍后重试')
                        break;
                    case 1:
                        $.modal({
                            title: "操作成功",
                            text: "已成功导入订单，点击确定返回",
                            buttons: [
                                {
                                    text: "确定", onClick: function () {
                                        window.location.replace('${base}/shop/goodListPage/init')
                                    }
                                },
                            ]
                        });
                        break
                }
            } else {
                $.alert('操作失败,请稍后重试')
            }

        })
    }

    $(function () {
        var whichPageNum = 2;
        var anyTextParams = '${anyText}';
        var hasNext = true;
        //创建MeScroll对象
        var mescroll = initMeScroll("mescroll", {
            down: {
                auto: false,//是否在初始化完毕之后自动执行下拉回调callback; 默认true
                callback: downCallback, //下拉刷新的回调
            },
            up: {
                auto: false,//初始化完毕,是否自动触发上拉加载的回调
                isBoth: true, //上拉加载时,如果滑动到列表顶部是否可以同时触发下拉刷新;默认false,两者不可同时触发; 这里为了演示改为true,不必等列表加载完毕才可下拉;
                isBounce: false, //此处禁止ios回弹,解析(务必认真阅读,特别是最后一点): http://www.mescroll.com/qa.html#q10
                callback: upCallback, //上拉加载的回调
                toTop: { //配置回到顶部按钮
                    src: "${base}/resources/mescollOption/mescroll-totop.png", //默认滚动到1000px显示,可配置offset修改
                    //offset : 1000
                }
            }
        });

        /*下拉刷新的回调 */
        function downCallback() {
            // getListDataFromNet(0, function (data) {
            //     //联网成功的回调,隐藏下拉刷新的状态
            //     mescroll.endSuccess();
            //     //设置列表数据
            //     setListData(data, false);
            //
            // }, function () {
            //     //联网失败的回调,隐藏下拉刷新的状态
            //     mescroll.endErr();
            // });
            window.location.replace('${base}/shop/userListPage/initForOrder/${goodId}/${moneySecond}')
        }

        /*上拉加载的回调 page = {num:1, size:10}; num:当前页 从1开始, size:每页数据条数 */
        function upCallback(page) {
            $('.mescroll-upwarp').show()
            //联网加载数据
            getListDataFromNet(whichPageNum, function (curPageData) {
                //方法一(推荐): 后台接口有返回列表的总页数 totalPage
                //mescroll.endByPage(curPageData.length, totalPage); //必传参数(当前页的数据个数, 总页数)
                //方法二(推荐): 后台接口有返回列表的总数据量 totalSize
                //mescroll.endBySize(curPageData.length, totalSize); //必传参数(当前页的数据个数, 总数据量)
                //方法三(推荐): 您有其他方式知道是否有下一页 hasNext
                mescroll.endSuccess(curPageData.length, hasNext); //必传参数(当前页的数据个数, 是否有下一页true/false)

                //设置列表数据
                setListData(curPageData, true);
                $('.mescroll-upwarp').hide()
            }, function () {
                //联网失败的回调,隐藏上拉加载的状态
                mescroll.endErr();
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

                var gender = newObj.gender
                var genderHtmlStr = ''
                if (gender == 0) {
                    genderHtmlStr = '<div class="aui-car-release">男士</div>'
                } else {
                    genderHtmlStr = '<div class="aui-car-release">女士</div>'
                }
                var avatarUrl = newObj.avatarUrl
                var nickName = newObj.nickName
                var province = newObj.province
                if (!province || province == '') {
                    province = '未录入地址'
                }
                var createTimeStr = newObj.createTimeStr
                var userMobile = newObj.userMobile

                var userId = newObj.userId
                var openAction = 'openAction(\'' + userId + '\',\'' + goodId + '\',\'' + moneySecond + '\')';
                // language=HTML
                var htmlBody = '<a href="javascript:' + openAction + ';" class="aui-content-list">' +
                    '    <div class="aui-flex b-line">' +
                    '        <div class="aui-car-img">' +
                    genderHtmlStr +
                    '    <img src="' + avatarUrl + '" alt="">' +
                    '        </div>' +
                    '    <div class="aui-flex-box">' +
                    '        <h2>' + nickName + '</h2>' +
                    '        <span>' + province + '</span>' +
                    '       <p>' + userMobile + '</p>' +
                    '       <p>' + createTimeStr + '</p>' +
                    '    </div>' +
                    '    </div>' +
                    '</a>'
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
            $.post('${base}/shop/userListPage/dym', {
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

    });
</script>
</body>
</html>
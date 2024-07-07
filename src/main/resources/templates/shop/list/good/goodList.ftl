<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>所有宠物</title>
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
<div class="weui-search-bar" id="searchBar">
    <form class="weui-search-bar__form" action="${base}/shop/goodListPage/init">
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
                        <a href="javascript:;" class="aui-content-list">
                            <div class="aui-flex b-line">
                                <div class="aui-car-img">
                                    <#if array.gender==0>
                                        <div class="aui-car-release">弟弟</div>
                                    <#else >
                                        <div class="aui-car-release">妹妹</div>
                                    </#if>
                                    <div class="aui-icon-play">
                                        <i class="icon icon-play"></i>
                                    </div>
                                    <#--<div class="aui-icon-img">-->
                                    <#--<i class="icon icon-img"></i>-->
                                    <#--</div>-->
                                    <img src="${array.listPicUrl}"
                                         alt="">
                                </div>
                                <div class="aui-flex-box">
                                    <h2>${array.goodTitle+'<br/>'+array.goodBrief}</h2>
                                    <#--                                    <span>${array.symbolName}</span>-->
                                    <p>${'￥'+array.retailPrice}</p>
                                    <p>${array.createTimeStr}</p>
                                </div>
                            </div>
                            <div class="aui-flex">
                                <div class="aui-flex-box"
                                     onclick="sharePhoto('${array.goodId}')">
                                    <em>
                                      微信
                                    </em>
                                </div>
                                <div class="aui-flex-box"
                                     onclick="sharePhoto2('${array.goodId}')">
                                    <em>
                                        支付宝
                                    </em>
                                </div>
                                <div class="aui-flex-box"
                                     onclick="window.location.href='${base}/shop/userListPage/initForOrder/${array.goodId}/${array.secondMoney}'">
                                    <em>
                                        补单
                                    </em>
                                </div>
                                <div class="aui-flex-box" onclick="delClick('${array.goodId}')">
                                    <em >
                                        删除
                                    </em>
                                </div>
                                <div class="aui-flex-box"
                                     onclick="window.location.href='${base}/shop/goodListPage/modPet?goodId=${array.goodId}'">
                                    <em class="aui-clear-line">
                                         修改
                                    </em>
                                </div>

                                <#--                                <#if array.tencentVideo!>-->
                                <#--                                    <div class="aui-flex-box"-->
                                <#--                                         onclick="canNotClick('${array.goodId}')">-->
                                <#--                                        <em class="aui-clear-line">-->
                                <#--                                            <i class="icon icon-more"></i> 绑定-->
                                <#--                                        </em>-->
                                <#--                                    </div>-->
                                <#--                                <#else >-->
                                <#--                                    <div class="aui-flex-box"-->
                                <#--                                         onclick="bindUrl('${array.goodId}')">-->
                                <#--                                        <em class="aui-clear-line">-->
                                <#--                                            <i class="icon icon-more"></i> 绑定-->
                                <#--                                        </em>-->
                                <#--                                    </div>-->
                                <#--                                </#if>-->
                            </div>
                        </a>
                    </#list>
                </div>
            </div>
        </div>


    </section>
</section>
<div id="qrcode" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;display: none;"></div>

<div id="qrcodeFull" class='weui-popup__container '>
    <div class="weui-popup__overlay"></div>
    <div class="weui-popup__modal">
        <div class="weui-flex">
            <div class="weui-flex__item">
                <div class="placeholder">
<#--                    <div id="qrcode" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;"></div>-->
                    <img id="imgOne" style="margin:0 auto;width: 100%;padding-top: 50px;padding-bottom: 50px;"/>
                    <p>请长按图片保存到相册，分享给朋友</p>
                </div>
            </div>
        </div>
        <a href="javascript:;" class="weui-btn weui-btn_primary close-popup">关闭</a>
    </div>
</div>

<script type="text/javascript" charset="utf-8">
    var baseUrl = '${base}'

    function sharePhoto(goodId) {
        var qrcode = $("#qrcode").qrcode({
            width: 300, //宽度
            height: 300, //高度
            text: "https://www.youchongxiong.com/wxMobile/code/catProduct/" + goodId
        }).hide();

        var canvas = qrcode.find('canvas').get(0);
        $('#qrcode').empty()
        showWholePic(canvas.toDataURL('image/jpg'))
    }

    function sharePhoto2(goodId) {
        $.showLoading();
        $.post('${base}/shop/goodListPage/getAli', {
            goodId: goodId,
        }, function (res) {
            $.hideLoading();
            if (res.msgCode == 10000) {
                let msgBody = res.msgBody
                $('#imgOne').attr('src', msgBody);
                $('#qrcodeFull').addClass("weui-popup__container--visible");
            } else {
                $.toast("加载失败", "cancel", function (toast) {
                    console.log(toast);
                });
            }

        })
    }

    function bindUrl(goodId) {
        $.prompt({
            text: "把腾讯视频复制的链接复制到输入框内,点击确认，完成绑定",
            title: "输入链接",
            onOK: function (text) {
                $.showLoading();
                $.post('${base}/shop/goodListPage/bind', {
                    goodId: goodId,
                    tencentUrl: text
                }, function (res) {
                    $.hideLoading();
                    if (res.msgCode == 10000) {
                        $.toptip('操作成功', 'success');
                    } else {
                        $.toast("加载失败", "cancel", function (toast) {
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

    function canNotClick(goodId) {
        $.confirm("已绑定腾讯视频，请确定是否重新绑定", "请确定", function () {
            bindUrl(goodId)
        }, function () {
            //取消操作
        });
    }

    function delClick(goodId) {
        $.confirm("确定删除吗", "请确定", function () {
            $.showLoading();
            $.post('${base}/shop/goodListPage/del', {
                goodId: goodId
            }, function (res) {
                $.hideLoading();
                window.location.replace('${base}/shop/goodListPage/init')
            })
        }, function () {
            //取消操作
        });
    }

    function refreshUrl() {
        $.showLoading()
        setTimeout(function () {
            $.hideLoading()
            window.location.replace('${base}/shop/goodListPage/init')
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

            var gender = newObj.gender
            var genderHtmlStr = ''
            if (gender == 0) {
                genderHtmlStr = '<div class="aui-car-release">弟弟</div>'
            } else {
                genderHtmlStr = '<div class="aui-car-release">妹妹</div>'
            }
            var retailPrice = '￥' + newObj.retailPrice
            var frontMoney = '=定金￥' + newObj.frontMoney
            var secondMoney = '尾款￥' + newObj.secondMoney
            var symbolName = newObj.symbolName
            var goodTitle = newObj.goodTitle
            var goodId = newObj.goodId
            var goodBrief = newObj.goodBrief
            var createTimeStr = newObj.createTimeStr
            var listPicUrl = newObj.listPicUrl

            // language=HTML
            var htmlBody = '<a href="javascript:;" class="aui-content-list">' +
                '               <div class="aui-flex b-line">' +
                '                   <div class="aui-car-img">' +
                genderHtmlStr +
                '                       <div class="aui-icon-play"> <i class="icon icon-play"></i></div>' +
                '                       <img src="' + listPicUrl + '" alt="' + goodTitle + '">' +
                '                   </div>' +
                '                   <div class="aui-flex-box">' +
                '                       <h2>' + goodTitle + '<br/>' + goodBrief + '</h2>' +
                '                       <span>' + symbolName + '</span>' +
                '                       <p>' + retailPrice + frontMoney + secondMoney + '</p>' +
                '                       <p>' + createTimeStr + '</p>' +
                '                   </div>' +
                '               </div>' +
                '               <div class="aui-flex">' +
                '                   <div class="aui-flex-box" onclick="sharePhoto(\'' + goodId + '\')">' +
                '                       <em><i class="icon icon-share"></i>分享</em>' +
                '                   </div>' +
                '                   <div class="aui-flex-box" onclick="window.location.href=' + baseUrl + '\'/shop/userListPage/initForOrder/' + goodId + '/' + secondMoney + '\'">' +
                '                       <em><i class="icon icon-comment"></i> 补单</em>' +
                '                   </div>' +
                '                   <div class="aui-flex-box" onclick="window.location.href=' + baseUrl + '\'/shop/goodListPage/modPet?goodId=' + goodId + '\'">' +
                '                       <em><i class="icon icon-data"></i> 改价</em>' +
                '                   </div>' +
                '                   <div class="aui-flex-box">' +
                '                       <em class="aui-clear-line"><i class="icon icon-more"></i> 绑定</em>' +
                '                   </div>' +
                '               </div>' +
                '           </a>'
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
        $.post('${base}/shop/goodListPage/goodDym', {
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
<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>协议列表</title>
    <@css.css/>
    <style type="text/css">
        .weui-label {
            width: 75px;
        }
    </style>
</head>
<body ontouchstart>
<div class="page__pd">
    <div class="weui-search-bar" id="searchBar">
        <form class="weui-search-bar__form" action="${base}/shop/protectPage/sellList">
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
        <div class="weui-panel__bd">
            <#list beanArray as beanArray>
                <a href="javascript:queryTaobaoSell('${beanArray.protectId}');"
                   class="weui-media-box weui-media-box_appmsg open-popup"
                   data-target="#half">
                    <div class="weui-media-box__hd">
                        <img class="weui-media-box__thumb" src="${beanArray.avatarUrl}" alt=""
                             style="width: 70px;height: 70px;">
                        <span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">${beanArray.protectTypeStr}</span>

                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">
                            用户 ${beanArray.nickName}
                            <span class="weui-media-box__title-after">${beanArray.protectTimeStr}</span>
                        </h4>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">用户手机号码：${beanArray.userMobile}</p>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">猫咪品种：${beanArray.symbolName}-
                            <#if beanArray.petSex==1>
                                公
                            <#elseif beanArray.petSex=2>
                                母
                            <#else >
                                未知
                            </#if>
                        </p>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">出生日期：${beanArray.birthdayStr}</p>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">猫咪价格：${beanArray.petPrice}</p>
                    </div>
                </a>
            </#list>
        </div>
    </div>


</div>

<div id="half" class='weui-popup__container popup-bottom' data-id="popup_id">
    <div class="weui-popup__overlay"></div>
    <div class="weui-popup__modal" style="height: 80%;">
        <div class="toolbar">
            <div class="toolbar-inner">
                <a href="javascript:;" class="picker-button close-popup">关闭</a>
                <h1 class="title">购买详情</h1>
            </div>
        </div>
        <div class="modal-content">
            <div class="weui-search-bar" id="searchBar">
                <form class="weui-search-bar__form" action="#">
                    <div class="weui-search-bar__box">
                        <i class="weui-icon-search"></i>
                        <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索"
                               required="">
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
            <div class="weui-flex">
                <a href="javascript:addData('');" id="addSellId" class="weui-flex__item"
                   data-id="dialog">
                    <div class="weui-grid__icon">
                        <img src="${base}/resources/shopImg/icon_nav_add.png" alt="">
                    </div>
                    <p class="weui-grid__label">
                        新增
                    </p>
                </a>
                <a href="javascript:showData('');" class="weui-flex__item" id="dataSellId" data-id="progress">
                    <div class="weui-grid__icon">
                        <img src="${base}/resources/shopImg/icon_nav_data.png" alt="">
                    </div>
                    <p class="weui-grid__label">
                        数据
                    </p>
                </a>
            </div>

            <div class="page__bd" id="searchBody">

                <div class="weui-cell weui-cell_swiped">
                    <div class="weui-cell__bd">
                        <div class="weui-form-preview">
                            <div class="weui-form-preview__hd">
                                <label class="weui-form-preview__label">付款-剩余</label>
                                <em class="weui-form-preview__value" onclick="modifyPrice('')">2400.0-400.0</em>
                            </div>
                            <div class="weui-form-preview__bd">
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">状态</label>
                                    <span class="weui-form-preview__value" style="color:#f0ad4e">已发货</span>
                                </div>
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">购买商品</label>
                                    <span class="weui-form-preview__value">猫砂-1，猫粮-1</span>
                                </div>
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">地址</label>
                                    <span class="weui-form-preview__value" onclick="copyAddress('taobaoSellId',
                                    '熊平清,13367116000,湖北省,鄂州市,鄂城区,凤凰街道鄂州市公安局,000000')" id="taobaoSellId">
                                        熊平清,13367116000,湖北省,鄂州市,鄂城区,凤凰街道鄂州市公安局,000000
                                         <img src="${base}/resources/shopImg/icon_nav_copy.png"
                                              style="width: 13px;height: 13px;">
                                    </span>

                                </div>
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">备注</label>
                                    <span class="weui-form-preview__value">没啥说的</span>
                                </div>
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">时间</label>
                                    <span class="weui-form-preview__value">2018-10-13 23：11：12</span>
                                </div>
                            </div>
                            <div class="weui-form-preview__ft">
                                <button class="weui-form-preview__btn weui-form-preview__btn_primary"
                                        onclick="insertKuaidi('')">录入快递
                                </button>
                                <a class="weui-form-preview__btn weui-form-preview__btn_default"
                                   href="javascript:backMoney('');">开始返现</a>
                                <a class="weui-form-preview__btn weui-form-preview__btn_default"
                                   href="javascript:noticeKuaiDi('')">下单通知</a>
                            </div>
                        </div>
                    </div>
                    <div class="weui-cell__ft" style="width: 60%;">
                        <a class="weui-swiped-btn weui-swiped-btn_warn delete-swipeout"
                           style=" flex: 1;" href="javascript:">删除</a>
                        <a class="weui-swiped-btn weui-swiped-btn_default delete-swipeout"
                           style="flex: 1;" href="javascript:">关闭</a>
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

        .weui-dialog__bd {
            padding: 0;
            max-height: 360px;
            overflow: scroll;
        }

        .weui-dialog {
            max-height: 560px;
        }

        .weui-prompt-input {
            margin-bottom: 10px;
        }

        .gap_cls {
            margin-bottom: 10px;
        }
    </style>

    <@js.js/>

    <script>
        $(document).on("open", ".weui-popup__container", function (res) {
            console.log("open popup" + res.currentTarget.dataset.id);
        }).on("close", ".weui-popup__container", function () {
            console.log("close popup");
        });

        $('.delete-swipeout').click(function () {
            $(this).parents('.weui-cell').remove()
        })
        $('.close-swipeout').click(function () {
            $(this).parents('.weui-cell').swipeout('close')
        })

        function queryTaobaoSell(protectId) {
            $.post('${base}/shop/taobaoPage/qTaobaoList', {
                protectId: protectId,
            }, function (res) {
                if (res.msgCode == 10000) {
                    $("#addSellId").attr("href", "javascript:addData('" + protectId + "');");
                    $("#dataSellId").attr("href", "javascript:showData('" + protectId + "');");
                    var searchBodyDiv = $('#searchBody')
                    searchBodyDiv.empty()
                    var htmlBodyTotal = ''
                    // language=HTML

                    var msgBody = res.msgBody
                    for (var msgIndex in msgBody) {
                        var msgItem = msgBody[msgIndex]
                        var buyStatus = msgItem.buyStatus
                        var buyStatusStr = ''
                        if (buyStatus == 0) {
                            buyStatusStr = '已下单'
                        } else if (buyStatus == 1) {
                            buyStatusStr = '已通知'
                        } else if (buyStatus == 2) {
                            buyStatusStr = '已发货'
                        } else if (buyStatus == 3) {
                            buyStatusStr = '已返现'
                        }
                        var htmlBody =
                            '<div class="weui-cell weui-cell_swiped gap_cls">' +
                            '    <div class="weui-cell__bd">' +
                            '        <div class="weui-form-preview">' +
                            '            <div class="weui-form-preview__hd">' +
                            '                <label class="weui-form-preview__label">付款金额</label>' +
                            '                <em class="weui-form-preview__value" onclick="modifyLeftMoney(\'' + msgItem.taobaoId + '\',\'' + msgItem.leftMoney + '\',this)">¥' + msgItem.buyPrice + '</em>' +
                            '                <label class="weui-form-preview__label">返现剩余</label>' +
                            '                <em class="weui-form-preview__value" onclick="modifyLeftMoney(\'' + msgItem.taobaoId + '\',\'' + msgItem.leftMoney + '\',this)">¥' + msgItem.leftMoney + '</em>' +
                            '            </div>' +
                            '            <div class="weui-form-preview__bd">' +
                            '                <div class="weui-form-preview__item">' +
                            '                    <label class="weui-form-preview__label">状态</label>' +
                            '                    <span class="weui-form-preview__value" style="color:red">' + buyStatusStr + '</span>' +
                            '                </div>' +
                            '                <div class="weui-form-preview__item">' +
                            '                    <label class="weui-form-preview__label">时间</label>' +
                            '                    <span class="weui-form-preview__value">' + msgItem.createTimeStr + '</span>' +
                            '                </div>' +
                            '                <div class="weui-form-preview__item">' +
                            '                    <label class="weui-form-preview__label">地址</label>' +
                            '                    <span class="weui-form-preview__value" onclick="copyAddress(\'taobaoSellId\',\'' + msgItem.addressStr + '\')" id="taobaoSellId">' + msgItem.addressStr +
                            '                         <img src="${base}/resources/shopImg/icon_nav_copy.png"' +
                            '                              style="width: 13px;height: 13px;">' +
                            '                    </span>' +
                            '                </div>' +
                            '                <div class="weui-form-preview__item">' +
                            '                    <label class="weui-form-preview__label">备注</label>' +
                            '                    <span class="weui-form-preview__value" onclick="showMoreData(\'' + msgItem.remark + '\',this)">点击查看详情</span>' +
                            '                </div>' +
                            '            </div>' +
                            '            <div class="weui-form-preview__ft">' +
                            '                <button class="weui-form-preview__btn weui-form-preview__btn_primary" onclick="noticeDeliver(\'' + msgItem.taobaoId + '\')">请求快递</button>' +
                            '                <a class="weui-form-preview__btn weui-form-preview__btn_default" href="javascript:backMoney(\'' + msgItem.taobaoId + '\')">返现确认</a>' +
                            '                <a class="weui-form-preview__btn weui-form-preview__btn_default" href="javascript:deleteMsg(\'' + msgItem.taobaoId + '\');">删除信息</a>' +
                            '            </div>' +
                            '        </div>' +
                            '    </div>' +
                            '</div>'
                        searchBodyDiv.append(htmlBody)
                    }
                } else if (res.msgCode == 10001) {
                    $.toast('加载出错')
                } else if (res.msgCode == 10003) {
                    window.location.replace("${base}/shop/loginPage/index/protectPage&&sellList")
                }
            })
        }

        function insertKuaidi(id) {
            $.confirm("<div style='margin:0 1.6em .8em;'>" +
                '<div class="weui-cells weui-cells_form" >' +
                '  <div class="weui-cell">' +
                '    <div class="weui-cell__bd">' +
                '      <input class="weui-input" type="number" placeholder="请输入快递单号">' +
                '    </div>' +
                '  </div>' +
                '</div>' +
                "</div>", "录入快递单", function () {
                $.toast("文件已经删除!");
            }, function () {
                //取消操作
            });
        }

        // 0 1.6em .8em;
        function showData(id) {
            $.confirm("<div style='margin:0 1.6em .8em;'>" + "<table>" +
                "<tr><td>测试</td><td>测试</td></tr>" +
                "<tr><td>测试</td><td>测试</td></tr>" +
                "</table>" + "</div>", "消费记录", function () {
                $.toast("文件已经删除!");
            }, function () {
                //取消操作
            });
        }

        function backMoney(id) {
            $.confirm("开始返现，并给用户发通知", "确定操作", function () {
                $.toast("文件已经删除!");
            }, function () {
                //取消操作
            });
        }

        function noticeDeliver(id) {
            $.confirm("通知同事发快递，并发送通知", "确定操作", function () {
                $.toast("文件已经删除!");
            }, function () {
                //取消操作
            });
        }

        function deleteMsg(id) {

        }

        function modifyLeftMoney(taobaoId, leftMoney, thisDiv) {
            var thisDivJ = $(thisDiv)
            $.prompt({
                text: "输入计算后，实际剩余价格",
                title: "输入价格",
                onOK: function (text) {
                    $.post('${base}/shop/taobaoPage/modifyLeftMoney', {
                        taobaoId: taobaoId,
                        leftMoney: text
                    }, function (res) {
                        if (res.msgCode == 10000) {
                            thisDivJ.html(res.msgBody)
                        } else if (res.msgCode == 10001) {
                            $.toast('加载出错')
                        } else if (res.msgCode == 10003) {
                            window.location.replace("${base}/shop/loginPage/index/protectPage&&sellList")
                        }
                    })
                },
                onCancel: function () {
                    console.log("取消了");
                },
                input: leftMoney
            });
        }

        function copyAddress(thisDiv, textStr) {
            var spanDiv = document.getElementById(thisDiv);
            var clipboard = new Clipboard(spanDiv, {
                text: function () {
                    return textStr;
                }
            });

            clipboard.on('success', function (e) {
                $.toast("复制成功")
            });

            clipboard.on('error', function (e) {
                $.toast("复制失败")
            });
        }

        function showMoreData(remark, divHtml) {
            var text = $(divHtml).text()
            if (text == '点击查看详情') {
                $(divHtml).html(remark)
            } else {
                $(divHtml).html('点击查看详情')
            }

        }

        var item = {}

        function addData(id) {
            $.confirm(
                '<div class="page_pd" style="width: 300px;height: 50%;">' +
                '<div class="weui-cells weui-cells_form">' +
                '  <div class="weui-cell">' +
                '    <div class="weui-cell__hd"><label class="weui-label">收款</label></div>' +
                '    <div class="weui-cell__bd">' +
                '      <input class="weui-input" id="priceInId" type="number" placeholder="请输入金额" onchange="inputAfter(\'' + id + '\')"/>' +
                '    </div>' +
                '  </div>' +
                '  <div class="weui-flex">' +
                '    <div class="weui-flex__item">' +
                '       <div class="weui-cell">' +
                '          <div class="weui-cell__hd"><label class="weui-label">猫粮</label></div>' +
                '          <div class="weui-cell__bd">' +
                '              <input class="weui-input" id="maoliangId" type="number" value="" placeholder="数量" onchange="inputAfter(\'' + id + '\')"/>' +
                '          </div>' +
                '       </div>' +
                '   </div>' +
                '    <div class="weui-flex__item">' +
                '       <div class="weui-cell">' +
                '          <div class="weui-cell__hd"><label class="weui-label">猫砂</label></div>' +
                '          <div class="weui-cell__bd">' +
                '              <input class="weui-input" id="maoshaId" type="number" value="" placeholder="数量"   onchange="inputAfter(\'' + id + '\')"/>' +
                '          </div>' +
                '       </div>' +
                '    </div>' +
                '  </div>' +
                '  <div class="weui-flex">' +
                '    <div class="weui-flex__item">' +
                '       <div class="weui-cell">' +
                '          <div class="weui-cell__hd"><label class="weui-label">罐头</label></div>' +
                '          <div class="weui-cell__bd">' +
                '              <input class="weui-input" id="guantouId" type="number" value=""  placeholder="数量"  onchange="inputAfter(\'' + id + '\')"/>' +
                '          </div>' +
                '       </div>' +
                '   </div>' +
                '    <div class="weui-flex__item">' +
                '       <div class="weui-cell">' +
                '          <div class="weui-cell__hd"><label class="weui-label">营养膏</label></div>' +
                '          <div class="weui-cell__bd">' +
                '              <input class="weui-input" id="yingyanggaoId" type="number" value="" placeholder="数量" onchange="inputAfter(\'' + id + '\')"/>' +
                '          </div>' +
                '       </div>' +
                '    </div>' +
                '  </div>' +
                '  <div class="weui-flex">' +
                '    <div class="weui-flex__item">' +
                '       <div class="weui-cell">' +
                '          <div class="weui-cell__hd"><label class="weui-label">化毛膏</label></div>' +
                '          <div class="weui-cell__bd">' +
                '              <input class="weui-input" id="huamaogaoId" type="number" value=""  placeholder="数量"  onchange="inputAfter(\'' + id + '\')"/>' +
                '          </div>' +
                '       </div>' +
                '   </div>' +
                '    <div class="weui-flex__item">' +
                '       <div class="weui-cell">' +
                '          <div class="weui-cell__hd"><label class="weui-label">赖氨酸</label></div>' +
                '          <div class="weui-cell__bd">' +
                '              <input class="weui-input" id="laiansuanId" type="number" value="" placeholder="数量" onchange="inputAfter(\'' + id + '\')"/>' +
                '          </div>' +
                '       </div>' +
                '    </div>' +
                '  </div>' +
                '  <div class="weui-flex">' +
                '    <div class="weui-flex__item">' +
                '       <div class="weui-cell">' +
                '          <div class="weui-cell__hd"><label class="weui-label">冻干</label></div>' +
                '          <div class="weui-cell__bd">' +
                '              <input class="weui-input" id="dongganId" type="number" value=""  placeholder="数量" onchange="inputAfter(\'' + id + '\')"/>' +
                '          </div>' +
                '       </div>' +
                '   </div>' +
                '  </div>' +
                '  <div class="weui-cell">' +
                '    <div class="weui-cell__bd">' +
                '      <textarea class="weui-textarea" id="remarkMsgId" placeholder="录入备注信息" rows="3" onchange="inputAfter(\'' + id + '\')"/>' +
                '    </div>' +
                '  </div>' +
                '  <div class="weui-cell">' +
                '    <div class="weui-cell__bd">' +
                '      <textarea class="weui-textarea" id="addressStrId" placeholder="录入收货地址" rows="3" onchange="inputAfter(\'' + id + '\')"/>' +
                '    </div>' +
                '  </div>' +
                '</div>' +
                '</div>', "新增数据", function () {
                    var priceIdTemp = item['priceId']
                    if (priceIdTemp && priceIdTemp != '') {
                        $.post('${base}/shop/taobaoPage/insertTaobaoSell', {
                            dataItem: JSON.stringify(item)
                        }, function (res) {
                            if (res.msgCode == 10000) {
                                $.toast('添加成功')
                                queryTaobaoSell(id)
                            } else if (res.msgCode == 10001) {
                                $.toast('加载出错')
                            } else if (res.msgCode == 10003) {
                                window.location.replace("${base}/shop/loginPage/index/protectPage&&sellList")
                            }

                        })
                    } else {
                        $.toast('请录入信息')
                    }

                }, function () {
                    //取消操作
                });

        }

        function inputAfter(protectId) {
            var priceId = $('#priceInId').val()
            var maoliangId = $('#maoliangId').val()
            var maoshaId = $('#maoshaId').val()
            var guantouId = $('#guantouId').val()
            var yingyanggaoId = $('#yingyanggaoId').val()
            var huamaogaoId = $('#huamaogaoId').val()
            var laiansuanId = $('#laiansuanId').val()
            var dongganId = $('#dongganId').val()
            var remarkMsgId = $('#remarkMsgId').val()
            var addressStrId = $('#addressStrId').val()
            item['protectId'] = protectId
            item['priceId'] = priceId
            item['maoliangId'] = (maoliangId == '' ? 0 : maoliangId)
            item['maoshaId'] = (maoshaId == '' ? 0 : maoshaId)
            item['guantouId'] = (guantouId == '' ? 0 : guantouId)
            item['yingyanggaoId'] = (yingyanggaoId == '' ? 0 : yingyanggaoId)
            item['huamaogaoId'] = (huamaogaoId == '' ? 0 : huamaogaoId)
            item['laiansuanId'] = (laiansuanId == '' ? 0 : laiansuanId)
            item['dongganId'] = (dongganId == '' ? 0 : dongganId)
            item['remarkMsgId'] = remarkMsgId
            item['addressStrId'] = addressStrId
        }

    </script>
</body>
</html>
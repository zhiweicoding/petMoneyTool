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
        <form class="weui-search-bar__form" action="${base}/shop/zhimaPage/list">
            <div class="weui-search-bar__box">
                <i class="weui-icon-search"></i>
                <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索" required=""
                       name="anyText">
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
    <div class="weui-panel weui-panel_access">
        <div class="weui-panel__bd">
          <#list array as array>
              <a href="javascript:goodAction('${array.phoneNum}');" class="weui-media-box weui-media-box_appmsg"
                 id="${array.phoneNum}" >
                  <div class="weui-media-box__bd">
                      <h4 class="weui-media-box__title">
                          ${array.phoneNum}
                          <span class="weui-media-box__title-after">${array.modifyTime?string('yyyy-MM-dd')}</span>
                      </h4>
                      <#if array.isReach==1 && array.isUse==0>
                          <p class="weui-media-box__desc">达到条件 未使用</p>
                      <#elseif array.isReach==1 && array.isUse==1>
                          <p class="weui-media-box__desc">达到条件 已使用</p>
                      <#elseif array.isReach==0>
                          <p class="weui-media-box__desc">未达到条件</p>
                      </#if>
                  </div>
              </a>
          </#list>
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

    function goodAction(phoneNum) {
        $.actions({
            title: "选择操作",
            onClose: function () {
                console.log("close");
            },
            actions: [{
                text: "变更为使用",
                className: "color-default",
                onClick: function () {
                    $.showLoading();
                    $.post('${base}/shop/zhimaPage/changeUse', {
                        phoneNum: phoneNum
                    }, function (res) {
                        $.hideLoading();
                        if (res.msgCode == 10000) {
                            $('#' + phoneNum).remove();
                            $.toast("操作成功", function () {
                                console.log('close');
                            });
                        } else if (res.msgCode == 10001) {
                            $.toast("操作失败", "cancel", function (toast) {
                                console.log(toast);
                            });
                        } else if (res.msgCode == 10003) {
                            window.location.replace('${base}/shop/loginPage/index/zhimaPage&&list')
                        }
                    })
                }
            }, {
                text: "变更为未使用",
                className: 'color-default',
                onClick: function () {
                    $.showLoading();
                    $.post('${base}/shop/zhimaPage/changeNotUse', {
                        phoneNum: phoneNum
                    }, function (res) {
                        $.hideLoading();
                        if (res.msgCode == 10000) {
                            $('#' + phoneNum).remove();
                            $.toast("操作成功", function () {
                                console.log('close');
                            });
                        } else if (res.msgCode == 10001) {
                            $.toast("操作失败", "cancel", function (toast) {
                                console.log(toast);
                            });
                        } else if (res.msgCode == 10003) {
                            window.location.replace('${base}/shop/loginPage/index/zhimaPage&&list')
                        }
                    })

                }
            }]
        });
    }
</script>

</body>
</html>
<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>添加购买记录</title>
    <@css.css/>
</head>
<body ontouchstart>
<div class="page__pd">
    <div class="weui-search-bar" id="searchBar">
        <form class="weui-search-bar__form" action="${base}/shop/protectPage/list">
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
                <a href="https://www.myloveqian.cn/page/protect/signPageDetail?openId=${beanArray.openId}&protectId=${beanArray.protectId}"
                   class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd">
                        <img class="weui-media-box__thumb" src="${beanArray.avatarUrl}" alt=""
                             style="width: 70px;height: 70px;">
                        <span class="weui-badge" style="position: absolute;top: -.4em;right: -.4em;">

                        <#if beanArray.isDelete==0>
                            有效<#else>作废
                        </#if>
                        </span>
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">
                            用户 ${beanArray.nickName}
                            <span class="weui-media-box__title-after">${beanArray.protectTimeStr}</span>
                        </h4>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">用户手机号码：${beanArray.userMobile}</p>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">销售信息：${beanArray.sellName}
                            -${beanArray.sellPhone}</p>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">猫咪品种：${beanArray.symbolName}-
                            <#if beanArray.petSex==1>
                                公
                            <#elseif beanArray.petSex=2>
                                母
                            <#else >
                                未知
                            </#if>
                        </p>
                        <p class="weui-media-box__desc" style="margin-bottom: 3px;">签署价格：${beanArray.petPrice}-
                            <#if beanArray.protectType==1>半价
                            <#elseif beanArray.protectType==2>免费
                            <#else >正常购买
                            </#if>
                        </p>
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

<@js.js/>

</body>
</html>
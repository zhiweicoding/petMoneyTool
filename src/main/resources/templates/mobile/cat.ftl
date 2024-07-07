<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<#import "common/mobileCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<@css.commonCss/>
<title>寻猫</title>
<@css.endCss/>
<body>

<header class="aui-header-default aui-header-fixed ">
    <a href="#" class="aui-header-item">
        <i class="aui-icon aui-icon-back"></i>
    </a>
    <div class="aui-header-center aui-header-center-clear">
        <div class="aui-header-search-box">
            <i class="aui-icon aui-icon-small-search"></i>
            <input id="" type="text" placeholder="输入品种快速搜索" class="aui-header-search">
        </div>
    </div>
    <a href="#" class="aui-header-item-icon">
        <i class="aui-icon aui-icon-packet"></i>
        <i class="aui-icon aui-icon-member"></i>
    </a>
</header>
<section class="aui-scroll-contents">
    <div class="aui-scroll-box" data-ydui-scrolltab>
        <div class="aui-scroll-nav">
            <#list symbol as symbol>
                <a href="#" class="aui-scroll-item aui-crt">
                    <div class="aui-scroll-item-icon"></div>
                    <div class="aui-scroll-item-text">${symbol.symbolName}</div>
                </a>
            </#list>
        </div>
        <div class="aui-scroll-content">

            <#list symbol as symbol>
                <div class="aui-scroll-content-item">
                    <div class="aui-class-img">
                        <img src="${symbol.imgUrl!'http://photo.jianyunzhichang.com/both.png'}" alt="">
                        <a href="${base}/webMobile/type/purchase" class="type-head">
                        <span class="type-span-head">
                            点击挑选
                        </span>
                        </a>
                    </div>
                    <h2 class="aui-scroll-content-title">${symbol.symbolName}</h2>
                    <section class="aui-grid-content">
                        <div class="aui-grid-row aui-grid-row-clear">
                            <div style="margin-bottom: 8px;">
                                <img src="${base}/resources/mobileImg/icon/shiying.png"
                                     style="width: 24px;height: 24px;display:inline-block;margin-right: 10px;vertical-align: middle;"
                                     alt="">
                                <span style="height: 24px;line-height: 24px;text-align: center;color: #555;">初养适应度：${symbol.firstTime!'中'}</span>
                            </div>
                            <div style="margin-bottom: 8px;">
                                <img src="${base}/resources/mobileImg/icon/good.png"
                                     style="width: 24px;height: 24px;display:inline-block;margin-right: 10px;vertical-align: middle;"
                                     alt="">
                                <span style="height: 24px;line-height: 24px;text-align: center;color: #555;">优点：${symbol.good!'暂无信息'}</span>
                            </div>
                            <div style="margin-bottom: 8px;">
                                <img src="${base}/resources/mobileImg/icon/bad.png"
                                     style="width: 24px;height: 24px;display:inline-block;margin-right: 10px;vertical-align: middle;"
                                     alt="">
                                <span style="height: 24px;line-height: 24px;text-align: center;color: #555;">缺点：${symbol.bad!'暂无信息'}</span>
                            </div>
                            <div style="margin-bottom: 8px;">
                                <img src="${base}/resources/mobileImg/icon/evl.png"
                                     style="width: 24px;height: 24px;display:inline-block;margin-right: 10px;vertical-align: middle;"
                                     alt="">
                                <span style="height: 24px;line-height: 24px;text-align: center;color: #555;">评价：${symbol.allOf!'暂无信息'}</span>
                            </div>
                        </div>
                    </section>
                </div>
            </#list>
        </div>
    </div>
</section>


<@common.footerDiv/>
<@js.commonJs/>
<script>
    var footerActive = $('.aui-footer-item');
    footerActive.removeClass('aui-footer-active');
    footerActive.eq(1).addClass('aui-footer-active');
</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?17beb155aceef2dd9b74677419a1b70d";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>
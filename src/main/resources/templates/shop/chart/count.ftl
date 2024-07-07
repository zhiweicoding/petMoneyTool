<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>销售排行榜</title>
    <@css.css/>
    <style>
    </style>
</head>
<body ontouchstart>
<div class="page__pd">
    <div class="weui-panel weui-panel_access">
        <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/WX20210223-142103.png"
             width="100%" style="width: 100%;"/>
        <div class="weui-cells" style="margin-top: 0;padding-top: 0;">
            <#list sellerSort as sellerSort>
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <div style="display: flex;justify-content: space-between;align-content: center;height: 30px;padding-top: 10px;">
                            <#if sellerSort_index==0>
                                <div style="display: flex;flex-direction: row;justify-content: left;align-content: center;height: 30px;">
                                    <div style="font-size:13px;color:white;background:#e12e24;font-weight: 400;margin-right: 15px;width: 20px;height: 20px;text-align: center;border-radius: 3px;">${sellerSort_index+1}</div>
                                    <div style="font-size: 14px;letter-spacing: 0;font-weight: 400">${sellerSort.shopName}</div>
                                </div>
                                <div class="weui-cell__ft"
                                     style="color: #e12e24;font-size: 16px;letter-spacing: 1px;font-weight: bolder;">${sellerSort.y}</div>
                            <#elseif sellerSort_index==1>
                                <div style="display: flex;flex-direction: row;justify-content: left;align-content: center;height: 30px;">
                                    <div style="font-size:13px;color:white;background:#fc711f;font-weight: 400;margin-right: 15px;width: 20px;height: 20px;text-align: center;border-radius: 3px;">${sellerSort_index+1}</div>
                                    <div style="font-size: 14px;letter-spacing: 1px;font-weight: 400">${sellerSort.shopName}</div>
                                </div>
                                <div class="weui-cell__ft"
                                     style="color: #fc711f;font-size: 16px;letter-spacing: 1px;font-weight: bolder;">${sellerSort.y}</div>
                            <#elseif sellerSort_index==2>
                                <div style="display: flex;flex-direction: row;justify-content: left;align-content: center;height: 30px;">
                                    <div style="font-size:13px;color:white;background:#fdb82c;font-weight: 400;margin-right: 15px;width: 20px;height: 20px;text-align: center;border-radius: 3px;">${sellerSort_index+1}</div>
                                    <div style="font-size: 14px;letter-spacing: 1px;font-weight: 400">${sellerSort.shopName}</div>
                                </div>
                                <div class="weui-cell__ft"
                                     style="color: #fdb82c;font-size: 16px;letter-spacing: 1px;font-weight: bolder;">${sellerSort.y}</div>
                            <#else >
                                <div style="display: flex;flex-direction: row;justify-content: left;align-content: center;height: 30px;">
                                    <div style="font-size:13px;color:white;background:#a3a3a3;font-weight: 400;margin-right: 15px;width: 20px;height: 20px;text-align: center;border-radius: 3px;">${sellerSort_index+1}</div>
                                    <div style="font-size: 14px;letter-spacing: 1px;font-weight: 400">${sellerSort.shopName}</div>
                                </div>
                                <div class="weui-cell__ft" style="font-size: 15px;">${sellerSort.y}</div>
                            </#if>
                        </div>
                    </div>
                </div>
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
        margin-top: -15px;
    }
</style>

<@js.js/>
<script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
<script src="https://cdn.bootcss.com/jquery_lazyload/1.9.7/jquery.lazyload.min.js"></script>
<script>

</script>

</body>
</html>
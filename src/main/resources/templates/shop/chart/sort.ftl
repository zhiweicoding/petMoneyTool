<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>销售排行榜</title>
    <@css.css/>
    <style>
        .weui-btn-self {
            position: relative;
            display: block;
            margin-left: auto;
            margin-right: auto;
            padding-left: 14px;
            padding-right: 14px;
            box-sizing: border-box;
            font-size: 18px;
            text-align: center;
            text-decoration: none;
            color: #fff;
            line-height: 2.55555556;
            border-radius: 5px;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
            overflow: hidden;
        }

        .weui-btn-self:after {
            content: " ";
            width: 200%;
            height: 200%;
            position: absolute;
            top: 0;
            left: 0;
            /* border: 1px solid rgba(0,0,0,.2); */
            -webkit-transform: scale(.5);
            transform: scale(.5);
            -webkit-transform-origin: 0 0;
            transform-origin: 0 0;
            box-sizing: border-box;
            border-radius: 10px;
        }
    </style>
</head>
<body ontouchstart>
<div class="page__pd">
    <div class="weui-panel weui-panel_access">
        <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200607/WX20210223-142103.png"
             width="100%" style="width: 100%;"/>
        <div>
            <a href="javascript:getDate(1);" class="weui-btn weui-btn_mini weui-btn_warn"
               style="margin-left:5px;margin-right: 5px;" id="currentMonth">当月</a>
            <a href="javascript:getDate(2);" class="weui-btn weui-btn_mini weui-btn_default" style="margin-right: 5px;"
               id="beforeMonth">上个月</a>
            <a href="javascript:getDate(3);" class="weui-btn weui-btn_mini weui-btn_default" style="margin-right: 5px;"
               id="monthAvg">月均</a>

            <a href="javascript:void(0);"
               style="float:right; background-color: transparent;border: transparent;font-size: 15px;line-height: 48px; font-weight: bolder;margin-right: 0px;color: #0d0a0a;"
               class="weui-btn-self weui-btn_mini weui-btn_default">总计：${allMoney}</a>
        </div>
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
                                     style="color: #e12e24;font-size: 16px;letter-spacing: 1px;font-weight: bolder;">${sellerSort.money}</div>
                            <#elseif sellerSort_index==1>
                                <div style="display: flex;flex-direction: row;justify-content: left;align-content: center;height: 30px;">
                                    <div style="font-size:13px;color:white;background:#fc711f;font-weight: 400;margin-right: 15px;width: 20px;height: 20px;text-align: center;border-radius: 3px;">${sellerSort_index+1}</div>
                                    <div style="font-size: 14px;letter-spacing: 1px;font-weight: 400">${sellerSort.shopName}</div>
                                </div>
                                <div class="weui-cell__ft"
                                     style="color: #fc711f;font-size: 16px;letter-spacing: 1px;font-weight: bolder;">${sellerSort.money}</div>
                            <#elseif sellerSort_index==2>
                                <div style="display: flex;flex-direction: row;justify-content: left;align-content: center;height: 30px;">
                                    <div style="font-size:13px;color:white;background:#fdb82c;font-weight: 400;margin-right: 15px;width: 20px;height: 20px;text-align: center;border-radius: 3px;">${sellerSort_index+1}</div>
                                    <div style="font-size: 14px;letter-spacing: 1px;font-weight: 400">${sellerSort.shopName}</div>
                                </div>
                                <div class="weui-cell__ft"
                                     style="color: #fdb82c;font-size: 16px;letter-spacing: 1px;font-weight: bolder;">${sellerSort.money}</div>
                            <#else >
                                <div style="display: flex;flex-direction: row;justify-content: left;align-content: center;height: 30px;">
                                    <div style="font-size:13px;color:white;background:#a3a3a3;font-weight: 400;margin-right: 15px;width: 20px;height: 20px;text-align: center;border-radius: 3px;">${sellerSort_index+1}</div>
                                    <div style="font-size: 14px;letter-spacing: 1px;font-weight: 400">${sellerSort.shopName}</div>
                                </div>
                                <div class="weui-cell__ft" style="font-size: 15px;">${sellerSort.money}</div>
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

    function getDate(type) {
        var weuiCells = $('.weui-cells');
        weuiCells.empty()
        switch (type) {
            case 1:
                $('#currentMonth').removeClass('weui-btn_default').removeClass('weui-btn_warn').addClass('weui-btn_warn')
                $('#beforeMonth').removeClass('weui-btn_default').removeClass('weui-btn_warn').addClass('weui-btn_default')
                $('#monthAvg').removeClass('weui-btn_default').removeClass('weui-btn_warn').addClass('weui-btn_default')
                break;
            case 2:
                $('#currentMonth').removeClass('weui-btn_default').removeClass('weui-btn_warn').addClass('weui-btn_default')
                $('#beforeMonth').removeClass('weui-btn_default').removeClass('weui-btn_warn').addClass('weui-btn_warn')
                $('#monthAvg').removeClass('weui-btn_default').removeClass('weui-btn_warn').addClass('weui-btn_default')
                break;
            case 3:
                $('#currentMonth').removeClass('weui-btn_default').removeClass('weui-btn_warn').addClass('weui-btn_default')
                $('#beforeMonth').removeClass('weui-btn_default').removeClass('weui-btn_warn').addClass('weui-btn_default')
                $('#monthAvg').removeClass('weui-btn_default').removeClass('weui-btn_warn').addClass('weui-btn_warn')
                break;
        }
        $.showLoading();
        $.post('${base}/shop/sellPage/getSortArray', {
            type: type,
        }, function (res) {
            $.hideLoading();
            if (res.msgCode == 10000) {
                // language=HTML
                var body = res.msgBody.body

                var htmlBody = ""
                for (var i = 0; i < body.length; i++) {
                    var item = body[i]
                    var htmlPart = "";
                    if (i === 0) {
                        htmlPart = "<div style=\"display: flex;flex-direction: row;justify-content: left;align-content: center;height: 30px;\">" +
                            "           <div style=\"font-size:13px;color:white;background:#e12e24;font-weight: 400;margin-right: 15px;width: 20px;height: 20px;text-align: center;border-radius: 3px;\">" + (i + 1) + "</div>" +
                            "           <div style=\"font-size: 14px;letter-spacing: 0;font-weight: 400\">" + item.shopName + "</div>" +
                            "       </div>" +
                            "       <div class=\"weui-cell__ft\"" +
                            "            style=\"color: #e12e24;font-size: 16px;letter-spacing: 1px;font-weight: bolder;\">" + item.money + "</div>";
                    } else if (i === 1) {
                        htmlPart = "<div style=\"display: flex;flex-direction: row;justify-content: left;align-content: center;height: 30px;\">" +
                            "            <div style=\"font-size:13px;color:white;background:#fc711f;font-weight: 400;margin-right: 15px;width: 20px;height: 20px;text-align: center;border-radius: 3px;\">" + (i + 1) + "</div>" +
                            "            <div style=\"font-size: 14px;letter-spacing: 1px;font-weight: 400\">" + item.shopName + "</div>" +
                            "        </div>" +
                            "        <div class=\"weui-cell__ft\"" +
                            "             style=\"color: #fc711f;font-size: 16px;letter-spacing: 1px;font-weight: bolder;\">" + item.money + "</div>";
                    } else if (i === 2) {
                        htmlPart = "<div style=\"display: flex;flex-direction: row;justify-content: left;align-content: center;height: 30px;\">" +
                            "            <div style=\"font-size:13px;color:white;background:#fdb82c;font-weight: 400;margin-right: 15px;width: 20px;height: 20px;text-align: center;border-radius: 3px;\">" + (i + 1) + "</div>" +
                            "            <div style=\"font-size: 14px;letter-spacing: 1px;font-weight: 400\">" + item.shopName + "</div>" +
                            "        </div>" +
                            "        <div class=\"weui-cell__ft\"" +
                            "             style=\"color: #fdb82c;font-size: 16px;letter-spacing: 1px;font-weight: bolder;\">" + item.money + "</div>";
                    } else {
                        htmlPart = "<div style=\"display: flex;flex-direction: row;justify-content: left;align-content: center;height: 30px;\">\n" +
                            "             <div style=\"font-size:13px;color:white;background:#a3a3a3;font-weight: 400;margin-right: 15px;width: 20px;height: 20px;text-align: center;border-radius: 3px;\">" + (i + 1) + "</div>\n" +
                            "             <div style=\"font-size: 14px;letter-spacing: 1px;font-weight: 400\">" + item.shopName + "</div>\n" +
                            "         </div>\n" +
                            "         <div class=\"weui-cell__ft\" style=\"font-size: 15px;\">" + item.money + "</div>"
                    }
                    htmlBody = "<div class=\"weui-cell\">" +
                        "                    <div class=\"weui-cell__bd\">" +
                        "                        <div style=\"display: flex;justify-content: space-between;align-content: center;height: 30px;padding-top: 10px;\">" +
                        htmlPart
                    "                        </div>" +
                    "                    </div>" +
                    "                </div>"

                    weuiCells.append(htmlBody)
                }

            } else if (res.msgCode == 10001) {
                $.toast("加载失败", "cancel", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10003) {
                $.toast("无权限操作", "cancel", function (toast) {
                    console.log(toast);
                });
            }
        })

    }

</script>

</body>
</html>
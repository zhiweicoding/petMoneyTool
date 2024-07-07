<#import "common/mobileCss.ftl" as css>
<#import "common/mobileJs.ftl" as js>
<#import "common/mobileCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<@css.commonCss/>
<title>商品详情</title>
<style>
    .m-button {
        padding: 0 0.24rem;
    }

    .btn-block {
        text-align: center;
        position: relative;
        border: none;
        pointer-events: auto;
        width: 100%;
        display: block;
        font-size: 1rem;
        height: 2.5rem;
        line-height: 2.5rem;
        margin-top: 0.5rem;
        border-radius: 3px;
    }

    .btn-primary {
        background-color: #04BE02;
        color: #FFF;
    }

    .btn-warning {
        background-color: #FFB400;
        color: #FFF;
    }

    .mask-black {
        background-color: rgba(0, 0, 0, 0.6);
        position: fixed;
        bottom: 0;
        right: 0;
        left: 0;
        top: 0;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: center;
        -webkit-justify-content: center;
        -ms-flex-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        -webkit-align-items: center;
        -ms-flex-align: center;
        align-items: center;
        z-index: 999;
    }

    .m-actionsheet {
        text-align: center;
        position: fixed;
        bottom: 0;
        left: 0;
        width: 100%;
        z-index: 1000;
        background-color: #fff;
        -webkit-transform: translate(0, 100%);
        transform: translate(0, 100%);
        -webkit-transition: -webkit-transform .3s;
        transition: -webkit-transform .3s;
        transition: transform .3s;
        transition: transform .3s, -webkit-transform .3s;
    }

    .actionsheet-toggle {
        -webkit-transform: translate(0, 0);
        transform: translate(0, 0);
    }

    .actionsheet-item {
        display: block;
        position: relative;
        font-size: 0.8rem;
        color: #555;
        height: 2rem;
        line-height: 2rem;
        background-color: #FFF;
    }

    .actionsheet-item:after {
        content: '';
        position: absolute;
        z-index: 2;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 1px;
        border-bottom: 1px solid #D9D9D9;
        -webkit-transform: scaleY(0.5);
        transform: scaleY(0.5);
        -webkit-transform-origin: 0 100%;
        transform-origin: 0 100%;
    }

    .actionsheet-action {
        display: block;
        margin-top: .15rem;
        font-size: 0.8rem;
        color: #555;
        width: 25px;
        height: 25px;
        background-image: url('data:image/png;base64,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');
        background-repeat: no-repeat;
        background-size: 25px;
        position: absolute;
        top: 10px;
        right: 10px;
    }

    .desc {
        display: block;
        font-size: 15px;
        color: #fff;
        line-height: 40px;
        z-index: 99;
        margin-top: -55px;
        margin-bottom: 20px;
        background: rgba(0, 0, 0, 0.5);
    }

    tr {
        height: 40px;
        color: #616161;
    }

    td {
        vertical-align: middle;
        text-align: center;
    }

</style>
<@css.endCss/>
<body>
<header class="aui-header-default aui-header-fixed ">
    <a href="javascript:history.back(-1)" class="aui-header-item">
        <i class="aui-icon aui-icon-back"></i>
    </a>
    <div class="aui-header-center aui-header-center-clear">
        <div class="aui-header-center-logo">
            <div id="scrollSearchPro">
                <span id="tuwenSpan" class="current" onclick="scrollTopClick('tuwenDiv','tuwenSpan')">详细</span>
                <span id="jianceSpan" onclick="scrollTopClick('jianceDiv','jianceSpan')">检测</span>
                <span id="pinxiangSpan" onclick="scrollTopClick('pinxiangDiv','pinxiangSpan')">品相</span>
            </div>
        </div>
    </div>
    <a href="javascript:;" class="aui-header-item-icon select" style="min-width:0;">
        <i class="aui-icon aui-icon-share-pd selectVal" onselectstart="return false"></i>
        <div class="aui-header-drop-down selectList">
            <div class="aui-header-drop-down-san"></div>
            <div class="">
                <p class="" onclick="location='${base}/webMobile/'">首页</p>
            <#--<p class="" onclick="location='index.ftl'">分享</p>-->
            </div>
        </div>
    </a>
</header>
<div class="aui-banner-content aui-fixed-top" data-aui-slider>
    <div class="aui-banner-wrapper">
        <#if bean.photoUrl1??>
            <div class="aui-banner-wrapper-item">
                <a href="#">
                    <img src="${bean.photoUrl1}">
                </a>
            </div>
        </#if>
        <#if bean.photoUrl2??>
            <div class="aui-banner-wrapper-item">
                <a href="#">
                    <img src="${bean.photoUrl2}">
                </a>
            </div>
        </#if>
        <#if bean.photoUrl3??>
            <div class="aui-banner-wrapper-item">
                <a href="#">
                    <img src="${bean.photoUrl3}">
                </a>
            </div>
        </#if>
        <#if bean.photoUrl4??>
            <div class="aui-banner-wrapper-item">
                <a href="#">
                    <img src="${bean.photoUrl4}">
                </a>
            </div>
        </#if>
        <#if bean.photoUrl5??>
            <div class="aui-banner-wrapper-item">
                <a href="#">
                    <img src="${bean.photoUrl5}">
                </a>
            </div>
        </#if>
    </div>
    <div class="aui-banner-pagination"></div>

</div>
<div class="aui-product-content">
    <div class="aui-real-price clearfix">
			<span>
				<i>&yen;</i>${bean.retailPrice}
			</span>
        <del><span class="aui-font-num">&yen;${bean.marketPrice}</span></del>
        <div class="aui-settle-choice">
            <span>优宠价</span>
        </div>
    </div>
    <div class="aui-product-title">
        <h2>
        ${bean.goodTitle}
        </h2>
        <p>
        ${bean.goodBrief}
        </p>
    </div>
    <div class="aui-product-boutique clearfix">
        <img src="${base}/resources/mobileImg/icon/icon-sj.png" alt="">
        <#if bean.gender==0>
        <span class="aui-product-tag-text">公</span>
        <#else />
        <span class="aui-product-tag-text">母</span>
        </#if>
        <img src="${base}/resources/mobileImg/icon/icon-sj.png" alt="">
        <span class="aui-product-tag-text">自营</span>
        <img src="${base}/resources/mobileImg/icon/icon-sj.png" alt="">
        <#if bean.level==0>
        <span class="aui-product-tag-text">宠物级</span>
        <#else />
        <span class="aui-product-tag-text">血统级</span>
        </#if>
    </div>

    <div class="aui-product-discounts">
    <#--<a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear"-->
    <#--data-ydui-actionsheet="{target:'#actionSheet',closeElement:'#cancel'}">-->
    <#--<div class="aui-address-cell-bdpet">选择</div>-->
    <#--<div class="aui-address-cell-ft">颜色分类</div>-->
    <#--</a>-->

    <#--<!-- 弹窗A begin &ndash;&gt;-->
    <#--<div class="m-actionsheet" id="actionSheet">-->
    <#--<div style="position:relative">-->
    <#--<div class="aui-spec-menu-top">-->
    <#--<div class="aui-spec-first-pic">-->
    <#--<img src="${base}/resources/mobileImg/pd/pd-zf-1.jpg" alt="">-->
    <#--</div>-->
    <#--<div class="aui-spec-first-sif">-->
    <#--<h2>&yen;2299.00 </h2>-->
    <#--<p>重量:0.42kg</p>-->
    <#--<p>商品编号:00986534567</p>-->
    <#--</div>-->
    <#--</div>-->
    <#--<div class="aui-product-text-content">-->
    <#--<div class="aui-product-text-content-list">-->
    <#--<div class="aui-product-text-content-list-bdpet">-->
    <#--<span>已选</span>-->
    <#--</div>-->
    <#--<div class="aui-product-text-content-list-ft">-->
    <#--<span>黑 6GB 64GB 裸机 1件</span>-->
    <#--</div>-->
    <#--</div>-->
    <#--<div class="aui-product-text-content-list">-->
    <#--<div class="aui-product-text-content-list-bdpet">-->
    <#--<span>颜色</span>-->
    <#--</div>-->
    <#--<div class="aui-product-text-content-list-ft">-->
    <#--<a href="#" class="aui-selected">黑色</a>-->
    <#--<a href="#">蓝色</a>-->
    <#--<a href="#">白色</a>-->
    <#--</div>-->
    <#--</div>-->
    <#--<div class="aui-product-text-content-list">-->
    <#--<div class="aui-product-text-content-list-bdpet">-->
    <#--<span>版本</span>-->
    <#--</div>-->
    <#--<div class="aui-product-text-content-list-ft">-->
    <#--<a href="#" class="aui-selected">全网通64G</a>-->
    <#--<a href="#">全网通128G</a>-->
    <#--<a href="#">全网通256G</a>-->
    <#--</div>-->
    <#--</div>-->
    <#--<div class="aui-product-text-content-list">-->
    <#--<div class="aui-product-text-content-list-bdpet">-->
    <#--<span>数量</span>-->
    <#--</div>-->
    <#--<div class="aui-car-box-list-text-price">-->
    <#--<div class="aui-car-box-list-text-arithmetic" style="position:inherit">-->
    <#--<a href="javascript:;" class="minus">-</a>-->
    <#--<span class="num">1</span>-->
    <#--<a href="javascript:;" class="plus">+</a>-->
    <#--</div>-->
    <#--</div>-->
    <#--</div>-->
    <#--<div class="aui-product-text-content-list">-->
    <#--<div class="aui-product-text-content-list-bdpet">-->
    <#--<span>延保</span>-->
    <#--</div>-->
    <#--<div class="aui-product-text-content-list-ft">-->
    <#--<a href="#" class="aui-selected">屏碎保1年¥249.00</a>-->
    <#--<a href="#">屏碎保2年¥329.00</a>-->
    <#--<a href="#">全保修2年¥449.00</a>-->
    <#--</div>-->
    <#--</div>-->
    <#--<div class="aui-product-text-content-list">-->
    <#--<div class="aui-product-text-content-list-bdpet">-->
    <#--<span>意外</span>-->
    <#--</div>-->
    <#--<div class="aui-product-text-content-list-ft">-->
    <#--<a href="#" class="aui-selected">换新保2年¥449.00</a>-->
    <#--<a href="#">电池换2年¥39.00</a>-->
    <#--<a href="#">延长保2年¥279.00</a>-->
    <#--</div>-->
    <#--</div>-->
    <#--</div>-->

    <#--<a href="javascript:;" class="actionsheet-action" id="cancel"></a>-->
    <#--<div class="aui-product-function">-->
    <#--<a href="car.ftl" class="yellow-color">加入购物车</a>-->
    <#--<a href="order.ftl" class="red-color">立即购买</a>-->
    <#--</div>-->

    <#--</div>-->
    <#--</div>-->
        <#--<div class="m-actionsheet" id="J_ActionSheet">-->
            <#--<div class="aui-discounts-codes">-->
                <#--<h2>店铺优惠券</h2>-->
                <#--<div class="aui-discounts-codes-item">-->
                    <#--<img src="${base}/resources/mobileImg/icon/icon-coupon1.jpg" alt="">-->
                <#--</div>-->
                <#--<div class="aui-discounts-codes-item">-->
                    <#--<img src="${base}/resources/mobileImg/icon/icon-coupon1.jpg" alt="">-->
                <#--</div>-->
                <#--<div class="aui-discounts-codes-item">-->
                    <#--<img src="${base}/resources/mobileImg/icon/icon-coupon1.jpg" alt="">-->
                <#--</div>-->
            <#--</div>-->
            <#--<a href="javascript:;" class="actionsheet-action" id="J_Cancel"></a>-->
        <#--</div>-->
        <#--<!-- 弹窗A end&ndash;&gt;-->
        <#--<a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear" id="J_ShowActionSheet">-->
            <#--<div class="aui-address-cell-bdpet">领券</div>-->
            <#--<div class="aui-address-cell-ft">-->
                <#--<span>满159减10券</span>-->
                <#--<span>满299减30券</span>-->
            <#--</div>-->
        <#--</a>-->
        <a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear">
            <div class="aui-address-cell-bd">配送</div>
            <div class="aui-address-cell-ft">
                <input class="aui-Address-box-input" type="text" readonly="" id="J_Address" readonly="readonly"
                       placeholder="所在地区" style="height:auto; border-bottom:none; padding-left:0; margin-bottom:0;">
            </div>
        </a>
        <a href="#" class="aui-address-cell aui-fl aui-fl-arrow-clear"
           data-ydui-actionsheet="{target:'#moneyActionSheet',closeElement:'#cancel'}">
            <div class="aui-address-cell-bd">运费</div>
            <div class="aui-address-cell-ft">同城免运费，跨省空运300运输费</div>
        </a>
        <a href="#" class="aui-address-cell aui-fl aui-fl-arrow-clear">
            <div class="aui-address-cell-bd">说明</div>
            <div class="aui-address-cell-ft">包换30天，服务15年，无忧买宠</div>
        </a>
    </div>
<#--图文详情-->
    <div class="aui-dri"></div>
    <div id="tuwenDiv" class="aui-product-pages">
        <div class="aui-product-pages-title">
            <h2>图文详情</h2>
        </div>
        <div class="aui-product-pages-img">
            <video width="95%" height="100%" style="margin: 10px 10px;" controls="controls">
                <source src="${bean.videoUrlHorizontal}"/>
            </video>
            <div style="margin: 0 10px;">
                <img src="${bean.photoUrl1}" alt="${bean.photoUrlDesc1}">
                <span class="desc">&nbsp;&nbsp;${bean.photoUrlDesc1}</span>
            </div>
            <div style="margin: 0 10px;">
                <img src="${bean.photoUrl2}" alt="${bean.photoUrlDesc2}">
                <span class="desc">&nbsp;&nbsp;${bean.photoUrlDesc2}</span>
            </div>
            <div style="margin: 0 10px;">
                <img src="${bean.photoUrl3}" alt="${bean.photoUrlDesc3}">
                <span class="desc">&nbsp;&nbsp;${bean.photoUrlDesc3}</span>
            </div>
            <div style="margin: 0 10px;">
                <img src="${bean.photoUrl4}" alt="${bean.photoUrlDesc4}">
                <span class="desc">&nbsp;&nbsp;${bean.photoUrlDesc4}</span>
            </div>
            <div style="margin: 0 10px;">
                <img src="${bean.photoUrl5}" alt="${bean.photoUrlDesc5}">
                <span class="desc">&nbsp;&nbsp;${bean.photoUrlDesc5}</span>
            </div>

        </div>
    </div>

<#--检测报告-->
    <div class="aui-dri"></div>
    <div id="jianceDiv" class="aui-product-pages">
        <div class="aui-product-pages-title">
            <h2>检测报告</h2>
        </div>
        <div class="aui-product-pages-img">
            <div style="margin: 15px 10px;font-size: 14px;float: left;">
                <img src="${base}/resources/mobileImg/icon/icon-evl.png"
                     style="width: 20px;height: 20px;display: inline;margin-bottom: -5px;"/>
                <span>
                    综合评价：经检测，这只猫没有猫瘟病毒、猫传染性腹膜炎、杯状病毒、猫弓形虫、猫瘟病毒抗体、冠状病毒抗体。身体状况和精神状况良好
                </span>
            </div>

            <table style="width: 95%;margin: 10px 10px;border: solid 1px #616161;" border="1">
                <thead>
                <tr>
                    <th colspan="4" style="font-size: 14px">重大疾病检测</th>
                </tr>
                <tr>
                    <th width="30%">疾病名称</th>
                    <th>是否患有</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>猫瘟病毒</td>
                    <td>无</td>
                </tr>
                <tr>
                    <td>传染性腹膜炎</td>
                    <td>无</td>
                </tr>
                <tr>
                    <td>杯状病毒</td>
                    <td>无</td>
                </tr>
                <tr>
                    <td>猫弓形虫</td>
                    <td>无</td>
                </tr>
                </tbody>
            </table>

            <table style="width: 95%;margin: 10px 10px;border: solid 1px #616161;" border="1">
                <thead>
                <tr>
                    <th colspan="4" style="font-size: 14px">疫苗接种</th>
                </tr>
                <tr>
                    <th width="20%"></th>
                    <th width="23%">药物作用</th>
                    <th width="23%">注射时间</th>
                    <th>药物名称</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>第一针</td>
                    <td>基础免疫</td>
                    <td>2018-02-06</td>
                    <td>妙三多</td>
                </tr>
                <tr>
                    <td>第二针</td>
                    <td>增强免疫</td>
                    <td>2018-02-06</td>
                    <td>妙三多</td>
                </tr>
                <tr>
                    <td>第三针</td>
                    <td>再次增强</td>
                    <td>2018-02-06</td>
                    <td>妙三多</td>
                </tr>
                </tbody>
            </table>

            <table style="width: 95%;margin: 10px 10px;border: solid 1px #616161;" border="1">
                <thead>
                <tr>
                    <th colspan="4" style="font-size: 14px">驱虫处理</th>
                </tr>
                <tr>
                    <th width="20%"></th>
                    <th width="23%">药物作用</th>
                    <th width="23%">注射时间</th>
                    <th>药物名称</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>第一针</td>
                    <td>体内/外驱虫</td>
                    <td>2018-02-06</td>
                    <td>妙三多</td>
                </tr>
                <tr>
                    <td>第二针</td>
                    <td>体内/外驱虫</td>
                    <td>2018-02-06</td>
                    <td>妙三多</td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>

<#--品相检测-->
    <div class="aui-dri"></div>
    <div id="pinxiangDiv" class="aui-product-pages">
        <div class="aui-product-pages-title">
            <h2>品相检测</h2>
        </div>
        <div class="aui-product-pages-img">
            <div style="margin: 15px 10px;font-size: 14px;float: left;">
                <img src="${base}/resources/mobileImg/icon/icon-evl.png"
                     style="width: 20px;height: 20px;display: inline;margin-bottom: -5px;"/>
                <span>
                    综合评价：萌宠整体健康，没有重大疾病史
                </span>
            </div>
            <div style="margin: 15px 10px;font-size: 14px;float: left;">
                <img src="${base}/resources/mobileImg/icon/icon-evl.png"
                     style="width: 20px;height: 20px;display: inline;margin-bottom: -5px;"/>
                <span>
                    品相评分：9分
                </span>
            </div>
            <table style="width: 95%;margin: 10px 10px;border: solid 1px #919191;" border="1">
                <thead>
                <tr>
                    <th colspan="4" style="font-size: 14px">品相检测</th>
                </tr>
                <tr>
                    <th width="25%">部位</th>
                    <th>描述</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>骨量</td>
                    <td>骨量大</td>
                </tr>
                <tr>
                    <td>耳朵</td>
                    <td>耳朵为三角形</td>
                </tr>
                <tr>
                    <td>头部</td>
                    <td>面颊丰满</td>
                </tr>
                <tr>
                    <td>背线</td>
                    <td>大背线</td>
                </tr>
                <tr>
                    <td>花色</td>
                    <td>杂花色</td>
                </tr>
                <tr>
                    <td>眼睛</td>
                    <td>接近三角形</td>
                </tr>
                <tr>
                    <td>吻部</td>
                    <td>吻部适中</td>
                </tr>
                <tr>
                    <td>毛量</td>
                    <td>双层被毛</td>
                </tr>
                <tr>
                    <td>尾巴</td>
                    <td>长尾</td>
                </tr>
                </tbody>
            </table>

        </div>

    <#--推荐-->
    <#--<div class="aui-recommend">-->
    <#--<img src="${base}/resources/mobileImg/bg/icon-tj3.jpg" alt="">-->
    <#--<!--<h2>为你推荐</h2>&ndash;&gt;-->
    <#--</div>-->
    <#--<section class="aui-list-product">-->
    <#--<div class="aui-list-product-box">-->
    <#--<a href="javascript:;" class="aui-list-product-item">-->
    <#--<div class="aui-list-product-item-img">-->
    <#--<img src="${base}/resources/mobileImg/pd/sf-15.jpg" alt="">-->
    <#--</div>-->
    <#--<div class="aui-list-product-item-text">-->
    <#--<h3>KOBE LETTUCE 秋冬新款 女士日系甜美纯色半高领宽松套头毛衣针织衫</h3>-->
    <#--<div class="aui-list-product-mes-box">-->
    <#--<div>-->
    <#--<span class="aui-list-product-item-price">-->
    <#--<em>¥</em>-->
    <#--399.99-->
    <#--</span>-->
    <#--<span class="aui-list-product-item-del-price">-->
    <#--¥495.65-->
    <#--</span>-->
    <#--</div>-->
    <#--<div class="aui-comment">986评论</div>-->
    <#--</div>-->
    <#--</div>-->
    <#--</a>-->
    <#--</div>-->
    <#--</section>-->

    </div>

    <footer class="aui-footer-product">
        <div class="aui-footer-product-fixed">
            <div class="aui-footer-product-concern-cart">
                <a target="blank"
                   href="https://www.sobot.com/chat/pc/index.html?sysNum=d7953744f07b4b4a89ace7d2a41d5e27">
                    <span class="aui-f-p-icon"><img src="${base}/resources/mobileImg/icon/icon-kf.png" alt=""></span>
                    <span class="aui-f-p-focus-info">客服</span>
                </a>
                <a href="javascript:likeIt();">
                    <span class="aui-f-p-icon">
                        <img id="likeItIcon" data-align="0" src="${base}/resources/mobileImg/icon/icon-like.png" alt="">
                    </span>
                    <span class="aui-f-p-focus-info">喜欢</span>
                </a>
                <a href="tel:13512073277">
                    <span class="aui-f-p-icon"><img src="${base}/resources/mobileImg/icon/icon-phone.png" alt=""></span>
                    <span class="aui-f-p-focus-info">电话</span>
                </a>
            </div>
            <div class="aui-footer-product-action-list">
                <a href="${base}/webMobile/mobileCart/add?goodId=${bean.goodId}" class="yellow-color">加入购物车</a>
                <a href="${base}/webMobile/mobileAddress/add?goodId=${bean.goodId}&userId=${Session.user_session_key['adminId']}" class="red-color">立即购买</a>
            </div>
        </div>
    </footer>

<@js.commonJs/>
<@js.goodJs/>
    <script type="text/javascript">
        /**
         * Javascript API调用Tab
         */
        !function ($) {
            var $tab = $('#J_Tab');

            $tab.tab({
                nav: '.tab-nav-item',
                panel: '.tab-panel-item',
                activeClass: 'tab-active'
            });

            /*
             $tab.find('.tab-nav-item').on('open.ydui.tab', function (e) {
             console.log('索引：%s - [%s]正在打开', e.index, $(this).text());
             });
             */

            $tab.find('.tab-nav-item').on('opened.ydui.tab', function (e) {
                console.log('索引：%s - [%s]已经打开了', e.index, $(this).text());
            });
        }(jQuery);
    </script>
    <script>
        /**
         * 默认调用
         */
        !function () {
            var $target = $('#J_Address');

            $target.citySelect();

            $target.on('click', function (event) {
                event.stopPropagation();
                $target.citySelect('open');
            });

            $target.on('done.ydui.cityselect', function (ret) {
                $(this).val(ret.provance + ' ' + ret.city + ' ' + ret.area);
            });
        }();
        /**
         * 设置默认值
         */
        !function () {
            var $target = $('#J_Address2');

            $target.citySelect({
                provance: '新疆',
                city: '乌鲁木齐市',
                area: '天山区'
            });

            $target.on('click', function (event) {
                event.stopPropagation();
                $target.citySelect('open');
            });

            $target.on('done.ydui.cityselect', function (ret) {
                $(this).val(ret.provance + ' ' + ret.city + ' ' + ret.area);
            });
        }();
    </script>
    <script type="text/javascript">
        $(function () {
            //绑定滚动条事件
            //绑定滚动条事件
            $(window).bind("scroll", function () {
                var sTop = $(window).scrollTop();
                var sTop = parseInt(sTop);
                if (sTop >= 100) {
                    if (!$("#scrollSearchPro").is(":visible")) {
                        try {
                            $("#scrollSearchPro").slideDown();
                        } catch (e) {
                            $("#scrollSearchPro").show();
                        }
                    }
                }
                else {
                    if ($("#scrollSearchPro").is(":visible")) {
                        try {
                            $("#scrollSearchPro").slideUp();
                        } catch (e) {
                            $("#scrollSearchPro").hide();
                        }
                    }
                }
            });
        })
    </script>

    <script>
        /**
         * Javascript API调用ActionSheet
         */
        !function ($) {
            var $myAs = $('#J_ActionSheet');

            $('#J_ShowActionSheet').on('click', function () {
                $myAs.actionSheet('open');
            });

            $('#J_Cancel').on('click', function () {
                $myAs.actionSheet('close');
            });

        }(jQuery);

        $(function () {
            var wh = $(window).height();
            var thirdDiv = $('#pinxiangDiv').offset().top - 48;
            var firstDiv = $('#tuwenDiv').offset().top - 48;
            var secondDiv = $('#jianceDiv').offset().top - 48;

            $(window).scroll(function () {
                var s = $(window).scrollTop();
                // console.log('s:' + s)
                var _scrollSearchPro = $('#scrollSearchPro');
                if (s < secondDiv) {
                    _scrollSearchPro.children('span').removeClass('current');
                    $('#tuwenSpan').addClass('current')
                } else if (s >= secondDiv && s < thirdDiv) {
                    _scrollSearchPro.children('span').removeClass('current');
                    $('#jianceSpan').addClass('current')
                } else {
                    _scrollSearchPro.children('span').removeClass('current');
                    $('#pinxiangSpan').addClass('current')
                }
            });

        })

        function scrollTopClick(obj, other) {
            var _scrollSearchPro = $('#scrollSearchPro');
            _scrollSearchPro.children('span').removeClass('current');
            var _obj = $('#' + obj);
            $('#' + other).addClass('current')
            var first = _obj.offset().top - 48;
            $('html,body').animate({
                scrollTop: first
            }, 1000);
        }

        function likeIt() {
            var obj = $('#likeItIcon')
            var _likeItIcon = obj.attr('data-align')
            if (_likeItIcon == '0') {
                obj.attr('src', '${base}/resources/mobileImg/icon/icon-like-red.png')
                obj.attr('data-align', '1')
            } else {
                obj.attr('src', '${base}/resources/mobileImg/icon/icon-like.png')
                obj.attr('data-align', '0')
            }
        }


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
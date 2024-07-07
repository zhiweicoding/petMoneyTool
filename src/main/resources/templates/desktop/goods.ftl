<#import "common/desktopCss.ftl" as css>
<#import "common/desktopJs.ftl" as js>
<#import "common/desktopCommon.ftl" as common>
<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>优宠熊正规宠物购买平台</title>
    <meta name="keywords"
          content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,宠物猫,正规购宠平台,买猫,卖猫,猫市场,宠物猫交易网,优宠熊,宠物平台,天津宠物交易,天津买猫,天津宠物市场,猫,优宠,家庭繁育猫舍">
    <meta name="description"
          content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta property="og:url" content="http://www.youchongxiong.com/">
    <meta property="og:type" content="article">
    <meta property="og:title" content="优宠熊正规宠物购买平台">
    <meta property="og:description"
          content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta property="og:image" content="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico">
    <meta name="renderer" content="webkit">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <@css.commonCss/>
    <@css.goodCss/>
    <@css.endCss/>
<body class="page page-car-detail ">
<@common.topDiv />
<div class="detail-wrapper">
    <div id="basic">
        <div class="container detail-breadcrumb">
            <p class="detail-breadcrumb-tagP">
                <a href="/" style="color:#666">首页 </a>
                <img src="${base}/resources/img/saw-right.png" width="10px;" height="10px;" style="margin-top:10px;">
                <a href="/type/dog" style="color:#666">${typeName}</a>
                <img src="${base}/resources/img/saw-right.png" width="10px;" height="10px;" style="margin-top:10px;">
                <a href="#" style="color:#b4a078">${symbolBean.symbolName}</a>
            </p>
        </div>
        <div id="j-app" class="header-part-body">
            <div class="g-bd">
                <div class="m-detail">
                    <div class="detailHd">
                        <div class="m-slide">
                            <div class="view">
                                <img style="object-fit: cover;" id="detailTumbnailImg" src="${bean.listPicUrl}">
                            </div>
                            <div class="list">
                                <ul id="detail-image-ul">
                                    <li id="tumbnailLi1" class="z-active" onmouseover="tumbnailMoveon(this);">
                                        <a href="javascript:void(0);">
                                            <img style="object-fit: cover;" src="${bean.listPicUrl}">
                                        </a>
                                    </li>
                                    <li id="tumbnailLi2" class="" onmouseover="tumbnailMoveon(this);">
                                        <a href="javascript:void(0);">
                                            <img style="object-fit: cover;" src="${bean.listPicUrl}">
                                        </a>
                                    </li>
                                    <li id="tumbnailLi3" class="" onmouseover="tumbnailMoveon(this);">
                                        <a href="javascript:void(0);">
                                            <img style="object-fit: cover;" src="${bean.listPicUrl}">
                                        </a>
                                    </li>
                                    <li id="tumbnailLi4" class="" onmouseover="tumbnailMoveon(this);">
                                        <a href="javascript:void(0);">
                                            <img style="object-fit: cover;" src="${bean.listPicUrl}">
                                        </a>
                                    </li>
                                    <li id="tumbnailLi5" class="" onmouseover="tumbnailMoveon(this);">
                                        <a href="javascript:void(0);">
                                            <img style="object-fit: cover;" src="${bean.listPicUrl}">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="m-info">
                            <div class="intro">
                                <div class="name">${bean.goodTitle}</div>
                                <div class="detailTag">
                                    <a class="manufactTag">
                                        包空运
                                    </a>
                                    <a class="manufactTag">
                                        <#if bean.gender==0>公猫
                                        <#else >母猫
                                        </#if>
                                    </a>
                                    <a class="manufactTag">
                                        签署协议
                                    </a>
                                    <a class="manufactTag">
                                        平台监管
                                    </a>
                                </div>
                                <div class="desc">${bean.goodBrief}</div>
                            </div>
                            <div class="price u-formctr" style="margin-left:-5px;">
                                <#--<a href="javascript:void(0);">-->
                                <#--<div class="j-commentEntry comment" style="margin-top:8px;margin-right:10px;">-->
                                <#--<span class="f-fz13" style="color:#999">定价标准&nbsp;></span>-->
                                <#--</div>-->
                                <#--</a>-->
                                <div class="field pBox f-cb">
                                    <span class="label label-1"
                                          style="text-align:left;color:#777;margin-top: 16px;font-size: 13px;margin-left: 10px;">活动价</span>
                                    <span class="rp">
                                            <span style="font-size:18px;line-height:30px; margin-left: 0; color:#d7282d;">¥</span>
                                            <span style="font-size:28px;line-height:30px; margin-left: 2px; color:#d7282d;">${bean.frontMoney}</span>
                                        </span>
                                    <span class="op">
                                            <span>¥</span>
                                            <s>
                                                <span>${bean.orgPrice}</span>
                                            </s>
                                        </span>
                                    <div class="promotionTag">优宠熊专享</div>
                                </div>
                                <div class="field pBox f-cb" style=" height:25px;">
                                    <div class="field pointInfo">
                                        <span class="label"
                                              style="text-align:left;color:#777;font-size: 13px;margin-left: 10px;">开卡</span>
                                        <span class="pointCt">
                                                <span style="font-size:13px;color:#777;text-align:left;float:left;">再减</span>
                                                <span style="font-size:18px;font-weight:bolder;color:#d7282d;text-align:left;float:left;margin-left: 10px">${bean.cardMoney}</span>
                                                <span style="font-size:13px;color:#d7282d;text-align:left;float:left;margin-left: 4px;">元</span>
                                            </span>
                                    </div>
                                </div>
                                <div class="field pBox f-cb" style="height:25px;">
                                    <div class="field pointInfo">
                                        <span class="label"
                                              style="text-align:left;color:#777;font-size: 13px;margin-left: 10px;">限制</span>
                                        <span class="pointCt"
                                              style="float:left;font-size:13px;color:#777;text-align:left;">特价商品不可与优惠券叠加使用</span>
                                    </div>
                                </div>
                                <div class="field pBox f-cb" style=" height:25px;">
                                    <div class="field pointInfo">
                                        <span class="label"
                                              style="text-align:left;color:#777;font-size: 13px;margin-left: 10px;">猫舍</span>
                                        <span class="pointCt">
                                                <span style="font-size:13px;color:#777;text-align:left;float:left;">${shopBean.shopName}</span>
                                                <img onclick="openLicense('${shopBean.shopId}')" style="float: left;"
                                                     width="20px"
                                                     height="20px"
                                                     src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/tempweb/zhi.png">
                                        </span>
                                    </div>
                                </div>
                                <div id="licenseDivId" onclick="closeLicense()"
                                     style="z-index:1000000;position: absolute;left: 5%;top: 50%;display: none">
                                    <img src="${shopBean.license}">
                                </div>
                                <hr>
                                <div class="field server">
                                    <span class="label"
                                          style="text-align:left;color:#777;font-size: 13px;margin-left: 10px;">服务</span>
                                    <div class="policyBox">
                                        <div class="sItem j-policyPop " style="color:#777">
                                            <span>･&nbsp;</span>
                                            <span>最长30天延保</span>
                                            <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                        </div>
                                        <div class="sItem j-policyPop " style="color:#777">
                                            <span>･&nbsp;</span>
                                            <span>12小时快速理赔</span>
                                            <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                        </div>
                                        <div class="sItem j-policyPop " style="color:#777">
                                            <span>･&nbsp;</span>
                                            <span>平台保空运</span>
                                            <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                        </div>
                                        <div style="clear:both;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="btns" style="margin-left:-7px">
                                <a class="w-button w-button-xl w-button" href="javascript:phoneHelp();"
                                   style="margin-top:40px;">
                                        <span>
                                            <img src="${base}/resources/img/wx-gold.png" width=24px; height=24px;
                                                 style="margin-top:10px;margin-right:2px;">

                                            <span style="color:#b4a078">微信咨询</span>
                                        </span>
                                </a>
                                <a class="w-button w-button-xl w-button" target="_blank"
                                   href="https://www.sobot.com/chat/pc/index.html?sysNum=d7953744f07b4b4a89ace7d2a41d5e27"
                                   style="margin-top:40px;margin-left:15px;">
                                        <span>
                                            <img src="${base}/resources/img/buy.png" width=24px; height=24px;
                                                 style="margin-top:10px;margin-right:2px;">
                                            <span style="color:#b4a078">咨询客服</span>
                                        </span>
                                </a>
                            </div>
                            <div class="btns" style="margin-left:-7px;">
                                <a class="w-button w-button-xl w-button-ghost" style="width: 350px"
                                   href="javascript:webBuyHelp();">
                                        <span>
                                            <span>购买猫咪</span>
                                        </span>
                                </a>
                                <#--                                <a class="w-button w-button-xl w-button-primary"-->
                                <#--                                   href="javascript:carHelp('${bean.goodId}');"-->
                                <#--                                   style="margin-left:10px;">-->
                                <#--                                        <span>-->
                                <#--                                            <img src="${base}/resources/img/car.png" width=24px; height=24px;-->
                                <#--                                                 style="margin-top:12px;margin-right:2px;">-->
                                <#--                                            <span>加入购物车</span>-->
                                <#--                                        </span>-->
                                <#--                                </a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="detailBd" style="width:1090px;margin:0 auto;">
        <div class="left">
            <div class="m-detailNavTab j-detailNavTab">
                <ul class="nav" id="detailNavUrl">
                    <li id="firstLi" class="item item-active" onclick="detailNavFun(this,'zhibaodivid');">
                        <a href="javascript:;">
                            <span>宠物信息</span>
                        </a>
                    </li>
                    <li id="fourthLi" class="item " onclick="detailNavFun(this,'pingjiadivid');">
                        <a href="javascript:;">
                        <span>
                            <span>评价</span>
                            <span class="num">
                                <span>（</span>
                                <span>${opArray?size+31}</span>
                                <span>）</span>
                            </span>
                        </span>
                        </a>
                    </li>
                    <li class="bg"></li>
                </ul>
            </div>
            <div class="m-detailHtml show" id="zhibaodivid">
                <div id="certificate">
                    <div class="detail-report-new-wrapper">
                        <div class="container">
                            <div class="border-top">
                                <div class="left"></div>
                                <div class="right"></div>
                                <div class="center"></div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="border-center">
                                <div class="left"></div>
                                <div class="right"></div>
                                <div class="center">
                                    <div class="content clearfixnew">
                                        <h2 class="title">优宠熊检测
                                            <div class="test-ps">32项专业检测：基础检验，优宠熊品相检测</div>
                                        </h2>
                                        <div class="content-left">
                                            <div class="head-img">
                                                <img class="tester-img" src="${base}/resources/img/doctor.png"/>
                                            </div>
                                            <div class="staff-star">
                                                <div class="star"></div>
                                                <div class="star"></div>
                                                <div class="star"></div>
                                                <div class="star"></div>
                                                <div class="star"></div>
                                                <div class="mark">
                                                    <span style="font-family: Arial, Helvetica, sans-serif">99.4%&nbsp;</span>好评
                                                </div>
                                            </div>
                                            <div class="name">兽医师</div>
                                            <div class="staff-title">拥有国家颁发的兽医师资格证书</div>
                                        </div>
                                        <!--检测表单-->
                                        <div class="content-right ">
                                            <div class="other clearfixnew" style="padding-top: 0px;">
                                                <div class="test-other narrow  " style="margin-left:2px;">
                                                    <div class="other-title">五官检测</div>
                                                    <div class="option">
                                                        <div class="child-title">耳部</div>
                                                        <div class="mun">洁净</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">听力</div>
                                                        <div class="mun">正常</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">眼睛分泌物</div>
                                                        <div class="mun">无</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">视力</div>
                                                        <div class="mun">正常</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">鼻腔分泌物</div>
                                                        <div class="mun">无</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">咳嗽</div>
                                                        <div class="mun">无</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                </div>
                                                <div class="test-other narrow" style="margin-left:10px;">
                                                    <div class="other-title">四肢评估</div>
                                                    <div class="option">
                                                        <div class="child-title">左前肢</div>
                                                        <div class="mun">健康</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">右前肢</div>
                                                        <div class="mun">健康</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">左后肢</div>
                                                        <div class="mun">健康</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">右后肢</div>
                                                        <div class="mun">健康</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                </div>
                                                <div class="test-other narrow" style="margin-left:10px;">
                                                    <div class="other-title">其他部位</div>
                                                    <div class="option">
                                                        <div class="child-title">腹部</div>
                                                        <div class="mun">健康</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">腹泻</div>
                                                        <div class="mun">无</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">瘙</div>
                                                        <div class="mun">无</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">虱</div>
                                                        <div class="mun">无</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">蜱</div>
                                                        <div class="mun">无</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">皮肤</div>
                                                        <div class="mun">健康</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                </div>
                                                <div class="test-other narrow" style="margin-left:10px;">
                                                    <div class="other-title">精神检测</div>
                                                    <div class="option">
                                                        <div class="child-title">精神状态</div>
                                                        <div class="mun">佳</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                    <div class="option">
                                                        <div class="child-title">生性</div>
                                                        <div class="mun">活泼</div>
                                                        <img src="${base}/resources/img/duigou.png"
                                                             style="width:16px;height:16px; margin-left:6px;">
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="signature" id="signature-certification" style="margin-top:5px;">
                                                <div class="signature-message">实际情况以购宠前优宠熊客服深度复检为准</div>
                                            </div>
                                            <img class="qualified" src="${base}/resources/img/qualified.png"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="border-bottom">
                                    <div class="left"></div>
                                    <div class="right"></div>
                                    <div class="center"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="service-guarantee">
                        <div id="service-guarantee">
                            <div class="container service-guarantee-content">
                                <p>
                                    <img style="width:100%;height:100%;"
                                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/demo/existWeappDetail/1.jpg"/>
                                </p>
<#--                                <p>-->
<#--                                    <img style="width:100%;height:100%;"-->
<#--                                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/demo/existWeappDetail/2.jpg"/>-->
<#--                                </p>-->
                                <p>
                                    <img style="width:100%;height:100%;"
                                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/demo/existWeappDetail/3.jpg"/>
                                </p>
                                <p>
                                    <img style="width:100%;height:100%;"
                                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/demo/existWeappDetail/4.jpg"/>
                                </p>
                                <p>
                                    <img style="width:100%;height:100%;"
                                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/demo/existWeappDetail/5.jpg"/>
                                </p>
                                <p>
                                    <img style="width:100%;height:100%;"
                                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/demo/existWeappDetail/6.jpg"/>
                                </p>
                                <p>
                                    <img style="width:100%;height:100%;"
                                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/demo/existWeappDetail/7.jpg"/>
                                </p>
                                <p>
                                    <img style="width:100%;height:100%;"
                                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/demo/existWeappDetail/8.jpg"/>
                                </p>
<#--                                <p>-->
<#--                                    <img style="width:100%;height:100%;"-->
<#--                                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/demo/existWeappDetail/9.jpg"/>-->
<#--                                </p>-->
<#--                                <p>-->
<#--                                    <img style="width:100%;height:100%;"-->
<#--                                         src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/demo/existWeappDetail/10.jpg"/>-->
<#--                                </p>-->
                            </div>
                        </div>
                    </div>
                    <div id="service-guarantee">
                        <div id="service-guarantee">
                            <div class="container service-guarantee-content">
                                <p class="secTitle" style="font-size:28px;">服务保障</p>
                                <ul>
                                    <li>
                                        <a href="/sh/service" target="_blank">
                                            <dd>
                                                <img src="${base}/resources/img/11.png"
                                                     style="width:162px;height:162px;" alt="资深行业权威专家，249项专业检测">
                                            </dd>
                                            <dt>
                                                <p class="service-info-titile">最长30天免费赔付</p>
                                                <p class="service-info-detail">
                                                    初检、复检，先后两次交叉检测
                                                    <br/> 基础检测，品相检测
                                                    <br/> 提前帮您排除重大疾病，了解爱宠的市场价格
                                            </dt>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/refund" target="_blank">
                                            <dd>
                                                <img src="${base}/resources/img/12.png"
                                                     style="width:162px;height:162px;" alt="车源放心-优质车源，严选8年15万公里">
                                            </dd>
                                            <dt>
                                                <p class="service-info-titile">拒绝中间商</p>
                                                <p class="service-info-detail">
                                                    没有中间商，只做繁育人和购宠人群的桥梁
                                                    <br/> 去掉宠物中间人的提成
                                                    <br/> 去掉杂乱的市场抽成
                                            </dt>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/quality" target="_blank">
                                            <dd>
                                                <img src="${base}/resources/img/13.png"
                                                     style="width:162px;height:162px;" alt="售后无忧-14天可退，1年/2万公里质保">
                                            </dd>
                                            <dt>
                                                <p class="service-info-titile">终生免费咨询</p>
                                                <p class="service-info-detail">
                                                    20多位专业的全国职业兽医师资格证，7*24小时为您服务
                                                    <br/> 专业的全国职业兽医师资格证
                                                    <br/> 优宠熊竭诚为您服务
                                            </dt>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="m-detailHtml" id="pingjiadivid">
                <div class="menuItemBlock evaluate">
                    <div class="evaluateInfo block">
                        <div class="evaluateHead clearfix">
                            <div class="score fl">
                                <p class="name">好评率</p>
                                <p class="count">4.98</p>
                                <div class="stars">
                                    <span class="star yellow"></span>
                                    <span class="star yellow"></span>
                                    <span class="star yellow"></span>
                                    <span class="star yellow"></span>
                                    <span class="star yellow"></span>
                                </div>
                            </div>
                            <div class="evaluateMenu fl">
                                <p class="name">大家都在看：</p>
                                <a class="cur" href="javascript:void(0)" id="all">全部（${opArray?size+31}）</a>
                                <a class="" href="javascript:void(0)" id="addEval">5星好评（${opArray?size}）</a>
                                <a class="" href="javascript:void(0)" id="all">服务超好（13）</a>
                                <a class="" href="javascript:void(0)" id="all">小猫超nice（3）</a>
                                <a class="" href="javascript:void(0)" id="all">平台靠谱（15）</a>
                            </div>
                        </div>
                        <div class="evaluateList">
                            <#list opArray as opArray>
                                <div class="evaluateItem">
                                    <div class="userInfo">
                                        <div class="userPhoto"
                                             style="background-image: url('${opArray.avatarUrl}')"></div>
                                        <p class="userName">${opArray.nickName}</p>
                                    </div>
                                    <div class="stars">
                                        <#list 1..opArray.grade as g>
                                            <span class="star  yellow "></span>
                                        </#list>
                                    </div>
                                    <span class="time fr">${opArray.createStr}</span>
                                    <div class="msg">${opArray.msg}</div>
                                    <div class="reply">
                                        <p>卖家回复：感谢您的支持，有任何问题都可以在公众号留言客服哦！！！</p>
                                    </div>
                                </div>
                            </#list>
                        </div>
                        <div class="pageTool">
                            <div id="Paging_04361873239894103" class="ui-paging-container">
                                <ul>
                                    <li class="js-page-first js-page-action ui-pager ">首页</li>
                                    <li class="js-page-prev js-page-action ui-pager ui-pager-disabled">上一页</li>
                                    <li data-page="1" class="ui-pager focus">1</li>
                                    <li class="ui-paging-ellipse">...</li>
                                    <li data-page="1" class="ui-pager">2</li>
                                    <li class="js-page-next js-page-action ui-pager ui-pager-disabled">下一页</li>
                                    <li class="js-page-last js-page-action ui-pager ui-pager-disabled">末页</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <div id="black-modal-down" class="modal-backdrop  in "></div>
        <!-- 电话沟通浮动层 -->
        <div id="js-logged-schedule-modal"
             class="logged-schedule-modal dialog-modal fullscreen in">
            <!--block-->
            <!-- <img data-src="//img2.rrcimg.com/dist/pc/images/icon-shouji-31fdda25.png" src="//img2.rrcimg.com/dist/pc/images/icon-shouji-31fdda25.png"
                class="js-delayed-img dialog-img"> -->
            <div class="form-wrapper">
                <div class="dialog-title">您咨询的宠物</div>
                <p class="title" style="float:left;">
                    <i></i>
                    <span id="wxMsgSpanId" style="font-size:12px; ">${bean.goodBrief}</span>
                </p>
                <input id="js-schedule-mobile-number" name="msg" type="text" placeholder="请输入您的手机号或者微信号"
                       rrc-event-name="mobile">
                <input class="schedule_phone_source" type="hidden" value="bd_pz">
                <p class="error" id="mobile_error">*手机号格式不正确</p>
            </div>
            <button id="js-schedule_submit" class="btn-default btn-base btn-schedule" onclick="submitPhone()">提交
            </button>

            <div style="text-align:center;width:100%;margin-bottom:-20px;">
                <span style="font-size:14px;color:#666">平台客服电话：18302284459</span>
            </div>
            <div class="close-btn" data-dismiss="modal">×</div>
        </div>
        <!-- 微信沟通浮动层 -->
        <div id="js-weixin-modal" class="logged-schedule-modal dialog-modal fullscreen in">
            <!--block-->
            <div class="form-wrapper">
                <div class="dialog-title">您咨询的宠物</div>
                <p class="title" style="float:left;">
                    <i></i>
                    <span>${bean.goodBrief}</span>
                </p>
                <div style="width:380px;text-align:center;">
                    <div style="width:150px;display: inline-block;">
                        <img src="${base}/resources/info/zhiwei.jpeg" width="140" height="140">
                        <span style="font-size:14px;color:#666;font-family:Verdana, Geneva, Tahoma, sans-serif">客服的微信</span>
                    </div>
                    <div style="width:150px;display: inline-block;">
                        <img src="${base}/resources/info/gongzhonghao.jpeg" width="140" height="140">
                        <span style="font-size:14px;color:#666;font-family:Verdana, Geneva, Tahoma, sans-serif">服务公众号</span>
                    </div>
                </div>

            </div>
            <div class="close-btn" data-dismiss="modal">×</div>
        </div>

        <div id="js-buy-modal" class="logged-schedule-modal dialog-modal fullscreen in">
            <!--block-->
            <div class="form-wrapper">
                <div class="dialog-title">可以扫码直接购买</div>
                <p class="title" style="float:left;">
                    <i></i>
                    <span style="font-size: 12px;">${bean.goodBrief}</span>
                </p>
                <div style="width:380px;text-align:center;">
                    <div style="width:150px;display: inline-block;">
                        <div id="buy_model_id_img" style="margin-bottom: 45px;margin-left: 10px;"></div>
                        <span style="font-size:14px;width: 150px;text-align: center;margin: 0 auto;">微信扫码</span>
                    </div>
                    <div style="width:150px;display: inline-block;">
                        <img src="${aliUrl}" width="140" height="140">
                        <span style="font-size:14px;width: 150px;text-align: center;margin: 0 auto;">支付宝扫码</span>
                    </div>
                </div>

            </div>
            <div class="close-btn" data-dismiss="modal">×</div>
        </div>

        <@common.rightDiv />
        <@common.rightDivFloat />
        <@common.footer/>
        <script>
            var basePath = '${base}/resources/';
            var baseUrlPath = '${base}/';
        </script>
        <@js.commonJs/>
        <@js.goodJs/>
        <script src="${base}/resources/goods/qrcode.min.js"></script>
        <script>

            var qrcode = new QRCode("buy_model_id_img", {
                text: "https://www.youchongxiong.com/wxMobile/code/catProduct/${bean.goodId}",
                width: 115,
                height: 115,
                colorDark: "#000000",
                colorLight: "#ffffff",
                correctLevel: QRCode.CorrectLevel.H
            });
        </script>
        <script>
            $(function () {
                var headerNav = $('.header-nav');
                headerNav.find('li').each(function () {
                    $(this).find('a').css('color', '').css('font-weight', '');
                });
                headerNav.find('li').eq(2).find('a').css('color', '#b4a078').css('font-weight', 'bold');
            })
        </script>
</body>

</html>
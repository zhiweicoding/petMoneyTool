<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>签署领养预定合同</title>

    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/favicon.ico"
          type="image/x-icon"/>
    <link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/jquery-weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/demos.css"/>
    <style type="text/css">

        * {
            font-family: PingFangSC-Light, helvetica, 'Heiti SC';
        }

        ul {
            margin-left: 20px;
        }

        p {
            line-height: 30px;
        }

        label {
            font-size: 15px;
        }

        td {
            vertical-align: middle;
            text-align: center;
            border: solid #888 1px;
        }

        th {
            vertical-align: middle;
            text-align: center;
            border: solid #888 1px;
        }

        #box {
            width: 100%;
            height: 100%;
            /*border: 3px solid rgba(86,86,86,0.5);*/
        }

        #makeSureBtn {
            position: absolute;
            left: 6%;
            top: 70%;
            background: #e31d1a;
            color: #ffffff;
            display: block;
            text-align: center;
            width: 100px;
            height: 50px;
            font-size: 16px;
            line-height: 50px;
            transform: rotate(90deg);
            -ms-transform: rotate(90deg);
            -moz-transform: rotate(90deg);
            -webkit-transform: rotate(90deg);
            -o-transform: rotate(90deg);
            border-radius: 5px;
        }

        #resetBtn {
            position: absolute;
            left: 6%;
            top: 85%;
            background: #868686;
            color: #ffffff;
            display: block;
            text-align: center;
            width: 100px;
            height: 50px;
            font-size: 16px;
            line-height: 50px;
            transform: rotate(90deg);
            -ms-transform: rotate(90deg);
            -moz-transform: rotate(90deg);
            -webkit-transform: rotate(90deg);
            -o-transform: rotate(90deg);
            border-radius: 5px;
        }

        .showName {
            position: absolute;
            left: 44%;
            top: 20%;
            background: rgba(86, 86, 86, 0.5);
            color: #ffffff;
            display: block;
            text-align: center;
            width: 100%;
            font-size: 17px;
            line-height: 50px;
            transform: rotate(90deg);
            -ms-transform: rotate(90deg);
            -moz-transform: rotate(90deg);
            -webkit-transform: rotate(90deg);
            -o-transform: rotate(90deg);
        }

        input[type=radio] {
            margin-right: 5px;
            cursor: pointer;
            font-size: 14px;
            width: 15px;
            height: 12px;
            position: relative;
        }

        label {
            font-weight: bold;
        }

        input[type=radio]:after {
            position: absolute;
            width: 10px;
            height: 15px;
            top: 0;
            content: " ";
            background-color: #e31d1a;
            color: #fff;
            display: inline-block;
            visibility: visible;
            padding: 0px 3px;
            border-radius: 50%;
        }

        input[type=radio]:checked:before {
            content: "✓";
            display: block;
            position: relative;
            top: -2px;
            left: 3px;
            width: 6px;
            height: 6px;
            color: #fff;
            font-weight: 400;
            z-index: 1;
        }

        .sureLine {
            width: 100%;
            font-size: 16px;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            padding: 0 0 10px 0;
            margin: 10px 0;
            border-bottom: 1px solid #f8f8f8;
        }

        .sureLeft {
            flex: 7;
        }

        .sureRight {
            flex: 4;
            display: flex;
            justify-content: right;
        }

        .sureNum {
            margin-right: 5px;
        }

        .title {
            font-weight: bold;
        }
    </style>
</head>
<body ontouchstart>
<div id="shareBox" style="display: none;">

    <div id="box">

    </div>
    <span class="showName">请手写输入您的真实姓名，然后点击确定</span>
    <span id="makeSureBtn">确定</span>
    <span id="resetBtn">重新输入</span>
</div>

<article class="weui-article" id="chongwuBody">
    <span>为了保障您（以下简称“乙方”）的权益， 请在使用优宠熊服务之前，详细阅读此服务协议（以下简称“本协议”）所有内容，特别是加粗部分。
        <strong>本合同依据《中华人民共和国民法典-合同编》及有关法律、法规的规定。甲方、乙方双方本着公平、公正以及为生命负责的原则、就猫咪领养事宜达成协议如下：</strong>
    </span>
    <br/>
    <br/>
    <span>注：文中出现的“<strong>宠物</strong>”无特别说明均指被领养的宠物、即甲方送养的宠物。</span>
    <br/>
    <br/>
    <section>
        <h2 class="title" style="font-weight: bold">第一条 甲方愿意将宠物领养给乙方。</h2>
    </section>
    <section>
        <h2 class="title" style="font-weight: bold">第二条 乙方自愿接受领养甲方宠物、并保证有经济能力饲养该宠物。</h2>
    </section>
    <#assign remarkMsg='${protectBean.remarkMsg}'?eval />
    <section style="width: 100%">
        <h2 class="title" style="font-weight: bold">第三条 领养确认</h2>
        <div class="sureLine">
            <div class="sureNum">1</div>
            <div class="sureLeft">是否已经征得家人同意？</div>
            <div class="sureRight">
                <#if protectBean.isProtect==1>
                    <#if remarkMsg.one=='y'>
                        <label style="margin-right: 20px;"><input name="one" type="radio" value="y" checked="checked"
                                                                  disabled
                            />是</label>
                        <label><input name="one" type="radio" value="n" disabled/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="one" type="radio" value="y" disabled
                            />是</label>
                        <label><input name="one" type="radio" value="n" checked="checked" disabled/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.one=='y'>
                        <label style="margin-right: 20px;"><input name="one" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="one" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="one" type="radio" value="y"
                            />是</label>
                        <label><input name="one" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>

            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">2</div>
            <div class="sureLeft">是否能够在必要时给猫咪提供医疗措施？</div>
            <div class="sureRight">
                <#if protectBean.isProtect==1>
                    <#if remarkMsg.two=='y'>
                        <label style="margin-right: 20px;"><input name="two" type="radio" value="y" checked="checked"
                                                                  disabled
                            />是</label>
                        <label><input name="two" type="radio" disabled value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input disabled name="two" type="radio" value="y"
                            />是</label>
                        <label><input name="two" type="radio" disabled value="n" checked="checked"/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.two=='y'>
                        <label style="margin-right: 20px;"><input name="two" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="two" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="two" type="radio" value="y"
                            />是</label>
                        <label><input name="two" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>

            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">3</div>
            <div class="sureLeft">是否可以保障其基本生活开销?</div>
            <div class="sureRight">
                <#if protectBean.isProtect==1>
                    <#if remarkMsg.three=='y'>
                        <label style="margin-right: 20px;"><input disabled name="three" type="radio" value="y"
                                                                  checked="checked"
                            />是</label>
                        <label><input name="three" disabled type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input disabled name="three" type="radio" value="y"
                            />是</label>
                        <label><input name="three" disabled type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.three=='y'>
                        <label style="margin-right: 20px;"><input name="three" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="three" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="three" type="radio" value="y"
                            />是</label>
                        <label><input name="three" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>

            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">4</div>
            <div class="sureLeft">是否守承诺，永远陪伴不离不弃?</div>
            <div class="sureRight">

                <#if protectBean.isProtect==1>
                    <#if remarkMsg.four=='y'>
                        <label style="margin-right: 20px;"><input disabled name="four" type="radio" value="y"
                                                                  checked="checked"
                            />是</label>
                        <label><input name="four" disabled type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input disabled name="four" type="radio" value="y"
                            />是</label>
                        <label><input name="four" disabled type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.four=='y'>
                        <label style="margin-right: 20px;"><input name="four" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="four" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="four" type="radio" value="y"
                            />是</label>
                        <label><input name="four" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">5</div>
            <div class="sureLeft">是否有独立的经济收入?</div>
            <div class="sureRight">
                <#if protectBean.isProtect==1>
                    <#if remarkMsg.five=='y'>
                        <label style="margin-right: 20px;"><input name="five" type="radio" value="y" checked="checked"
                                                                  disabled
                            />是</label>
                        <label><input name="five" type="radio" value="n" disabled/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="five" disabled type="radio" value="y"
                            />是</label>
                        <label><input name="five" type="radio" value="n" disabled checked="checked"/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.five=='y'>
                        <label style="margin-right: 20px;"><input name="five" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="five" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="five" type="radio" value="y"
                            />是</label>
                        <label><input name="five" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>

            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">6</div>
            <div class="sureLeft">是否能为猫咪提供生活玩耍的场所 进行家庭喂养?</div>
            <div class="sureRight">


                <#if protectBean.isProtect==1>
                    <#if remarkMsg.six=='y'>
                        <label style="margin-right: 20px;"><input name="six" type="radio" value="y" checked="checked"
                                                                  disabled
                            />是</label>
                        <label><input name="six" type="radio" value="n" disabled/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="six" disabled type="radio" value="y"
                            />是</label>
                        <label><input name="six" type="radio" value="n" disabled checked="checked"/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.sixe=='y'>
                        <label style="margin-right: 20px;"><input name="six" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="six" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="six" type="radio" value="y"
                            />是</label>
                        <label><input name="six" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">7</div>
            <div class="sureLeft">是否有稳定住所？</div>
            <div class="sureRight">
                <#if protectBean.isProtect==1>
                    <#if remarkMsg.seven=='y'>
                        <label style="margin-right: 20px;"><input name="seven" disabled type="radio" value="y"
                                                                  checked="checked"
                            />是</label>
                        <label><input name="seven" type="radio" disabled value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input disabled name="seven" type="radio" value="y"
                            />是</label>
                        <label><input name="seven" type="radio" disabled value="n" checked="checked"/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.seven=='y'>
                        <label style="margin-right: 20px;"><input name="seven" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="seven" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="seven" type="radio" value="y"
                            />是</label>
                        <label><input name="seven" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>

            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">8</div>
            <div class="sureLeft">领养人是否年满18周岁？</div>
            <div class="sureRight">

                <#if protectBean.isProtect==1>
                    <#if remarkMsg.eight=='y'>
                        <label style="margin-right: 20px;"><input name="eight" type="radio" value="y" checked="checked"
                                                                  disabled
                            />是</label>
                        <label><input name="eight" type="radio" disabled value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input disabled name="eight" type="radio" value="y"
                            />是</label>
                        <label><input name="eight" type="radio" disabled value="n" checked="checked"/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.eight=='y'>
                        <label style="margin-right: 20px;"><input name="eight" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="eight" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="eight" type="radio" value="y"
                            />是</label>
                        <label><input name="eight" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">9</div>
            <div class="sureLeft">是否能在达到免疫条件时，以及成年 定后定期为猫咪接住疫苗？</div>
            <div class="sureRight">

                <#if protectBean.isProtect==1>
                    <#if remarkMsg.nine=='y'>
                        <label style="margin-right: 20px;"><input disabled name="nine" type="radio" value="y"
                                                                  checked="checked"
                            />是</label>
                        <label><input name="nine" disabled type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="nine" disabled type="radio" value="y"
                            />是</label>
                        <label><input name="nine" disabled type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.nine=='y'>
                        <label style="margin-right: 20px;"><input name="nine" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="nine" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="nine" type="radio" value="y"
                            />是</label>
                        <label><input name="nine" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">10</div>
            <div class="sureLeft">是否能及时与管家联系反馈猫咪状况？</div>
            <div class="sureRight">
                <#if protectBean.isProtect==1>
                    <#if remarkMsg.ten=='y'>
                        <label style="margin-right: 20px;"><input name="ten" type="radio" value="y" checked="checked"
                                                                  disabled
                            />是</label>
                        <label><input name="ten" type="radio" value="n" disabled/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="ten" type="radio" value="y" disabled
                            />是</label>
                        <label><input name="ten" type="radio" value="n" checked="checked" disabled/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.ten=='y'>
                        <label style="margin-right: 20px;"><input name="ten" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="ten" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="ten" type="radio" value="y"
                            />是</label>
                        <label><input name="ten" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>

            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">11</div>
            <div class="sureLeft">是否愿意配合领养中心工作,接受领养前的情况调查及领养后的回访？</div>
            <div class="sureRight">


                <#if protectBean.isProtect==1>
                    <#if remarkMsg.eleven=='y'>
                        <label style="margin-right: 20px;"><input name="eleven" type="radio" value="y" checked="checked"
                                                                  disabled
                            />是</label>
                        <label><input name="eleven" type="radio" value="n" disabled/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="eleven" disabled type="radio" value="y"
                            />是</label>
                        <label><input name="eleven" disabled type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.eleven=='y'>
                        <label style="margin-right: 20px;"><input name="eleven" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="eleven" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="eleven" type="radio" value="y"
                            />是</label>
                        <label><input name="eleven" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">12</div>
            <div class="sureLeft">是否能保证猫咪安全不可虐待猫咪？</div>
            <div class="sureRight">
                <#if protectBean.isProtect==1>
                    <#if remarkMsg.tw=='y'>
                        <label style="margin-right: 20px;"><input name="tw" type="radio" value="y" checked="checked"
                                                                  disabled
                            />是</label>
                        <label><input name="tw" type="radio" value="n" disabled/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="tw" disabled type="radio" value="y"
                            />是</label>
                        <label><input name="tw" type="radio" value="n" disabled checked="checked"/>否</label>
                    </#if>
                <#else >
                    <#if remarkMsg.tw=='y'>
                        <label style="margin-right: 20px;"><input name="tw" type="radio" value="y" checked="checked"
                            />是</label>
                        <label><input name="tw" type="radio" value="n"/>否</label>
                    <#else >
                        <label style="margin-right: 20px;"><input name="tw" type="radio" value="y"
                            />是</label>
                        <label><input name="tw" type="radio" value="n" checked="checked"/>否</label>
                    </#if>
                </#if>
            </div>
        </div>
    </section>
    <br/>
    <br/>
    <section>
        <div style="font-weight: bold">
            我承诺以上信息均属实， 猫咪领养以后坚决不弃养、 转卖、 虐待， 如违背领养原则， 本人愿承担相应责任。
        </div>
    </section>
    <span style="display: flex"><strong style="flex: 3">领养人姓名：</strong>
        <input style="flex: 5" id="realName" class="weui-input"
               type="text" value="${realName!''}"
               placeholder="请输入姓名"/></span>
    <span style="display: flex"><strong style="flex: 3">联系电话： </strong>
        <input style="flex: 5" id="phoneNum" class="weui-input" type="tel"
               value="${phoneNum!''}" placeholder="请输入手机号码"/></span>
    <p><span style="font-weight: bold;">领养人签字: </span>
        <#if protectBean.signImg==''>
            <img id="imgHand" onclick="openBox()" imgChage="0"
                 src='https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20201005/youchongxiong26.png'
                 width="235"
                 height="70"/>
        <#else >
            <img id="imgHand"
                 src="${protectBean.signImg}"
                 width="235"
                 height="70"/>
        </#if>

    </p>
    <br/>
    <section>
        <h2 class="title" style="font-weight: bold">第四条 定金</h2>
        <section>
            <p>宠物定金金额人民币<strong>${protectBean.dingjin}元</strong>（<strong>${protectBean.dingjinU}</strong>）。</p>
        </section>
    </section>
    <section>
        <h2 class="title" style="font-weight: bold">第五条 退养</h2>
        <section>
            <p>1.支付定金24小时以内（小于等于24小时）的，定金全额退回。</p>
            <p>2.支付定金超出24小时（大于24小时）的、支付违约金人民币<strong>${protectBean.weiyue}
                    元</strong>（<strong>${protectBean.weiyueU}</strong>）、定金退回。</p>
        </section>
    </section>
    <section>
        <h2 class="title" style="font-weight: bold">第六条 接猫</h2>
        <section>
            <p>1.猫咪到店后甲方联系乙方第一时间将猫咪接走、或者按照双方约定的其他方式接送猫咪。</p>
        </section>
    </section>
    <section>
        <h2 class="title" style="font-weight: bold">第七条 定金退回</h2>
        <section>
            <p>1.乙方在接猫咪回家时、定金全额退回。</p>
        </section>
    </section>
    <section>
        <h2 class="title" style="font-weight: bold">第八条 协议内容及生效</h2>
        <section>
            <p>1.本协议内容包括协议正文及所有甲方已经发布或将来可能发布的与“消费者保障协议”相关的规则。前述规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。</p>
            <p>2.您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即结束交易活动。</p>
            <p>
                3.甲方有权根据需要不时地制订、修改本协议与“消费者保障服务”相关的规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在甲方官方网站公布后，立即自动生效。如您不同意相关变更，应当立即停止交易活动。您继续交易或使用消费者保障协议，即表示您接受经修订的协议。
            </p>
            <p>4.出现下列情形之一时协议终止：</p>
            <ul>
                <li>乙方单方面被动终止:当乙方违反协议中条例或违约时，协议立即自动终止。</li>
                <li>本协议规定的其他协议终止条件发生或实现，导致本协议终止。</li>
            </ul>
        </section>
    </section>
    <section>
        <h2 class="title" style="font-weight: bold">第九条 争议解决</h2>
        <p>1.本协议之解释与适用，以及与本协议有关的争议，均应依照中华人民共和国法律予以处理，并以甲方所在地人民法院为第一审管辖法院。</p>
        <p>2.本协议一式两份，甲乙双方各执一份，自甲乙双方签署之日起生效，具有同等法律效力。</p>
        <p>3.本电子协议也可以存档到手机，等同纸质协议法律效力。</p>
        <p>4.如本协议的任何条款被视作无效或无法执行，则上述条款可被分离，其余部份则仍具有法律效力。</p>
        <p>5.甲方于您过失或违约时放弃本协议约定的权利的，不得视为甲方对您的其他或以后同类之过失或违约行为弃权。</p>
        <p>6.甲方基于本协议享有的权利以及获得的授权，均可以全部或部分转移、转让、许可、分授权、转授权给任何第三方。未经甲方事先书面同意，您不得将本协议项下的权利义务转让给任何第三方。</p>
        <p>7.如果用户对本协议内容有任何疑问，请拨打甲方客服热线。</p>
        <p>8.本合同生效后，如任何一方违约，守约方为维护权益，向违约方追偿的一切费用包括但不限于律师费、诉讼费、保全费、鉴定费、差旅费由违约方承担。</p>
    </section>

    <#if specialMsg?has_content>
        <section>
            <h2 class="title " style="font-weight: bold">第十条 补充协议</h2>
            <p>${specialMsg}</p>
        </section>
        <br/>
    </#if>
    <p>
        本协议内容包括协议正文、<a href="https://www.myloveqian.cn/static/yinsi.htm">《优宠熊用户隐私条款》</a>、<a
                href="https://www.myloveqian.cn/static/yonghu.htm">《优宠熊用户服务条款》</a>本协议明确援引的其他协议、
        优宠熊平台已经发布的或将来可能发布的各类规则，该等内容均为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，用户使用优宠熊服务均受本协议约束。
    </p>
</article>

<#if noSign==0 >
    <div class="weui-btn-area" style="margin:0;width: 100%; position: fixed; bottom: 0%;z-index: 999" id="buttonID">
        <a class="weui-btn weui-btn_primary" href="javascript:updateData()" id="showTooltips"
           style="border-radius: 0px;background-color: #b4282d;">同意签署协议</a>
    </div>
</#if>

<script src="${base}/resources/shopJs/jquery.min.js"></script>
<script src="${base}/resources/shopJs/fastclick.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
</script>
<script src="${base}/resources/shopJs/jquery-weui.min.js"></script>
<script src="${base}/resources/shopJs/swiper.min.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.3.2.js"></script>
<script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20201005/jSignature.min.js"></script>

<script>

    $(function () {

        wx.miniProgram.getEnv(function (res) {
            if (res.miniprogram) {
                wx.miniProgram.postMessage({data: json});

            }
        });

        var width = $(window).width()
        var height = $(window).height()
        var arguments = {
            width: width - 10,
            height: height - 15,
            cssclass: 'zx11',
            signatureLine: false,//去除默认画布上那条横线
            lineWidth: '5'
        };
        $("#box").jSignature(arguments);//初始化画板，初始化之后就可以进行操作
        $('#box').css('width', $(window).width() - 10)

        $('#shareBox').hide();
        $('#chongwuBody').show();
        $('#buttonID').show();
    });

    var dayTimeInt = 7

    function updateData() {
        var regSelf = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
        var realName = $('#realName').val()
        var phoneNum = $('#phoneNum').val()
        var one = $('input:radio[name="one"]:checked').val();
        var two = $('input:radio[name="two"]:checked').val();
        var three = $('input:radio[name="three"]:checked').val();
        var four = $('input:radio[name="four"]:checked').val();
        var five = $('input:radio[name="five"]:checked').val();
        var six = $('input:radio[name="six"]:checked').val();
        var seven = $('input:radio[name="seven"]:checked').val();
        var eight = $('input:radio[name="eight"]:checked').val();
        var nine = $('input:radio[name="nine"]:checked').val();
        var ten = $('input:radio[name="ten"]:checked').val();
        var eleven = $('input:radio[name="eleven"]:checked').val();
        var tw = $('input:radio[name="tw"]:checked').val();
        var one = $('input:radio[name="one"]:checked').val();
        var one = $('input:radio[name="one"]:checked').val();
        var one = $('input:radio[name="one"]:checked').val();
        var imgChage = $('#imgHand').attr('imgChage')
        var imgHandStr = $('#imgHand').attr('src')

        if (one != 'y') {
            $.alert('请先征得家人同意');
            return false;
        }
        if (two != 'y') {
            $.alert('请先能够在必要时给猫咪提供医疗措施');
            return false;
        }
        if (three != 'y') {
            $.alert('请先保障其基本生活开销');
            return false;
        }
        if (four != 'y') {
            $.alert('请先承诺，永远陪伴不离不弃');
            return false;
        }
        if (five != 'y') {
            $.alert('请先有独立的经济收入');
            return false;
        }
        if (six != 'y') {
            $.alert('请先能为猫咪提供生活玩耍的场所 进行家庭喂养');
            return false;
        }
        if (seven != 'y') {
            $.alert('请先有稳定住所');
            return false;
        }
        if (eight != 'y') {
            $.alert('请先年满18周岁');
            return false;
        }
        if (nine != 'y') {
            $.alert('请先能在达到免疫条件时，以及成年 定后定期为猫咪接住疫苗');
            return false;
        }
        if (ten != 'y') {
            $.alert('请能及时与管家联系反馈猫咪状况');
            return false;
        }
        if (eleven != 'y') {
            $.alert('请愿意配合领养中心工作,接受领养前的情况调查及领养后的回访');
            return false;
        }
        if (tw != 'y') {
            $.alert('请能保证猫咪安全不可虐待猫咪');
            return false;
        }
        if (!phoneNum) {
            $.toast("请填写手机号码", "cancel");
            return false;
        }
        if (!regSelf.test(phoneNum)) {
            $.toast("手机格式有误", "cancel");
        }
        if (!realName || '' == realName || realName.length <= 1) {
            $.toast("请先填写真实姓名", "cancel");
            return false;
        }
        console.log('imgChage' + imgChage)
        if (imgChage == '1' || imgChage == '0') {
            $.toast("请先完成手写签名", "cancel");
            return false;
        }
        $.confirm("点击确认表明您同意签署定金协议,祝您尽早接到猫咪", "请确认信息", function () {
            $.showLoading('签署中..')
            $.post('${base}/si/pr/upLingV2', {
                userId: '${userBean.userId}',
                phoneNum: phoneNum,
                realName: realName,
                protectId: '${protectBean.protectId}',
                imgHandStr: imgHandStr,
                one: one,
                two: two,
                three: three,
                four: four,
                five: five,
                six: six,
                seven: seven,
                eight: eight,
                nine: nine,
                ten: ten,
                eleven, eleven,
                tw: tw
            }, function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    var msgBody = res.msgBody
                    window.location.replace('${base}/si/pr/signLingSuccess')
                } else {
                    $.toast("签署失败", "cancel");
                }

            })
        }, function () {
            //取消操作
        });

    }

    function openBox() {

        $('#shareBox').show();
        $('#chongwuBody').hide();
        $('#buttonID').hide();
        stop();
        $.toast("请旋转手机屏幕,手写输入姓名", 'text');
    }

    //点击事件为获取base64数据，生成图片
    document.getElementById("makeSureBtn").onclick = function () {
        //getData:获取数据
        //reset：复位/重置
        // 获取签名的“base64”数据对
        var datapair = $("#box").jSignature("getData", "image");
        console.log(datapair);
        var url = 'data:' + datapair[0] + "," + datapair[1]

        //图片旋转
        rotateBase64Img(url, 270, function (base64data) {
            $("#imgHand").attr('src', base64data);
            console.log($("#imgHand").attr("src"));
            $('#shareBox').hide();
            $('#chongwuBody').show();
            $('#buttonID').show();
            $('#imgHand').attr('imgChage', '2')
            move()
        });
    }
    //生成图片之后我们就可以进行相应的操作

    //点击事件为重置画板
    document.getElementById("resetBtn").onclick = function () {
        $("#box").jSignature("reset");
        $("#imgHand").attr('src', 'https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20201005/youchongxiong22.png');
        $('#imgHand').attr('imgChage', '1')
    }

    function rotateBase64Img(src, edg, callback) {
        var canvas = document.createElement("canvas");
        var ctx = canvas.getContext("2d");
        var imgW;//图片宽度
        var imgH;//图片高度
        var size;//canvas初始大小
        if (edg % 90 != 0) {
            console.error("旋转角度必须是90的倍数!");
            throw '旋转角度必须是90的倍数!';
        }
        (edg < 0) && (edg = (edg % 360) + 360)
        const quadrant = (edg / 90) % 4; //旋转象限
        const cutCoor = {sx: 0, sy: 0, ex: 0, ey: 0}; //裁剪坐标
        var image = new Image();
        image.crossOrigin = "anonymous"
        image.src = src;
        image.onload = function () {
            imgW = image.width;
            imgH = image.height;
            size = imgW > imgH ? imgW : imgH;
            canvas.width = size * 2;
            canvas.height = size * 2;
            switch (quadrant) {
                case 0:
                    cutCoor.sx = size;
                    cutCoor.sy = size;
                    cutCoor.ex = size + imgW;
                    cutCoor.ey = size + imgH;
                    break;
                case 1:
                    cutCoor.sx = size - imgH;
                    cutCoor.sy = size;
                    cutCoor.ex = size;
                    cutCoor.ey = size + imgW;
                    break;
                case 2:
                    cutCoor.sx = size - imgW;
                    cutCoor.sy = size - imgH;
                    cutCoor.ex = size;
                    cutCoor.ey = size;
                    break;
                case 3:
                    cutCoor.sx = size;
                    cutCoor.sy = size - imgW;
                    cutCoor.ex = size + imgH;
                    cutCoor.ey = size + imgW;
                    break;
            }
            ctx.translate(size, size);
            ctx.rotate(edg * Math.PI / 180);
            ctx.drawImage(image, 0, 0);
            var imgData = ctx.getImageData(cutCoor.sx, cutCoor.sy, cutCoor.ex, cutCoor.ey);
            if (quadrant % 2 == 0) {
                canvas.width = imgW;
                canvas.height = imgH;
            } else {
                canvas.width = imgH;
                canvas.height = imgW;
            }
            ctx.putImageData(imgData, 0, 0);
            callback(canvas.toDataURL())
        };
    }

    /***禁止滑动***/
    // function stop() {
    //     document.body.style.overflow = 'hidden';
    // document.addEventListener("touchmove", mo, false);//禁止页面滑动
    // }


    /***取消滑动限制***/
    // function move() {
    //     document.body.style.overflow = '';//出现滚动条
    // document.removeEventListener("touchmove", mo, false);
    // }

</script>


</body>
</html>
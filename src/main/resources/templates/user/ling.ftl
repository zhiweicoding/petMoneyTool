<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>签署领养协议</title>

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
    <ul>
        <li><strong>甲方愿意将宠物领养给乙方。</strong></li>
        <li><strong>乙方自愿接受领养甲方宠物、并保证有经济能力饲养该宠物。</strong></li>
    </ul>
    <br/>
    <br/>
    <section style="width: 100%">
        <h2 style="font-weight: bold">请先完成领养确认</h2>
        <div class="sureLine">
            <div class="sureNum">1</div>
            <div class="sureLeft">是否已经征得家人同意？</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="one" type="radio" value="y"
                    />是</label>
                <label><input name="one" type="radio" value="n" checked="checked"/>否</label>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">2</div>
            <div class="sureLeft">是否能够在必要时给猫咪提供医疗措施？</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="two" type="radio" value="y"
                    />是</label>
                <label><input name="two" type="radio" value="n" checked="checked"/>否</label>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">3</div>
            <div class="sureLeft">是否可以保障其基本生活开销?</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="three" type="radio" value="y"
                    />是</label>
                <label><input name="three" type="radio" value="n" checked="checked"/>否</label>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">4</div>
            <div class="sureLeft">是否守承诺，永远陪伴不离不弃?</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="four" type="radio" value="y"
                    />是</label>
                <label><input name="four" type="radio" value="n" checked="checked"/>否</label>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">5</div>
            <div class="sureLeft">是否有独立的经济收入?</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="five" type="radio" value="y"
                    />是</label>
                <label><input name="five" type="radio" value="n" checked="checked"/>否</label>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">6</div>
            <div class="sureLeft">是否能为猫咪提供生活玩耍的场所 进行家庭喂养?</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="six" type="radio" value="y"
                    />是</label>
                <label><input name="six" type="radio" value="n" checked="checked"/>否</label>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">7</div>
            <div class="sureLeft">是否有稳定住所？</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="seven" type="radio" value="y"
                    />是</label>
                <label><input name="seven" type="radio" value="n" checked="checked"/>否</label>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">8</div>
            <div class="sureLeft">领养人是否年满18周岁？</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="eight" type="radio" value="y"
                    />是</label>
                <label><input name="eight" type="radio" value="n" checked="checked"/>否</label>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">9</div>
            <div class="sureLeft">是否能在达到免疫条件时，以及成年 定后定期为猫咪接住疫苗？</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="nine" type="radio" value="y"
                    />是</label>
                <label><input name="nine" type="radio" value="" checked="checked"/>否</label>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">10</div>
            <div class="sureLeft">是否能及时与管家联系反馈猫咪状况？</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="ten" type="radio" value="y"
                    />是</label>
                <label><input name="ten" type="radio" value="" checked="checked"/>否</label>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">11</div>
            <div class="sureLeft">是否愿意配合领养中心工作,接受领养前的情况调查及领养后的回访？</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="eleven" type="radio" value="y"
                    />是</label>
                <label><input name="eleven" type="radio" value="" checked="checked"/>否</label>
            </div>
        </div>
        <div class="sureLine" style="padding: 0 0 10px 0;">
            <div class="sureNum">12</div>
            <div class="sureLeft">是否能保证猫咪安全不可虐待猫咪？</div>
            <div class="sureRight">
                <label style="margin-right: 20px;"><input name="tw" type="radio" value="y"
                    />是</label>
                <label><input name="tw" type="radio" value="n" checked="checked"/>否</label>
            </div>
        </div>
    </section>

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

    <div>
        <section id="chongwuInfo">
            <h2 class="title">第一条 宠物基本信息</h2>
            <div class="weui-cells weui-cells_form">
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">猫咪品种:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.symbolName}" disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">猫咪性别:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${(protectBean.petSex==1)?string('弟弟','妹妹')}"
                               disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">购买价格:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.petPrice}" disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">出生日期:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.birthdayStr}" disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">一次疫苗时间:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.vaccineFirstDateTimeStr}" disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">一次疫苗药物:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.vaccineFirstName}" disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">二次疫苗时间:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.vaccineSecondDateTimeStr}" disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">二次疫苗药物:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.vaccineSecondName}" disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">三次疫苗时间:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.vaccineThirdDateTimeStr}" disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">三次疫苗药物:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.vaccineThirdName}" disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">驱虫时间:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.insectDateTimeStr}" disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">驱虫药物:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.insectName}" disabled>
                    </div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">签订时间:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.protectTimeStr}" disabled>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <h2 class="title">第二条 送养退养规则</h2>
            <section>
                <p>1、定金</p>
                <ul>
                    <li>宠物定金金额人民币<strong>${protectBean.dingjin}元</strong>（<strong>${protectBean.dingjinU}</strong>）。
                    </li>
                </ul>
                <p>2、退养</p>
                <ul>
                    <li>支付定金24小时以内（小于等于24小时）的，定金全额退回。</li>
                    <li>支付定金超出24小时（大于24小时）的、支付违约金人民币<strong>${protectBean.weiyue}
                            元</strong>（<strong>${protectBean.weiyueU}</strong>）、定金退回。
                    </li>
                </ul>
                <p>3、接猫</p>
                <ul>
                    <li>猫咪到店后甲方联系乙方第一时间将猫咪接走、或者按照双方约定的其他方式接送猫咪。</li>
                </ul>
                <p>4、定金退回</p>
                <ul>
                    <li>乙方在接猫咪回家时、定金全额退回。</li>
                </ul>
            </section>
        </section>
        <section>
            <h2 class="title">第三条 领养条件</h2>
            <section>
                <p>1.乙方喜爱猫咪、有经济能力为猫咪提供生活必须。</p>
                <p>2.乙方承诺并同意在甲方处购买未来猫咪3年的猫粮等用品。</p>
                <p>3.乙方不虐待、不专卖、不丢弃。</p>
            </section>
        </section>
        <section>
            <h2 class="title">第四条 其他费用</h2>
            <section>
                <p>1.领养费用：免费。</p>
                <p>2.猫粮、罐头、运输、检疫等成本费：
                    <span style="text-decoration:underline;font-weight: bold;">${protectBean.chengben}元</span>
                    （大写：
                    <span style="text-decoration:underline;font-weight: bold;">${protectBean.chengbenU}元</span>
                    ）</p>
                <p>3.猫咪市场价：
                    <span style="text-decoration:underline;font-weight: bold;">${protectBean.shichang}元</span>
                    （大写：
                    <span style="text-decoration:underline;font-weight: bold;">${protectBean.shichangU}元</span>
                    ）</p>
            </section>
        </section>
        <section>
            <h2 class="title">第五条 甲方的权利与义务</h2>
            <section>
                <p>1.在乙方接受宠物之前，应提供适当的食物和活动空间，保证其生活健康。</p>
                <p>2.向乙方如实告之宠物的生活健康状况。</p>
                <p>3.为乙方喂养以及领养提供其他必要的咨询和协助。</p>
                <p>4.宠物在预定后未交付前需要去医院的、甲方需向乙方提供以下材料：</p>
                <ul>
                    <li>宠物医院营业执照或执政许可证</li>
                    <li>执业兽医师签字的诊断证明</li>
                    <li>猫咪治疗完整视频录像，确定是本猫咪</li>
                    <li>主治医生执业兽医师资格证照片</li>
                    <li>猫咪死亡的提供死亡尸体视频以及死亡证明</li>
                </ul>
            </section>
        </section>
        <section>
            <h2 class="title">第六条 乙方的权利与义务</h2>
            <section>
                <p>1.在接收前，乙方有权要求甲方提供宠物的生活健康状况、性格和爱好等真实情况。</p>
                <p>2.不得抛弃、虐待所领养宠物。</p>
                <p>3.尽量为宠物提供猫粮、罐头、零食、窝及宠物专用的生活用具、玩具等。</p>
                <p>4.定期为宠物沐浴、注射疫苗、驱虫，不得使用洗衣粉等有害物质清洗宠物。</p>
                <p>5.在必要时，有经济能力为宠物提供医疗措施。</p>
                <p>
                    6.甲方需要探望宠物时，乙方不得借口拒绝，如甲方探望频率打扰到乙方，乙方有权拒绝。甲方如要接回宠物饲养时，乙方不得拒绝，并应当寄回甲方，甲方不得以接回饲养为由未经乙方同意长期（长期指2周以上）滞留宠物。</p>
                <p>7.不得给宠物实施不人道且不必要的手术，如：去爪，拨齿，及截耳断尾等。</p>
                <p>8.带宠物出门必须做好安全措施，如拴好牵引绳，不得遗失，逃走。</p>
                <p>9.宠物年迈之日乙方应妥善照顾直到正常自然死亡，但不得抛尸、食用或者变卖。</p>
                <p>10.乙方应向甲方通报宠物的基本情况及其重大事项，并不得隐瞒，如有隐瞒，可视违约。</p>
                <p>11.宠物在交付后需要去医院的、乙方需向甲方提供以下材料：</p>
                <ul>
                    <li>宠物医院营业执照或执政许可证</li>
                    <li>执业兽医师签字的诊断证明</li>
                    <li>猫咪治疗完整视频录像，确定是本猫咪</li>
                    <li>主治医生执业兽医师资格证照片</li>
                    <li>猫咪死亡的提供死亡尸体视频以及死亡证明</li>
                </ul>
                <p><strong>12.乙方分年付款的、应保证期满前一周内支付下一年猫粮等用品费用在自己账户。</strong></p>
            </section>
        </section>

        <section>
            <h2>第七条 交付及风险转移</h2>
            <section>
                <p>
                    1.根据《合同法》相关规定，宠物交付后，甲方不得无故撤销乙方饲养权。亦即宠物交付乙方后，乙方应悉心饲养。<strong>宠物交付前，由于宠物自身生病等原因产生的医疗费用，由甲方承担，乙方不承担。宠物交付后，由于宠物自身生病等原因产出的医疗费用，由乙方承担，甲方不承担。</strong>
                </p>
                <p>2、宠物交付前，由于宠物侵袭等原因造成他人人身或者财产损害的，由甲方承担责任，乙方不承担责任。宠物交付后，由于宠物自身生病等原因产生的医疗费用，由乙方承担，甲方不承担。</p>
                <p>
                    3、宠物交付后，由于宠物侵袭等原因造成他人人身或者财产损害的，由乙方承担责任，甲方不承担责任。
                </p>
                <p>4.甲方若不交付宠物，乙方可以要求其交付。</p>
            </section>
        </section>
        <section>
            <h2>第八条 售后保障</h2>
            <section>
                <p>1.猫咪保死活<span
                            style="text-decoration: underline;font-weight: bold;">${protectBean.year}年</span>（大写：<span
                            style="text-decoration: underline;font-weight: bold;">${protectBean.yearU}年</span>）。</p>
                <p>2、保障期内猫咪因自身机体原因如：传染病（猫瘟、腹水）、先天性心脏病死亡的，退回账户余额或成本费再挑选一只继续使用余额。</p>
                <p>
                    3、保障期内猫咪因乙方原因如：虐待、跳楼、摔死、碰撞、饿死、喂错药物致死、吃错东西致死的，账户余额不退、但作为人文关怀可市场价半价再领养一只小猫继续履行合同。
                </p>
            </section>
        </section>
        <section>
            <h2>第九条 协议内容及生效</h2>
            <section>
                <p>1、本协议内容包括协议正文及所有甲方已经发布或将来可能发布的与“消费者保障协议”相关的规则。前述规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。</p>
                <p>2、您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即结束交易活动。</p>
                <p>
                    3、甲方有权根据需要不时地制订、修改本协议与“消费者保障服务”相关的规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在甲方官方网站公布后，立即自动生效。如您不同意相关变更，应当立即停止交易活动。您继续交易或使用消费者保障协议，即表示您接受经修订的协议。
                </p>
            </section>
        </section>
        <section>
            <h2>第十条 违约责任</h2>
            <section>
                <p>1.若乙方不按规定履行领养义务，甲方有权单方面要求收回宠物。</p>
                <p>2.若乙方虐待，弃养宠物，甲方可以收取5000元违约金</p>
                <p>3.乙方没有在规定的时日内完成续费的、甲方将冻结账户余额并将违约失信信息送往国家征信部门，只到履约为止。</p>
            </section>
        </section>
        <section>
            <h2>第十一条 乙方权利及义务</h2>
            <section>
                <p>
                    1.乙方应在宠物交接完毕后，对所购宠物的生命续存期间的防疫、疾病、生育负有监护、照料、尽饲养人之义务，并对所购宠物的非正常灭失、受伤、疾病、死亡负有全部责任。
                </p>
                <p>
                    2.乙方应按《宠物饲养须知》或沟通建议列示的要求科学饲养宠物，否则乙方应自行承担饲养不当引起的包括宠物生病或死亡在内的一切责任。
                </p>
                <p>3.乙方应在需要获得本协议所提供的保障服务时，向甲方提供身份信息以核实其为乙方本人，否则甲方有权拒绝履行售后保障服务。</p>
                <p>4.乙方应确保自身无过敏史、猫咪感染史的情况下饲养猫咪。如在猫咪饲养过程中自身以及第三方连带人被猫咪感染、挠伤、抓伤、咬伤等情形以及由此产生的一切责任及费用均由乙方自行承担，与甲方无关。</p>
                <p>5.乙方负有举证责任和义务。</p>
            </section>
        </section>
        <section>
            <h2>第十二条 协议终止</h2>
            <p>1、出现下列情形之一时协议终止：</p>
            <ul>
                <li>乙方单方面被动终止:当乙方违反协议中条例或违约时，协议立即自动终止。</li>
                <li>本协议规定的其他协议终止条件发生或实现，导致本协议终止。</li>
            </ul>
        </section>
        <section>
            <h2>第十三条 争议解决</h2>
            <p>本协议之解释与适用，以及与本协议有关的争议，均应依照中华人民共和国法律予以处理，并以甲方所在地人民法院为第一审管辖法院。</p>
        </section>
        <section>
            <h2>第十四条 其他</h2>
            <p>1、本协议一式两份，甲乙双方各执一份，自甲乙双方签署之日起生效，具有同等法律效力。</p>
            <p>2、本电子协议也可以存档到手机，等同纸质协议法律效力。</p>
            <p>3、如本协议的任何条款被视作无效或无法执行，则上述条款可被分离，其余部份则仍具有法律效力。</p>
            <p>4、甲方于您过失或违约时放弃本协议约定的权利的，不得视为甲方对您的其他或以后同类之过失或违约行为弃权。</p>
            <p>5、甲方基于本协议享有的权利以及获得的授权，均可以全部或部分转移、转让、许可、分授权、转授权给任何第三方。未经甲方事先书面同意，您不得将本协议项下的权利义务转让给任何第三方。</p>
            <p>6、如果用户对本协议内容有任何疑问，请拨打甲方客服热线。</p>
            <p>7、本合同生效后，如任何一方违约，守约方为维护权益，向违约方追偿的一切费用包括但不限于律师费、诉讼费、保全费、鉴定费、差旅费由违约方承担。</p>
        </section>
        <p>
            本协议内容包括协议正文、<a href="https://www.myloveqian.cn/static/yinsi.htm">《优宠熊用户隐私条款》</a>、<a
                    href="https://www.myloveqian.cn/static/yonghu.htm">《优宠熊用户服务条款》</a>本协议明确援引的其他协议、
            优宠熊平台已经发布的或将来可能发布的各类规则，该等内容均为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，用户使用优宠熊服务均受本协议约束。
        </p>
        <br/>
        <br/>
    </div>
    <#if specialMsg?has_content>
        <div>
            <section>
                <h2>第十五条 补充协议</h2>
                <p>${specialMsg}</p>
            </section>
            <br/>
            <br/>
        </div>
    </#if>
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
        var imgChage = $('#imgHand').attr('imgChage')
        var imgHandStr = $('#imgHand').attr('src')

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
        $.confirm("点击确认表明您同意签署优宠熊购猫协议,祝您购猫愉快", "请确认信息", function () {
            $.showLoading('签署中..')
            $.post('${base}/si/pr/upV2', {
                userId: '${userBean.userId}',
                phoneNum: phoneNum,
                realName: realName,
                protectId: '${protectBean.protectId}',
                imgHandStr: imgHandStr
            }, function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    var msgBody = res.msgBody
                    window.location.replace('${base}/si/pr/signSuccess')
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
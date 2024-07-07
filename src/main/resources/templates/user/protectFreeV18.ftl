<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>签署保障协议</title>

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
    <span>为了保障您（以下简称“用户”）的权益， 请在使用优宠熊服务之前，详细阅读此服务协议（以下简称“本协议”）所有内容，特别是加粗部分。
        <strong>本合同依据《中华人民共和国民法典-合同编》及有关法律、法规的规定。当用户开始使用优宠熊服务，用户的行为表示用户同意并签署了本协议，构成用户与平台之间的协议，具有合同效力。</strong>
    </span>
    <br/>
    <p><strong>猫舍（甲方）：</strong>${shopBean.shopName}</p>
    <p>联系电话：${shopBean.shopPhone?substring(0,4)}**${shopBean.shopPhone?substring(6,7)}
        **${shopBean.shopPhone?substring(8,10)}</p>
    <br/>
    <span style="display: flex"><strong style="flex: 3">购猫人（乙方）：</strong>
        <input style="flex: 5" id="realName" class="weui-input"
               type="text" value="${realName!''}"
               placeholder="请输入姓名"/></span>
    <span style="display: flex"><div style="flex: 3">联系电话： </div>
        <input style="flex: 5" id="phoneNum" class="weui-input" type="tel"
               value="${phoneNum!''}" placeholder="请输入手机号码"/></span>
    <p><span style="font-weight: bold;">手写签名: </span>
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
    <p><strong>优宠熊平台（丙方）：</strong>天津优宠科技有限公司</p>
    <p><strong>公章: </strong>
        <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/youchongxiong4.jpg"
             width="100"
             height="96"/>
    </p>
    <br/>

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
                    <input class="weui-input" type="text" value="${(protectBean.petSex==1)?string('弟弟','妹妹')}" disabled>
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


    <div>
        <section>
            <h2 class="title">第二条 平台职责</h2>
            <section>
                <p>1、平台为甲方所售卖的猫咪提供一份中国平安财险北京分公司的宠物保险。乙方可<strong>自愿</strong>为猫咪购买</p>
                <p>2、平台需监督甲方猫舍按照协议内容为用户提供保障。</p>
                <p>3、平台需提醒乙方按照甲方规定科学方式照顾饲养猫咪。</p>
                <p>4、平台应提供具备<strong>职业兽医资格证</strong>的养宠顾问为用户饲养猫咪提供问询服务。</p>
            </section>
        </section>
        <section>
            <h2 class="title">第三条 价格、附加费用及交付</h2>
            <section>
                <p>1、运费由第三方宠物运输公司收取。运输时间由甲方和托运沟通后，第一时间告知乙方，乙方应提前做好接猫咪的准备。如甲乙双方另有商议则从其约定。</p>
                <p>2、交付时间：以实际交付时间为准。接到猫咪当日为一个自然日</p>
                <p>3、宠物经过旅途劳顿，应得到妥善的休息，乙方应提前准备猫粮、猫砂等用品。</p>
                <p>4、乙方在接到猫咪当日，出现猫咪丢失、死亡、需在接到猫咪一个小时内联系甲方和丙方客服。甲方在丙方监督下，与托运公司核对后，如乙方所述属实。应在<strong>乙方第一次与甲方沟通后，24小时内赔付全款，不得延误</strong>
                </p>
                <p>5、乙方在接到猫咪当日，出现猫咪肢体残缺、花色明显有误、品种有误（品种有误，除大品种有误，如美短、加菲发错外，乙方需提供基因检测报告）、性别有误。
                    需在接到猫咪第一个自然日内联系甲方和丙方客服。甲方在丙方监督下，与托运公司核对后，如乙方所述属实。应在<strong>乙方第一次与甲方沟通后，24小时内寄送正确的猫咪</strong>（
                    提供基因检测报告期间，乙方应妥善照顾猫咪，如因乙方照顾不善，导致猫咪患病、死亡，死亡责任由乙方承担；检测报告结果如不符合购买品种，甲方应无条件
                    更换正确猫咪并承担运费或退全款并承担运费，同时甲方需支付给乙方检测期间照顾猫咪花费的猫粮，猫砂成本；检测成本由乙方承担）。
                </p>
                <p>6、自宠物交付定金之日起：甲方不接受非本协议第四条售后保障承诺约定范围换宠、退定金、退款、退宠行为。</p>
                <p>7、因宠物为非标准化特殊商品，在本协议项下预定宠物交付前，若非甲方原因，乙方怠于或拒绝接受该宠物，甲方不退还乙方已支付款项
                    ；若预定宠物因甲方原因导致无法交付，在协商无果的情况下，甲方应退还乙方已支付的款项。</p>
                <p>8、乙方自接猫当日起享受甲方提供的<span style="color: darkred;">${dayTime}天</span>购宠保障。（保障期间内出现第四条第1点规定的疾病，甲方应赠送一只同品质猫咪）
                </p>
                <#if protectBean.isFree==0>
                    <p>
                        9、自购买宠物之日起：乙方在指定的淘宝店铺购买宠物用品，丙方应在乙方每次购物<span style="color: darkred;">确认收货24小时内</span>将等于乙方消费金额的20%的现金以转账的形式返还到乙方指定账户中，累计返还金额等于实际购猫费用时，返现结束。
                    </p>
                    <p>10、实际购猫费用等于购买猫咪花费的费用，购猫时如购买其他用品不计入在返现范围内。</p>
                    <p>11、如因乙方提供账户有误造成乙方经济损失，丙方概不负责</p>
                    <p>12、蓄意、恶意申请退款、差评，违反返现规则，丙方有权取消其返现权利</p>
                </#if>
            </section>
        </section>
        <section>
            <h2 class="title">第四条 疾病</h2>
            <section>
                <p>1、<strong>猫瘟热、猫传染性腹膜炎</strong>两种疾病属于平台要求甲方质保的疾病</p>
                <p>2、甲方需在第三条第8点规定的的时间内对<strong>猫瘟热、猫传染性腹膜炎</strong>两种疾病提供第三条第8条规定的保障服务。</p>
                <p>3、乙方在接到猫咪的<strong>第一天</strong>，应仔细检查猫咪是否有猫癣（购猫前甲方告知乙方已知晓情况除外），如有猫癣，应联系甲方猫舍，
                    核实无误后，督促甲方免费寄送治疗猫癣药物一次，提供1v1的医疗指导。
                </p>
                <p>4、除本条第1点、第2点、第3点中约定的情况外，由于环境改变，造成的常见应激反应如：环境过敏、流眼泪、过敏、呕吐、拉稀等；
                    宠物常见普通疾病如：先天性疾病、基因遗传性疾病、皮肤病（耳螨、真菌感染、藓类等）、普通感冒、普通肠道疾病、关节疾病、
                    毛色的改变(甲方故意染色情况除外)、体型的大小<strong>均不在甲方保障范围</strong>，
                    但甲方须对此类病症提供治疗建议。</p>
            </section>
        </section>
        <section>
            <h2 class="title">第五条 售后保障承诺</h2>
            <section>
                <p><strong>本着尊重生命、不离不弃的原则，丙方有权过问、并追查猫咪疾病的治疗以及饲养情况，对于疾病后丢弃、不予治疗的、丙方有权追究法律责任。</strong></p>
                <p>1、关于治疗及费用：</p>
                <ul>
                    <li>猫咪保障期内、发生猫瘟热这项重大疾病，乙方联系甲方寄送治疗药物，药物费用由甲方承担。
                    </li>
                    <li>征得甲方同意后乙方也可自愿就近治疗、医药费用乙方承担。如乙方不愿治疗可将猫咪第一时间送回、不能耽误甲方治疗、运费乙方承担、治疗费用甲方承担。
                    </li>
                    <li>康复后甲方将猫咪寄送给乙方、运费甲方承担。
                    </li>
                    <li>由于宠物药品没有统一定价、医院治疗方式收费标准参差不齐，因此无论甲乙双方任何一方救治猫咪产生费用、另一方均不报销承担任何治疗费用。
                    </li>
                    <li>活体属于非标准化特殊商品、不支持退货退款。
                    </li>
                </ul>

                <p>2、若乙方满足如下全部条件时，甲方为乙方所购宠物提供本协议售后保障服务：</p>
                <ul>
                    <li>乙方需遵照平台服务流程，签订本电子协议；</li>
                    <li>乙方需按照甲方提供的科学喂养方式以及个体猫咪生活习惯<strong>对宠物进行正确喂养</strong>；</li>
                    <li>
                        在本协议约定的售后保障期内，猫咪的健康、疾病、生死是和甲方相关联的、由甲乙双方共同负责。因乙方没有专业饲养经验、为保障猫咪生命安全、乙方不得擅自对宠物进行就诊或医治，乙方应在宠物出现健康状态异常后第一时间联系甲方进行协商处理，双方确认后确需就诊医治的应立即就医，否则视为乙方违约，甲方有权拒绝履行售后保障服务、有权追究乙方私自处理不周导致猫咪疾病死亡等法律责任。乙方自行承担因擅自就医造成的诊疗、药物、护理、死亡等一切费用及责任，与甲方无关。
                    </li>
                    <li>在本协议约定的售后保障期内，乙方如发现猫咪健康状况异常，第一时间联系甲方，而甲方没有给出任何处理建议的，乙方应第一时间联系丙方，由丙方督促甲方完成协议约定内容。</li>
                    <li>乙方在<strong>接到宠物时应当日及时检测猫瘟。</strong>如发现确有感染，应第一时间联系甲方处理；</li>
                </ul>
                <p>3、自乙方接到宠物之日起${dayTime}日内，若宠物出现第四条第1点规定的两种疾病时： <strong>乙方应第一时间联系甲方</strong>依次履行售后保障服务：
                </p>
                <ul>
                    <li>甲方应积极配合乙方宠物治疗，并为乙方提供合理有效的治疗建议</li>
                    <li>甲方需为乙方提供本协议中第三条第8点中规定的保障服务</li>
                </ul>
                <p>
                    4、在甲方提供的售后保障期内，乙方如发现宠物健康状况异常(如进食不畅、流鼻涕、鼻子干燥、呕吐、拉稀、眼部分泌物过多、精神不佳、皮肤症状等)，需在对宠物就诊或医治前的第一时间与甲方联系。经甲方确认同意，宠物确需乙方就诊时，乙方应前往甲乙双方均认可的正规动物医院/动物诊疗机构(正规的标准包括但不限于医院/诊疗机构需持有动物诊疗许可证，检验医生具有执业兽医师资格证书)。
                </p>
                <p>5、若乙方依据本协议所购买宠物在售后保障期内出现上述2种疾病时，
                    <strong>应第一时间联系甲方，根据甲方要求检测。正式理赔时，至少向甲方提供以下理赔材料</strong>:</p>
                <ul>
                    <li>宠物医院营业执照或执政许可证</li>
                    <li>执业兽医师签字的诊断证明</li>
                    <li>正规宠物医院的血检单（血常规）</li>
                    <li>猫咪测猫瘟完整视频录像，确定是甲方所售猫咪</li>
                    <li>正规宠物医院的FPV测板结果</li>
                    <li>主治医生执业兽医师资格证照片</li>
                </ul>
                <p>
                    甲方在收到以上材料，核对无误之后，应履行售后保障服务。在乙方无违约行为的前提下，甲方怠于履行或拒绝履行售后服务保障的，乙方可直接联系丙方，依据本协议保障服务内容，在满足本协议相关规则的前提下获得相应保障。
                </p>
                <p>6、本协议开具的证明报告需由正规的宠物医院具备职业兽医师执照的医生开具。（正规宠物医院需具备合法有效的宠物医院营业执照）</p>
                <p>7、本协议所提供保障服务只针对乙方本人生效，乙方需通过身份信息核实，方可获得本协议所提供的保障服务。</p>
                <p>8、反馈时间以联系甲方时间为准。</p>
                <p>9、除本协议记录的宠物信息外，如乙方存在特殊要求，请备注附加协议说明，否则不作为协议承诺内容。</p>
            </section>
        </section>
        <section>
            <h2>第六条 协议内容及生效</h2>
            <p>1、本协议内容包括协议正文及所有丙方已经发布或将来可能发布的与“消费者保障协议”相关的规则。前述规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。</p>
            <p>2、您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即结束交易活动。</p>
            <p>
                3、丙方有权根据需要不时地制订、修改本协议与“消费者保障服务”相关的规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在甲方官方网站公布后，立即自动生效。如您不同意相关变更，应当立即停止交易活动。您继续交易或使用消费者保障协议，即表示您接受经修订的协议。
            </p>
        </section>
        <section>
            <h2>第七条 甲方权利及义务</h2>
            <p>1、甲方承诺并保证：</p>
            <ul>
                <li>甲方可帮助乙方解决饲养过程中出现的问题，但不属于甲方责任；</li>
                <li>其有资格从事本协议项下之合作且有能力履行本协议约定之义务；</li>
                <li>保证本协议中关于“宠物基本信息”描述的真实性，并对该描述负有举证责任；</li>
                <li>保证与乙方交易过程中不存在虚假、欺诈、价格违法或其他违反法律法规及本协议的行为；</li>
                <li>保证乙方对依据本协议购买甲方的宠物将不侵犯任何第三方合法权益(包括但不限于知识产权、物权等)</li>
            </ul>
            <p>
                2、甲方所提供猫咪属甲方爱猫人士家庭繁育、甲方性质属于个人性质居多并非组织、团体、机构、企业等集体性质，如乙方对此有特殊要求应立即停止交易。</p>
        </section>
        <section>
            <h2>第八条 乙方权利及义务</h2>
            <p>
                1、乙方应在宠物交接完毕后，对所购宠物的生命续存期间的防疫、疾病、生育负有监护、照料、尽饲养人之义务，并对所购宠物的非正常灭失、受伤、疾病、死亡负有全部责任。
            </p>
            <p>
                2、乙方应按《宠物饲养须知》或沟通建议列示的要求科学饲养宠物，否则乙方应自行承担饲养不当引起的包括宠物生病或死亡在内的一切责任。
            </p>
            <p>3、乙方应按约定时间及时向甲方支付宠物款项否则视为违约。</p>
            <p>4、乙方应在需要获得本协议所提供的保障服务时，向甲方提供身份信息以核实其为乙方本人，否则甲方有权拒绝履行售后保障服务。</p>
            <p>5、乙方应确保自身无过敏史、猫咪感染史的情况下饲养猫咪。如在猫咪饲养过程中自身以及第三方连带人被猫咪感染、挠伤、抓伤、咬伤等情形以及由此产生的一切责任及费用均由乙方自行承担，与甲方和丙方无关。</p>
            <p>6、乙方负有举证责任和义务。</p>
        </section>
        <section>
            <h2>第九条 丙方的权利及义务</h2>
            <p>1、丙方监督甲方提供相应服务。</p>
            <p>2、丙方监督乙方善待猫咪并科学饲养。</p>
            <p>3、丙方提供15年的售后在线诊疗和饲养管理服务。</p>
        </section>
        <section>
            <h2>第十条 协议终止</h2>
            <p>1、出现下列情形之一时协议终止：</p>
            <ul>
                <li>乙方单方面被动终止:当乙方违反协议中条例或违约时，协议立即自动终止。</li>
                <li>本协议规定的其他协议终止条件发生或实现，导致本协议终止。</li>
            </ul>
        </section>
        <section>
            <h2>第十一条 争议解决</h2>
            <p>本协议之解释与适用，以及与本协议有关的争议，均应依照中华人民共和国法律予以处理，并以丙方所在地人民法院为第一审管辖法院。</p>
        </section>
        <section>
            <h2>第十二条 其他</h2>
            <p>1、本协议一式两份，甲乙双方各执一份，自甲乙双方签署之日起生效，具有同等法律效力。</p>
            <p>2、本电子协议也可以存档到手机，等同纸质协议法律效力。</p>
            <p>3、如本协议的任何条款被视作无效或无法执行，则上述条款可被分离，其余部份则仍具有法律效力。</p>
            <p>4、甲方于您过失或违约时放弃本协议约定的权利的，不得视为甲方对您的其他或以后同类之过失或违约行为弃权。</p>
            <p>5、甲方基于本协议享有的权利以及获得的授权，均可以全部或部分转移、转让、许可、分授权、转授权给任何第三方。未经甲方事先书面同意，您不得将本协议项下的权利义务转让给任何第三方。</p>
            <p>6、如果用户对本协议内容有任何疑问，请拨打丙方客服热线。</p>
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
                <h2>第十三条 补充协议</h2>
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
                imgHandStr: imgHandStr,
                zhifubao: '',
                taobaoNickname: '',
                dayTime: 7,
                protectType: '3'
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
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

    </style>
</head>
<body ontouchstart>

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
    <br/>
    <p><strong>优宠熊平台（丙方）：</strong>天津优宠科技有限公司</p>
    <p>联系电话：17622655171</p>
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
                <p>1、平台为所售卖的猫咪提供一份中国平安财险北京分公司的宠物保险。乙方可<strong>自愿</strong>为猫咪购买</p>
                <p>2、平台需监督甲方猫舍按照协议内容为用户提供保障。</p>
                <p>3、平台需提醒乙方按照甲方规定的方式照顾猫咪。</p>
                <p>4、平台应提供具备<strong>职业兽医资格证</strong>的养宠顾问为用户照顾猫咪提供问询服务。</p>
            </section>
        </section>
        <section>
            <h2 class="title">第三条 价格、附加费用及交付</h2>
            <section>
                <p>1、运费由第三方宠物运输公司收取。运输时间由甲方和快递沟通后，第一时间告知乙方，乙方应提前做好接猫咪的准备。</p>
                <p>2、交付时间：以实际交付时间为准。接到猫咪当日为一个自然日</p>
                <p>3、宠物经过旅途劳顿，应得到妥善的休息，乙方应提前准备猫粮、猫砂等用品。</p>
                <p>4、在接到猫咪时出现猫咪丢失、死亡、肢体残缺、花色明显有误、品种、性别有误，应第一时间联系优宠熊的官方客服。
                    客服在与快递公司核对后，应在24小时内赔付全款或寄送正确的猫咪（品种有误，除大品种有误，如美短、加菲发错外，乙方需要提供基因检测报告。
                    提供基因检测报告期间，乙方应妥善照顾猫咪，如因照顾不善，导致猫咪患病、死亡，责任由乙方承担；检测报告结果如不符合购买品种，甲方应无条件
                    更换正确猫咪并承担运费或退全款并承担运费，同时甲方需支付给乙方检测期间照顾猫咪花费的猫粮，猫砂成本，检测成本由乙方承担）。
                </p>
                <p>5、自宠物交付定金之日起：甲方不接受非本协议第四条售后保障承诺约定范围换宠、退定金、退款、退宠行为。</p>
                <p>6、因宠物为非标准化特殊商品，在本协议项下预定宠物交付前，若非甲方原因，乙方怠于或拒绝接受该宠物，甲方不退还乙方已支付定金
                    ；若预定宠物因甲方原因导致无法交付，在协商无果的情况下，甲方应退还乙方已支付的定金。</p>
                <p>7、乙方自接猫当日起享受甲方提供的<span style="color: darkred;">${dayTime}天</span>购宠保障（如保障期间内出现第四条第一点规定的疾病致死
                    甲方应赔偿乙方购买猫咪费用40%或免费更换一只同品质猫咪）
                </p>
                <#if protectBean.isFree==0>
                    <p>
                        8、自购买宠物之日起：乙方在指定的淘宝店铺购买宠物用品，丙方应在乙方每次购物<span style="color: darkred;">确认收货24小时内</span>将等于乙方消费金额的20%的现金以转账的形式返还到乙方指定账户中，累计返还金额等于实际购猫费用时，返现结束。
                    </p>
                    <p>9、实际购猫费用等于购买猫咪花费的费用，购猫时如购买其他用品不计入在返现范围内。</p>
                    <p>10、如因乙方提供账户有误造成乙方经济损失，丙方概不负责</p>
                    <p>11、蓄意、恶意申请退款、差评，违反返现规则，丙方有权取消其返现权利</p>
                </#if>
            </section>
        </section>
        <section>
            <h2 class="title">第四条 疾病</h2>
            <section>
                <p>1、<strong>猫瘟、猫传染性腹膜炎</strong>两种疾病属于平台要求甲方质保范围内的疾病，甲方需在质保期内对两种疾病提供质保服务。</p>
                <p>2、乙方在接到猫咪的<strong>第一天</strong>，应仔细检查猫咪是否有猫癣（购猫前甲方告知乙方已知晓情况除外），如有猫癣，应联系优宠熊官方客服，
                    核实无误后，应免费寄送治疗猫癣药物一次，提供1v1的医疗指导。
                </p>
                <p>3、除上述第1条和第2条中约定的情况外，由于环境改变，造成的常见应激反应如：环境过敏、流眼泪、过敏、呕吐、拉稀等；
                    宠物常见普通疾病如：先天性疾病、基因遗传性疾病、皮肤病（耳螨、真菌感染、藓类等）、普通感冒、普通肠道疾病、关节疾病、
                    毛色的改变(甲方故意染色情况除外)、体型的大小<strong>均不在甲方赔付范围</strong>，
                    但甲方须对此类病症提供治疗建议。</p>
            </section>
        </section>
        <section>
            <h2 class="title">第五条 售后保障承诺</h2>
            <section>
                <p>1、若乙方满足如下全部条件时，甲方为乙方所购宠物提供本协议提供的售后保障服务：</p>
                <ul>
                    <li>乙方需遵照平台服务流程，签订本电子协议；</li>
                    <li>乙方需按照平台提供的养宠顾问的建议<strong>对宠物进行正确喂养</strong>；</li>
                    <li>
                        在本协议约定的售后保障期内，乙方不得擅自对宠物进行就诊或医治，乙方应在宠物出现健康状态异常后第一时间联系甲方进行处理，否则是视为乙方违约，甲方有权拒绝履行售后保障服务，乙方自行承担因擅自就医造成的诊疗、药物、护理、死亡等一切费用及责任，与甲方无关。
                    </li>
                    <li>在本协议约定的售后保障期内，乙方如发现猫咪健康状况异常，第一时间联系甲方，而甲方没有对给出任何处理建议的，乙方应第一时间联系丙方，由丙方督促甲方完成协议约定内容。</li>
                    <li>乙方在<strong>接到宠物时应及时检测猫瘟、猫传染性腹膜炎。</strong>如发现确有感染，应第一时间联系甲方理赔；</li>
                </ul>
                <p>2、自乙方接到宠物之日起${dayTime}日内，若宠物出现第四条第1点规定的两种疾病时： <strong>乙方应第一时间联系甲方</strong>依次履行售后保障服务：
                </p>
                <ul>
                    <li>甲方应积极配合乙方宠物治疗，并为乙方提供合理有效的治疗建议</li>
                    <li>甲方需为乙方提供本协议中第二条第3点中规定的赔偿</li>
                </ul>
                <p>
                    4、在甲方提供的售后保障期内，乙方如发现宠物健康状况异常(如进食不畅、流鼻涕、鼻子干燥、呕吐、拉稀、眼部分泌物过多、精神不佳、皮肤症状等)，需在对宠物就诊或医治前的第一时间与甲方联系。经甲方确认同意，宠物确需乙方就诊时，乙方应前往甲乙双方均认可的正规动物医院/动物诊疗机构(正规的标准包括但不限于医院/诊疗机构需持有动物诊疗许可证，检验医生具有执业兽医师资格证书)。
                </p>
                <p>5、除第三条第2点情况外，乙方对猫咪的治疗、诊疗、体检费用均由乙方自行承担。</p>
                <p>6、若乙方依据本协议所购买宠物在售后保障期内出现上述2种疾病时，
                    <strong>应第一时间联系甲方，根据甲方要求检测。正式理赔时，至少向甲方提供以下理赔材料</strong>:</p>
                <ul>
                    <li>执业兽医师签字的诊断证明</li>
                    <li>正规宠物医院的血检单（血常规）</li>
                    <li>猫咪测猫瘟完整视频录像，确定是甲方所售猫咪</li>
                    <li>正规宠物医院的FPV测板结果</li>
                    <li>主治医生执业兽医师资格证照片</li>
                </ul>
                <p>
                    甲方在收到以上材料，核对无误之后，应履行售后保障服务。在乙方无违约行为的前提下，甲方怠于履行或拒绝履行售后服务保障的，乙方可直接联系丙方，依据本协议保障服务内容，在满足本协议相关规则的前提下获得相应赔付。
                </p>
                <p>7、本协议开具的证明报告需由正规的宠物医院具备职业兽医师执照的医生开具。（正规宠物医院需具备合法有效的宠物医院营业执照）</p>
                <p>8、本协议所提供保障服务只针对乙方本人生效，乙方需通过身份信息核实，方可获得本协议所提供的保障服务。</p>
                <p>9、反馈时间以联系养宠顾问时间为准。</p>
                <p>10、除本协议记录的宠物信息外，如乙方存在特殊要求，请备注附加协议说明，否则不作为协议承诺内容。</p>
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
                <li>甲方可帮助乙方解决乙方饲养出的问题，但不属于甲方责任；</li>
                <li>其有资格从事本协议项下之合作且有能力履行本协议约定之义务；</li>
                <li>保证本协议中关于“宠物基本信息”描述的真实性，并对该描述负有举证责任；</li>
                <li>保证与乙方交易过程中不存在虚假、欺诈、价格违法或其他违反法律法规及本协议的行为；</li>
                <li>保证乙方对依据本协议购买甲方的宠物将不侵犯任何第三方合法权益(包括但不限于知识产权、物权等)</li>
            </ul>
        </section>
        <section>
            <h2>第八条 乙方权利及义务</h2>
            <p>
                1、乙方应在宠物交接完毕后，对所购宠物的生命续存期间的防疫、疾病、生育负有监护、照料、尽饲养人之义务，并对所购宠物的非正常灭失、受伤、疾病、死亡负有全部责任。2、乙方应按《宠物饲养指导》或沟通建议列示的要求科学养护宠物，否则乙方应自行承担饲养不当引起的包括宠物生病或死亡在内的一切责任。
            </p>
            <p>2、乙方应按本协议约定的时间及时向甲方支付宠物价款。</p>
            <p>3、乙方应在需要获得本协议所提供的保障服务时，向甲方提供身份信息以核实其为乙方本人，否则甲方有权拒绝履行售后保障服务。</p>
        </section>
        <section>
            <h2>第九条 丙方的权利及义务</h2>
            <p>1、丙方监督甲方提供猫咪品质。</p>
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
            本协议内容包括协议正文、本协议明确援引的其他协议、优宠熊平台已经发布的或将来可能发布的各类规则，该等内容均为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，用户使用优宠熊服务均受本协议约束。
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

<script>

    $(function () {

        wx.miniProgram.getEnv(function (res) {
            if (res.miniprogram) {
                wx.miniProgram.postMessage({data: json});

            }
        });


    });

    var dayTimeInt = 7

    function updateData() {
        var regSelf = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
        var realName = $('#realName').val()
        var phoneNum = $('#phoneNum').val()

        if (!phoneNum) {
            $.toast("请填写手机号码", "cancel");
            return false;
        }
        if (!regSelf.test(phoneNum)) {
            $.toast("手机格式有误", "cancel");
        }
        if (!realName) {
            $.toast("请先填写姓名", "cancel");
            return false;
        }
        $.confirm("点击确认表明您同意签署优宠熊购猫协议,祝您购猫愉快", "请确认信息", function () {
            $.showLoading('签署中..')
            $.post('${base}/user/pro/up', {
                userId: '${userBean.userId}',
                phoneNum: phoneNum,
                realName: realName,
                protectId: '${protectBean.protectId}',
                zhifubao: '',
                taobaoNickname: '',
                dayTime: 7,
                protectType: '3'
            }, function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    var msgBody = res.msgBody
                    window.location.replace('${base}/user/pro/signSuccess')
                } else {
                    $.toast("签署失败", "cancel");
                }

            })
        }, function () {
            //取消操作
        });

    }


</script>


</body>
</html>

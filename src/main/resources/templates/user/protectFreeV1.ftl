<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>签署保障协议V1</title>

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
    </style>
</head>
<body ontouchstart>

<article class="weui-article">
    <span>为了保障您（以下简称“用户”）的权益， 请在使用优宠熊服务之前，详细阅读此服务协议（以下简称“本协议”）所有内容，特别是加粗部分。
        <strong>本合同依据《中华人民共和国民法典-合同编》及有关法律、法规的规定。当用户开始使用优宠熊服务，用户的行为表示用户同意并签署了本协议，构成用户与平台之间的协议，具有合同效力。</strong>
    </span>
    <br/>
    <p><strong>猫舍（甲方）：</strong>${shopBean.shopName}</p>
    <p>地址：${shopBean.shopLocation}</p>
    <p>联系电话：${shopBean.shopPhone}</p>
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
    <p>地址：天津市西青区中北产业园区</p>
    <p>联系电话：13512073277</p>
    <p><strong>公章: </strong>
        <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/youchongxiong4.jpg"
             width="100"
             height="96"/>
    </p>
    <br/>
    <section>
        <h2 class="title">第一条 宠物基本信息</h2>
        <div class="weui-cells weui-cells_form">
            <div class="weui-cell">
                <div class="weui-cell__hd"><label class="weui-label">猫咪品种:</label></div>
                <div class="weui-cell__bd">
                    <input class="weui-input" type="text" value="${protectBean.symbolName}" disabled>
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
            <#if protectBean.protectTimeStr!="">
                <div class="weui-cell">
                    <div class="weui-cell__hd"><label class="weui-label">签订时间:</label></div>
                    <div class="weui-cell__bd">
                        <input class="weui-input" type="text" value="${protectBean.protectTimeStr}" disabled>
                    </div>
                </div>
            </#if>
            <div class="weui-cell ">
                <div class="weui-cell__hd"><label class="weui-label" style="color: red;">支付宝账号:</label></div>
                <div class="weui-cell__bd">
                    <input class="weui-input" type="text" id="zhifubaoId" value="${protectBean.zhifubao!''}"
                           placeholder="请输入收款账号">
                </div>
            </div>
            <div class="weui-cell">
                <div class="weui-cell__hd"><label class="weui-label" style="color: red;">淘宝会员号:</label></div>
                <div class="weui-cell__bd">
                    <input class="weui-input" type="text" id="taobaoNicknameId" value="${protectBean.taobaoNickname!''}"
                           placeholder="请输入淘宝会员号">
                </div>
            </div>
            <div class="weui-cells__tips"><a href="javascript:pb1Click()" id="pb1">点击查看如何找到您的支付宝账号和淘宝会员名</a></div>
        </div>
    </section>

    <section>
        <h2 class="title">第二条 价格、附加费用及交付</h2>
        <section>
            <p>1、运费由第三方宠物运输公司收取，若因更换产生的二次物流费用，由责任方/发起方支付。</p>
            <p>2、交付时间：以实际交付时间为准。接到猫咪当日为一个自然日</p>
            <#if dayTime??>
                <p>3、乙方可自由选择丙方提供本地协议第三条第2点7天免费保障，也可以选择延长保障期至15天（支付宠物费用10%）；延长保障期至30天（支付宠物费用25%）</p>
            <#else >
                <p>3、乙方可自由选择丙方提供本地协议第三条第2点7天免费保障，也可以选择延长保障期至15天（支付宠物费用10%）；延长保障期至30天（支付宠物费用25%）</p>
                <div class="weui-cells weui-cells_radio" onchange="protectTime()">
                    <label class="weui-cell weui-check__label" for="x11">
                        <div class="weui-cell__bd">
                            <p>7天免费保障</p>
                        </div>
                        <div class="weui-cell__ft ">
                            <input type="radio" class="weui-check" name="radio1" id="x11" checked="checked">
                            <span class="weui-icon-checked"></span>
                        </div>
                    </label>
                    <label class="weui-cell weui-check__label" for="x12">

                        <div class="weui-cell__bd">
                            <p>延长至15天（支付宠物费用的10%）</p>
                        </div>
                        <div class="weui-cell__ft">
                            <input type="radio" name="radio1" class="weui-check" id="x12">
                            <span class="weui-icon-checked"></span>
                        </div>
                    </label>
                    <label class="weui-cell weui-check__label" for="x13">

                        <div class="weui-cell__bd">
                            <p>延长至30天（支付宠物费用的25%）</p>
                        </div>
                        <div class="weui-cell__ft">
                            <input type="radio" name="radio1" class="weui-check" id="x13">
                            <span class="weui-icon-checked"></span>
                        </div>
                    </label>
                </div>
            </#if>

            <p>4、自宠物交付之日起：甲方不接受非本协议第三条售后保障承诺约定范围退宠、换宠</p>
            <p>
                5、自宠物交付之日起：乙方在周语宠物体验店返现专区购买猫粮、猫砂、赖氨酸等宠物用品，丙方应在乙方每次购物确认收货24小时内将等于乙方消费金额的现金以转账的形式返还到乙方指定账户中，累计返还总额等于乙方购猫费用（购买猫咪时所购用品除外)时，返还结束</p>
            <p>6、累计返还金额等于购猫金额（购买猫咪时所购用品除外)</p>
            <p>7、丙方统计乙方累计消费金额的淘宝账户，为乙方在协议中提供的淘宝会员号，一经签署不得变更</p>
            <p>8、如因乙方提供账户有误造成乙方经济损失，丙方概不负责</p>
            <p>9、丙方应该监督宠物用品生产，按照宠物健康饲养方案，猫咪不应该吃积压太久、养分流失的猫粮、罐头等。周语猫粮每批只生产，当前售出所有猫咪口粮。</p>
            <p>10、为保证猫咪吃到新鲜口粮等。每只猫咪一月可购最多4袋，多余4袋以上的不参与返现；猫砂4袋，4袋以上不参与返现</p>
            <p>11、蓄意、恶意申请退款、差评，违反返现规则，丙方有权取消其返现权利</p>
        </section>
    </section>
    <section>
        <h2 class="title">第三条 售后保障承诺</h2>
        <section>
            <p>1、若乙方满足如下全部条件时，甲方为乙方所购宠物提供本协议第二条第2点售后保障服务：</p>
            <ul>
                <li>乙方需遵照丙方服务流程，签订本电子协议；</li>
                <li>乙方需按照丙方提供的在线社群沟通建议<strong>对宠物进行正确喂养</strong>；</li>
                <li>乙方如发现健康状况异常，应第一时间联系丙方客服人员，根据丙方的建议处理。 <strong>如私自采取治疗手段，视为放弃权益；</strong></li>
                <li>乙方在<strong>接到宠物时应及时检测猫瘟、猫传染性腹膜炎。</strong>如发现确有感染，应第一时间联系甲方理赔；</li>
            </ul>
            <p>2、自宠物交付给乙方之日起
                <l id="dayTime">${dayTime!'7'}</l>
                日内，若宠物出现如下2种疾病时：猫瘟、猫传染性腹膜炎。 <strong>乙方应第一时间联系甲方</strong>依次履行售后保障服务：
            </p>
            <ul>
                <li>甲方应积极配合乙方宠物治疗，并为乙方提供合理有效的治疗建议</li>
                <li>甲方需为乙方更换同等价位宠物一只，并结束返现，丙方不应再收取更换的猫咪的费用。</li>
            </ul>
            <p>
                3、在甲方提供的售后保障期内，乙方如发现宠物健康状况异常(如进食不畅、流鼻涕、鼻子干燥、呕吐、拉稀、眼部分泌物过多、精神不佳、皮肤症状等)，需在对宠物就诊或医治前的第一时间与甲方联系。经甲方确认同意，宠物确需乙方就诊时，乙方应前往甲乙双方均认可的正规动物医院/动物诊疗机构(正规的标准包括但不限于医院/诊疗机构需持有动物诊疗许可证，检验医生具有执业兽医师资格证书)。
            </p>
            <p>
                4、除上述第2条中约定的2种重大疾病以外，由于环境改变，造成的常见应激反应如：环境过敏、流眼泪、过敏、呕吐、拉稀等；
                宠物常见普通疾病如：先天性疾病、基因遗传性疾病、皮肤病（耳螨、真菌感染、藓类等）、普通感冒、普通肠道疾病、关节疾病、毛色的改变(甲方故意染色情况除外)、体型的大小<strong>均不在甲方赔付范围</strong>，
                但甲方须对此类病症提供诊断方案或治疗建议。
            </p>
            <p>5、若乙方依据本协议所购买宠物在售后保障期内出现上述2种疾病时，
                <strong>应第一时间联系甲方，根据甲方要求检测。正式理赔时，至少向甲方提供以下理赔材料</strong>:</p>
            <ul>
                <li>执业兽医师签字的诊断证明</li>
                <li>正规宠物医院的血检单（血常规）</li>
                <li>正规宠物医院的FPV测板结果</li>
                <li>主治医生执业兽医师资格证照片</li>
            </ul>
            <p>甲方在收到以上材料，核对无误之后，应履行售后保障服务。在乙方无违约行为的前提下，甲方怠于履行或拒绝履行售后服务保障的，乙方可直接联系丙方，依据本协议保障服务内容，在满足本协议相关规则的前提下获得相应赔付。
            </p>
            <p>6、乙方应妥善照顾猫咪，猫咪非自然死亡后，停止返现，返现活动终止。</p>
            <p>7、本协议所提供保障服务只针对乙方本人生效，乙方需通过身份信息核实方可获得本协议所提供的保障服务。</p>
        </section>
    </section>

    <h2>第四条 协议内容及生效</h2>
    <p>1、本协议内容包括协议正文及所有丙方已经发布或将来可能发布的与“消费者保障协议”相关的规则。前述规则为本协议不可分割的组成部分，与协议正文具有同等法律效力。</p>
    <p>2、您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即结束交易活动。</p>
    <p>
        3、丙方有权根据需要不时地制订、修改本协议及/或与“消费者保障服务”相关的规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在甲方官方网站公布后，立即自动生效。如您不同意相关变更，应当立即停止交易活动。您继续交易或使用消费者保障协议，即表示您接受经修订的协议。</p>
    <h2>第五条 甲方权利及义务</h2>
    <p>1、甲方承诺并保证：</p>
    <ul>
        <li>其有资格从事本协议项下之合作且有能力履行本协议约定之义务；</li>
        <li>保证本协议中关于“宠物基本信息”描述的真实性，并对该描述负有举证责任；</li>
        <li>保证与乙方交易过程中不存在虚假、欺诈、价格违法或其他违反法律法规及本协议的行为；</li>
        <li>保证乙方对依据本协议购买甲方的宠物将不侵犯任何第三方合法权益(包括但不限于知识产权、物权等)</li>
    </ul>
    <h2>第六条 乙方权利及义务</h2>
    <p>
        1、乙方应在宠物交接完毕后，对所购宠物的生命续存期间的防疫、疾病、生育负有监护、照料、尽饲养人之义务，并对所购宠物的非正常灭失、受伤、疾病、死亡负有全部责任。2、乙方应按《宠物饲养指导》或沟通建议列示的要求科学养护宠物，否则乙方应自行承担饲养不当引起的包括宠物生病或死亡在内的一切责任。</p>
    <p>2、乙方应按本协议约定的时间及时向甲方支付宠物价款。</p>
    <p>3、乙方应在需要获得本协议所提供的保障服务时，向甲方提供身份信息以核实其为乙方本人，否则甲方有权拒绝履行售后保障服务。</p>
    <h2>第七条 丙方的权利及义务</h2>
    <p>1、丙方监督甲方提供猫咪品质。</p>
    <p>2、丙方监督乙方善待猫咪并科学饲养。</p>
    <p>3、丙方提供15年的售后在线诊疗和饲养管理服务。</p>
    <h2>第八条 协议终止</h2>
    <p>1、出现下列情形之一时协议终止：</p>
    <ul>
        <li>乙方单方面被动终止:当乙方违反协议中条例或违约时，协议立即自动终止。</li>
        <li>本协议规定的其他协议终止条件发生或实现，导致本协议终止。</li>
    </ul>
    <h2>第九条 争议解决</h2>
    <p>本协议之解释与适用，以及与本协议有关的争议，均应依照中华人民共和国法律予以处理，并以甲方所在地人民法院为第一审管辖法院。</p>
    <h2>第十条 其他</h2>
    <p>1、本协议一式两份，甲乙双方各执一份，自甲乙双方签署之日起生效，具有同等法律效力。</p>
    <p>2、本电子协议也可以存档到手机，等同纸质协议法律效力。</p>
    <p>3、如本协议的任何条款被视作无效或无法执行，则上述条款可被分离，其余部份则仍具有法律效力。</p>
    <p>4、甲方于您过失或违约时放弃本协议约定的权利的，不得视为甲方对您的其他或以后同类之过失或违约行为弃权。</p>
    <p>5、甲方基于本协议享有的权利以及获得的授权，均可以全部或部分转移、转让、许可、分授权、转授权给任何第三方。未经甲方事先书面同意，您不得将本协议项下的权利义务转让给任何第三方。</p>
    <p>6、如果用户对本协议内容有任何疑问，请拨打丙方客服热线。</p>
    <p>7、本合同生效后，如任何一方违约，守约方为维护权益，向违约方追偿的一切费用包括但不限于律师费、诉讼费、保全费、鉴定费、差旅费由违约方承担。</p>
    <p>本协议内容包括协议正文、本协议明确援引的其他协议、优宠熊平台已经发布的或将来可能发布的各类规则，该等内容均为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，用户使用优宠熊服务均受本协议约束。</p>
    <#if protectBean.userId=='Usffc6ac0b44884582adfbab101128bdfe'>
        <p>补充说明：正规检测机构报告中，如果猫咪品种与协议所述品种不符，猫咪检测费用由丙方承担；如猫咪检测品种与协议所述一致，由乙方承担。</p>
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
                // var info = {
                //     wboid: '1234555555',//参数一
                //     wid: '78945454545',//参数二
                // };
                // var json = JSON.stringify(info);
                wx.miniProgram.postMessage({data: json});

            }
        });
    });

    function protectTime() {
        var p1 = $('#x11').is(':checked');
        var p2 = $('#x12').is(':checked');
        var p3 = $('#x13').is(':checked');
        if (p1) {
            $('#dayTime').html('7')
        }
        if (p2) {
            $('#dayTime').html('15')
        }
        if (p3) {
            $('#dayTime').html('30')
        }
    }

    var pb1 = $.photoBrowser({
        items: [
            {
                image: "https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/WechatIMG322.png",
                caption: "<br/><br/>点击任意地方关闭提示"
            }, {
                image: "https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/WechatIMG325.png",
                caption: "<br/><br/>点击任意地方关闭提示"
            },

        ],

        onSlideChange: function (index) {
            console.log(this, index);
        },

        onOpen: function () {
            console.log("onOpen", this);
            $('#buttonID').hide()
        },
        onClose: function () {
            console.log("onClose", this);
            $('#buttonID').show()
        }
    });

    function pb1Click() {
        pb1.open(0);
    }

    function updateData() {
        // window.location.href='http://mp.weixin.qq.com/s?__biz=MzUyMTU0NTA0MA==&mid=100000375&idx=1&sn=f510646ba38752f0f580f5dac7f301db&chksm=79d836484eafbf5e181bd0cc0661ae79a79971f6a3bfaa0953de627eb74592b62f4e12c8f83d#rd'
        // wx.miniProgram.switchTab({
        //     url: '/pages/index/index'
        // });
        var regSelf = /^[1][3,4,5,6,7,8,9][0-9]{9}$/;
        var realName = $('#realName').val()
        var phoneNum = $('#phoneNum').val()
        var zhifubao = $('#zhifubaoId').val()
        var taobaoNickname = $('#taobaoNicknameId').val()
        var p1 = $('#x11').is(':checked');
        var p2 = $('#x12').is(':checked');
        var p3 = $('#x13').is(':checked');
        var dayTime = 7
        var dayTimeStr = '7天免费保障'
        if (p1) {
            dayTime = 7
        }
        if (p2) {
            dayTime = 15
            dayTimeStr = '15天保障（需支付购猫费用的10%）'
        }
        if (p3) {
            dayTime = 30
            dayTimeStr = '30天保障（需支付购猫费用的25%）'
        }
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
        if (!zhifubao) {
            $.toast("请填写收款账号", "cancel");
            return false;
        }
        if (!taobaoNickname) {
            $.toast("请填写淘宝会员号", "cancel");
            return false;
        }
        $.confirm("1.您选择的是" + dayTimeStr + "<br/>2.请核对收款账号和淘宝会员号无误", "请确认信息", function () {
            $.post('${base}/user/pro/upFree', {
                userId: '${userBean.userId}',
                phoneNum: phoneNum,
                realName: realName,
                protectId: '${protectBean.protectId}',
                zhifubao: zhifubao,
                taobaoNickname: taobaoNickname,
                dayTime: dayTime
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

<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>宠物领养合同</title>

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
		.specialSpan {
			font-family: 宋体;
			mso-ascii-font-family: Calibri;
			mso-hansi-font-family: Calibri;
			mso-bidi-font-family: 'Times New Roman';
			text-decoration: underline;
			text-underline: single;
			font-size: 10.5000pt;
			mso-font-kerning: 1.0000pt;
		}

		.specialSpan2 {
			font-family: Calibri;
			mso-fareast-font-family: 宋体;
			mso-bidi-font-family: 'Times New Roman';
			text-decoration: underline;
			text-underline: single;
			font-size: 10.5000pt;
			mso-font-kerning: 1.0000pt;
		}

		.weui-cell {
			padding: 10px 5px;
		}

		.weui-dialog__title {
			font-size: 14px;
		}

		.weui-dialog--visible {
			width: 90%;
		}

		.weui-prompt-text {
			font-size: 14px;
			font-weight: bold;
			color: #0d0d0d;
		}

		.weui-prompt-input {
			width: 100%;
			border: 1px solid #e23e44;
			height: 3em;
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
	<#assign remarkMsg='${protectBean.remarkMsg}'?eval />
	<div class="Section0" style="layout-grid:15.6000pt;">
		<p class=MsoNormal>
			<span><strong style="flex: 3">甲方(送养人) :</strong></span>
			<span class='specialSpan'>天津市河北区优宠熊领猫猫宠物中心</span>
		</p>
		<p class=MsoNormal>
			<span><strong style="flex: 3">联系方式:</strong></span>
			<span> 022-60306924</span>
		</p>
		<p class=MsoNormal>
			<span>
				<strong style="flex: 3">地址：</strong>
			</span>
			<span class='specialSpan'>天津市河北区铁东路街智贤道82号</span>
		</p>
		<p><strong style="flex: 3">公章: </strong>
			<img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20220101/ycx-shop-logo.png"
				 width="120" style="margin-left: 20px;"
				 height="120"/>
		</p>
		<br/>
		<br/>
		<p class=MsoNormal>
			<span style="display: flex"><strong style="flex: 3">乙方(领养人):</strong>
            <input style="flex: 5" id="realName" class="weui-input"
				   type="text" value="${realName!''}"
				   placeholder="请输入姓名"/></span>
		</p>
		<p class=MsoNormal>
			 <span style="display: flex"><strong style="flex: 3">身份证： </strong>
            <input style="flex: 5" id="idcard" class="weui-input" type="text"
				   value="${idcard!''}" placeholder="请输入身份证"/></span>
		</p>
		<p class=MsoNormal>
			 <span style="display: flex"><strong style="flex: 3">联系电话： </strong>
            <input style="flex: 5" id="phoneNum" class="weui-input" type="tel"
				   value="${phoneNum!''}" placeholder="请输入联系电话"/></span>
		</p>
		<p class=MsoNormal>
			 <span style="display: flex"><strong style="flex: 3">住址： </strong>
            <input style="flex: 5" id="address" class="weui-input" type="text"
				   value="${address!''}" placeholder="请输入住址"/></span>
		</p>
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
		<br/><br/>

		<p class=MsoNormal>
		<h1 class="title">被领养的宠物信息:</h1>
		</p>
		<div class="weui-cells weui-cells_form" style="line-height: 2">
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
		</div>
		<br/>
		<br/>
		<p class=MsoNormal><span class="15" style="font-weight:bold;">依据《中华人民共和国民法典&#8212;&#8212;合同编》及有关法律、法规规定，甲方、乙方双方本着公平、公正以及为生命负责的原则，就猫咪领养事宜达成协议如下：</span>
		</p>
		<p class=MsoNormal><span>注：文中出现的&#8220;宠物&#8221;无特别说明均指被领养宠物，即甲方送养的宠物。</span></p>
		<h3><span>一、甲方愿意将宠物领养给乙方。</span></h3>
		<h3><span>二、乙方自愿接受领养甲方宠物，并保证有经济能力饲养该宠物。</span></h3>
		<p class=MsoNormal><span style="font-weight:bold;">三、领养条件</span></p>
		<p class=MsoNormal><span>(一)、乙方喜爱猫咪、有经济能力为猫咪生活负责。</span></p>
		<p class=MsoNormal><span>(二)、乙方承诺并同意在甲方处购买猫咪所需猫粮、猫砂等用品。</span></p>
		<p class=MsoNormal><span>(三)、乙方保证不虐待、不转卖、不丢弃。</span></p>
		<p class=MsoNormal><span style="font-weight:bold;">四、其他费用</span><span style="font-weight:bold;"></span></p>
		<p class=MsoNormal style="text-align:left;"><span>(一)、领养费用：免费</span></p>
		<p class=MsoNormal style="text-align:left;"><span>(二)、猫粮、猫砂、罐头、运输等成本费：</span><span></span>
			<span class='specialSpan'>${protectBean.chengben}</span>
			<span class='specialSpan'>（大写：</span>
			<span class='specialSpan'> ${protectBean.chengbenU}</span>
			<span>）。</span>
		</p>
		<p class=MsoNormal style="text-align:left;">
			<span>(三)、猫咪市场价：</span>
			<span class='specialSpan'>${protectBean.shichang}</span>
			<span>（</span> <span>大写：</span>
			<span class='specialSpan'>${protectBean.shichangU}</span>
			<span>）。</span>
		</p>
		<p class=MsoNormal><span style="font-weight:bold;">三、甲方的权利与义务</span><span style="font-weight:bold;"></span></p>
		<p class=MsoNormal><span>(一)、在乙方接受宠物之前，应提供适当的食物和活动空间，保证其生活健康。</span></p>
		<p class=MsoNormal><span>(二)、向乙方如实告之宠物的生活健康状况。</span></p>
		<p class=MsoNormal><span>(三)、为乙方喂养以及领养提供其他必要的咨询和协助。</span></p>
		<p class=MsoNormal><span>(四)、宠物在预定后未交付前需要去医院医治的、甲方需向乙方提供以下材料：</span></p>
		<p class=MsoNormal style="margin-left:21.0000pt;text-indent:-21.0000pt;mso-list:l0 level1 lfo1;">
            <span style="font-family:Wingdings;mso-fareast-font-family:宋体;mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning:1.0000pt;"><span
						style='mso-list:Ignore;'>&#108;<span> </span></span></span>
			<span>宠物医院营业执照或诊疗许可证</span>
		</p>
		<p class=MsoNormal style="margin-left:21.0000pt;text-indent:-21.0000pt;mso-list:l0 level1 lfo1;">
            <span style="font-family:Wingdings;mso-fareast-font-family:宋体;mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning:1.0000pt;"><span
						style='mso-list:Ignore;'>&#108;<span> </span></span></span>
			<span>执业兽医师签字的诊断证明</span>
		</p>
		<p class=MsoNormal style="margin-left:21.0000pt;text-indent:-21.0000pt;mso-list:l0 level1 lfo1;">
            <span style="font-family:Wingdings;mso-fareast-font-family:宋体;mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning:1.0000pt;"><span
						style='mso-list:Ignore;'>&#108;<span> </span></span></span>
			<span>猫咪治疗完整视频录像，确定是本猫咪</span>
		</p>
		<p class=MsoNormal style="margin-left:21.0000pt;text-indent:-21.0000pt;mso-list:l0 level1 lfo1;">
            <span style="font-family:Wingdings;mso-fareast-font-family:宋体;mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning:1.0000pt;"><span
						style='mso-list:Ignore;'>&#108;<span> </span></span></span>
			<span>主治医生执业兽医师资格证照片</span>
		</p>
		<p class=MsoNormal style="margin-left:21.0000pt;text-indent:-21.0000pt;mso-list:l0 level1 lfo1;">
            <span style="font-family:Wingdings;mso-fareast-font-family:宋体;mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning:1.0000pt;"><span
						style='mso-list:Ignore;'>&#108;<span> </span></span></span>
			<span>猫咪死亡的提供死亡尸体视频以及死亡证明。</span>
		</p>
		<p class=MsoNormal><span style="font-weight:bold;">四、乙方的权利与义务</span><span style="font-weight:bold;"></span></p>
		<p class=MsoNormal><span>(一)、在接收前，乙方有权要求甲方提供宠物的生活健康状况、性格和爱好等真实情况。</span></p>
		<p class=MsoNormal><span>(二)、不得抛弃、虐待所领养宠物。</span></p>
		<p class=MsoNormal><span>(三)、尽量为宠物提供猫粮、罐头、零食、窝及宠物专用的生活用具、玩具等。</span></p>
		<p class=MsoNormal><span>(四)、定期为宠物沐浴、注射疫苗、驱虫，不得使用洗衣粉等有害物质清洗宠物。</span></p>
		<p class=MsoNormal><span>(五)、在必要时，有经济能力为宠物提供医疗措施。</span></p>
		<p class=MsoNormal><span>(六)、甲方需要探望宠物时，乙方不得借口拒绝，如甲方探望频率打扰到乙方，乙方有权拒绝。甲方如要接回宠物饲养时，乙方不得拒绝，并应当寄回甲方，甲方不得以接回饲养为由未经乙方同意长期（长期指   2   周以上）滞留宠物。</span>
		</p>
		<p class=MsoNormal><span>(七)、不得给宠物实施不人道且不必要的手术，如：去爪，拨齿，及截耳断尾等。</span></p>
		<p class=MsoNormal><span>(八)、带宠物出门必须做好安全措施，如拴好牵引绳，不得遗失，逃走。</span></p>
		<p class=MsoNormal><span>(九)、宠物年迈之日乙方应妥善照顾直到正常自然死亡，但不得抛尸、食用或者变卖。</span></p>
		<p class=MsoNormal><span>(十)、乙方应向甲方通报宠物的基本情况及其重大事项，并不得隐瞒，如有隐瞒，可视违约。</span></p>
		<p class=MsoNormal><span>(十一)、宠物在交付后需要去医院的、乙方需向甲方提供以下材料：</span></p>
		<p class=MsoNormal style="margin-left:21.0000pt;text-indent:-21.0000pt;mso-list:l0 level1 lfo1;">
            <span style="font-family:Wingdings;mso-fareast-font-family:宋体;mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning:1.0000pt;"><span
						style='mso-list:Ignore;'>&#108;<span> </span></span></span>
			<span>宠物医院营业执照或诊疗许可证。</span>
		</p>
		<p class=MsoNormal style="margin-left:21.0000pt;text-indent:-21.0000pt;mso-list:l0 level1 lfo1;">
            <span style="font-family:Wingdings;mso-fareast-font-family:宋体;mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning:1.0000pt;"><span
						style='mso-list:Ignore;'>&#108;<span> </span></span></span>
			<span> 执业兽医师签字的诊断证明。</span>
		</p>
		<p class=MsoNormal style="margin-left:21.0000pt;text-indent:-21.0000pt;mso-list:l0 level1 lfo1;">
            <span style="font-family:Wingdings;mso-fareast-font-family:宋体;mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning:1.0000pt;"><span
						style='mso-list:Ignore;'>&#108;<span> </span></span></span>
			<span>猫咪治疗完整视频录像，确定是本猫咪。</span>
		</p>
		<p class=MsoNormal style="margin-left:21.0000pt;text-indent:-21.0000pt;mso-list:l0 level1 lfo1;">
            <span style="font-family:Wingdings;mso-fareast-font-family:宋体;mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning:1.0000pt;"><span
						style='mso-list:Ignore;'>&#108;<span> </span></span></span>
			<span>主治医生执业兽医师资格证照片。</span>
		</p>
		<p class=MsoNormal style="margin-left:21.0000pt;text-indent:-21.0000pt;mso-list:l0 level1 lfo1;">
            <span style="font-family:Wingdings;mso-fareast-font-family:宋体;mso-bidi-font-family:'Times New Roman';font-size:10.5000pt;mso-font-kerning:1.0000pt;"><span
						style='mso-list:Ignore;'>&#108;</span></span>
			<span> 猫咪死亡的提供死亡尸体视频以及死亡证明。</span>
		</p>
		<p class=MsoNormal><span style="font-weight:bold;">五、交付及风险转移</span></p>
		<p class=MsoNormal>
			<span>(一)、根据《合同法》相关规定，宠物交付后，甲方不得无故撤销乙方饲养权。亦即宠物交付乙方后，乙方应悉心饲养。</span>
			<span style="font-weight:bold;">宠物交付前，由于宠物自身生病等原因产生的医疗费用，由甲方承担，乙方不承担。宠物交付后，由于宠物自身生病等原因产出的医疗费用，由乙方承担，甲方不承担。</span>
		</p>
		<p class=MsoNormal>
			<span>(二)、宠物交付前，由于宠物侵袭等原因造成他人人身或者财产损害的，由甲方承担责任，乙方不承担责任 。宠物交付前，由于宠物自身生病等原因产生的医疗费用，由甲方承担、乙方不承担。</span></p>
		<p class=MsoNormal>
			<span>(四)、宠物交付后，由于宠物侵袭等原因造成他人人身或者财产损害的，由乙方承担责任，甲方不承担责任。宠物交付后，由于宠物自身生病等原因产生的医疗费用，由乙方承担，甲方不承担。</span></p>
		<p class=MsoNormal><span>(五)、甲方若不交付宠物，乙方可以要求其交付。</span></p>
		<p class=MsoNormal><span style="font-weight:bold;">六、售后保障</span></p>
		<p class=MsoNormal><span>(一)、保障重大疾病   2   项：猫瘟、腹水。</span></p>
		<p class=MsoNormal><span>(二)、保障期限   7   天（7*24小时）。</span></p>
		<p class=MsoNormal><span>(三)、保障期内猫咪因自身机体原因确诊为传染病（猫瘟、腹水）的、乙方第一时间联系甲方并将猫咪送回甲方、由甲方全权负责。</span></p>
		<p class=MsoNormal><span>1、治疗康复、治疗费用甲方负责、乙方将猫咪接回。   </span></p>
		<p class=MsoNormal><span>2、救治无果、治疗费用甲方负责、间隔6个月后甲方免费送乙方一只新猫咪。</span></p>
		<p class=MsoNormal><span>3、猫咪接送费用乙方自理。</span></p>
		<p class=MsoNormal><span>(四)、保障期内猫咪因乙方原因如：虐待、跳楼、摔死、碰撞、饿死、捏死、掐死、疫苗未打齐全前带猫外出应激致死的、冻结账户余额。</span></p>
		<p class=MsoNormal><span>(五)、保障期内猫咪因其他因素或疾病（除猫瘟、腹水重疾外）乙方积极救治未果致死的、作为人文关怀可市场价半价再领养一只小猫继续履行合同。</span></p>
		<p class=MsoNormal><span style="font-weight:bold;">七、违约责任</span></p>
		<p class=MsoNormal><span>(一)、若乙方不按规定履行领养义务，甲方有权单方面要求收回宠物。</span></p>
		<p class=MsoNormal><span>(二)、若乙方虐待，弃养宠物，甲方可以收取   5000   元违约金</span></p>
		<p class=MsoNormal><span>(三)、乙方没有在规定的时日内完成续费的、甲方将冻结账户余额并将违约失信信息送往国家征信部门，直到履约为止。</span></p>
		<p class=MsoNormal><span style="font-weight:bold;">八、退养</span></p>
		<p class=MsoNormal><span>(一)、7（7x24小时）天以内，乙方单方面提出退养的、违约金800。</p>
        <p class=MsoNormal><span>(二)、7（7x24小时）以后，乙方单方面提出退养的、违约金1500。</span></p>
		<p class=MsoNormal><span style="font-weight:bold;">九、关于退费</span></p>
		<p class=MsoNormal><span>（一）、猫粮猫砂钱属于猫咪用品费用、并非猫咪本身费用，除本合同第八条规定外、均不退款。</span></p>
		<p class=MsoNormal><span style="font-weight:bold;">十、关于性别</span></p>
        <p class=MsoNormal><span>（一）、猫咪小时候性别不易区分、容易出错，乙方接到猫咪回去后的7天内如果猫咪性别出错可以调换同品种异性猫咪，7天以后为猫咪应激健康着想不能再做调换。</span></p>
		<p class=MsoNormal><span style="font-weight:bold;">十一、补充条款</span></p>
        <p class=MsoNormal><span>(一)、本协议自签订之日起生效，自生效日起，任何一方有违约的行为，另一方可单方面解除本合同。</span></p>
        <p class=MsoNormal><span>(二)、若发生纠纷、在没有合理合法解决的情况下，预存账户余额暂时冻结直到解决。</span></p>
        <p class=MsoNormal><span>(三)、如有争议，双方应本着为宠物的健康生活着想，友好态度协商解决。</span></p>
		<p class=MsoNormal><span>(四)、若发生纠纷，双方约定以送养人所在地人民法院管辖处理此案。</span></p>
		<p class=MsoNormal><span>(五)、本协议一式两份，甲乙双方各执一份，签字后生效。</span></p>
		<p class=MsoNormal><span>(六)、本合同生效后，如任何一方违约，守约方为维护权益，向违约方追偿一切费用包括但不限于律师费、诉讼费、保全费、鉴定费、差旅费由违约方承担。</span></p>
		<p class=MsoNormal></p>
		<#if specialMsg?has_content>
			<p class=MsoNormal>
				<span style="font-weight:bold;">十二、补充说明</span>
			</p>
			<p class=MsoNormal>
				<span>${specialMsg}</span>
			</p>
		</#if>
		<br/>
		<br/>
	</div>
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
		var regidCard = /^\d{17}[\d|x]|\d{15}$/;
		var regAddress = /^[\u4e00-\u9fa5]$/;
		var realName = $('#realName').val()
		var phoneNum = $('#phoneNum').val()
		var address = $('#address').val()
		var idcard = $('#idcard').val()
		var imgChage = $('#imgHand').attr('imgChage')
		var imgHandStr = $('#imgHand').attr('src')

		if (!phoneNum) {
			$.toast("请填写手机号码", "cancel");
			return false;
		}
		if (!address) {
			$.toast("请填写地址", "cancel");
			return false;
		}
		if (!idcard) {
			$.toast("请填写身份证", "cancel");
			return false;
		}
		if (!regSelf.test(phoneNum)) {
			$.toast("手机格式有误", "cancel");
		}
		if (!regidCard.test(idcard)) {
			$.toast("身份证格式有误", "cancel");
		}
		if (!regAddress.test(address)) {
			$.toast("地址格式有误", "cancel");
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
		$.prompt({
			title: '手动输入以下内容点击确认确定',
			text: '本人已知晓以上所有内容，自愿承担一切风险及后果',
			input: '',
			empty: false, // 是否允许为空
			onOK: function (input) {
				input = input.replace(',', '').replace('，', '').replace('.', '').replace('。', '')
				if (input != '本人已知晓以上所有内容自愿承担一切风险及后果') {
					$.alert("输入内容有误，请重新输入");
				} else {
					$.showLoading('签署中..')
					$.post('${base}/si/pr/upLgmV2', {
						userId: '${userBean.userId}',
						phoneNum: phoneNum,
						realName: realName,
						address: address,
						idcard: idcard,
						protectId: '${protectBean.protectId}',
						imgHandStr: imgHandStr,
					}, function (res) {
						$.hideLoading();
						if (res.msgCode == 10000) {
							var msgBody = res.msgBody
							window.location.replace('${base}/si/pr/signSuccess')
						} else {
							$.toast("签署失败", "cancel");
						}

					})
				}

			},
			onCancel: function () {
				$.alert("请手动输入后完成签署");
			}
		});

	}

	jQuery.fn.shake = function (times, offset, delay) {//次数,偏移,间隔
		this.stop().each(function () {
			var Obj = $(this);
			var right = parseInt(Obj.css("right"));
			Obj.animate({"right": right + offset}, delay, function () {
				Obj.animate({"right": right - offset}, delay, function () {
					Obj.animate({"right": right}, delay, function () {
						times = times - 1;
						if (times > 0)
							Obj.shake(times, offset, delay);
					})
				})
			});
		});
		return this;
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
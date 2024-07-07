<#import "common/desktopCss.ftl" as css>
<#import "common/desktopJs.ftl" as js>
<#import "common/desktopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>优宠熊正规宠物购买平台</title>
    <meta name="keywords" content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,宠物猫,正规购宠平台,买猫,卖猫,猫市场,宠物猫交易网,优宠熊,宠物平台,天津宠物交易,天津买猫,天津宠物市场,猫,优宠,家庭繁育猫舍">
    <meta name="description"
          content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta property="og:url" content="http://www.youchongxiong.com/">
    <meta property="og:type" content="article">
    <meta property="og:title" content="优宠熊正规宠物购买平台">
    <meta property="og:description" content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta property="og:image" content="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico">
    <meta name="renderer" content="webkit">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <@css.commonCss/>
    <@css.registerCss/>
    <@css.endCss/>
    <script>
        $(function () {
            var u = navigator.userAgent, app = navigator.appVersion;
            var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1; //android终端或者uc浏览器
            var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
            if (isAndroid || isiOS) {
                window.location.href = "${base}/webMobile/"
            }
        });
    </script>
<body>
<div class="register_header">
    <div class="header_center clearfix">
        <div class="myfl">
            <a href="${base}/">
                <img src="${base}/resources/img/logo.png"/></a>
            <span>用户注册</span>
        </div>
        <div class="myfr">
            <a href="index.html">返回首页</a>
            <span></span>
            <a href="javascript:;">收藏网站</a>
            <span></span>
            <a href="${base}/loginPage/index">已有账户，直接<em>登录</em></a>
        </div>
    </div>
</div>
<div class="register_content clearfix"
     style="background:url('http://photo.jianyunzhichang.com/logo-b.png') no-repeat 0 138px;">
    <input type="hidden" value="" id="iserror">
    <input type="hidden" value="" id="phoneSmsCode">
    <form action="${base}/loginPage/createUser" id="my_from" method="post">
        <div class="register_box myfr">
            <div class="title clearfix">
                <span class="myfl"></span>
                <h1 class="myfl">优宠熊新用户注册</h1>
                <input type="hidden" value="1" name="memberType" id="registeruser_type">
                <span class="myfr"></span>
            </div>
            <input type="text" placeholder="请输入您的用户昵称" name="nick" class="username" value="" maxlength="20"/>
            <p class="username_error"></p>
            <input type="password" style="color: #666;" placeholder="请输入您的密码" name="password" class="password"
                   maxlength="16" value=""/>
            <p class="password_error"></p>
            <input type="password" style="color: #666;" placeholder="请重复您的密码" name="password1" class="password_again"
                   maxlength="16"/>
            <p class="password_again_error"></p>
            <input type="text" placeholder="请输入手机号" id="phoneId" name="phone" maxlength="11" class="phone_num"
                   value=""/>
            <p class="phone_num_error"></p>
            <div class="photo_code clearfix">
                <input type="text" class="myfl" id="codeId" name="captchaCode" placeholder="请输入图片验证码" maxlength="4"/>
                <img src="${base}/loginPage/getPicCode" class="myfr"
                     onclick="this.src='${base}/loginPage/getPicCode?d='+Math.random();" id="captchaImage"/>
            </div>
            <a id="kanbuq" style="color: #b1b1b1" href="javascript:codeChange();">看不清，换一张</a>
            <p class="photo_code_error"></p>
            <div class="clearfix message_code_box">
                <input type="text" class="message_code myfl" id="smsId" name="validCode" maxlength="6"
                       placeholder="请输入短信验证码"
                       value=""/>
                <a href="javascript:;" id="sendSmsId" class="message_code_btn myfr">发送验证码</a>
                <span class="message_code_again"><em>60</em>秒重发</span></div>
            <p class="message_code_error"></p>
            <select name="channel" class="source" style="-webkit-appearance: none;appearance: none;color: #666;">
                <option value="5">百度搜索</option>
                <option value="6">360搜索</option>
                <option value="7">搜狗搜索</option>
                <option value="2">朋友介绍</option>
                <option value="4">通过QQ</option>
                <option value="8">通过微信</option>
                <option value="3">其他来源</option>
            </select>
            <p class="source_error">7</p>
            <div class="my_agreement">
                <input type="checkbox" name="agreement" value="1" checked>我已仔细阅读并同意接受
                <a href="${base}/help/dog" target="_blank">《用户使用协议》</a>
            </div>
            <p class="source_error">8</p>
            <a href="javascript:;" class="submit_btn">注册</a>
        </div>
    </form>
</div>
<!--错误提示-->
<div class="normal_pop pop_password" id="pop_load">
    <h3>提示</h3>
    <p class="error" style="font-size: 20px;line-height: 24px;margin: 40px 0 36px;color: #666;">注册失败，请稍后再试</p>
    <i id="true_btn" class="layui-layer-close">确定</i>
</div>
<@common.footer/>
<script>
    var basePath = '${base}/resources/';
    var base = '${base}/';

</script>
</body>
<@js.registerJs/>
<script>
    $(function () {
        $('#captchaImage').attr('src', '${base}/loginPage/getPicCode?d=' + Math.random())
    })

    function codeChange() {
        $('#captchaImage').attr('src', '${base}/loginPage/getPicCode?d=' + Math.random())
    }
</script>
</html>





















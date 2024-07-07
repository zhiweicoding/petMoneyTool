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
    <@css.loginCss/>
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
<div class="login_header">
    <div class="header_center clearfix">
        <div class="myfl">
            <a href="${base}/">
                <img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/img/image2base64.jpeg"/>
            </a>
            <span>欢迎登陆</span>
        </div>
        <div class="myfr">
            <a href="${base}/">返回首页</a><span></span>
            <a href="javascript:void();" class="collection_web">收藏网站</a>
        </div>
    </div>
</div>
<div class="login_content clearfix">
    <input type="hidden" id="memberType" value=""/>
    <div id="my_from">
        <input type="hidden" name="memberType" id="parameter" value="1"/>
        <div class="login_box myfr">
            <p class="tabchange clearfix">
                <span class="myfl sign_select" id="usertype" style="width: 100%">用户登录</span>
            </p>
            <p class="system_error"></p>
            <input type="text" name="nick" value="" placeholder="输入手机号" id="username"/>
            <p class="username_error"><span>用户名不能为空!</span></p>
            <input type="password" placeholder="输入密码" id="password" name="password" maxlength="16" value=""/>
            <p class="password_error"><span>密码不能为空!</span></p>
            <#--<input id="verCode" name="verCode"-->
            <#--onkeydown="keyDown()"-->
            <#--class="input-text size-L" type="text" placeholder="验证码"-->
            <#--style="width:180px;">-->
            <#--<img src="${base}/loginPage/getPicCode"-->
            <#--onclick="this.src='${base}/loginPage/getPicCode?d='+Math.random();">-->
            <!--<a id="kanbuq" href="javascript:;">看不清，换一张</a>-->
            <p class="forget_password clearfix"><a href="" class="myfr">忘记密码？</a></p>
            <input type="submit" value="立即登录" class="submit_btn">
            <p class="entry_mode clearfix">
                <#--<span class="myfl">你也可以用以下方式登录:</span>-->
                <a href="${base}/loginPage/register" class="myfr">
                    <em></em>
                    <i>快速注册</i>
                </a>
            </p>
        </div>
    </div>
</div>
<!--错误提示-->
<div class="normal_pop pop_password" id="pop_load">
    <h3>提示</h3>
    <p class="error" id="pop_load_error" style="font-size: 20px;line-height: 24px;margin: 40px 0 36px;color: #666;">
        注册失败，请稍后再试</p>
    <i id="true_btn" class="layui-layer-close">确定</i>
</div>
<@common.footer/>
<script>
    var basePath = '${base}/resources/';
    var base = '${base}/';
</script>
</body>
<@js.loginJs/>
</html>




















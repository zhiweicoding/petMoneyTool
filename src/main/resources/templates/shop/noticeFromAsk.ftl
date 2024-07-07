<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>咨询用户信息</title>
    <@css.css/>
</head>
<body ontouchstart>
<article class="weui-article">
    <h1>商品信息</h1>
    <section>
        <h2 class="title">商品ID：${goodId}</h2>
        <h2 class="title">商品标题：${goodTitle}</h2>
        <h2 class="title">商品介绍：${goodBrief}</h2>
        <section>
            <p>
                <img src="${goodImage}" alt="">
            </p>
        </section>
    </section>
    <h1>商户信息</h1>
    <section>
        <h2 class="title">商铺ID：${shopId}</h2>
        <h2 class="title">商铺名称：${shopName}</h2>
    </section>
    <h1>用户信息</h1>
    <section>
        <h2 class="title">OpenId：${openId}</h2>
        <h2 class="title">昵称：${nickName}</h2>
        <section>
            <p>
                <img src="${avatarUrl}" alt="">
            </p>
        </section>
        <h2 class="title">地区：${province}${city}</h2>
        <h2 class="title">性别：${gender}</h2>
    </section>
</article>

<style>
    .weui-footer {
        margin: 250px 0 10px;
    }
</style>

<@js.js/>

</body>
</html>
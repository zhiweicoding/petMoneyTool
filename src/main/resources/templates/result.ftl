<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <title>查询小助手</title>
    <meta name="keywords" content="查询小助手 软件外包联系18722268416">
    <meta name="description" content="查询小助手 软件外包联系18722268416">
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="content-type" content="no-siteapp"/>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
        }

        .orderId {
            width: 30px;
        }

        .address {
            width: 120px;
        }

        .goodPic {
            width: 120px;
            height: 120px;
        }
    </style>
</head>
<body>
<h1>查询结果</h1>

<h2>协议信息</h2>
<#list moneyArray as money>
    <p>查询到${money.create_time}签署的协议，现在还剩${money.leave_money}元</p>
</#list>

<h2>订单信息</h2>
<table>
    <tr>
        <th>创建时间</th>
        <th>地址</th>
        <th>订单积分支付金额</th>
        <th>商品信息</th>
    </tr>
    <#list orderArray as order>
        <tr>
            <td>${order.createTime}</td>
            <td class="address">${order.address}</td>
            <td><#if order.moneyTotal??>
                    ${order.moneyTotal}
                <#else>
                    0
                </#if>
            </td>
            <td>
                <table>
                    <tr>
                        <th>商品ID</th>
                        <th>商品标题</th>
                        <th>商品简介</th>
                        <th>商品图片</th>
                        <th>数量</th>
                        <th>金额</th>
                        <th>是否退款</th>
                    </tr>
                    <#list order.goods as good>
                        <tr>
                            <td>${good.goodId}</td>
                            <td>${good.goodTitle}</td>
                            <td>${good.goodBrief}</td>
                            <td><img class="goodPic" src="${good.goodPic}" alt="商品图片" width="50" height="50"></td>
                            <td>${good.num}</td>
                            <td>${good.money}</td>
                            <td>${good.hadRefund}</td>
                        </tr>
                    </#list>
                </table>
            </td>
        </tr>
    </#list>
</table>
<script type="text/javascript"
        src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/miniProgram/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
    function redirectUrl() {
        var phone = $(".search-box").val();
        if (phone.length === 0) {
            alert("请输入手机号");
            return;
        }
        window.open("/result?wd=" + phone);
    }
</script>
</body>
</html>
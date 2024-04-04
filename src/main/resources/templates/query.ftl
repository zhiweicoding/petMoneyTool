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
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 0;
        }

        .center-screen {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 40px;
            width: 400px;
            flex-direction: row;
            margin: 0 auto;
            border-radius: 15px;
            border: 1px solid #ccc;
        }

        .search-box {
            width: 300px;
            height: 30px;
            border: none;
            padding: 5px;
            border-radius: 15px 0 0 15px;
        }

        .search-button {
            width: 100px;
            height: 40px;
            background: #e12525;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 0 15px 15px 0;
        }

        .search-button:hover {
            background: #cb1616;
        }
    </style>
</head>
<body>
<div class="center-screen">
    <label>
        <input type="text" class="search-box" placeholder="输入查询的手机号">
    </label>
    <button class="search-button" onclick="redirectUrl()">查询</button>
</div>
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
<!DOCTYPE html>
<html lang="en">
<head>
    <title>销售情况</title>
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.2/style/weui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.0/css/jquery-weui.min.css">
    <link rel="stylesheet" href="${base}/resources/shopCss/demos.css"/>
    <script src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/echarthelp/echarts.min.js"></script>
</head>
<body ontouchstart>

<#--协议-->
<div class="demos-header" style="padding: 10px 0;">
    <h2 class='demos-second-title' style="color: #b4a078;">本月团队销售数据</h2>
</div>
<div id="main2" style="width: 100%;height: 450px;"></div>
<#--协议-->
<div class="demos-header" style="padding: 10px 0;">
    <h2 class='demos-second-title' style="color: #b4a078;">上月团队销售数据</h2>
</div>
<div id="main3" style="width: 100%;height: 450px;"></div>
<div class="demos-header" style="padding: 10px 0;">
    <h2 class='demos-second-title' style="color: #b4a078;">每日销售数量</h2>
</div>
<div id="main" style="width: 100%;height: 250px;"></div>
<div class="demos-header" style="padding: 10px 0;">
    <h2 class='demos-second-title' style="color: #b4a078;">每日协议销售金额</h2>
</div>
<div id="main4" style="width: 100%;height: 320px;"></div>
<div class="demos-header" style="padding: 10px 0;">
    <h2 class='demos-second-title' style="color: #b4a078;">每日订单销售金额</h2>
</div>
<div id="main8" style="width: 100%;height: 320px;"></div>
<div class="demos-header" style="padding: 10px 0;">
    <h2 class='demos-second-title' style="color: #b4a078;">每日客单价金额</h2>
</div>
<div id="main7" style="width: 100%;height: 320px;"></div>

<style>
    .weui-footer {
        margin: 250px 0 10px;
    }
</style>

<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://photo.youchongxiong.com/swiper.min.js"></script>
<script src="https://photo.youchongxiong.com/city-picker.min.js"></script>
<script src="http://apps.bdimg.com/libs/fastclick/1.0.0/fastclick.min.js"></script>
<script>
    $(function () {
        FastClick.attach(document.body);
    });
</script>
<script src="https://photo.youchongxiong.com/jquery-weui.min.js"></script>
<script src="https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var shopId = '${shopId}'
    var myChart = echarts.init(document.getElementById('main'));
    var myChart4 = echarts.init(document.getElementById('main4'));
    var myChart7 = echarts.init(document.getElementById('main7'));
    var myChart8 = echarts.init(document.getElementById('main8'));

    var myChart2 = echarts.init(document.getElementById('main2'));
    var myChart3 = echarts.init(document.getElementById('main3'));

    var formData2 = new FormData()
    formData2.append('userId', shopId);
    myChart.showLoading();
    myChart4.showLoading();
    myChart7.showLoading();
    myChart8.showLoading();
    myChart2.showLoading();
    myChart3.showLoading();
    $.showLoading();
    $.ajax({
        url: '${base}/shop/sellPage/data',
        type: 'POST',
        cache: false,
        data: formData2,
        processData: false,
        dataType: 'json',
        contentType: false,
        success: function (res) {
            $.hideLoading();
            myChart.hideLoading();
            myChart4.hideLoading();
            myChart7.hideLoading();
            myChart8.hideLoading();
            myChart2.hideLoading();
            myChart3.hideLoading();
            if (res.msgCode == 10000) {
                var msgBody = res.msgBody
                myChart.setOption({
                    legend: {
                        selected: {
                            '所有人':true,
                            '赵洋洋': true,
                            '张宏伟': true,
                            '赵浪浪': true,
                            '翟颖': false,
                            '杨莉荣': false,
                            '杨奇': false,
                            '孙倩倩': false
                        }
                    },
                    tooltip: {},
                    dataset: {
                        dimensions: ['销售人员', '所有人', '赵洋洋', '张宏伟', '赵浪浪', '翟颖', '杨莉荣', '杨奇', '孙倩倩'],
                        source: JSON.parse(msgBody.chartOneStr)
                    },
                    dataZoom: [
                        {   // 这个dataZoom组件，默认控制x轴。
                            type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                            start: 70,         // 右边在 60% 的位置。
                            end: 100         // 右边在 60% 的位置。
                        }
                    ],
                    xAxis: {type: 'category'},
                    yAxis: {},
                    // Declare several bar series, each will be mapped
                    // to a column of dataset.source by default.
                    series: [
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                    ]
                });

                myChart4.setOption({
                    legend: {
                        selected: {
                            '所有人':true,
                            '赵洋洋': true,
                            '张宏伟': true,
                            '赵浪浪': true,
                            '翟颖': false,
                            '杨莉荣': false,
                            '杨奇': false,
                            '孙倩倩': false
                        }
                    },
                    tooltip: {},
                    dataset: {
                        dimensions: ['销售人员', '所有人', '赵洋洋', '张宏伟', '赵浪浪', '翟颖', '杨莉荣', '杨奇', '孙倩倩'],
                        source: JSON.parse(msgBody.chartTwoStr)
                    },
                    dataZoom: [
                        {   // 这个dataZoom组件，默认控制x轴。
                            type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                            start: 70,         // 右边在 60% 的位置。
                            end: 100         // 右边在 60% 的位置。
                        }
                    ],
                    xAxis: {type: 'category'},
                    yAxis: {},
                    // Declare several bar series, each will be mapped
                    // to a column of dataset.source by default.
                    series: [
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'}
                    ]
                });

                myChart7.setOption({
                    legend: {
                        selected: {
                            '所有人':true,
                            '赵洋洋': true,
                            '张宏伟': true,
                            '赵浪浪': true,
                            '翟颖': false,
                            '杨莉荣': false,
                            '杨奇': false,
                            '孙倩倩': false
                        }
                    },
                    tooltip: {},
                    dataset: {
                        dimensions: ['销售人员', '所有人', '赵洋洋', '张宏伟', '赵浪浪', '翟颖', '杨莉荣', '杨奇', '孙倩倩'],
                        source: JSON.parse(msgBody.chartThreeStr)
                    },
                    dataZoom: [
                        {   // 这个dataZoom组件，默认控制x轴。
                            type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                            start: 70,         // 右边在 60% 的位置。
                            end: 100         // 右边在 60% 的位置。
                        }
                    ],
                    xAxis: {type: 'category'},
                    yAxis: {},
                    // Declare several bar series, each will be mapped
                    // to a column of dataset.source by default.
                    series: [
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'}
                    ]
                });

                myChart8.setOption({
                    legend: {
                        selected: {
                            '所有人':true,
                            '赵洋洋': true,
                            '张宏伟': true,
                            '赵浪浪': true,
                            '翟颖': false,
                            '杨莉荣': false,
                            '杨奇': false,
                            '孙倩倩': false
                        }
                    },
                    tooltip: {},
                    dataset: {
                        dimensions: ['销售人员', '所有人', '赵洋洋', '张宏伟', '赵浪浪', '翟颖', '杨莉荣', '杨奇', '孙倩倩'],
                        source: JSON.parse(msgBody.chartSixStr)
                    },
                    dataZoom: [
                        {   // 这个dataZoom组件，默认控制x轴。
                            type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                            start: 70,         // 右边在 60% 的位置。
                            end: 100         // 右边在 60% 的位置。
                        }
                    ],
                    xAxis: {type: 'category'},
                    yAxis: {},
                    // Declare several bar series, each will be mapped
                    // to a column of dataset.source by default.
                    series: [
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'},
                        {type: 'bar'}
                    ]
                });

                myChart2.setOption({
                    legend: {},
                    tooltip: {},
                    dataset: {
                        source: JSON.parse(msgBody.chartFourStr)
                    },
                    series: [{
                        type: 'pie',
                        radius: 60,
                        center: ['50%', '30%'],
                        // No encode specified, by default, it is '2012'.
                        encode: {
                            itemName: '表格名称',
                            value: '月销售数量'
                        }
                    }, {
                        type: 'pie',
                        radius: 60,
                        center: ['50%', '75%'],
                        encode: {
                            itemName: '表格名称',
                            value: '月销售金额'
                        }
                    }]
                });

                myChart3.setOption({
                    legend: {},
                    tooltip: {},
                    dataset: {
                        source: JSON.parse(msgBody.chartFiveStr)
                    },
                    series: [{
                        type: 'pie',
                        radius: 60,
                        center: ['50%', '30%'],
                        // No encode specified, by default, it is '2012'.
                        encode: {
                            itemName: '表格名称',
                            value: '月销售数量'
                        }
                    }, {
                        type: 'pie',
                        radius: 60,
                        center: ['50%', '75%'],
                        encode: {
                            itemName: '表格名称',
                            value: '月销售金额'
                        }
                    }]
                });
            } else if (res.msgCode == 10001) {
                $.toast("获取失败", "cancel", function (toast) {
                    console.log(toast);
                });
            } else if (res.msgCode == 10003) {
                window.location.reload()
            }

        }
    })


</script>

</body>
</html>
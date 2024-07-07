<#import "common/desktopCss.ftl" as css>
<#import "common/desktopJs.ftl" as js>
<#import "common/desktopCommon.ftl" as common>
<!DOCTYPE html>
<html class="js rgba opacity cssanimations borderradius boxshadow csstransitions csstransforms textshadow">
<head>
    <meta charset="utf-8"/>
    <title>分类-优宠熊正规宠物购买平台-布偶猫哪里买-金渐层-银渐层猫-缅因猫多少钱一只-正规宠物购买平台</title>
    <meta name="keywords"
          content="买猫在哪里买,金渐层哪里买,宠物猫,布偶猫哪里买,卖猫市场,宠物猫交易网,宠物平台,宠物猫,正规购宠平台,买猫,卖猫,猫市场,宠物猫交易网,优宠熊,宠物平台,天津宠物交易,天津买猫,天津宠物市场,猫,优宠,家庭繁育猫舍">
    <meta name="description"
          content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta name="theme-color" content="#3baa24">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="applicable-device" content="pc,mobile">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta property="og:url" content="http://www.youchongxiong.com/">
    <meta property="og:type" content="article">
    <meta property="og:title" content="优宠熊正规宠物购买平台">
    <meta property="og:description"
          content="广州哪里有卖猫的？就到优宠熊正规宠物购买平台，秉承优宠科技一贯的严谨态度，致力于把健康的猫咪送到用户家中，金渐层、银渐层猫、缅因猫多少钱一只？布偶猫哪里买？买猫在哪个平台比较好？就到优宠熊！。">
    <meta property="og:image" content="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico">
    <meta name="renderer" content="webkit">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="baidu-site-verification" content="b1Yp8ETSz9"/>
    <link rel="shortcut icon" href="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/bitbug_favicon.ico"
          type="image/x-icon"/>

    <@css.commonCss/>
    <@css.typeCss/>
    <@css.endCss/>

<body style="">
<@common.topDiv />
<@common.rightDiv />
<@common.rightDivFloat />

<div class="g-bd-list" id="j-freemarkerRender" style="">
    <div class="g-row">
        <!--面包屑-->
        <div class="m-crumbs " id="j-yx-crumbs" style="display: block;">
            <a href="/">首页</a>
            <img src="${base}/resources/img/saw-right.png" width="10px;" height="10px;">
            <!-- <span class="w-icon-arrow arrow-right-hollow"></span> -->
            <span class="z-cur">猫咪</span>
        </div>
        <!-- 轮播图 -->
        <div class="m-focus">
            <div class="focus-bd">
                <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="4000">
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                    </ol>
                    <!-- 轮播（Carousel）项目 -->
                    <div class="carousel-inner">
                        <#list configArray as configArray>
                            <#if configArray_index ==0>
                                <div class="item active">
                                    <img src="${configArray.configContent}" alt="${configArray.configMsg}">
                                </div>
                            <#else >
                                <div class="item">
                                    <img src="${configArray.configContent}" alt="${configArray.configMsg}">
                                </div>
                            </#if>
                        </#list>
                    </div>

                </div>
            </div>
        </div>
        <!--商品展示区域-->
        <div id="j-goodsAreaWrap">
            <div class="m-goodsArea">
                <div class="m-sortBar">
                    <div class="category">
                        <span class="name">品种：</span>
                        <div class="categoryGroup">
                            <#if symbolName==-1>
                                <a href="javascript:void(0);" class="categoryItem j-categoryItem symbol active"
                                   data-value="-1" data-type="0">全部</a>
                                <#list symbolArray as symbolArray>
                                    <a href="javascript:void(0);" class="categoryItem j-categoryItem symbol"
                                       data-value="${symbolArray.symbolName}"
                                       data-type="0">${symbolArray.symbolName}</a>
                                </#list>
                            <#else >
                                <a href="javascript:void(0);" class="categoryItem j-categoryItem symbol "
                                   data-value="-1" data-type="0">全部</a>
                                <#list symbolArray as symbolArray>
                                    <#if symbolName==symbolArray_index>
                                        <a href="javascript:void(0);" class="categoryItem j-categoryItem symbol active"
                                           data-value="${symbolArray.symbolName}"
                                           data-type="0">${symbolArray.symbolName}</a>
                                    <#else >
                                        <a href="javascript:void(0);" class="categoryItem j-categoryItem symbol"
                                           data-value="${symbolArray.symbolName}"
                                           data-type="0">${symbolArray.symbolName}</a>
                                    </#if>
                                </#list>
                            </#if>
                        </div>
                    </div>
                    <div class="category">
                        <span class="name">品级：</span>
                        <div class="categoryGroup">
                            <a href="javascript:void(0);" class="categoryItem j-categoryItem level active" data-type="1"
                               data-value="-1">全部</a>
                            <#--                            <a href="javascript:void(0);" class="categoryItem j-categoryItem level" data-value="0"-->
                            <#--                               data-type="1">宠物级</a>-->
                            <#--                            <a href="javascript:void(0);" class="categoryItem j-categoryItem level" data-value="1"-->
                            <#--                               data-type="1">血统级</a>-->
                        </div>
                    </div>
                    <div class="category">
                        <span class="name">价格：</span>
                        <div class="categoryGroup">
                            <a href="javascript:void(0);" class="categoryItem j-categoryItem priceC active"
                               data-value="-1" data-type="2">全部</a>
                            <a href="javascript:void(0);" class="categoryItem j-categoryItem priceC" data-value="0"
                               data-type="2">0-2000</a>
                            <a href="javascript:void(0);" class="categoryItem j-categoryItem priceC"
                               data-value="1" data-type="2">2000-5000</a>
                            <a href="javascript:void(0);" class="categoryItem j-categoryItem priceC"
                               data-value="2" data-type="2">5000-10000</a>
                            <a href="javascript:void(0);" class="categoryItem j-categoryItem priceC" data-value="3"
                               data-type="2">10000以上</a>
                        </div>
                    </div>
                    <div class="sorts">
                        <span class="name ">排序：</span>
                        <a href="javascript:void(0);" id="sortDefaultId" class="sort sort-default active"
                           data-value="-1"
                           data-type="3">默认</a>
                        <a href="javascript:void(0);" id="sortPriceId" data-dif="0" class="sort sort-price "
                           data-type="3" data-value="0">
                            <span>价格</span>
                            <img src="${base}/resources/img/saw-down.png" width="14px;" height="14px;">
                        </a>
                        <span></span>
                    </div>
                </div>
                <div class="m-content">
                    <ul class="m-itemList f-margin-top-25">
                        <#list goodArray as goodArray>
                            <li class="item" onclick="jumpDetail('${goodArray.goodId}')">
                                <div class="m-product j-product" data-id="${goodArray.goodId}">
                                    <span></span>
                                    <div class="hd">
                                        <div title="${goodArray.goodTitle}"
                                             target="_blank">
                                            <img style="object-fit: cover;" src="${goodArray.listPicUrl}"
                                                 alt="${goodArray.photoUrlDesc1}"
                                                 class="img img-lazyload j-lazyload  img-lazyloaded">
                                            <span></span>
                                            <div class="colorNum">
                                                <#--                                                <span>${goodArray.goodNumber}</span>-->
                                                <span>1只</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="bd" >
                                        <div class="prdtTags">
                                            <#if goodArray.level==0>
                                                <span class="itemTag ">宠物级</span>
                                            <#else >
                                                <span class="itemTag ">血统级</span>
                                            </#if>
                                            <#if goodArray.gender==0>
                                                <span class="itemTag hot">公猫</span>
                                            <#else >
                                                <span class="itemTag hot">母猫</span>
                                            </#if>
                                            <#if goodArray.isNew==0>
                                                <span class="itemTag ">新上</span>
                                            <#else >
                                                <span class="itemTag ">可爱</span>
                                            </#if>
                                            <#--                                            <span class="itemTag hot">自营</span>-->
                                        </div>
                                        <h4 class="name">
                                            <div title="${goodArray.goodBrief}"
                                               target="_blank">
                                                <span></span>
                                                <span>&nbsp;</span>
                                                <span></span>
                                                <span>${goodArray.goodBrief}</span>
                                            </div>
                                        </h4>
                                        <p class="price-goods" style="color:red">
                                            <span>
                                                <span>&yen;</span>
                                                <span>${goodArray.frontMoney}</span>
                                            </span>
                                        </p>
                                        <div>
                                            <hr>
                                            <p class="desc">${goodArray.goodTitle}</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </#list>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<@common.footer/>
<script>
    var basePath = '${base}/resources/';
    var baseUrl = '${base}/';
</script>
<@js.commonJs/>
<script>
    function jumpDetail(goodId) {
        var url = baseUrl + "good/index/" + goodId;
        window.open(encodeURI(url));
    }

    $(function () {
        var headerNav = $('.header-nav');
        headerNav.find('li').each(function () {
            $(this).find('a').css('color', '').css('font-weight', '');
        });
        headerNav.find('li').eq(1).find('a').css('color', '#b4a078').css('font-weight', 'bold');

        // $('.j-product').click(function (e) {
        //     const dataId = this.getAttribute("data-id");
        //     var url = baseUrl + "good/index/" + dataId;
        //     // console.log("url:" + url)
        //     window.open(encodeURI(url));
        //     e.stopPropagation();
        // })


        //品种 品级 价格
        $('.j-categoryItem').click(function (e) {
            const dataValue = $(this).attr("data-value");
            const dataType = $(this).attr("data-type");
            if (dataType == '0') {//品种
                $('.j-categoryItem.symbol').removeClass("active");
                $(this).addClass("active")
            } else if (dataType == '1') {//品级
                $('.j-categoryItem.level').removeClass("active");
                $(this).addClass("active")
            } else if (dataType == '2') {//价格
                $('.j-categoryItem.priceC').removeClass("active");
                $(this).addClass("active")
            }
            commonQuery()
        })

        //排序 默认
        $('#sortDefaultId').click(function (e) {
            var priceObj = $('#sortPriceId');
            priceObj.attr('data-dif', '0')
            $('#sortPriceId').removeClass('active')
            $('#sortDefaultId').addClass('active')
            priceObj.find('img').attr("src", '${base}/resources/img/saw-down.png')
            $('.j-categoryItem.symbol.active').attr('data-value')
            commonQuery()
            // console.log('----' + symbolValue)
        })

        //排序 价格
        $('#sortPriceId').click(function (e) {
            var priceObj = $('#sortPriceId');
            var dataDif = priceObj.attr('data-dif')
            priceObj.addClass('active')
            $('#sortDefaultId').removeClass('active')
            if (dataDif == 0) {
                priceObj.attr('data-dif', '1')
                priceObj.find('img').attr("src", '${base}/resources/img/saw-down-gold.png')
            } else if (dataDif == 1) {
                priceObj.attr('data-dif', '2')
                priceObj.find('img').attr("src", '${base}/resources/img/saw-up-gold.png')
            } else if (dataDif == 2) {
                priceObj.attr('data-dif', '1')
                priceObj.find('img').attr("src", '${base}/resources/img/saw-down-gold.png')
            }
            commonQuery()
        })
    });

    function commonQuery() {
        var symbolValue = $('.j-categoryItem.symbol.active').attr('data-value')
        var levelValue = $('.j-categoryItem.level.active').attr('data-value')
        var priceValue = $('.j-categoryItem.priceC.active').attr('data-value')
        var dataFlat = $('#sortPriceId').attr('data-dif');
        var price;
        if (dataFlat == 0) {
            price = "-1"
        } else if (dataFlat == 1) {
            price = "0"
        } else if (dataFlat == 2) {
            price = "1"
        }
        $.post(baseUrl + 'type/catDym', {
            symbolName: symbolValue,
            level: levelValue,
            priceLevel: priceValue,
            price: price
        }, function (e) {
            if (e.msgCode == 10000) {
                var msgBody = e.msgBody
                // console.log(msgBody)
                var topVar = $('.f-margin-top-25');
                topVar.empty();
                var insideHtml = '';
                var goodArray = msgBody.goodArray;
                for (var i = 0; i < goodArray.length; i++) {
                    var temp = goodArray[i];
                    var firstTag, secondTag, thirdTag;
                    if (temp.level == 0) {
                        firstTag = '<span class="itemTag ">宠物级</span>';
                    } else {
                        firstTag = '<span class="itemTag ">血统级</span>';
                    }
                    if (temp.gender == 0) {
                        secondTag = '<span class="itemTag hot">公猫</span>';
                    } else {
                        secondTag = '<span class="itemTag hot">公猫</span>';
                    }
                    if (temp.isNew == 0) {
                        thirdTag = '<span class="itemTag ">新上</span>';
                    } else {
                        thirdTag = '<span class="itemTag ">可爱</span>';
                    }
                    insideHtml = insideHtml + '<li class="item">' +
                        '    <div class="m-product j-product" data-id="' + temp.goodId + '">' +
                        '        <span></span>' +
                        '        <div class="hd">' +
                        '            <a href="javascript:void(0);"' +
                        '               title="' + temp.goodTitle + '"' +
                        '               target="_blank">' +
                        '                <img src="' + temp.photoUrl1 + '" alt="' + temp.photoUrlDesc1 + '"' +
                        '                     class="img img-lazyload j-lazyload  img-lazyloaded">' +
                        '                <span></span>' +
                        '                <div class="colorNum">' +
                        '                    <span>' + temp.goodNumber + '</span>' +
                        '                    <span>只可选</span>' +
                        '                </div>' +
                        '            </a>' +
                        '        </div>' +
                        '        <div class="bdpet">' +
                        '            <div class="prdtTags">' + firstTag + secondTag + thirdTag +
                        '                <span class="itemTag hot">自营</span>' +
                        '            </div>' +
                        '            <h4 class="name">' +
                        '                <a href="javascript:void(0)" title="' + temp.goodTitle + '"' +
                        '                   target="_blank">' +
                        '                    <span></span>' +
                        '                    <span>&nbsp;</span>' +
                        '                    <span></span>' +
                        '                    <span>' + temp.goodTitle + '</span>' +
                        '                </a>' +
                        '            </h4>' +
                        '            <p class="price-goods" style="color:red">' +
                        '                <span>' +
                        '                    <span>&yen;</span>' +
                        '                    <span>' + temp.retailPrice + '</span>' +
                        '                </span>' +
                        '            </p>' +
                        '            <div>' +
                        '                <hr>' +
                        '                <p class="desc">' + temp.goodBrief + '</p>' +
                        '            </div>' +
                        '        </div>' +
                        '    </div>' +
                        '</li>';
                }
                topVar.append(insideHtml)
                $(".j-product").unbind('click');
                $('.j-product').click(function (e) {
                    const dataId = this.getAttribute("data-id");
                    var url = baseUrl + "good/index/" + dataId;
                    // console.log("url:" + url)
                    window.open(encodeURI(url));
                    e.stopPropagation();
                })
            }
        })
    }

</script>
</body>

</html>
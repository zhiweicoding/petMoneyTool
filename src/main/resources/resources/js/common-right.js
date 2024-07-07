function gouwucheover(imageAttr) {
    var image_ = document.getElementById("gouwucheimge");
    var span_ = document.getElementById("gouwuchespan");
    image_.src = basePath + "img/gouwuchechange.png";
    span_.style.color = "#b4a078";

    var objArray = $.cookie('user_cart_cookie_key');
    if (!objArray) {
        var bodyObj = $('.yx-cp-cartInfo-inner');
        bodyObj.empty();
        bodyObj.append('<p style="text-align: center;margin: 0 auto;background: #fff">还没有商品，请先挑选一只</p>')
    } else {
        $.post(baseUrlPath + 'good/searchCart', {
            idArray: objArray
        }, function (e) {
            if (e.msgCode == 10000) {
                var msgBody = e.msgBody
                var arrayList = msgBody.arrayList;
                var priceTotal = msgBody.priceTotal;
                var bodyObj = $('.yx-cp-cartInfo-inner');
                var totalPrice = $('#totalPrice');
                totalPrice.text(priceTotal)
                bodyObj.empty();

                for (var i = 0; i < arrayList.length; i++) {
                    var temp = arrayList[i];
                    var gender = temp.gender;
                    if (gender == 0) {
                        gender = '公'
                    } else {
                        gender = '母'
                    }
                    var innerHtml = '<div class="yx-cp-cartItem ">' +
                        '    <div class="yx-cp-item yx-cp-item-left">' +
                        '        <a href="' + baseUrlPath + 'good/index/' + temp.goodId + '" target="_blank">' +
                        '            <img src="' + temp.photoUrl1 + '">' +
                        '        </a>' +
                        '        <span></span>' +
                        '    </div>' +
                        '    <div class="yx-cp-item yx-cp-item-middle">' +
                        '        <p>' +
                        '            <a href="' + baseUrlPath + 'good/index/' + temp.goodId + '" title="' + temp.goodTitle + '" target="_blank">' +
                        temp.goodTitle +
                        '            </a>' +
                        '        </p>' +
                        '        <p>' +
                        '            <span class="yx-cp-specValue" title="' + gender + ' ">' + gender + ' </span>' +
                        '            <span class="yx-cp-count">' +
                        '                    <span>x&nbsp;</span>' +
                        '                    <span>1只</span>' +
                        '                </span>' +
                        '        </p>' +
                        '    </div>' +
                        '    <div class="yx-cp-item yx-cp-item-right">' +
                        '        <p class="yx-cp-price">' +
                        '            <!-- <span>¥</span> -->' +
                        '            <span>' + temp.retailPrice + '</span>' +
                        '        </p>' +
                        '        <p class="yx-cp-deleteItem">' +
                        '            <!-- <i class="yx-cp-icon-yxclose icon-yxclose-close11" >x</i> -->' +
                        '            <span style="font-size:18px;color:#888;margin-left:5px;">x</span>' +
                        '        </p>' +
                        '    </div>' +
                        '</div>';
                    bodyObj.append(innerHtml);
                }

            }
        })

    }

    $('#yx-cp-m-miniCart').addClass('show')
}

function gouwucheout(imageAttr) {
    var image_ = document.getElementById("gouwucheimge");
    var span_ = document.getElementById("gouwuchespan");
    image_.src = basePath + "img/gouwuche.png";
    span_.style.color = "#666";
    $('#yx-cp-m-miniCart').removeClass('show')
}

function kefuover(imageAttr) {
    var image_ = document.getElementById("kefuimage");
    var span_ = document.getElementById("kefuspan");
    image_.src = basePath + "img/kefuchange.png";
    span_.style.color = "#b4a078";
}

function kefuout(imageAttr) {
    var image_ = document.getElementById("kefuimage");
    var span_ = document.getElementById("kefuspan");
    image_.src = basePath + "img/kefu.png";
    span_.style.color = "#666";
}

function wxover(imageAttr) {
    var image_ = document.getElementById("wximage");
    var span_ = document.getElementById("wxspan");
    image_.src = basePath + "img/wxchange.png";
    span_.style.color = "#b4a078";
}

function wxout(imageAttr) {
    var image_ = document.getElementById("wximage");
    var span_ = document.getElementById("wxspan");
    image_.src = basePath + "img/wx.png";
    span_.style.color = "#666";
}

function topover(imageAttr) {
    var image_ = document.getElementById("topimage");
    var span_ = document.getElementById("topspan");
    image_.src = basePath + "img/topchange.png";
    span_.style.color = "#b4a078";
}

function topout(imageAttr) {
    var image_ = document.getElementById("topimage");
    var span_ = document.getElementById("topspan");
    image_.src = basePath + "img/top.png";
    span_.style.color = "#666";
}

function kefuclick() {
    clickhref = "https://www.sobot.com/chat/pc/index.html?sysNum=d7953744f07b4b4a89ace7d2a41d5e27";
    window.open(clickhref);
}

function gotoTop() {
    var top = document.body.scrollTop || document.documentElement.scrollTop
    scrollBy(0, -top);
}

$(function () {
    $('.bj-1-a-help').click(function (e) {
        var this_ = $(this).html()
        // alert(this_)
        $('#tosendid').html("送至：" + this_)
    })
})

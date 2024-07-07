(function () {
    $('.close-btn').click(function () {
        $('#black-modal-down').removeClass('show');
        $('#js-logged-schedule-modal').removeClass('show')
        $('#js-weixin-modal').removeClass('show')
        $('#js-buy-modal').removeClass('show')
        $('#yx-cp-m-miniCart').removeClass('show')
    })
})();

function tumbnailMoveon(moveOn) {
    $('#detail-image-ul').children('li').removeClass('z-active');
    $(moveOn).addClass('z-active');
    var imgSrc = $(moveOn).children('a').children('img')[0].src;
    $('#detailTumbnailImg').attr('src', imgSrc);

}

function detailNavFun(thisDiv, changeDivNameId) {
    $('#firstLi').removeClass('item item-active').addClass('item')
    $('#secondLi').removeClass('item item-active').addClass('item')
    $('#thirdLi').removeClass('item item-active').addClass('item')
    $('#fourthLi').removeClass('item item-active').addClass('item')
    $(thisDiv).removeClass('item item-active').removeClass('item').addClass('item item-active')

    $('#zhibaodivid').removeClass(' show')
    $('#chongwudivid').removeClass(' show')
    $('#pinzhongdivid').removeClass(' show')
    $('#pingjiadivid').removeClass(' show')
    $('#' + changeDivNameId).addClass(' show')

}

function phoneHelp() {
    $('#black-modal-down').addClass('show');
    $('#js-logged-schedule-modal').addClass('show')
}

function submitPhone() {
    var phone = $('#js-schedule-mobile-number').val()
    $.post(baseUrlPath + 'good/setPhone', {
        msg: phone
    }, function (e) {
        if (e.msgCode == 10000) {
            $('#js-logged-schedule-modal').removeClass('show')
            $('#black-modal-down').removeClass('show');
        }
    })
}

function weixinHelp() {
    $('#black-modal-down').addClass('show');
    $('#js-weixin-modal').addClass('show');
}

function webBuyHelp() {
    $('#black-modal-down').addClass('show');
    $('#js-buy-modal').addClass('show');
}

function openLicense(shopId) {
    // $('#licenseDivId').show()
    window.open(baseUrlPath + "good/photo?shopId=" + shopId);
}

function closeLicense() {
    $('#licenseDivId').hide()
}

function carHelp(obj) {
    var objArray = $.cookie('user_cart_cookie_key');
    if (!objArray) {
        objArray = new Array(0);
    } else {
        objArray = JSON.parse(objArray);
    }
    if (isNotInArray(objArray, obj)) {
        objArray.push(obj)
    }
    var objArrayStr = JSON.stringify(objArray)
    $.cookie('user_cart_cookie_key', objArrayStr, {expires: 365, path: '/'});
    $.post(baseUrlPath + 'good/searchCart', {
        idArray: objArrayStr
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
                var innerHtml = '<div class="yx-cp-cartItem " data-id="' + temp.goodId + '">' +
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
    $('#yx-cp-m-miniCart').addClass('show')
    var timeout = setTimeout(function () {
        $('#yx-cp-m-miniCart').removeClass('show')
    }, 3000)
}

//array contain obj
function isInArray(arr, value) {
    var index = $.inArray(value, arr);
    if (index >= 0) {
        return true;
    }
    return false;
}

function isNotInArray(arr, value) {
    return !isInArray(arr, value)
}
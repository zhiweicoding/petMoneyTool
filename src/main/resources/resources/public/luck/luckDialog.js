//已经中奖未支付弹窗页面
function showLuckDialog(money, couponType, detail, payName, doSomeFunction) {
    var divObj = document.createElement("div");
    var money = money ? money : '100元'
    var couponType = couponType ? couponType : '抵扣券'
    var detail = detail ? detail : '优宠熊膨胀金'
    var payName = payName ? payName : '立即领取'
    var htmlBody = '<div class="my-self-zj-main" id="my-self-no_pay_main" onclick="hideLuckDialog()">' +
        '<div class="my-self-txzl2">' +
        '<img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200506/tk_img1.png"  >' +
        '<h1 class="my-self-commonH1Body" id="my-self-getMoney2">' + money + '</h1>' +
        '<h3 class="my-self-commonH2Body">' + couponType + '</h3>' +
        '<h3 class="my-self-commonH4Body" id="my-self-couponDetail2">' + detail + '</h3>' +
        '<div id="my-self-close_pay" class="my-self-commonH5Body" onclick="' + doSomeFunction + '">' +
        '<h3 class="my-self-commonH3Body"> ' + payName + '</h3>' +
        '<img src="https://lg-qrm18qcm-1255940368.cos.ap-shanghai.myqcloud.com/20200506/tk_img3.png" >' +
        '</div>' +
        '</div>' +
        '</div>';
    divObj.innerHTML = htmlBody
    var first = document.body.firstChild;//得到页面的第一个元素
    document.body.insertBefore(divObj, first);//在得到的第一个元素之前插入
}

function hideLuckDialog() {
    var paras = document.getElementsByClassName('my-self-zj-main');
    for (var i = 0; i < paras.length; i++) {
        if (paras[i] != null) {
            paras[i].parentNode.removeChild(paras[i]);
        }
    }
}

function showLuckToast(htmlStr, btn1, fun1) {
    var divObj = document.createElement("div");
    var htmlBody = '<div class="my-self-xxcy">' +
        '<div class="my-self-xxcy_text">' + htmlStr + '</div> ' +
        '<div class="my-self-popup-buttons">' +
        '<div class="my-self-close_xxcy" onclick="hideLuckToast()">取消</div>' +
        '<div class="my-self-close_xxcy" onclick="' + fun1 + '">' + btn1 + '</div>' +
        '</div>' +
        '</div>'
    divObj.innerHTML = htmlBody
    var first = document.body.firstChild;//得到页面的第一个元素
    document.body.insertBefore(divObj, first);//在得到的第一个元素之前插入
}

function hideLuckToast() {
    var paras = document.getElementsByClassName('my-self-xxcy');
    for (var i = 0; i < paras.length; i++) {
        if (paras[i] != null) {
            paras[i].parentNode.removeChild(paras[i]);
        }
    }
}
function loadingShow(tip_text) {
    var divObj = document.createElement("div");
    var tip_text = tip_text ? tip_text : '加载中...'
    var htmlBody = '<div class="my-self-backGroud" ></div>' +
        '<div class="my-self-wrapp-Body" >' +
        '<div class="load-1">' +
        '<p>' + tip_text + '</p>' +
        '<div class="my-self-k-ring-1"></div>' +
        '</div>' +
        '</div>'
    divObj.innerHTML = htmlBody
    var first = document.body.firstChild;//得到页面的第一个元素
    document.body.insertBefore(divObj, first);//在得到的第一个元素之前插入
}

function loadingHidden() {
    var paras = document.getElementsByClassName('my-self-backGroud');
    for (var i = 0; i < paras.length; i++) {
        if (paras[i] != null)
            paras[i].parentNode.removeChild(paras[i]);
    }
    var paras = document.getElementsByClassName('my-self-wrapp-Body');
    for (var i = 0; i < paras.length; i++) {
        if (paras[i] != null)
            paras[i].parentNode.removeChild(paras[i]);
    }
}

function showPic(url) {
    var url = url ? url : 'https://photo.youchongxiong.com/whitev1.png'
    var divObj = document.createElement("div");
    var htmlBody = '<div id="my-self-maskCode" class="my-self-maskCode">' +
        '<div id="my-self-close" class="my-self-closebtn" onclick="hidePic()"></div>' +
        '<img alt="展示图片" id="my-self-opacImg" class="my-self-opacImg" style="" src="' + url + '">' +
        '</div>';
    divObj.innerHTML = htmlBody
    var first = document.body.firstChild;//得到页面的第一个元素
    document.body.insertBefore(divObj, first);//在得到的第一个元素之前插入
    var ui = document.getElementById("my-self-maskCode");
    ui.style.display = " ";
}

function hidePic() {
    var ui = document.getElementById("my-self-maskCode");
    ui.style.display = "none";
}


function showWholePic(url) {
    var divObj = document.createElement("div");
    var htmlBody = '<div id="my-self-maskCode" class="my-self-maskCode" onclick="hidePic()">' +
        '<img alt="展示图片" id="my-self-opacImg" class="my-self-opacImg" style="" src="' + url + '">' +
        '</div>';
    divObj.innerHTML = htmlBody
    var first = document.body.firstChild;//得到页面的第一个元素
    document.body.insertBefore(divObj, first);//在得到的第一个元素之前插入
    var ui = document.getElementById("my-self-maskCode");
    ui.style.display = " ";
}
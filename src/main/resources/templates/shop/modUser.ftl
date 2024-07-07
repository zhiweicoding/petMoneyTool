<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>修改密码</title>
    <@css.css/>
    <link rel="stylesheet" href="${base}/resources/shopCss/style.css"/>
    <style>
        /*.toolbar-inner .title{*/
        /*font-size: 18px;*/
        /*}*/
    </style>
</head>
<body ontouchstart>

<div class="weui-cells weui-cells_form" style="margin-top: 5px;padding-top: 5px;">
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">原密码</label></div>
        <div class="weui-cell__bd">
            <input id="oldPassword" class="weui-input" type="password" placeholder="请输入原密码">
        </div>
    </div>
    <div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">新密码</label></div>
        <div class="weui-cell__bd">
            <input id="newPassword" class="weui-input" type="password" placeholder="请输入新密码">
        </div>
    </div>
    <div class="weui-cell" id="checkPasswordDiv">
        <div class="weui-cell__hd"><label class="weui-label">确认密码</label></div>
        <div class="weui-cell__bd">
            <input id="makeSurePassword" class="weui-input" type="password" placeholder="请再次输入新密码" onblur="checkPass()">
        </div>
        <div class="weui-cell__ft" style="display: none" id="checkPasswordDivDiv">
            <i class="weui-icon-warn"></i>
        </div>

    </div>

</div>

<div class="weui-btn-area">
    <a class="weui-btn weui-btn_primary" href="javascript:savePic()" id="showTooltips">更新密码</a>
</div>

<@js.js/>
<script>
    var baseResourcesPath = '${base}/resources/'
</script>

<script>

    var showFail = false

    function checkPass() {
        var pwd1 = $('#newPassword').val()
        var pwd2 = $('#makeSurePassword').val()
        if (pwd1 != pwd2) {
            $('#checkPasswordDiv').addClass('weui-cell_warn')
            $('#checkPasswordDivDiv').css('display', 'block');
        } else {
            $('#checkPasswordDiv').removeClass('weui-cell_warn')
            $('#checkPasswordDivDiv').css('display', 'none');
        }
    }

    function savePic() {

        var oldPassword = $('#oldPassword').val();
        var makeSurePassword = $('#makeSurePassword').val();
        var newPassword = $('#newPassword').val();
        if (!newPassword) {
            $.toast("请先填写原密码", "forbidden");
            return false;
        }
        if (!newPassword) {
            $.toast("请先填写新密码", "forbidden");
            return false;
        }
        if (!makeSurePassword) {
            $.toast("请先选择确认密码", "forbidden");
            return false;
        }
        if (newPassword != makeSurePassword) {
            $.toast("两次密码不一致", "forbidden");
            return false;
        }
        $.showLoading();
        var formData = new FormData()

        formData.append('oldPassword', oldPassword);
        formData.append('makeSurePassword', makeSurePassword);
        formData.append('newPassword', newPassword);
        $.ajax({
            url: '${base}/shop/userInfoPage/modDym',
            type: 'POST',
            cache: false,
            data: formData,
            processData: false,
            dataType: 'json',
            contentType: false,
            success: function (res) {
                $.hideLoading();
                if (res.msgCode == 10000) {
                    var msgBody = res.msgBody
                    if (msgBody == 0) {
                        $.toast("操作成功", "success", function (toast) {
                            window.location.replace('${base}/shop/loginPage/index/goodPage&&index')
                        });
                    } else if (msgBody == -2) {
                        $.toast("两次密码不一致", "cancel", function (toast) {
                            console.log('两次密码不一致')
                        });
                    } else if (msgBody == -3) {
                        $.toast("原密码有误", "cancel", function (toast) {
                            console.log('原密码有误')
                        });
                    }

                } else if (res.msgCode == 10001) {
                    $.toast("操作失败", "cancel", function (toast) {
                        console.log(toast);
                    });
                } else if (res.msgCode == 10003) {
                    window.location.replace('${base}/shop/loginPage/index?from=2')
                }

            }
        })

    }

</script>

</body>
</html>
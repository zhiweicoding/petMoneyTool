RRC.Q.push(function () {
    require(['jquery', 'common/util', 'jquery.cookie'], function ($, util) {
        // 登录则免费咨询-自动补全号码
        if ($.cookie('rrc_login_token')) {
            var $telephone = $.cookie('rrc_login_phone');
            $('#js-telInput').attr('value', $telephone);
        }

        var $appDownload = $('#js-app-download-img');
        var $erweima = $('#js-add-erweima-img');

        if ((RRC.pageName != 'index_sem-index') && (RRC.pageName != 'index')) {
            $(".common-share-tel").addClass("share-selected");
            $(".common-man").show();
            $(".common-share-tel-in").show();
            $appDownload.hide();
            $erweima.hide();
            $(".common-share-tel-img-bg").attr("src",
                "//img1.rrcimg.com/dist/pc/images/consult-tel-red-415d6db0.gif");
        } else {
            $(".common-share-tel-img-bg").attr("src",
                "//img2.rrcimg.com/dist/pc/images/consult-tel-gray-ca9bccec.gif");
        }

        // 点击事件
        $("#js-common-share-top").on("click", function () {
            $('html,body').animate({
                'scrollTop': 0
            }, 300);
        });

        $(".common-share-app").on("click", function () {
            $appDownload.toggle();
        });
        $(".common-share-erweima").on('click', function () {
            $erweima.toggle();
        })

        /* $("#js-man-left-close").on("click", function() {
     $.cookie("man-left-close", "man-left-close", {
         expires: 3
     });
     $(".man-left").hide();
     $(".man-right").show();
 });
 */
        $(".common-share-tel").on("click", function (e) {
            if ($(this).hasClass("share-selected")) {
                $(".common-share div").removeClass("share-selected");
                $(".common-man").hide();
                $(".common-share-tel-in").hide();
                $(".common-share-tel-img-bg").attr("src",
                    "//img2.rrcimg.com/dist/pc/images/consult-tel-gray-ca9bccec.gif"
                );
            } else {
                $(".common-share div").removeClass("share-selected");
                $(this).addClass("share-selected");
                $(".common-man").show();
                $(".common-share-tel-in").show();
                $appDownload.hide();
                $erweima.hide();
                $(".common-share-tel-img-bg").attr("src",
                    "//img1.rrcimg.com/dist/pc/images/consult-tel-red-415d6db0.gif"
                );
            }
        });

        $(".common-share-app").on("click", function (e) {
            $(".common-share-tel-img-bg").attr("src",
                "//img2.rrcimg.com/dist/pc/images/consult-tel-gray-ca9bccec.gif"
            );
            $erweima.hide();
            if ($(this).hasClass("share-selected")) {
                $(".common-share div").removeClass("share-selected");
                $appDownload.hide();
            } else {
                $(".common-share div").removeClass("share-selected");
                $(this).addClass("share-selected");
                $(".common-man").hide();
                $(".common-share-tel-in").hide();
                $appDownload.show();
            }
        });

        $(".common-share-erweima").on("click", function (e) {
            $(".common-share-tel-img-bg").attr("src",
                "//img2.rrcimg.com/dist/pc/images/consult-tel-gray-ca9bccec.gif"
            );
            $appDownload.hide();
            if ($(this).hasClass("share-selected")) {
                $(".common-share div").removeClass("share-selected");
                $erweima.hide();
            } else {
                $(".common-share div").removeClass("share-selected");
                $(this).addClass("share-selected");
                $(".common-man").hide();
                $(".common-share-tel-in").hide();
                $erweima.show();
            }
        });

        var i = 0;
        var arr = [2, 3, 4, 3, 2, 1, 0, 1, 2, 3, 4, 3, 2, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
        ];
        /* setInterval(function() {
    $(".man-right").css("background-position", "-" + 80 * arr[i] + "px 0px");
    $("#js-huangbo-left").css("background-position", "-" + 120 * arr[i] + "px 0px");

    i++;
    if (i == arr.length) {
        i = 0;
    }
}, 100);
*/
        $appDownload.on('click', function () {
            window.open('/appdown/667', '_blank');
        });
    });
});
RRC.Q.push(function () {
    require(['jquery', 'md5', 'data/intent', 'common/util', 'log'], function ($, md5, intent, util,
        log) {
        var fade_run;
        $("#js-telButton").click(function () {
            log.push(['_trackEvent', "离线宝-PC-" + RRC.pageName, 'click', RRC.pageName]);
            clearInterval(fade_run);
            var ndError = $('#js-tel-prompt-error');
            // 10s内禁用，如果再次点击，提示用户操作频繁
            if ($(this).attr('disabled')) {
                $("#js-tel-prompt-success").fadeOut();
                ndError.find('.title').text('操作过于频繁');
                ndError.find('.message').text('请10秒后再尝试');
                ndError.fadeIn();
                fade_run = setTimeout(function () {
                    ndError.fadeOut();
                }, 2000);
                return;
            }
            // 未禁用，校验手机号再提交
            var tel = $.trim($("#js-telInput").val());
            if (!util.isMobile(tel)) {
                $("#js-tel-prompt-success").fadeOut();
                ndError.find('.title').text('号码错误');
                ndError.find('.message').text('请输入11位手机号码');
                ndError.fadeIn();
                fade_run = setTimeout(function () {
                    $("#js-tel-prompt-error").fadeOut();
                }, 5000);
                return;
            }

            function getLxbSubmitSource(pageName) {
                switch (pageName) {
                    case 'index':
                        return '离线宝-PC-首页-1';
                    case 'search':
                        return '离线宝-PC-列表页-1';
                    case 'index_sem-index':
                        return '离线宝-PC-sem首页-1';
                    case 'car_sem-search':
                        return '离线宝-PC-sem列表页-1';
                    case 'car-detail':
                        return '离线宝-PC-详情页-1';
                    case 'zhixin-index':
                        return '离线宝-PC-帮买页-1';
                    case 'other-service':
                        return '离线宝-PC-服务保障页-1';
                    default:
                        return '';
                }
            }

            var data = {
                phone: tel,
                device: 'pc',
                submit_sources: getLxbSubmitSource(RRC.pageName)
            };

            if ($(".detail-wrapper").size() > 0) {
                data.car_id = $(".detail-wrapper").data("id");
            }
            intent("lxb", data, function (json) {
                var status = parseInt(json.status, 10);
                if (status === 0) {
                    var message = util.getPCIntentSuccessTips('lixianbao');
                    if (message instanceof Array) {
                        message = message.map(item = > `<p>${item}</p>`).
                        join('');
                        $("#js-tel-prompt-success > .message").html(
                            '<div style="font-size:12px">' + message +
                            '</div>');
                    } else {
                        $("#js-tel-prompt-success > .message").html(message);
                    }
                    // 10s内禁用离线宝按钮
                    var telButton = $('#js-telButton');
                    telButton.attr('disabled', true);
                    setTimeout(function () {
                        telButton.attr('disabled', false);
                    }, 10000);

                    $("#js-tel-prompt-error").fadeOut();
                    $("#js-tel-prompt-success").fadeIn();
                    fade_run = setTimeout(function () {
                        $("#js-tel-prompt-success").fadeOut();
                    }, 5000);
                    log.push(['_trackEvent', "离线宝-PC-" + RRC.pageName +
                        "-提交成功", 'click', RRC.pageName
                    ]);
                }
            });
            _fxcmd.push(['trackEvent', 'event', 'cvr2', md5(tel), '1']);

        });
    });
});
<#import "common/shopCss.ftl" as css>
<#import "common/shopJs.ftl" as js>
<#import "common/shopCommon.ftl" as common>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>查询养户信息</title>
    <@css.css/>
</head>
<style>
    .weui-panel {
        margin: 0;
    }

    .weui-media-box {
        padding: 8px 15px;
    }

    .weui-panel__bd .weui-media-box__hd {
        width: 50px;
        height: 50px;
        line-height: 50px;
        position: relative;
    }

    .weui-media-box__desc {
        -webkit-line-clamp: 1;
    }

    .weui-media-box__title {
        margin-top: -15px;
    }

    a:-webkit-any-link {
        color: -webkit-link;
        cursor: pointer;
        text-decoration: underline;
    }

    a {
        text-decoration: none;
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    }

    .weui-search-bar__submit-btn {
        display: block;
        margin-left: 10px;
        line-height: 28px;
        color: #09bb07;
        white-space: nowrap;
    }

    .weui-media-box__desc {
        word-wrap: break-word;
    }

    .weui-media-box__title {
        word-wrap: break-word;
    }
</style>

<body ontouchstart>
<div class="page__pd">
    <div class="weui-search-bar" id="searchBar">
        <div class="weui-search-bar__form">
            <div class="weui-search-bar__box">
                <i class="weui-icon-search"></i>
                <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索"
                       name="anyText" value="${anyText}">
                <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
            </div>
            <label class="weui-search-bar__label" id="searchText"
                   style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);">
                <i class="weui-icon-search"></i>
                <#if anyText==''>
                    <span>搜索</span>
                <#else >
                    <span>${anyText}</span>
                </#if>
            </label>
        </div>
        <a href="javascript:submit()" class="weui-search-bar__submit-btn" id="searchCancel">查找</a>
        <#--<a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">取消</a>-->
    </div>
    <div class="weui-panel weui-panel_access">
        <div class="weui-panel__bd" style="margin-top:20px ">

        </div>
    </div>


</div>
<style>

</style>
<@js.js/>
<script src="https://cdn.bootcss.com/jquery_lazyload/1.9.7/jquery.lazyload.min.js"></script>
<script>

    function submit() {
        var anyText = $('#searchInput').val()
        $.showLoading();
        $.post('${base}/breeder/s/searchAny', {
            anyText: anyText,
        }, function (res) {
            $.hideLoading();
            var searchBodyDiv = $('.weui-panel__bd')
            searchBodyDiv.empty()
            var msgBody = res.msgBody
            var htmlBodyTotal = ''
            for (var index in msgBody) {
                var item = msgBody[index]

                var html = '<div class="weui-media-box weui-media-box_text" style="margin-bottom: 25px;" onclick="copyFun(this);"> ' +
                    '<h4 class="weui-media-box__title" style="font-size: 15px;word-wrap:break-word;overflow: hidden; text-overflow: initial; white-space: initial;">' + item.text + '</h4> ' +
                    '<button onclick="continueSubmit(\'' + item.brief + '\',\'' + item.id + '\')">查询10天内是否重复发过</button>' +
                    '<p class="weui-media-box__desc" style="font-size: 14px;color:indianred;">' + item.shop + '<span style="float: right">' + item.createTimeStr + '</span></p>' +
                    '<img style="width: 80%;height: auto;margin-top: 10px;" src="' + item.pic + '" />' +
                    '</div>'

                htmlBodyTotal = htmlBodyTotal + html
            }
            searchBodyDiv.append(htmlBodyTotal)
        })
        return false
    }

    function continueSubmit(goodBrief, id) {
        var anyText = $('#searchInput').val()
        $.showLoading();
        $.post('${base}/breeder/s/searchAnyContinue', {
            goodBrief: goodBrief,
            id: id
        }, function (res) {
            $.hideLoading();
            var searchBodyDiv = $('.weui-panel__bd')
            var msgBody = res.msgBody
            var htmlBodyTotal = ''
            for (var index in msgBody) {
                var item = msgBody[index]
                var html = '<div class="weui-media-box weui-media-box_text" style="margin-bottom: 25px;" onclick="copyFun(this);"> ' +
                    '<h4 class="weui-media-box__title" style="color:#444444;font-size: 15px;word-wrap:break-word;overflow: hidden; text-overflow: initial; white-space: initial;">' + item.text + '</h4> ' +
                    '<button onclick="continueSubmit(\'' + item.brief + '\',\'' + item.id + '\')">查询10天内是否重复发过</button>' +
                    '<p class="weui-media-box__desc" style="font-size: 14px;color:#444444;">' + item.shop + '<span style="float: right">' + item.createTimeStr + '</span></p>' +
                    '<img style="width: 80%;height: auto;margin-top: 10px;" src="' + item.pic + '" />' +
                    '</div>'

                htmlBodyTotal = htmlBodyTotal + html
            }
            searchBodyDiv.append(htmlBodyTotal)
        })
        return false
    }


    function copyFun(divStr) {
        var weuidesc = $(divStr).children('p')
        copyTextToClipboard(weuidesc.text())
    }

    function copyTextToClipboard(text) {
        var textArea = document.createElement("textarea")

        textArea.style.position = 'fixed'
        textArea.style.top = 0
        textArea.style.left = 0
        textArea.style.width = '2em'
        textArea.style.height = '2em'
        textArea.style.padding = 0
        textArea.style.border = 'none'
        textArea.style.outline = 'none'
        textArea.style.boxShadow = 'none'
        textArea.style.background = 'transparent'
        textArea.value = text

        document.body.appendChild(textArea)

        textArea.select()

        try {
            var msg = document.execCommand('copy') ? '成功' : '失败'
            alert('复制成功');
        } catch (err) {
            alert('复制失败，可以手动复制:' + text);
        }

        document.body.removeChild(textArea)
    }

</script>

</body>
</html>
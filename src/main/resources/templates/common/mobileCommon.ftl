<#macro footerDiv>
    <footer class="aui-footer-default aui-footer-fixed">
        <a href="${base}/" class="aui-footer-item  aui-footer-active">
            <span class="aui-footer-item-icon aui-icon aui-footer-icon-home"></span>
            <span class="aui-footer-item-text">首页</span>
        </a>
        <a href="${base}/webMobile/type/cat" class="aui-footer-item ">
            <span class="aui-footer-item-icon aui-icon aui-footer-icon-class"></span>
            <span class="aui-footer-item-text">分类</span>
        </a>
        <a href="${base}/msgList/index" class="aui-footer-item ">
            <span class="aui-footer-item-icon aui-icon aui-footer-icon-find"></span>
            <span class="aui-footer-item-text">新闻资讯</span>
        </a>
        <a href="${base}/webMobile/mobileMine/" class="aui-footer-item ">
            <span class="aui-footer-item-icon aui-icon aui-footer-icon-me"></span>
            <span class="aui-footer-item-text">我的</span>
        </a>
    </footer>
    <script>
        (function (w, d, e, x) {
            w[e] = function () {
                w.cbk = w.cbk || [];
                w.cbk.push(arguments);
            }
            x = d.createElement('script');
            x.async = true;
            x.id = 'zhichiScript';
            x.src = 'https://www.sobot.com/chat/frame/v2/entrance.js?sysnum=d7953744f07b4b4a89ace7d2a41d5e27';
            d.body.appendChild(x);
        })(window, document, 'zc');
    </script>
</#macro>

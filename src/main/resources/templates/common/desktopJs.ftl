<#macro commonJs>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/jquery-lazyload/1.9.5/jquery.lazyload.min.js"></script>
    <script src="http://apps.bdimg.com/libs/jquery.cookie/1.4.1/jquery.cookie.js"></script>
    <script type="text/javascript" src="${base}/resources/js/common-right.js"></script>
    <div style="display:none">
        <script type="text/javascript" src="http://s23.cnzz.com/z_stat.php?id=1277406154&web_id=1277406154"></script>
    </div>
    <script>
        (function(){
            var bp = document.createElement('script');
            var curProtocol = window.location.protocol.split(':')[0];
            if (curProtocol === 'https') {
                bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
            }
            else {
                bp.src = 'http://push.zhanzhang.baidu.com/push.js';
            }
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(bp, s);
        })();
    </script>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?17beb155aceef2dd9b74677419a1b70d";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>



</#macro>

<#macro goodJs>
    <script src="${base}/resources/js/goods/goods-help.js"></script>
    <script>
        $(function () {
            $('.detail-class-img').lazyload();
        })
    </script>
</#macro>

<#macro loginJs>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://photo.youchongxiong.com/common.js"></script>
    <script type="text/javascript" src="https://photo.youchongxiong.com/tracker-1521261263716.js"></script>
    <script type="text/javascript" src="https://photo.youchongxiong.com/pcmodule-1520862706113.css"></script>
    <script type="text/javascript" src="https://photo.youchongxiong.com/index.js"></script>
    <script type="text/javascript" src="https://photo.youchongxiong.com/footer.js"></script>
    <script type="text/javascript" src="${base}/resources/js/common-right.js"></script>
    <script src="http://apps.bdimg.com/libs/jquery-lazyload/1.9.5/jquery.lazyload.min.js"></script>
    <script src="http://apps.bdimg.com/libs/jquery.cookie/1.4.1/jquery.cookie.js"></script>
    <script type="text/javascript" charset="UTF-8"
            src="https://cdn.bootcss.com/jquery.form/4.2.2/jquery.form.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="https://cdn.bootcss.com/layer/3.1.0/layer.js"></script>
    <script type="text/javascript" charset="utf-8" src="${base}/resources/js/web_method/method.js"></script>
    <script type="text/javascript" charset="utf-8" src="${base}/resources/js/login_register/login.js"></script>
</#macro>

<#macro registerJs>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://photo.youchongxiong.com/common.js"></script>
    <script type="text/javascript" src="https://photo.youchongxiong.com/tracker-1521261263716.js"></script>
    <script type="text/javascript" src="https://photo.youchongxiong.com/pcmodule-1520862706113.css"></script>
    <script type="text/javascript" src="https://photo.youchongxiong.com/index.js"></script>
    <script type="text/javascript" src="https://photo.youchongxiong.com/footer.js"></script>
    <script type="text/javascript" src="${base}/resources/js/common-right.js"></script>
    <script src="http://apps.bdimg.com/libs/jquery-lazyload/1.9.5/jquery.lazyload.min.js"></script>
    <script src="http://apps.bdimg.com/libs/jquery.cookie/1.4.1/jquery.cookie.js"></script>
    <script type="text/javascript" charset="utf-8" src="${base}/resources/js/web_method/method.js"></script>
<#--<script type="text/javascript" charset="utf-8" src="${base}/resources/js/login_register/login.js"></script>-->
    <script type="text/javascript" charset="UTF-8"
            src="https://cdn.bootcss.com/jquery.form/4.2.2/jquery.form.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="https://cdn.bootcss.com/layer/3.1.0/layer.js"></script>
    <script type="text/javascript" charset="utf-8" src="${base}/resources/js/web_method/method.js~v=2"></script>
    <script type="text/javascript" charset="UTF-8" src="${base}/resources/js/login_register/user_register.js"></script>
</#macro>
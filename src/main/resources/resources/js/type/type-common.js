window.__YSFWINTYPE__ = Number('2');
window.__YSFTHEMELAYEROUT__ = 3;
window.__YSFBGCOLOR__ = "0";
window.__YSFBGTONE__ = "1";
window.__YSFSDKADR__ = "https://qiyukf.com";
window.__YSFDASWITCH__ = 0;
window.__YSFDAROOT__ = "https://da.qiyukf.com/webda/da.gif";
window.ysf = window.ysf || {
    ROOT: 'https://qiyukf.com'
};
! function () {
    function sendData2box() {
        function e(e) {
            var t, n;
            var i = "";
            for (n = 0; n < e.length; n++) {
                t = e.charCodeAt(n).toString(16);
                i += "-" + t
            }
            return i
        }
        try {
            var t = document.createElement("iframe");
            t.src = "https://ipservice.163.com/if/box";
            t.id = "YSF-IFRAME-DATA";
            t.name = e(device() + "::" + util.getcookie("__kaola_usertrack"));
            t.style.width = 0;
            t.style.height = 0;
            t.style.border = 0;
            t.style.display = "none";
            t.style.outline = "none";
            document.body.appendChild(t);
            setTimeout(function () {
                document.body.removeChild(t)
            }, 1e4)
        } catch (n) {}
    }
    if (!window.localStorage || !window.postMessage) return "not support service";
    var util = {
        isMobilePlatform: function () {
            if (/(iPhone|iPod|iOS|Android)/i.test(navigator.userAgent)) return !0;
            else return !1
        },
        isIOSorSafari: function () {
            if (/(iPhone|iPad|iOS|mini)/i.test(navigator.userAgent) || navigator.userAgent.indexOf("Safari") > -1 && navigator.userAgent.indexOf("Chrome") == -1) return !0;
            else return !1
        },
        getcookie: function (e) {
            var t = document.cookie,
                n = "\\b" + e + "=",
                i = t.search(n);
            if (i < 0) return "";
            i += n.length - 2;
            var o = t.indexOf(";", i);
            if (o < 0) o = t.length;
            return t.substring(i, o) || ""
        },
        createAjax: function () {
            var e = null;
            var t = ["Msxml2.XMLHTTP.6.0", "Msxml2.XMLHTTP.3.0", "Msxml2.XMLHTTP.4.0", "Msxml2.XMLHTTP.5.0", "MSXML2.XMLHTTP", "Microsoft.XMLHTTP"];
            if (window.XMLHttpRequest) {
                e = new XMLHttpRequest;
                if ("withCredentials" in e) return e
            }
            if (window.xDomainRequest) e = new Window.xDomainRequest;
            return e
        },
        mergeParams: function (e) {
            var t = [];
            for (var n in e)
                if (e.hasOwnProperty(n)) t.push(encodeURIComponent(n) + "=" + encodeURIComponent(e[n]));
            return t.join("&")
        },
        ajax: function (conf) {
            var method = conf.method || "get",
                contentType = conf.contentType,
                url = conf.url,
                data = conf.data,
                result = {},
                success = conf.success,
                error = conf.error;
            var xhr = util.createAjax();
            if (xhr) {
                try {
                    if ("GET" === method.toUpperCase())
                        if (data) url = url + "?" + util.mergeParams(data);
                    if (conf.synchronous) xhr.open(method, url, !1);
                    else xhr.open(method, url)
                } catch (ex) {
                    error();
                    return
                }
                xhr.onreadystatechange = function () {
                    if (4 == xhr.readyState)
                        if (200 === xhr.status) try {
                            result = eval("(" + xhr.responseText + ")");
                            if (200 == (result && result.code)) success(result.result);
                            else error(result)
                        } catch (err) {
                            error(result)
                        } else error()
                };
                if ("GET" == method.toUpperCase()) xhr.send(null);
                else if ("json" == contentType) {
                    xhr.setRequestHeader("content-type", "application/json");
                    xhr.send(JSON.stringify(data))
                } else {
                    xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");
                    xhr.send(util.mergeParams(data))
                }
            } else error()
        },
        findLocalItems: function (e, t) {
            var n, i = [],
                o;
            for (n in localStorage)
                if (n.match(e) || !e && "string" == typeof n) {
                    o = !t ? localStorage.getItem(n) : JSON.parse(localStorage.getItem(n));
                    i.push({
                        key: n,
                        val: o
                    })
                }
            return i
        },
        clearLocalItems: function (e) {
            for (var t = 0; t < e.length; t++) window.localStorage.removeItem(e[t].key)
        },
        addEvent: function (e, t, n) {
            if (e.addEventListener) e.addEventListener(t, n, !1);
            else if (e.attachEvent) e.attachEvent("on" + t, n)
        },
        addLoadEventForProxy: function () {
            function e() {
                for (var e = n.length - 1; e >= 0; e--) n[e]()
            }
            var t = !1;
            var n = [];
            return function (i) {
                n.push(i);
                if (!t) {
                    if (proxy.addEventListener) proxy.addEventListener("load", e, !1);
                    else if (proxy.attachEvent) proxy.attachEvent("onload", e);
                    t = !0
                }
            }
        }(),
        mergeUrl: function (e, t) {
            var n = e.split("?"),
                i = n.shift(),
                o = util.query2Object(n.shift() || "", "&");
            for (var a in t) o[a] = t[a];
            for (var a in o) n.push(a + "=" + (o[a] || ""));
            return i + "?" + n.join("&")
        },
        query2Object: function (e, t) {
            var n = e.split(t),
                i = {};
            for (var o = 0; o < n.length; o++) {
                var a = n[o],
                    r = (a || "").split("="),
                    c = r.shift();
                if (c) i[decodeURIComponent(c)] = decodeURIComponent(r.join("="));
                else;
            }
            return i
        },
        isObject: function (e) {
            return "[object object]" === {}.toString.call(e).toLowerCase()
        },
        isFunction: function (e) {
            return "[object function]" === {}.toString.call(e).toLowerCase()
        },
        isArray: function (e) {
            return "[object array]" === {}.toString.call(e).toLowerCase()
        },
        notification: function () {
            var e, t;
            return function (n) {
                if (e) {
                    clearTimeout(t);
                    e.close()
                }
                if (window.Notification && "granted" !== window.Notification.permission) Notification.requestPermission();
                if (window.Notification && "denied" != window.Notification.permission) {
                    e = new Notification(n.notify, {
                        tag: n.tag,
                        body: n.body,
                        icon: window.__YSFSDKADR__ + n.icon
                    });
                    util.playAudio();
                    e.onclick = function () {
                        e && e.close();
                        window.focus();
                        ysf.openLayer();
                        ysf.NotifyMsgAndBubble({
                            category: "clearCircle"
                        })
                    };
                    t = window.setTimeout(function () {
                        e.close()
                    }, 2e4)
                }
            }
        }(),
        playAudio: function () {
            if (window.__YSFSDKADR__) {
                var e = document.createElement("audio");
                e.src = window.__YSFSDKADR__ + "/prd/res/audio/message.mp3?26b875bad3e46bf6661b16a5d0080870";
                return function () {
                    e.play()
                }
            }
        }()
    };
    window.ysf = window.ysf || {};
    ysf.ROOT = ysf.ROOT || "";
    ysf.VERSION = "3.5.0";
    var winParam = {};
    var cache = {};
    var proxy;
    var chatProxy;
    var chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
    var firstBtnClick = !0;
    var CircleNumberFlag = 0;
    var msgSessionIds = [];
    var inited = !1;
    var each = function (e, t) {
        if (e && t)
            for (var n in e)
                if (e.hasOwnProperty(n)) t.call(null, n, e[n])
    };
    var rand = function (e) {
        if (e) return "ysf-" + e;
        var t = [];
        for (var n = 0, i; n < 20; ++n) {
            i = Math.floor(Math.random() * chars.length);
            t.push(chars.charAt(i))
        }
        return t.join("").toLowerCase()
    };
    var initPageId = function (e) {
        e = e || 10;
        var t = [];
        for (var n = 0, i; n < e; ++n) {
            i = Math.floor(Math.random() * chars.length);
            t.push(chars.charAt(i))
        }
        return (new Date).getTime() + t.join("")
    };
    var migrate = function () {
        var e;
        if (/YSF_UID\s*=\s*(.*?)(?=;|$)/i.test(document.cookie)) e = RegExp.$1;
        if (e) localStorage.setItem("YSF_UID", e);
        var e;
        if (/YSF_LAST\s*=\s*(.*?)(?=;|$)/i.test(document.cookie)) e = RegExp.$1;
        if (e) localStorage.setItem("YSF_LAST", e);
        var t = new Date(1990, 11, 30).toGMTString();
        document.cookie = "YSF_UID=;path=/;expires=" + t;
        document.cookie = "YSF_LAST=;path=/;expires=" + t
    };
    var cmap = {
        ack: function (e) {
            cache.timestamp = parseInt(e, 10);
            if (cache.onackdone) {
                cache.onackdone();
                delete cache.onackdone
            }
        },
        rdy: function (e) {
            syncProfile({})
        }
    };
    var wrap = function () {
        var e = document.createElement("div"),
            t = e.style,
            n = {
                top: 0,
                left: 0,
                visibility: "hidden",
                position: "absolute",
                width: "1px",
                height: "1px"
            };
        each(n, function (e, n) {
            t[e] = n
        });
        document.body.appendChild(e);
        return e
    };
    var merge = function (e) {
        each(e, function (e, t) {
            cache[e] = t
        })
    };
    var refresh = function (e) {
        e = e || "";
        var t = device(),
            n = lastUID(),
            i = getUuid();
        if (!t || "" == e && "" != n) {
            t = e || t || rand(e);
            sendMsg("synckey:" + t)
        }
        cache.device = t;
        cache.uuid = i || rand();
        localStorage.setItem("YSF-" + cache["appKey"].toUpperCase() + "-UID", e || t);
        localStorage.setItem("YSF-" + cache["appKey"].toUpperCase() + "-LAST", e || "");
        localStorage.setItem("YSF-" + cache["appKey"].toUpperCase() + "-UUID", cache.uuid)
    };
    var serialize = function (e) {
        var t = [];
        each(e, function (e, n) {
            t.push(encodeURIComponent(e) + "=" + encodeURIComponent(n))
        });
        return t.join("&")
    };
    var device = function () {
        return localStorage.getItem("YSF-" + cache["appKey"].toUpperCase() + "-UID") || ""
    };
    var getUuid = function () {
        return localStorage.getItem("YSF-" + cache["appKey"].toUpperCase() + "-UUID")
    };
    var lastUID = function () {
        return localStorage.getItem("YSF-" + cache["appKey"].toUpperCase() + "-LAST") || ""
    };
    var updateDevice = function () {
        cache.device = rand();
        localStorage.setItem("YSF-" + cache["appKey"].toUpperCase() + "-UID", cache.device);
        sendMsg("synckey:" + cache.device)
    };
    var sendChatMsg = function (e, t) {
        chatProxy.contentWindow.postMessage("" + e + ":" + JSON.stringify(t), "*")
    };
    var visit = function () {
        if (cache.appKey) {
            var e = new Image,
                t = serialize({
                    uri: location.href,
                    title: document.title,
                    appkey: cache.appKey
                });
            e.src = ysf.DOMAIN + "webapi/user/accesshistory.action?" + t
        }
    };
    var syncProfile = function (e) {
        sendMsg("KEY:" + cache.appKey || "");
        var t = {
            title: document.title || ""
        };
        var n = function (e, t) {
            var n = !1;
            e.forEach(function (e) {
                if (e.key == t) n = !0
            });
            return n
        };
        each({
            name: "",
            email: "",
            mobile: "",
            avatar: "",
            profile: "data",
            bid: "",
            level: "",
            authToken: ""
        }, function (e, n) {
            var i = cache[n] || cache[e];
            if (null != i) t[e] = i
        });
        each({
            avatar: "头像"
        }, function (e, i) {
            try {
                if (!t[e]) return;
                var o = JSON.parse(t["profile"] || "[]"),
                    a = o.length;
                if (!n(o, e)) {
                    o.push({
                        key: e,
                        value: t[e],
                        index: a,
                        label: i
                    });
                    t["profile"] = JSON.stringify(o)
                }
            } catch (r) {
                console.error("parse profile error: [crm]" + e, r)
            }
        });
        t.referrer = location.href;
        t.uid = cache.uid || "";
        t.landPage = localStorage.getItem("DA-LANDPAGE") || "";
        t.landPageReferrer = localStorage.getItem("DA-LANDPAGE-REFERRER") || "";
        t.sessionInfo = cache.sessionInfo || "";
        sendMsg("USR:" + serialize(t));
        var i = navigator.userAgent;
        if (e.upToServer && util.isIOSorSafari()) reportInfo([{
            key: "userInfo",
            value: JSON.stringify(t)
        }], e.success, e.error);
        else if (util.isFunction(e.success)) e.success()
    };
    var syncCustomProfile = function (e) {
        sendMsg("PRODUCT:" + serialize(e.data));
        if (util.isIOSorSafari()) reportInfo([{
            key: "orderInfo",
            value: JSON.stringify(e.data)
        }], e.success, e.error);
        else if (util.isFunction(e.success)) e.success()
    };
    var syncWebAnalytics = function () {
        if (window.__YSFDASWITCH__) {
            var e = {
                ak: cache.appKey,
                dv: device(),
                si: "",
                su: encodeURIComponent(document.referrer),
                cup: encodeURIComponent(location.href),
                cy: "",
                lp: localStorage.getItem("DA-LANDPAGE") || "",
                tm: (new Date).getTime()
            };
            sendMsg("WEBANALYTICS:" + serialize(e));
            if (util.isIOSorSafari()) reportInfo([{
                key: "analyticInfo",
                value: JSON.stringify(e)
            }])
        }
    };
    var sendMsg = function (e) {
        try {
            proxy.contentWindow.postMessage(e, "*")
        } catch (t) {}
    };
    var msgNotifyLock = function () {
        var e = null;
        return function (e, t) {
            setTimeout(function () {
                var n = ("YSFMSG-" + cache["appKey"] + "-" + e.id).toUpperCase();
                if (null == window.localStorage.getItem(n)) {
                    window.localStorage.setItem(n, 1);
                    t(!0)
                }
                t(!1)
            }, 100 * cache["dvcTimer"])
        }
    }();
    var receiveMsg = function (e) {
        if (e.origin == ysf.ROOT || "" == ysf.ROOT) {
            var t = (e.data || "").split(":"),
                n = t.shift();
            if ("pkg" != n) {
                var i = cmap[(n || "").toLowerCase()];
                if (i) i(t.join(":"))
            } else receivePkg(JSON.parse(t.join(":")))
        }
    };
    var receivePkg = function (e) {
        var t = {
            notify: function (e) {
                var t = "YSF-" + device() + "-MSGNUMBERS";
                msgNotifyLock(e, function (n) {
                    var i = Number(window.localStorage.getItem(t) || 0),
                        o = n ? ++i : i;
                    cache["notifyContent"] = e;
                    cache["notifyNumber"] = o;
                    if (n) ysf._unread(ysf.getUnreadMsg());
                    ysf.NotifyMsgAndBubble({
                        category: "notifyCircle",
                        data: {
                            circleNum: o,
                            notifyCnt: e.content,
                            type: e.type
                        }
                    })
                })
            },
            winfocus: function (e) {
                util.notification(e)
            },
            closeIframe: function (e) {
                var t = document.getElementById("YSF-PANEL-CORPINFO") || document.getElementById("YSF-PANEL-INFO"),
                    n = document.getElementById("YSF-BTN-HOLDER");
                t.className = "ysf-chat-layer";
                t.setAttribute("data-switch", 0);
                try {
                    sendChatMsg("status", {
                        layerOpen: 0
                    })
                } catch (i) {}
                if (0 == cache["hidden"]) n.style.display = "block"
            },
            leaveOk: function (e) {
                if (util.resetTimer) clearTimeout(util.resetTimer);
                util.resetTimer = setTimeout(function () {
                    reset()
                }, 1e3)
            },
            pushMsg: function (e) {
                if (e.data.sdkAppend) {
                    CircleNumberFlag += 1;
                    msgSessionIds.push(e.data.msgSessionId);
                    ysf.NotifyMsgAndBubble({
                        category: "notifyCircle",
                        data: {
                            circleNum: CircleNumberFlag,
                            notifyCnt: e.data.content,
                            type: "text"
                        }
                    })
                }
            }
        };
        var n = t[e.category];
        if (n) n(e)
    };
    var reset = function () {
        var e = document.getElementById("YSF-PANEL-CORPINFO") || document.getElementById("YSF-PANEL-INFO"),
            t = document.getElementById("YSF-BTN-HOLDER");
        document.body.removeChild(e);
        document.body.removeChild(t);
        ysf.init(cache["imgSrc"]);
        firstBtnClick = !0
    };
    var buildProxy = function () {
        if (!proxy) {
            if (window.addEventListener) window.addEventListener("message", receiveMsg, !1);
            else window.attachEvent("onmessage", receiveMsg);
            proxy = wrap();
            proxy.innerHTML = '<iframe style="height:0px; width:0px;" src="' + ysf.RESROOT + "res/delegate.html?" + +new Date + '"></iframe>';
            proxy = proxy.getElementsByTagName("IFRAME")[0];
            util.addLoadEventForProxy(function () {
                inited = !0;
                syncWebAnalytics();
                sendData2box();
                ysf.analytics(window.__YSFDASWITCH__)
            })
        }
    };
    var recordVisitorLeave = function (e) {
        var t = cache.appKey,
            n = device(),
            i = encodeURIComponent(location.href),
            o = (new Date).getTime(),
            a = document.title,
            r = 1;
        var c = function () {
            try {
                o = (new Date).getTime();
                var e = window.__YSFDAROOT__ + "?ak=" + t + "&dv=" + n + "&cup=" + i + "&tm=" + o + "&ct=" + a + "&lt=" + r + "&u=" + window.ysf.PAGEID;
                loadImage(e)
            } catch (c) {}
        };
        if (e) c();
        else if (util.isMobilePlatform) util.addEvent(window, "pagehide", function () {
            c()
        });
        else util.addEvent(window, "beforeunload", function () {
            c()
        })
    };
    ysf.analytics = function (e) {
        var t = cache.appKey,
            n = device(),
            i = "",
            o = encodeURIComponent(document.referrer),
            a = encodeURIComponent(location.href),
            r = "",
            c = localStorage.getItem("DA-LANDPAGE") || "",
            s = (new Date).getTime(),
            l = document.title,
            u = 0;
        var f = location.hostname;
        if (document.referrer.indexOf(f) == -1) {
            c = encodeURIComponent(location.href);
            localStorage.setItem("DA-LANDPAGE", c);
            localStorage.setItem("DA-LANDPAGE-REFERRER", o)
        }
        if (e) {
            var d = window.__YSFDAROOT__ + "?ak=" + t + "&dv=" + n + "&si=" + i + "&su=" + o + "&cup=" + a + "&tm=" + s + "&cy=" + r + "&lp=" + c + "&ct=" + l + "&lt=" + u + "&u=" + window.ysf.PAGEID;
            loadImage(d)
        } else if (!window.__YSFVISITORRECORDOFF__) {
            var d = window.__YSFDAROOT__ + "?ak=" + t + "&dv=" + n + "&cup=" + a + "&tm=" + s + "&ct=" + l + "&lt=" + u + "&u=" + window.ysf.PAGEID;
            loadImage(d)
        }
        if (!window.__YSFVISITORRECORDOFF__) recordVisitorLeave()
    };
    var loadImage = function (e, t) {
        t = t || function () {};
        var n = new Image;
        n.onerror = function () {
            console.log("faild to load qa.gif")
        };
        n.onload = function () {
            t()
        };
        n.src = e;
        n.width = 1;
        n.height = 1;
        return n
    };
    var initWinConfig = function () {
        var e = window.screen || {};
        var t = {
            base: ",location=0,menubar=0,scrollbars=0,status=0,toolbar=0,resizable=0",
            layerNoInfo: {
                param: ""
            },
            layerHasInfo: {
                param: ""
            }
        };
        if (cache.bid) {
            t.winNoInfo = {
                width: 724,
                height: 575,
                left: Math.max(0, ((e.width || 0) - 724) / 2),
                top: Math.max(0, ((e.height || 0) - 575) / 2)
            };
            t.winHasInfo = {
                width: 944,
                height: 575,
                left: Math.max(0, ((e.width || 0) - 944) / 2),
                top: Math.max(0, ((e.height || 0) - 570) / 2)
            }
        } else {
            t.winNoInfo = {
                width: 600,
                height: 630,
                left: Math.max(0, ((e.width || 0) - 600) / 2),
                top: Math.max(0, ((e.height || 0) - 630) / 2)
            };
            t.winHasInfo = {
                width: 842,
                height: 632,
                left: Math.max(0, ((e.width || 0) - 840) / 2),
                top: Math.max(0, ((e.height || 0) - 630) / 2)
            }
        }
        t.winNoInfo.param = "top=" + t.winNoInfo.top + ",left=" + t.winNoInfo.left + ",width=" + t.winNoInfo.width + ",height=" + t.winNoInfo.height + t.base;
        t.winHasInfo.param = "top=" + t.winHasInfo.top + ",left=" + t.winHasInfo.left + ",width=" + t.winHasInfo.width + ",height=" + t.winHasInfo.height + t.base;
        if (util.isMobilePlatform()) cache["winType"] = 3;
        switch (cache["winType"]) {
            case 1:
                winParam = cache["corpInfo"] ? t.layerHasInfo : t.layerNoInfo;
                winParam.type = "layer";
                break;
            case 3:
                winParam = {
                    type: "url",
                    param: ""
                };
                break;
            default:
                winParam = cache["corpInfo"] ? t.winHasInfo : t.winNoInfo;
                winParam.type = "win"
        }
    };
    var createDvcTimer = function () {
        var e = localStorage.getItem("YSFDVC-" + cache.device),
            t = 0;
        if (null != e) t = Number(e) + 1;
        localStorage.setItem("YSFDVC-" + cache.device, t);
        cache.dvctimer = t
    };
    var reportInfo = function () {
        var e = 0,
            t = 3;
        return function (n, i, o) {
            var a = serialize({
                appkey: cache.appKey,
                timestamp: (new Date).getTime(),
                token: cache.uuid
            });
            util.ajax({
                url: ysf.DOMAIN + "webapi/user/remoteStorage.action?" + a,
                method: "post",
                contentType: "json",
                data: n,
                success: function (e) {
                    if (util.isFunction(i)) i()
                },
                error: function (a) {
                    if (e < t) {
                        e++;
                        reportInfo(n, i, o)
                    } else if (util.isFunction(o)) o()
                }
            })
        }
    }();
    ysf.style = function (e) {
        if (e) {
            var t = document.getElementsByTagName("head")[0] || document.body,
                n = document.createElement("style");
            n.type = "text/css";
            t.appendChild(n);
            if ("textContent" in n) n.textContent = e;
            else if (n.styleSheet) n.styleSheet.cssText = e
        }
    };
    ysf.openInline = function (e, t) {
        if ("loading" != ysf.openInline.loadStatus) {
            if ("loaded" == ysf.openInline.loadStatus && util.isFunction(t)) return t();
            ysf.openInline.loadStatus = "loading";
            var n = document.getElementById("YSF-PANEL-CORPINFO") || document.getElementById("YSF-PANEL-INFO"),
                i = cache["dvcswitch"];
            if (e && n) {
                e = util.mergeUrl(e, {
                    w: cache["winType"]
                });
                var o = function (e) {
                    var t = document.createElement("iframe");
                    t.src = e;
                    t.id = "YSF-IFRAME-LAYER";
                    t.style.width = "100%";
                    t.style.height = "100%";
                    return t
                };
                chatProxy = o(e);
                n.appendChild(chatProxy);
                util.addEvent(chatProxy, "load", function () {
                    if (1 == i) sendChatMsg("doconnect", {
                        doconnect: 1
                    });
                    else if (0 == i && 1 == cache["pushswitch"]) sendChatMsg("dopushmsg", {
                        pushMsgSwitch: 1,
                        pushMsgId: cache["pushmsgid"]
                    });
                    ysf.openInline.loadStatus = "loaded";
                    if (util.isFunction(t)) t()
                })
            }
        }
    };
    ysf.entry = function (e) {
        var t = function () {
            var t = document.createElement("div"),
                n = "YSF-CUSTOM-ENTRY-" + window.__YSFTHEMELAYEROUT__;
            if (window.__YSFTHEMELAYEROUT__) t.className = "layer-" + window.__YSFTHEMELAYEROUT__;
            t.setAttribute("id", "YSF-BTN-HOLDER");
            if (1 == cache["hidden"]) t.style.display = "none";
            document.body.appendChild(t);
            t.onclick = function () {
                ysf.open()
            };
            t.innerHTML = '<div id="' + n + '"><img src="' + e.src + '"/></div>';
            return t
        };
        var n = function (e) {
            var t = document.createElement("span");
            t.setAttribute("id", "YSF-BTN-CIRCLE");
            e.appendChild(t)
        };
        var i = function (e) {
            var t = document.createElement("div"),
                n = document.createElement("div"),
                i = document.createElement("span"),
                o = document.createElement("span");
            t.setAttribute("id", "YSF-BTN-BUBBLE");
            n.setAttribute("id", "YSF-BTN-CONTENT");
            i.setAttribute("id", "YSF-BTN-ARROW");
            o.setAttribute("id", "YSF-BTN-CLOSE");
            o.onclick = function (e) {
                e.stopPropagation();
                e.preventDefault();
                ysf.NotifyMsgAndBubble({
                    category: "clearCircle"
                })
            };
            e.appendChild(t);
            t.appendChild(n);
            t.appendChild(i);
            t.appendChild(o)
        };
        var o = t();
        n(o);
        i(o)
    };
    ysf.entryPanel = function (e) {
        var t = document.createElement("div"),
            n = 1 == cache["winType"] ? 0 : 1;
        parseInt(e) ? t.setAttribute("id", "YSF-PANEL-CORPINFO") : t.setAttribute("id", "YSF-PANEL-INFO");
        t.className = "ysf-chat-layer";
        document.body.appendChild(t);
        t.setAttribute("data-switch", n);
        try {
            sendChatMsg("status", {
                layerOpen: n
            })
        } catch (i) {}
        createDvcTimer();
        if (cache.preloadIframe) ysf.openInline(ysf.url())
    };
    ysf.invite = function () {
        var e, t, n, i = document.createDocumentFragment();
        var o = function () {
            if (!e) {
                e = document.createElement("div");
                e.className = "ysf-online-invite-wrap";
                if (n.style && n.style.type) {
                    e.innerHTML = '<div class="ysf-online-invite" style="cursor:default;width:' + n.style.bdWidth + "px;height:" + n.style.bdHeight + "px;margin-top:" + -n.style.bdHeight / 2 + 'px"><div></div><div class="close custom" title="关闭"></div><img class="ysf-online-invite-img"/></div>';
                    var t = e.childNodes[0],
                        i = t.childNodes,
                        o = i[0];
                    if (util.isArray(n.style.oprs)) {
                        var s = null,
                            l = null;
                        for (var u = 0; u < n.style.oprs.length; u++) {
                            s = n.style.oprs[u];
                            l = document.createElement("a");
                            if (s) {
                                l.style.position = "absolute";
                                l.style.cursor = "pointer";
                                l.style.height = s.height + "px";
                                l.style.width = s.width + "px";
                                l.style.top = s.top + "px";
                                l.style.left = s.left + "px";
                                if (3 == s.type) l.onclick = r;
                                else if (2 == s.type) l.onclick = function (e) {
                                    return function () {
                                        ysf.open({
                                            templateId: e
                                        });
                                        c()
                                    }
                                }(s.tplid);
                                else if (1 == s.type) {
                                    l.href = s.url;
                                    l.target = "_blank"
                                }
                                o.appendChild(l)
                            } else;
                        }
                    }
                    i[1].onclick = r;
                    i[2].onload = function () {
                        window.setTimeout(a, 100)
                    }
                } else if (n.style) {
                    e.innerHTML = '<div class="ysf-online-invite"><div class="text"></div><div class="close" title="关闭"></div><img/></div>';
                    var t = e.childNodes[0],
                        i = t.childNodes,
                        f = i[0];
                    if ("innerText" in f) f.innerText = n.style.welcomeText;
                    else f.textContent = n.style.welcomeText;
                    t.onclick = function () {
                        ysf.open();
                        c()
                    };
                    i[1].onclick = r;
                    i[2].onload = function () {
                        window.setTimeout(a, 100)
                    }
                }
            }
        };
        var a = function () {
            e.style.visibility = "visible"
        };
        var r = function (e) {
            e = e || window.event || {};
            if (e.stopPropagation) e.stopPropagation();
            else e.cancelBubble = !0;
            c();
            if (0 != n.rejectType) window.setTimeout(s, 1e3 * n.intervalTime)
        };
        var c = function () {
            i.appendChild(e);
            e.getElementsByTagName("IMG")[0].src = ysf.RESROOT + "res/nej_blank.gif"
        };
        var s = function () {
            o();
            e.style.visibility = "hidden";
            document.body.appendChild(e);
            e.getElementsByTagName("IMG")[0].src = n.style && n.style.type ? n.style.bdImageUrl : ysf.RESROOT + "res/invite/1/bg.png"
        };
        return function (e) {
            if (!n) n = e || {};
            var t = function () {
                window.setTimeout(s, 1e3 * (n.waitTime || 15))
            };
            if (cache.timestamp) t();
            else cache.onackdone = t
        }
    }();
    ysf.openLayer = function () {
        return function () {
            var e = document.getElementById("YSF-PANEL-CORPINFO") || document.getElementById("YSF-PANEL-INFO"),
                t = document.getElementById("YSF-BTN-HOLDER");
            if (e) {
                t.style.display = "none";
                e.className = "ysf-chat-layer ysf-chat-layeropen";
                e.setAttribute("data-switch", 1);
                try {
                    sendChatMsg("status", {
                        layerOpen: 1
                    })
                } catch (n) {}
            }
        }
    }();
    ysf.openWin = function () {
        return function (e, t) {
            window.open(e, "YSF_SERVICE_" + (cache.appKey || "").toUpperCase(), t.param)
        }
    }();
    ysf.openUrl = function () {
        return function (e, t) {
            window.open(e, "YSF_SERVICE_" + (cache.appKey || "").toUpperCase(), t.param)
        }
    }();
    ysf.NotifyMsgAndBubble = function (e) {
        var t = {
            clearCircle: function (e) {
                var t = "YSF-" + device() + "-MSGNUMBERS",
                    n = document.getElementById("YSF-BTN-CIRCLE"),
                    i = document.getElementById("YSF-BTN-BUBBLE");
                i.style.display = "none";
                n.style.display = "none";
                localStorage.setItem(t, 0);
                cache["notifyNumber"] = 0;
                cache["notifyContent"] = "";
                CircleNumberFlag = 0
            },
            notifyCircle: function (e) {
                var t = "YSF-" + device() + "-MSGNUMBERS";
                localStorage.setItem(t, e.data.circleNum);
                var n = document.getElementById("YSF-BTN-BUBBLE"),
                    i = document.getElementById("YSF-BTN-CONTENT"),
                    o = document.getElementById("YSF-BTN-CIRCLE");
                var a = document.getElementById("YSF-PANEL-CORPINFO") || document.getElementById("YSF-PANEL-INFO");
                var r = {
                    image: function (e) {
                        return "[图片]"
                    },
                    audio: function (e) {
                        return "[音频]"
                    },
                    file: function (e) {
                        return "[文件]" + e.name
                    },
                    text: function (e) {
                        return e
                    }
                };
                if (0 == a.getAttribute("data-switch") && r[e.data.type] && 0 == cache["sdkCustom"]) {
                    o.style.display = "block";
                    n.style.display = "block";
                    o.innerHTML = e.data.circleNum > 99 ? "99+" : e.data.circleNum;
                    i.innerHTML = r[e.data.type](e.data.notifyCnt)
                }
            }
        };
        var n = t[e.category];
        if (n) n(e)
    };
    ysf.getUnreadMsg = function () {
        return {
            type: cache["notifyContent"].type,
            message: cache["notifyContent"].content,
            total: cache["notifyNumber"]
        }
    };
    ysf.config = function (e) {
        if (e) {
            merge(e);
            if (cache.appKey) {
                refresh(e.uid);
                syncProfile({
                    upToServer: !0,
                    success: e.success,
                    error: e.error
                });
                initWinConfig()
            }
        }
    };
    ysf.url = function (e) {
        if (!cache.appKey) return "";
        var t = {
            k: cache.appKey,
            u: cache.uid,
            d: device(),
            uuid: cache.uuid,
            gid: cache.groupid || 0,
            sid: cache.staffid || 0,
            qtype: cache.qtype || 0,
            dvctimer: cache.dvctimer || 0,
            robotShuntSwitch: cache.robotShuntSwitch || 0,
            hc: cache.hc || 0,
            robotId: cache.robotId || 0
        };
        if (e && e.templateId) t.templateId = e.templateId;
        if (cache.unconfirm) t.unconfirm = cache.unconfirm;
        each({
            n: "name",
            e: "email",
            m: "mobile"
        }, function (e, n) {
            var i = cache[n];
            if (i) t[e] = i
        });
        if (cache.customSkin) each({
            topbarBgColor: "topbarBgColor",
            chatPanelBgColor: "chatPanelBgColor",
            lMsgColor: "lMsgColor",
            rMsgColor: "rMsgColor",
            lMsgBgColor: "lMsgBgColor",
            rMsgBgColor: "rMsgBgColor",
            buttonColor: "buttonColor",
            buttonBgColor: "buttonBgColor",
            editorColor: "editorColor",
            editorBgColor: "editorBgColor",
            corpInfoColor: "corpInfoColor",
            corpInfoTitleColor: "corpInfoTitleColor",
            corpInfoBgColor: "corpInfoBgColor",
            tipColor: "tipColor",
            linkColor: "linkColor",
            borderColor: "borderColor"
        }, function (e, n) {
            var i = cache.customSkin[n];
            if (i) t[e] = i
        });
        t.t = encodeURIComponent(document.title);
        if (cache.bid) {
            t.bid = cache.bid;
            return ysf.IMROOT + "/trade?" + serialize(t)
        }
        return ysf.IMROOT + "?" + serialize(t)
    };
    ysf.logoff = function () {
        updateDevice();
        util.clearLocalItems(util.findLocalItems(/msgnumbers/gi))
    };
    ysf.openByLink = function (e) {
        var t = ysf.url();
        if (t) {
            e = e || {};
            var n = e.target || e.srcElement;
            if (n && "A" == n.tagName) n.href = t
        }
    };
    ysf.product = function () {
        var e = function (e) {
            e.title = e.title && e.title.length > 100 ? e.title.slice(0, 100) : e.title;
            e.desc = e.desc && e.desc.length > 300 ? e.desc.slice(0, 300) : e.desc;
            e.note = e.note && e.note.length > 100 ? e.note.slice(0, 100) : e.note;
            return {
                title: e.title,
                desc: e.desc,
                picture: e.picture,
                url: e.url,
                note: e.note,
                show: e.show
            }
        };
        return function (t) {
            var n = e(t);
            if (cache.bid) n.bid = cache.bid;
            syncCustomProfile({
                data: n,
                success: t.success,
                error: t.error
            })
        }
    }();
    ysf.open = function (e) {
        var t = ysf.url(e);
        if (t) switch (winParam.type) {
            case "win":
                ysf.openWin(t, winParam);
                break;
            case "layer":
                ysf.openInline(t, function () {
                    ysf.openLayer();
                    try {
                        if (firstBtnClick && 0 == cache["dvcswitch"] && 0 == cache["pushswitch"]) {
                            sendChatMsg("doconnect", {
                                doconnect: 1
                            });
                            firstBtnClick = !1
                        }
                    } catch (e) {}
                    if (0 == cache["dvcswitch"] && 1 == cache["pushswitch"] || CircleNumberFlag > 0) {
                        sendChatMsg("dopushmsgread", {
                            ids: msgSessionIds
                        });
                        msgSessionIds = []
                    }
                    ysf.NotifyMsgAndBubble({
                        category: "clearCircle"
                    })
                });
                break;
            case "url":
                ysf.openUrl(t, winParam)
        }
    };
    ! function () {
        each({
            DOMAIN: ysf.ROOT + "/",
            IMROOT: function () {
                var e = 1 == window.__YSFWINTYPE__ ? ysf.ROOT + "/client/iframe" : ysf.ROOT + "/client";
                if (util.isMobilePlatform()) e = ysf.ROOT + "/client";
                return e
            }(),
            RESROOT: ysf.ROOT + "/sdk/"
        }, function (e, t) {
            if (null == ysf[e]) ysf[e] = t
        });
        migrate();
        buildProxy();
        ysf.PAGEID = initPageId()
    }();
    ysf.init = function (e) {
        var t = function () {
            ysf.entry({
                src: e
            });
            if (1 == cache["winType"]) ysf.entryPanel(cache["corpInfo"])
        };
        if (1 == window.__YSFWINTYPE__) setTimeout(function () {
            util.ajax({
                url: ysf.DOMAIN + "webapi/user/dvcSession.action?k=" + cache["appKey"] + "&d=" + cache["device"] + "&f=" + cache["uid"],
                method: "post",
                success: function (e) {
                    cache["dvcswitch"] = e.result.dvcSwitch;
                    cache["pushswitch"] = e.result.pushSwitch || 0;
                    cache["pushmsgid"] = e.result.batchIdList || 0;
                    t()
                },
                error: function () {
                    cache["dvcswitch"] = 0;
                    cache["pushswitch"] = 0;
                    t()
                }
            })
        }, 1e3);
        else {
            cache["dvcswitch"] = 0;
            cache["pushswitch"] = 0;
            t()
        }
    };
    util.addEvent(window, "beforeunload", function () {
        var e = "YSFDVC-" + cache["device"],
            t = "YSFMSG-" + cache["appKey"],
            n = Number(localStorage.getItem(e));
        if (n > 0) localStorage.setItem(e, --n);
        util.clearLocalItems(util.findLocalItems(new RegExp(t, "ig")))
    });
    ysf.on = function () {
        var e = {
            onload: "load",
            unread: 1
        };
        return function (e) {
            var t = Object.prototype.toString.call(e).slice(8, -1);
            if (/object/gi.test(t)) {
                for (var n in e)
                    if ("onload" == n && util.isFunction(e[n]))
                        if (!inited) util.addLoadEventForProxy(e[n]);
                        else e[n]();
                else if (util.isFunction(ysf[n]) && util.isFunction(e[n])) ysf["_" + n] = e[n]
            } else console.warn("波比(｡･∀･)ﾉ: 请保持正确的监听姿势...")
        }
    }();
    ysf.getPushMessage = function (e) {
        sendChatMsg("dogetpushmsg", {
            ids: e
        })
    };
    ysf._unread = function () {};
    ysf.unread = function () {
        return {
            type: cache["notifyContent"].type,
            message: cache["notifyContent"].content,
            total: cache["notifyNumber"]
        }
    };
    ysf.clearDragresize = function (e) {
        try {
            var t = window.location.hostname.split(".")[0];
            var n = ["callcenter", "session", "qualitysession", "qualitycallsession", "worksheet", "callflow", "leave", "monitor", "usercenter"];
            if (n.indexOf(e) > -1) util.clearLocalItems(util.findLocalItems(new RegExp(t + "-" + e, "ig")));
            else
                for (var i = 0; i < n.length; i++) util.clearLocalItems(util.findLocalItems(new RegExp(t + "-" + n[i], "ig")))
        } catch (o) {}
    };
    ysf.setAuthToken = ysf.setToken = function (e) {
        cache["authToken"] = e;
        syncProfile({})
    };
    ysf.pollAuthToken = function () {
        var e = 0;
        var t = -1;
        var n = 4;
        return function (i, o) {
            var a = function (n) {
                var a = n && n.authToken;
                if (a) {
                    ysf.setAuthToken(n.authToken);
                    e = 0;
                    clearInterval(t);
                    t = setTimeout(function () {
                        ysf.pollAuthToken(i, o)
                    }, o.interval);
                    if (util.isFunction(o.onsuccess)) o.onsuccess(n)
                } else console.error("result has not token", n)
            };
            var r = function (t) {
                    if (e < n) {
                        e++;
                        ysf.pollAuthToken(i, o)
                    }
                    if (util.isFunction(o.onerror)) o.onerror(t)
                },
                c = o.method || "GET";
            n = o.tryTime || 4;
            if (null !== o.interval) util.ajax({
                url: i,
                method: c,
                data: o.data,
                success: a,
                error: r
            });
            else console.error("pollauthtoken is not set interval", o)
        }
    }()
}();
var __YSFOPTION__ = {
    corpInfo: Number('0'),
    winType: Number('2'),
    sdkCustom: 0,
    hidden: 1,
    preloadIframe: 1,
    appKey: '96ee78c0d9633761581e89d5019c5595'
};
__YSFOPTION__.uid = '';
try {
    __YSFOPTION__.profile = JSON.stringify(__YSFOPTION__.profile);
} catch (ex) {
    __YSFOPTION__.profile = '';
}
__YSFOPTION__.imgSrc = 'https://qiyukf.com/sdk/res/kefu/custom/3.png';
ysf.config(__YSFOPTION__);
ysf.style(['#YSF-BTN-HOLDER{position: fixed;max-width:70px;max-height:70px;right: 30px; bottom: 0px; cursor: pointer; overflow: visible; filter: alpha(opacity=100);opacity:1;z-index: 9990}', '#YSF-BTN-HOLDER:hover{filter: alpha(opacity=95);opacity:.95}', '#YSF-BTN-HOLDER img{ display: block;overflow: hidden; }', '#YSF-BTN-CIRCLE{display: none;position: absolute;right: -5px;top: -5px;width: auto;min-width: 12px;height: 20px;padding: 0 4px;background-color: #f00;font-size: 12px;line-height: 20px;color: #fff;text-align: center;white-space: nowrap;font-family: sans-serif;border-radius: 10px;z-index:1;}', '#YSF-BTN-HOLDER.layer-1 #YSF-BTN-CIRCLE{top: -30px;}', '#YSF-BTN-HOLDER.layer-2 #YSF-BTN-CIRCLE{top: -30px;}', '#YSF-BTN-HOLDER.layer-3 #YSF-BTN-CIRCLE{top: -30px;}', '#YSF-BTN-HOLDER.layer-4 #YSF-BTN-CIRCLE{top: -30px;}', '#YSF-BTN-HOLDER.layer-5 #YSF-BTN-CIRCLE{top: -30px;}', '#YSF-BTN-HOLDER.layer-6 #YSF-BTN-CIRCLE{top: -5px;}', '#YSF-BTN-BUBBLE{display: none;position: absolute;left: -274px;bottom:0px;width: 278px;height: 80px;box-sizing: border-box;padding: 14px 22px;filter: alpha(opacity=100);opacity:1;background: url(https://qiyukf.com/sdk//res/img/sdk/bg_floatMsg2x.png) no-repeat;background:url(https://qiyukf.com/sdk//res/img/sdk/bg_floatMsg.png)\9; background-size: 278px 80px; z-index: 1;}', '#YSF-BTN-HOLDER.layer-1 #YSF-BTN-BUBBLE{bottom:9px;}', '#YSF-BTN-HOLDER.layer-2 #YSF-BTN-BUBBLE{bottom:9px;}', '#YSF-BTN-HOLDER.layer-3 #YSF-BTN-BUBBLE{bottom:9px;}', '#YSF-BTN-HOLDER.layer-4 #YSF-BTN-BUBBLE{bottom:9px;}', '#YSF-BTN-HOLDER.layer-5 #YSF-BTN-BUBBLE{bottom:9px;}', '#YSF-BTN-HOLDER.layer-6 #YSF-BTN-BUBBLE{bottom:-6px;}', '#YSF-BTN-BUBBLE:hover{filter: alpha(opacity=95);opacity:.95}', '#YSF-BTN-CONTENT{height:45px;padding: 0;white-space: normal;word-break: break-all;text-align: left;font-size: 14px;line-height: 1.6;color: #222;overflow: hidden;z-index: 0;}', '#YSF-BTN-ARROW{ display: none; }', '#YSF-BTN-CLOSE{position: absolute; width:15px; height:15px;right: 4px;top: -3px; filter: alpha(opacity=90); opacity:.9; cursor: pointer; background: url(https://qiyukf.com/sdk//res/img/sdk/btn-close.png) no-repeat;z-index: 1}', '#YSF-BTN-CLOSE:hover{filter: alpha(opacity=100); opacity: 1;}', '#YSF-PANEL-CORPINFO.ysf-chat-layeropen{ width: 511px; height: 470px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, .15);}', '#YSF-PANEL-CORPINFO{ position: fixed; bottom: 0px; right: 20px; width: 0; height: 0; z-index: 99999; }', '#YSF-PANEL-INFO.ysf-chat-layeropen{ width: 311px; height: 470px; filter: alpha(opacity=100);opacity:1; box-shadow: 0 0 20px 0 rgba(0, 0, 0, .15);}', '#YSF-PANEL-INFO{ position: fixed; bottom: 0px; right: 20px; width: 0px; height: 0px; filter: alpha(opacity=0);opacity:0;z-index: 99999;}', '#YSF-PANEL-INFO .u-btn{background-color: #F96868}', '#YSF-CUSTOM-ENTRY{background-color: #F96868;}', '#YSF-CUSTOM-ENTRY-0{position: relative;bottom: 24px;width:auto;background-color: #F96868;box-shadow: 0px 6px 10px 0px rgba(0,0,0,0.25);}', '#YSF-CUSTOM-ENTRY-1{position: relative;bottom: 24px;width:auto;background-color: #F96868;border-radius: 14px; box-shadow: 0px 6px 10px 0px rgba(0,0,0,0.25);}', '#YSF-CUSTOM-ENTRY-2{position: relative;bottom: 24px;width:auto;background-color: #F96868;border-radius: 0;box-shadow: 0px 6px 10px 0px rgba(0,0,0,0.25);}', '#YSF-CUSTOM-ENTRY-3{position: relative;bottom: 24px;width:auto;background-color: #F96868;border-radius: 50%;box-shadow: 0px 6px 10px 0px rgba(0,0,0,0.25);}', '#YSF-CUSTOM-ENTRY-4{position: relative;bottom: 24px;width:auto;background-color: #F96868;border-radius: 50%;box-shadow: 0px 6px 10px 0px rgba(0,0,0,0.25);}', '#YSF-CUSTOM-ENTRY-5{position: relative;bottom: 24px;width:auto;background-color: #F96868;border-radius: 5px;box-shadow: 0px 6px 10px 0px rgba(0,0,0,0.25);}', '#YSF-CUSTOM-ENTRY-6{position: relative;bottom: 0px;width:auto;background-color: #F96868;border-radius:5px;border-bottom-left-radius: 0;border-bottom-right-radius: 0;}', '#YSF-CUSTOM-ENTRY-0 img{max-width: 300px;height:auto;}', '#YSF-CUSTOM-ENTRY-1 img{width:28px;height:auto;}', '#YSF-CUSTOM-ENTRY-2 img{width:58px;height:auto;}', '#YSF-CUSTOM-ENTRY-3 img{width:60px;height:auto;}', '#YSF-CUSTOM-ENTRY-4 img{width:60px;height:auto;}', '#YSF-CUSTOM-ENTRY-5 img{width:60px;height:auto;}', '#YSF-CUSTOM-ENTRY-6 img{width:115px;height:auto;}', '#YSF-IFRAME-LAYER{ border:0; outline:none; }', '.ysf-online-invite-wrap{z-index:10001;position:fixed;_position:absolute;top:50%;left:50%;}', '.ysf-online-invite{position:relative;top:-50%;left:-50%;cursor:pointer;}', '.ysf-online-invite img{display:block;width:250px;}', '.ysf-online-invite .ysf-online-invite-img{width:100%;height:100%}', '.ysf-online-invite .text{position:absolute;top:-11px;left:0;right:0;overflow:hidden;margin: 36px 20px 0 67px;line-height:140%;color:#526069;font-size:14px;font-family:"Microsoft YaHei","微软雅黑",tahoma,arial,simsun,"宋体";text-align:left;white-space:normal;word-wrap:break-word;}', '.ysf-online-invite .close{position:absolute;top:-6px;right:-6px;width:32px;height:32px;background:url(https://qiyukf.com/sdk/res/img/invite-close.png) no-repeat;cursor:pointer;}', '.ysf-online-invite .close.custom{top:-16px;right:-16px;}'].join(' '));
ysf.init('https://qiyukf.com/sdk/res/kefu/custom/3.png');
window.inviteSetting = {
    id: 0,
    createTime: 1504801887000,
    switchType: 0,
    style: {
        bdImageUrl: "",
        bdHeight: 0,
        bdImageY: 0,
        bdWidth: 0,
        type: 0,
        welcomeText: "您好，请问有什么可以帮助您？",
        bdImageX: 0
    },
    waitTime: 15,
    rejectType: 0,
    name: "",
    intervalTime: 45
};
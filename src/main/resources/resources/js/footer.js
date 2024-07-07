webpackJsonp([32], {
    0: function (e, t, n) {
        "use strict";
        var r = {
            checkPhone: function (e) {
                return !!/^((13[0-9])|(14[5,7,9])|(15[^4,\D])|(17[0,6-8])|(18[0-9]))\d{8}$/.test(e)
            },
            insertArray: function (e, t, n) {
                return e.length < t ? e : e.splice(t, 0, n)
            },
            isObjectNotEmpty: function (e) {
                if ("object" != typeof e || e instanceof Array) return !1;
                for (var t in e) return !0;
                return !1
            },
            extend: function (e, t) {
                return Object.assign || Object.defineProperty(Object, "assign", {
                    enumerable: !1,
                    configurable: !0,
                    writable: !0,
                    value: function (e) {
                        if (void 0 === e || null === e) throw new TypeError("Cannot convert first argument to object");
                        for (var t = Object(e), n = 1; n < arguments.length; n++) {
                            var r = arguments[n];
                            if (void 0 !== r && null !== r) {
                                r = Object(r);
                                for (var o = Object.keys(Object(r)), i = 0, a = o.length; i < a; i++) {
                                    var s = o[i],
                                        c = Object.getOwnPropertyDescriptor(r, s);
                                    void 0 !== c && c.enumerable && (t[s] = r[s])
                                }
                            }
                        }
                        return t
                    }
                }), Object.assign(e, t)
            }
        };
        e.exports = r
    },
    1: function (e, t, n) {
        "use strict";
        e.exports = {
            methodId: {
                LOG: 1,
                APP_STATUS: 4,
                APP_CHECK_STATUS: 5,
                APP_DOWNLOAD: 6,
                APP_PAUSE_DOWNLOAD: 7,
                APP_CONTINUE_DOWNLOAD: 8,
                APP_PROGRESS_DOWNLOAD: 2004,
                APP_INSTALL: 9,
                APP_OPEN: 10,
                APP_DETAIL: 11,
                APP_LIST_INSTALLED: 201,
                APP_DPK_UNCOMPRESS: 202,
                APP_UPDATE_LIST: 210,
                APP_INSTALLED_ALL_M9: 211,
                APP_IGNORE_UPDATE: 212,
                APP_IGNORE_UPDATE_LIST: 213,
                APP_COLLECTION_ACTION: 4001,
                APP_COLLECTION_STATUS: 4002,
                LOGIN_CHECK_STATUS: 12,
                LOGIN: 13,
                LOGIN_BIND_TAOBAO: 14,
                SHOW_PAGE_SSO: 315,
                JIFENBAO_PAGE: 16,
                NEW_PAGE: 1110,
                USER_IS_NEW: 316,
                SHARE: 15,
                SHARE_MOMENTS: 17,
                SHARE_SYS: 618,
                SYSTEM_INFO: 101,
                CLIENT_INFO: 102,
                NETWORK_TYPE: 3001,
                TOAST: 1101,
                POPUP: 1102,
                SHAKE: 103,
                INPUT_KEYBOARD: 1112,
                SWITCH_TITLE: 1114,
                HIDE_LOADING: 1115,
                FULL_SCREEN: 1116,
                GAME_ORDER_LOGIN: 1117,
                GAME_ORDER_RECEIVE: 1118,
                GAME_ORDER_SUBMIT: 1119,
                GAME_ASSISTANT: 1122,
                OPEN_ANSWER_ASSISTANT: 1123,
                SCREEN_CAPTURE: 1105,
                EXIT_PAGE: 1108,
                STORE_KEY_VALUE_GET: 703,
                STORE_KEY_VALUE_SET: 704,
                EVENT: 1109,
                PAY_ZFB: 901,
                PAY_ZFB_CALLBACK: 3002,
                ILLEGAL: -1
            },
            appStatus: {
                unknown: 0,
                undownload: 2,
                downloading: 4,
                downloadPause: 8,
                downloadComplete: 16,
                installing: 32,
                latestInstalled: 64,
                oldVerInstalled: 128,
                patchInstalled: 256,
                uncompressable: 512,
                uncompressing: 1024
            },
            resourceType: {
                soft: 0,
                game: 1
            },
            loginType: {
                TAOBAO: 3
            }
        }
    },
    10: function (e, t, n) {
        "use strict";
        var r = n(0),
            o = n(6),
            i = n(4),
            a = n(26),
            s = n(11),
            c = n(18),
            u = "https:" === window.location.protocol ? "https:" : "http:",
            l = u + "//track.uc.cn/",
            f = l + "collect";
        e.exports = function () {
            function e(e) {
                (new Image).src = e
            }

            function t(e) {
                var t = 20;
                if (y.platform) e();
                else var n = window.setInterval(function () {
                    (y.platform || t-- < 0) && (window.clearInterval(n), e())
                }, 50)
            }
            var n = {},
                u = "ppweb-access",
                l = "ppweb-click",
                p = "ppweb-event",
                d = "ppweb-show",
                h = {
                    PAGE: "pg",
                    CLICK: "ck_id",
                    EVENT: "event",
                    SHOW: "show"
                },
                g = a.getPWID(),
                m = {
                    appid: "277c899c7008",
                    app_key: "",
                    lt: "",
                    sid: g,
                    uuid: g,
                    sessionid: g,
                    debug: !1
                },
                y = {
                    platform: ""
                };
            return function () {
                o.isInAndroidClient() ? o.isInWdjOrPPClient(function (e) {
                    e.isInPP ? y.platform = "PP" : e.isInNewWdj ? y.platform = "WDJ" : y.platform = "PP"
                }) : o.isInWdjClient() ? y.platform = "WDJ" : y.platform = s.pf
            }(), n.init = function (e) {
                if ("object" != typeof e) return void console.error("config is not defined");
                e.lt_access && (u = e.lt_access, delete e.lt_access), e.lt_click && (l = e.lt_click, delete e.lt_click), e.lt_event && (p = e.lt_event, delete e.lt_event), e.lt_show && (d = e.lt_show, delete e.lt_show), r.extend(m, e)
            }, n.baseParam = function (e) {
                "object" == typeof e && r.extend(y, e)
            }, n.pageview = function (e, t) {
                m.lt = u, n.jslog(h.PAGE, e, t)
            }, n.click = function (e, t) {
                m.lt = l, n.jslog(h.CLICK, e, t)
            }, n.event = function (e, t) {
                m.lt = p, n.jslog(h.EVENT, e, t)
            }, n.show = function (e, t) {
                m.lt = d, n.jslog(h.SHOW, e, t)
            }, n.jslog = function (n, o, a) {
                var u = {},
                    l = {};
                "event" === n && (u.e_c = "act", u.e_a = o), "object" != typeof a && (a = {}), t(function () {
                    if (r.extend(l, m), r.extend(l, y), r.extend(l, u), r.extend(l, a), l[n] = o, m.debug) console.log(f, l);
                    else {
                        var t = i.queryFormat(f, l);
                        navigator.sendBeacon ? navigator.sendBeacon(c.ucParam(t), "") : "IOS" === s.os && "UC" === s.pf && s.compareVersion(s.getUCVersion(), "10.9.16.801") && window.ucapi ? window.ucapi.invoke("base.checkAPI", {
                            apiList: ["base.sendBeacon"],
                            success: function (n) {
                                "OK" === n.checkResult["base.sendBeacon"] ? window.ucapi.invoke("base.sendBeacon", {
                                    url: c.ucParam(t),
                                    success: function (e) {},
                                    fail: function () {
                                        e(t)
                                    }
                                }) : e(t)
                            },
                            fail: function () {
                                e(t)
                            }
                        }) : e(t)
                    }
                })
            }, n
        }()
    },
    11: function (e, t, n) {
        ! function (t, n) {
            "use strict";
            e.exports = n()
        }(0, function () {
            "use strict";

            function e() {
                for (var e = (+new Date + "").substr(2, 10); e.length < c;) e += parseInt(10 * Math.random(), 10);
                return e
            }

            function t(e, t) {
                if (!e.length) return !1;
                for (var n = e.split("."), r = t.split("."), o = 0, i = r.length > n.length ? n.length : r.length; o < i;) {
                    if (parseInt(n[o], 10) < parseInt(r[o], 10)) return !1;
                    if (parseInt(n[o], 10) > parseInt(r[o], 10)) return !0;
                    ++o
                }
                return !0
            }

            function n(e, t) {
                t = t || location.search;
                var n, r = t.indexOf("#");
                return r > 0 && (t = t.substr(0, r)), n = t.match(new RegExp("[?|&]" + encodeURIComponent(e) + "=([^&]*)(&|$)")), n && "%s" === n[1] ? n[1] : n ? decodeURIComponent(n[1]) : ""
            }
            var r = {},
                o = window.navigator.userAgent.toLowerCase(),
                i = "",
                a = "",
                s = "";
            i = "139" === n("pf") || "140" === n("pf") || "142" === n("pf") ? "UC_MINI" : o.indexOf("dingtalk") >= 0 ? "DINGTALK" : o.indexOf("ucbrowser") >= 0 && -1 === o.indexOf("uws/") ? "UC" : o.indexOf("ucnewsapp") >= 0 || o.indexOf("ucnewsintl") >= 0 ? "UCNEWS" : o.indexOf("uclite") >= 0 ? "UCLITE" : o.indexOf("micromessenger") >= 0 ? "WECHAT" : o.indexOf("youku/") >= 0 ? "YOUKU" : new RegExp("qq/\\d+\\.\\d+\\.\\d+\\.\\d+", "i").test(o) ? "QQ" : new RegExp("weibo__\\d+\\.\\d+\\.\\d+", "i").test(o) ? "WEIBO" : o.indexOf("quark") >= 0 ? "QUARK" : o.indexOf(";fbav/") >= 0 ? "FACEBOOK" : "OTHERS", r.pf = i, r.isIOS = function () {
                if (window.__UC_PARAMS__ && window.__UC_PARAMS__.fr) return "iphone" === window.__UC_PARAMS__.fr;
                if ("UC" === i) try {
                    var e = /&fr=([^&]*)/.exec(window.location.search);
                    if ("android" === e[1]) return !1;
                    if ("iphone" === e[1]) return !0
                } catch (e) {}
                return /\(i[^;]+;( U;)? CPU.+Mac OS X/i.test(o)
            }, a = r.isIOS() ? "IOS" : o.indexOf("android") > 1 ? "ANDROID" : "OTHERS", r.os = a;
            var c = 24;
            return r.getSessionId = function () {
                try {
                    var t = "UEM_SESSION_ID";
                    return s = s || window.localStorage.getItem(t), !s || s.length !== c && 36 !== s.length ? (s = e(), window.localStorage.setItem(t, s), s) : s
                } catch (e) {
                    return ""
                }
            }, r.getSessionId(), r.getUCVersion = function () {
                var e = /ucbrowser\/([^\s]*)/.exec(o);
                if ("UC" === i) try {
                    var t = /&ve=([^&]*)/.exec(window.location.search);
                    t && 2 === t.length && t[1].length > 0 && (e = t)
                } catch (e) {}
                return e && 2 === e.length ? e[1] : ""
            }, r.isUCLatestVersion = function (e) {
                return t(r.getUCVersion(), e)
            }, r.getUCNewsVersion = function () {
                var e = /ucnews(app|intl)\/([^\s]*)/.exec(o);
                return e && 3 === e.length ? e[2] : ""
            }, r.isUCNewsLatestVersion = function (e) {
                return t(r.getUCNewsVersion(), e)
            }, r.compareVersion = t, r.isPC = function () {
                for (var e = window.navigator.userAgent, t = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"), n = !0, r = 0; r < t.length; r++)
                    if (e.indexOf(t[r]) > 0) {
                        n = !1;
                        break
                    }
                return n
            }, r
        })
    },
    12: function (e, t, n) {
        "use strict";
        "object" != typeof localStorage && (localStorage = {});
        var r = n(0);
        n(9), r.storage = {
            set: function (e, t) {
                e && (localStorage[e] = t, r.cookie.set(e, t, {
                    seconds: 43200
                }))
            },
            get: function (e) {
                return e ? localStorage[e] || r.cookie.get(e) || "" : null
            }
        }, e.exports = r
    },
    13: function (e, t, n) {
        "use strict";
        var r = n(3),
            o = n(15),
            i = n(4);
        e.exports = function () {
            function e(e, t, n) {
                var o = {};
                return t || (t = {}), t.ch = e, t.referrer = t.referrer || document.referrer, t.waLogSource = r("body").data("waLogSource"), t.ch_src = t.ch_src || i.getQueryString("ch_src"), o.action = t.action || "", o.webOpt = t, o.appOpt = n, o
            }

            function t(e) {
                var t = !0;
                return e || (t = !1, console.warn("却少 ch 参数！[wa_logger.js]")), t
            }
            var n = {};
            return o.init({
                ppz: 5,
                debug: !1
            }), n.f = {
                _key: "param-f"
            }, n.f.set = function (e) {
                r("body.log-param-f").attr(n.f._key, e)
            }, n.f.get = function () {
                return r("body.log-param-f").attr(n.f._key)
            }, n.f.setBy = function (e, t) {
                e.closest(".log-param-f").attr(n.f._key, t)
            }, n.f.getBy = function (e) {
                return e.closest(".log-param-f").attr(n.f._key)
            }, n.pageview = function (r, i, a) {
                var s = r || n.f.get(),
                    c = e(s, i, a);
                t(s) && o.base.webViewLog(c.action, c.webOpt, c.appOpt)
            }, n.click = function (n, r, i) {
                var a = e(n, r, i);
                t(n) && o.base.webClickLog(a.action, a.webOpt, a.appOpt)
            }, n.download = function (n, r, i) {
                var a = e(n, r, i);
                t(n) && o.base.downloadLog(a.action, a.webOpt, a.appOpt)
            }, n
        }()
    },
    14: function (e, t, n) {
        "use strict";
        n(7), n(23), n(22), n(19), n(24), n(20), n(17), n(25), n(21), e.exports = n(2)
    },
    15: function (e, t, n) {
        "use strict";
        var r = n(8),
            o = n(6),
            i = n(4),
            a = n(14),
            s = n(0),
            c = n(16),
            u = n(10);
        e.exports = function () {
            function e() {
                return {}
            }

            function t() {
                return {
                    action: null,
                    type: null,
                    page: null,
                    ckUrl: null,
                    module: null,
                    keyword: null,
                    appId: null,
                    appName: null,
                    resType: null,
                    versionId: null,
                    position: null,
                    ppCtrPos: null,
                    ppIndex: null,
                    ppCardId: null,
                    ppCardType: null,
                    ppCardGroup: null,
                    recModel: null,
                    cpModel: null,
                    pushId: v,
                    pushAppType: x,
                    ab: w
                }
            }

            function n() {
                b.resType = "soft", _.resType = "soft"
            }

            function l(n, i, a, s) {
                "object" == typeof arguments[1] && (i = "", a = arguments[1], s = arguments[2]), b = e(), _ = t(), a && r.extend(b, a), s && r.extend(_, s), o.isInAndroidClient() && ("click" === y[n] ? _.ckUrl = i : _.action = i, _.type = y[n]), b.action = i, b.type = n
            }

            function f() {
                a.log(_)
            }

            function p() {
                switch (b.type) {
                    case "pageview":
                        u.pageview(b.action, b), g.app_key && c.pageview(b.action, b);
                        break;
                    case "click":
                        u.click(b.action, b), g.app_key && c.click(b.action, b);
                        break;
                    case "download":
                        u.click(b.action, b), g.app_key && c.download(b);
                        break;
                    case "event":
                        u.event(b.action, b), g.app_key && c.event(b.action, b);
                        break;
                    case "show":
                        u.show(b.action, b)
                }
            }

            function d() {
                o.isInAndroidClient() && f(), p()
            }
            var h = {},
                g = {},
                m = {},
                y = {
                    download: "click",
                    pageview: "pageview",
                    click: "click",
                    event: "event",
                    show: "pageview"
                },
                v = i.getQueryString("pushId") || "",
                x = i.getQueryString("pushAppType") || "",
                w = i.getQueryString("ab") || "",
                b = e(),
                _ = t();
            return h.init = function (e) {
                s.extend(g, e), u.init(e), g.app_key && (m.app_key = g.app_key, c.init(m))
            }, h.baseParam = function (e) {
                u.baseParam(e)
            }, h.base = {
                webViewLog: function (e, t, n) {
                    l("pageview", e, t, n), d()
                },
                webClickLog: function (e, t, n) {
                    l("click", e, t, n), d()
                },
                downloadLog: function (e, t, r) {
                    n(), l("download", e, t, r), d()
                },
                eventLog: function (e, t, n) {
                    l("event", e, t, n), d()
                },
                showLog: function (e, t, n) {
                    l("show", e, t, n), d()
                }
            }, h.tolog = h.base, !window.PPWeblog && (window.PPWeblog = h), h
        }()
    },
    16: function (e, t, n) {
        "use strict";
        var r = n(0),
            o = n(10);
        e.exports = function () {
            function e(e) {
                e || console.warn("if you want to see your data on http://yes.sz.uae.uc.cn/web/yes, you must have a app_key of fact。Please check out http://gitlab.alibaba-inc.com/ppweb/pp-weblog/tree/master/src/fact to see more details")
            }

            function t(e) {
                var t = {};
                return "object" != typeof e && (e = {}), r.extend(t, c), r.extend(t, u), r.extend(t, e), t
            }
            var n = {},
                i = 1,
                a = 1,
                s = 1,
                c = {
                    appid: "29d38cf5412c",
                    app_key: "",
                    lt: "fact-common-log"
                },
                u = {
                    entry: "",
                    abtest: "",
                    fact_link_id: ""
                };
            return n.init = function (t) {
                if ("object" != typeof t) return void console.error("config is not defined");
                e(t.app_key), r.extend(c, t)
            }, n.baseParam = function (e) {
                "object" == typeof e && r.extend(u, e)
            }, n.pageview = function (n, r) {
                var i = t(r);
                e(i.app_key), o.pageview(n, i)
            }, n.click = function (n, r) {
                var i = t(r);
                e(i.app_key), o.click(n, i)
            }, n.event = function (n, r) {
                var i = t(r);
                e(i.app_key), o.event(n, i)
            }, n.loading = function (e) {
                i && i-- && n.pageview("act_load", e)
            }, n.ready = function (e) {
                a && a-- && n.pageview("act_ready", e)
            }, n.start = function (e) {
                s && s-- && n.click("act_start", e)
            }, n.pageScene = function (e, t) {
                if (!e) return void console.error("sceneId required.");
                "object" != typeof t && (t = {}), t.fact_node_ext = e, n.pageview("act_scene", t)
            }, n.clickScene = function (e, t) {
                if (!e) return void console.error("sceneId required.");
                "object" != typeof t && (t = {}), t.fact_node_ext = e, n.click("act_scene", t)
            }, n.share = function (e) {
                n.click("act_share", e)
            }, n.download = function (e) {
                n.click("act_download", e)
            }, n.convert = function (e) {
                n.click("act_convert", e)
            }, n
        }()
    },
    17: function (e, t, n) {
        "use strict";
        var r = n(1),
            o = n(2);
        o.toast = function (e) {
            e && o.ApiProtocol(r.methodId.TOAST, {
                message: e
            })
        }, o.popup = function (e) {
            e && o.ApiProtocol(r.methodId.POPUP, {
                type: 2,
                dialStyle: 3,
                content: e,
                contentGravity: 2,
                action: 0
            })
        }, o.popupHtml = function (e) {
            e && o.ApiProtocol(r.methodId.POPUP, {
                type: 1,
                dialStyle: 3,
                content: e,
                contentGravity: 2,
                action: 0
            })
        }, o.alert = function (e, t, n, i) {
            t && (i = i || 1, o.ApiProtocol(r.methodId.POPUP, {
                type: 2,
                dialStyle: 2,
                title: e,
                content: t,
                comfirm: n,
                contentGravity: i,
                action: 0
            }))
        }, o.alertHtml = function (e, t, n, i) {
            t && (i = i || 1, o.ApiProtocol(r.methodId.POPUP, {
                type: 1,
                dialStyle: 2,
                title: e,
                content: t,
                comfirm: n,
                contentGravity: i,
                action: 0
            }))
        }, o.confirm = function (e, t, n, i, a) {
            t && (a = a || 1, o.ApiProtocol(r.methodId.POPUP, {
                type: 2,
                dialStyle: 1,
                title: e,
                content: t,
                comfirm: n,
                cancel: i,
                contentGravity: a,
                action: 0
            }))
        }, o.confirmHtml = function (e, t, n, i, a) {
            t && (a = a || 1, o.ApiProtocol(r.methodId.POPUP, {
                type: 1,
                dialStyle: 1,
                title: e,
                content: t,
                comfirm: n,
                cancel: i,
                contentGravity: a,
                action: 0
            }))
        }, o.closePopup = function () {
            o.ApiProtocol(r.methodId.POPUP, {
                action: 1
            })
        }, e.exports = o
    },
    18: function (e, t, n) {
        ! function (t, r) {
            "use strict";
            e.exports = r(n(11))
        }(0, function (e) {
            "use strict";

            function t(e) {
                var t;
                return null == e ? t = String(e) : (t = Object.prototype.toString.call(e).toLowerCase(), t = t.substring(8, t.length - 1)), t
            }

            function n(e, n, r) {
                var o, i, a;
                if ("object" == typeof e)
                    if (a = t(e), r = r || e, "array" === a || "arguments" === a || "nodelist" === a) {
                        for (o = 0, i = e.length; o < i; o++)
                            if (!1 === n.call(r, e[o], o, e)) return
                    } else
                        for (o in e)
                            if (e.hasOwnProperty(o) && !1 === n.call(r, e[o], o, e)) return
            }

            function r() {
                var e = {};
                return n(arguments, function (t) {
                    n(t, function (t, n) {
                        e[n] = t
                    })
                }), e
            }

            function o(e, t) {
                t = t || location.search;
                var n, r = t.indexOf("#");
                return r > 0 && (t = t.substr(0, r)), n = t.match(new RegExp("[?|&]" + encodeURIComponent(e) + "=([^&]*)(&|$)")), n && "%s" === n[1] ? n[1] : n ? decodeURIComponent(n[1]) : ""
            }

            function i(e, t) {
                var n, r;
                return t && (n = e.indexOf("#"), n >= 0 ? (r = e.substr(n), e = e.substr(0, n)) : r = "", e += (e.indexOf("?") < 0 ? "?" : "&") + t.replace(/^[?|&]+/, "") + r), e
            }

            function a(e) {
                e = (e || location.queryString).replace(/^\?/, "");
                var t, n, r = e.split("&"),
                    o = {};
                if (r.length)
                    for (t = 0; t < r.length; t++) n = r[t].split("="), 2 === n.length && ("%s" === n[1] ? o[n[0]] = n[1] : o[n[0]] = decodeURIComponent(n[1]));
                return o
            }

            function s(e, o) {
                var i, s, c, u, l = [],
                    f = "",
                    p = "string" === t(o);
                return p && (s = o.indexOf("#"), s >= 0 && (f = o.substr(s), o = o.substr(0, s)), (c = o.indexOf("?")) >= 0 && (u = a(o.substr(c)), e = r(u, e), o = o.substr(0, c))), n(e, function (e, t) {
                    l.push(encodeURIComponent(t) + "=" + encodeURIComponent(void 0 === e ? "" : e))
                }), i = l.join("&").replace(/%20/g, "+"), p ? o + "?" + i + f : i
            }

            function c() {
                try {
                    return {
                        __dt: +new Date - window.performance.timing.navigationStart,
                        __t: +new Date
                    }
                } catch (e) {
                    return {
                        __t: +new Date
                    }
                }
            }

            function u(e, t) {
                for (var n in t) "Content-Type" !== n && e.setRequestHeader(n, t[n])
            }

            function l(e) {
                e = e || {};
                var i, a = e.type || "GET",
                    l = e.url || "",
                    f = e.success,
                    p = e.error || function () {},
                    d = e.config || {},
                    m = d.forbidExtendRequestParams ? e.data : r(c(), y, e.data),
                    v = new XMLHttpRequest,
                    x = Date.now();
                v.onreadystatechange = function () {
                    var e;
                    if (4 === v.readyState)
                        if (200 === v.status) {
                            try {
                                e = JSON.parse(v.responseText)
                            } catch (e) {
                                return v.customError = e, v.parseError = !0, v.xtime = Date.now() - x, v.statechange = v.status, v.errortime = o("__t", l), void p(v)
                            }
                            h && h(e), f && f(e)
                        } else v.xtime = Date.now() - x, v.statechange = v.status, v.errortime = o("__t", l), p(v)
                }, v.timeout = d.timeout || 3e4, a = "POST" === a.toUpperCase() ? "POST" : "GET";
                try {
                    if ("POST" === a) {
                        if (n(m, function (e) {
                                if ("file" === t(e)) return i = new FormData, !1
                            }), l = g(l), v.open(a, l, !0), i) n(m, function (e, n) {
                            n && void 0 !== e && i.append(n, "array" === t(e) ? e.join() : e)
                        });
                        else {
                            var w;
                            d.headers && "application/json" === (w = d.headers["Content-Type"]) ? (i = JSON.stringify(m), v.setRequestHeader("Content-Type", w)) : (i = s(m), v.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"))
                        }
                        v.setRequestHeader("X-Requested-With", "XMLHttpRequest")
                    } else l = g(s(m, l)), v.open(a, l, !0);
                    v.customRequestUrl = l, d.headers && u(v, d.headers), v.send(i)
                } catch (e) {
                    console.error("ajax error", e)
                }
            }

            function f(e) {
                return function (t, n, r, o, i) {
                    l({
                        type: e,
                        url: t,
                        data: n,
                        success: r,
                        error: o,
                        config: i
                    })
                }
            }

            function p(e, t) {
                var n = 1,
                    r = setTimeout(function () {
                        n = d(n, t, !1), r = null
                    }, v);
                e.onload = e.onerror = function () {
                    n = d(n, t, !0), r && (clearTimeout(r), r = null)
                }
            }

            function d(e, t, n) {
                return e && t && (t(n), --e), e
            }
            var h, g, m = {},
                y = {};
            g = function () {
                var t, n, r, a, c, u, l, f, p, d = 0,
                    h = {},
                    g = {},
                    m = -1 !== window.navigator.userAgent.toLowerCase().indexOf("ucnewsapp"),
                    y = "UCLITE" === e.pf,
                    v = "UC" === e.pf;
                if (y || m || "wp" === o("fr") || "139" === o("pf") || "140" === o("pf") || v)
                    for (c = o("uc_param_str"), p = c.length - c.length % 2; d < p;) u = c.substr(d, 2), l = o(u), l.length > 0 && (h[u] = l), d += 2;
                return n = o("entry").replace(/\s/g, ""), n && (g.entry = h.entry = n), r = o("origin").replace(/\s/g, ""), r && (g.origin = h.origin = r), a = o("forcela").replace(/\s/g, ""), a && (g.forcela = h.forcela = a), t = s(h), f = s(g),
                    function (e, n) {
                        return e = n ? i(e, f) : i(e, t), o("uc_param_str", e) || (e = i(e, "uc_param_str=dsdnfrpfbivessbtbmnilauputogpintnwchmtsvcppr")), e
                    }
            }(), m.ping = function (e, t, n) {
                var o = new Image,
                    i = r(c(), y, t);
                p(o, n), o.src = g(s(i, e))
            };
            var v = 2e3;
            return m.baseParam = function (e, n) {
                if ("string" === t(e)) {
                    if (1 === arguments.length) return y[e];
                    y[e] = n
                } else "object" === t(e) && (y = r(y, e))
            }, m.baseSuccess = function (e) {
                "function" === t(e) && (h = e)
            }, m.redirect = function (e) {
                if (e) {
                    if (!/http[s]:\/\//.test(e)) {
                        var t = document.createElement("a");
                        t.href = e, e = t.href, t = void 0
                    }
                    location.href = g(s(y, e))
                }
            }, m.refreshUCNewsNotUtDs = function () {
                !("UCNEWS" === e.pf && o("uc_param_str").length > 0) || o("ut").length > 0 || o("ds").length > 0 || window.localStorage.getItem("netwrok_refreshUCNewsNotUtDs") || setTimeout(function () {
                    window.localStorage.setItem("netwrok_refreshUCNewsNotUtDs", !0), window.location.reload()
                }, 300)
            }, m.query = o, m.parseObject = a, m.parseQuery = s, m.ucParam = g, m.ajax = l, m.get = f("GET"), m.post = f("POST"), m
        })
    },
    19: function (e, t, n) {
        "use strict";
        var r = n(1),
            o = n(2);
        o.checkAppStatus = function (e, t, n, i, a, s) {
            var c = {
                key_app_id: e,
                key_version_id: t,
                key_package_name: n,
                key_version_code: i,
                key_res_type: a
            };
            o.ApiProtocol(r.methodId.APP_CHECK_STATUS, c, s)
        }, o.downloadApp = function (e, t, n, i, a, s, c, u, l, f, p, d, h) {
            void 0 === d && (d = {});
            var g = {
                key_app_id: e,
                key_app_name: t,
                key_webapp_position: void 0 === n ? 0 : n,
                key_res_type: i,
                key_download_url: a,
                key_icon_url: s,
                key_res_id: c,
                key_version_name: u,
                key_version_code: l,
                key_package_name: f,
                key_app_size: p,
                key_ext_data: d || {}
            };
            "object" == typeof h && (g.key_vurl = h.vurl || "", g.key_curl = h.curl || "", g.key_durl = h.dfUrl || "", g.key_iurl = h.iurl || "", g.key_feedback_param = h.feedbackParameter || ""), o.ApiProtocol(r.methodId.APP_DOWNLOAD, g)
        }, o.updateApp = function (e, t, n, i, a, s, c, u, l, f, p, d) {
            var h = {
                key_app_id: e,
                key_app_name: t,
                key_webapp_position: void 0 === n ? 0 : n,
                key_res_type: i,
                key_download_url: a,
                key_icon_url: s,
                key_res_id: c,
                key_version_name: u,
                key_version_code: l,
                key_package_name: f,
                key_app_size: p,
                key_ext_data: d || {}
            };
            o.ApiProtocol(r.methodId.APP_DOWNLOAD, h)
        }, o.pauseDownloadApp = function (e, t, n) {
            var i = {
                key_app_id: n,
                key_res_type: e,
                key_version_id: t
            };
            o.ApiProtocol(r.methodId.APP_PAUSE_DOWNLOAD, i)
        }, o.continueDownloadApp = function (e, t, n) {
            var i = {
                key_app_id: n,
                key_res_type: e,
                key_version_id: t
            };
            o.ApiProtocol(r.methodId.APP_CONTINUE_DOWNLOAD, i)
        }, o.uncompressAppDpk = function (e, t) {
            var n = {
                key_res_type: e,
                key_version_id: t
            };
            o.ApiProtocol(r.methodId.APP_DPK_UNCOMPRESS, n)
        }, o.installApp = function (e, t, n, i) {
            var a = {
                key_app_id: n,
                key_res_type: e,
                key_version_id: t
            };
            o.ApiProtocol(r.methodId.APP_INSTALL, a, i)
        }, o.openApp = function (e) {
            o.ApiProtocol(r.methodId.APP_OPEN, {
                key_package_name: e
            })
        }, o.openAppDetail = function (e, t, n, i, a) {
            var s = {
                key_app_id: e,
                key_res_name: t,
                key_res_type: n,
                key_position: i,
                key_from: a
            };
            o.ApiProtocol(r.methodId.APP_DETAIL, s)
        }, o.checkCollectionAppStatus = function (e, t, n) {
            var i = {
                key_app_id: e,
                key_res_type: t
            };
            o.ApiProtocol(r.methodId.APP_COLLECTION_STATUS, i, n)
        }, o.collectApp = function (e, t, n, i) {
            var a = {
                key_app_id: e,
                key_res_type: t,
                key_collection_action: n
            };
            o.ApiProtocol(r.methodId.APP_COLLECTION_ACTION, a, i)
        }, o.listAppInstalled = function (e) {
            o.ApiProtocol(r.methodId.APP_LIST_INSTALLED, {}, e)
        }, o.listAppsUpdate = function (e) {
            o.ApiProtocol(r.methodId.APP_UPDATE_LIST, {}, e)
        }, o.getAppInstalledAllM9 = function (e) {
            o.ApiProtocol(r.methodId.APP_INSTALLED_ALL_M9, {}, e)
        }, o.ignoreAppUpdate = function (e, t) {
            o.ApiProtocol(r.methodId.APP_IGNORE_UPDATE, {
                key_package_name: e,
                key_is_ignore: !0
            }, t)
        }, o.ignoreAppUpdateCancel = function (e, t) {
            o.ApiProtocol(r.methodId.APP_IGNORE_UPDATE, {
                key_package_name: e,
                key_is_ignore: !1
            }, t)
        }, o.listIgnoreUpdate = function (e) {
            o.ApiProtocol(r.methodId.APP_IGNORE_UPDATE_LIST, {}, e)
        }, e.exports = o
    },
    2: function (e, t, n) {
        "use strict";
        void 0 === window.console && (window.console = {
            log: function () {},
            warn: function () {}
        });
        var r = n(1),
            o = function () {
                var e = {},
                    t = window.ppAJSClient;
                e._methodId = r.methodId, e._appStatus = r.appStatus, e._resourceType = r.resourceType, e._loginType = r.loginType, e.available = e.avaliable = function () {
                    return void 0 !== t
                }, e.ApiProtocol = function (e, n, r) {
                    var o = r;
                    if (void 0 === t || !t.callAndroidMethod) return console.warn("ppAJSClient not exist or ppAJSClient.callAndroidMethod is undefined. methodId:" + e), void console.log(n);
                    if ("function" == typeof r) {
                        void 0 === window.pca && (window.pca = {});
                        var i = parseInt(1e4 * Math.random()) + "" + parseInt(1e4 * Math.random());
                        o = "callback_" + e + "_" + (new Date).getTime() + i, window.pca[o] = r, o = "pca." + o
                    }
                    for (var a in n) !n.hasOwnProperty(a) || null !== n[a] && void 0 !== n[a] && "" !== n[a] || delete n[a];
                    var s = {
                        key_method_id: e,
                        key_js_callback: 1,
                        key_callback_method: o || "",
                        key_data: n,
                        key_tpdata: ""
                    };
                    t.callAndroidMethod(JSON.stringify(s))
                };
                var n = [],
                    o = [];
                return e.listener = {
                    set: function (e, t) {
                        n[e] = t
                    },
                    all: function (e) {
                        o.push(e)
                    }
                }, "object" == typeof t && (t.callFromAndroid = function (e) {
                    try {
                        var t = parseInt(e.key_method_id);
                        if ("function" == typeof n[t] && n[t](e), "object" == typeof o)
                            for (var r = 0, i = o.length; r < i; r++) o[r](e)
                    } catch (e) {
                        console.warn("e:" + e)
                    }
                }), e
            }();
        o.available() && o.ApiProtocol(r.methodId.HIDE_LOADING), window.Pca = o, void 0 === window.pca && (window.pca = o), e.exports = o
    },
    20: function (e, t, n) {
        "use strict";
        var r = n(1),
            o = n(2);
        o.checkLoginStatus = function (e) {
            o.ApiProtocol(r.methodId.LOGIN_CHECK_STATUS, {}, e)
        }, o.login = function (e, t, n, i, a, s) {
            var c = {
                type: e,
                title: t,
                content: n,
                cancel: i,
                confirm: a
            };
            o.ApiProtocol(r.methodId.LOGIN, c, s)
        }, o.loginAndBindTaobao = function (e, t, n, i, a) {
            var s = {
                type: r.loginType.TAOBAO,
                title: e,
                content: t,
                cancel: n,
                confirm: i
            };
            o.ApiProtocol(r.methodId.LOGIN_BIND_TAOBAO, s, a)
        }, e.exports = o
    },
    21: function (e, t, n) {
        "use strict";
        var r = n(1),
            o = n(2);
        o.openJifenbaoPage = function () {
            o.ApiProtocol(r.methodId.JIFENBAO_PAGE, {
                caller: "PP"
            })
        }, o.orderGame = function (e, t, n) {
            o.applyGameLoginAndOrder(e, t, 1, n)
        }, o.applyGameLoginAndOrder = function (e, t, n, i) {
            o.ApiProtocol(r.methodId.GAME_ORDER_LOGIN, {
                gameid: e,
                url: t,
                order: !!n
            }, i)
        }, o.submitGameInfo = function (e, t) {
            o.ApiProtocol(r.methodId.GAME_ORDER_SUBMIT, {
                gameid: e
            }, t)
        }, o.callGameAssistant = function () {
            o.ApiProtocol(r.methodId.GAME_ASSISTANT)
        }, o.openAnswerAssistant = function (e) {
            o.ApiProtocol(r.methodId.OPEN_ANSWER_ASSISTANT, null, e)
        }, e.exports = o
    },
    22: function (e, t, n) {
        "use strict";
        var r = n(1),
            o = n(2);
        o.log = function (e, t) {
            if ("object" != typeof e) return console.warn('[log] param "data" must be "object", now is ' + typeof e), void console.log(e);
            !e.type && (e.type = "click");
            var n = {
                key_log_logtype: e.type,
                key_log_action: e.action,
                key_log_app_id: e.appId,
                key_app_name: e.appName,
                key_log_module: e.module,
                key_log_page: e.page,
                key_log_restype: e.resType,
                key_log_ck_url: e.ckUrl,
                key_log_position: e.position,
                key_log_keyword: e.keyword,
                key_log_packid: e.versionId,
                key_log_ex_a: e.exa,
                key_log_ex_b: e.exb,
                key_log_ex_c: e.exc,
                key_log_ex_d: e.exd,
                key_tpdata: e.tpData,
                key_log_ctrPos: e.ppCtrPos,
                key_log_index: e.ppIndex,
                key_log_cardId: e.ppCardId,
                key_log_cardType: e.ppCardType,
                key_log_cardGroup: e.ppCardGroup,
                key_log_pushId: e.pushId,
                key_log_pushAppType: e.pushAppType,
                key_log_recModel: e.recModel,
                key_log_cpModel: e.cpModel,
                key_log_ab: e.ab
            };
            o.ApiProtocol(r.methodId.LOG, n, t)
        }, e.exports = o
    },
    23: function (e, t, n) {
        "use strict";
        var r = n(1),
            o = n(2);
        o.callZFBPay = function (e, t) {
            o.ApiProtocol(r.methodId.PAY_ZFB, {
                payInfo: e.payInfo
            }, t)
        }, e.exports = o
    },
    24: function (e, t, n) {
        "use strict";
        var r = n(1),
            o = n(2);
        o.share = function (e, t, n, i, a, s, c) {
            var u = {
                title: e,
                content: t,
                url: n,
                imgUrl: i,
                id: a,
                name: s
            };
            o.ApiProtocol(r.methodId.SHARE, u, c)
        }, o.shareMoments = function (e, t, n, i, a, s, c) {
            var u = {
                title: e,
                content: t,
                url: n,
                imgUrl: i,
                id: a,
                name: s
            };
            o.ApiProtocol(r.methodId.SHARE_MOMENTS, u, c)
        }, o.shareSys = {
            all: function (e, t) {
                o.ApiProtocol(r.methodId.SHARE_SYS, e, t)
            },
            timeLine: function (e, t) {
                e.packageName = "com.tencent.mm", e.componentName = "com.tencent.mm.ui.tools.ShareToTimeLineUI", o.ApiProtocol(r.methodId.SHARE_SYS, e, t)
            },
            weixin: function (e, t) {
                e.packageName = "com.tencent.mm", e.componentName = "com.tencent.mm.ui.tools.ShareImgUI", o.ApiProtocol(r.methodId.SHARE_SYS, e, t)
            },
            qq: function (e, t) {
                e.packageName = "com.tencent.mobileqq", e.componentName = "com.tencent.mobileqq.activity.JumpActivity", o.ApiProtocol(r.methodId.SHARE_SYS, e, t)
            },
            weibo: function (e, t) {
                e.packageName = "com.sina.weibo", e.componentName = "com.sina.weibo.ComposerDispatchActivity", o.ApiProtocol(r.methodId.SHARE_SYS, e, t)
            }
        }, e.exports = o
    },
    25: function (e, t, n) {
        "use strict";
        var r = n(1),
            o = n(2);
        o.getKeyValue = function (e, t) {
            o.ApiProtocol(r.methodId.STORE_KEY_VALUE_GET, {
                key: e,
                valueType: 0
            }, t)
        }, o.setKeyValue = function (e, t, n) {
            o.ApiProtocol(r.methodId.STORE_KEY_VALUE_SET, {
                key: e,
                valueType: 0,
                stringValue: t
            }, n)
        }, e.exports = o
    },
    254: function (e, t, n) {
        "use strict";
        var r = n(3),
            o = n(13);
        r(function () {
            function e() {
                setTimeout(function () {
                    t++, t > 2 && (t = 0), r(".network-report").find(".item").hide().eq(t).css("display", "block"), e()
                }, 3e3)
            }
            var t = 0;
            e(), r(".links-more").click(function () {
                var e = r(this),
                    t = e.parent().find(".links-mobile");
                e.hasClass("links-arrow-down") ? (e.removeClass("links-arrow-down").addClass("links-arrow-up"), t.removeClass("links-short")) : (e.removeClass("links-arrow-up").addClass("links-arrow-down"), t.addClass("links-short"))
            });
            var n = r(".comeon-uc.log-param-f"),
                i = n.attr("param-f");
            n.attr("param-f", o.f.get() + "_" + i)
        })
    },
    26: function (e, t, n) {
        "use strict";
        var r = n(12).storage;
        e.exports = function () {
            function e(e) {
                r.set(n, e)
            }
            var t = {},
                n = "_pwid",
                o = [23, 11, 29, 12, 27, 15, 18];
            return t.generatePWID = function () {
                var e = ("00000000" + (new Date).getTime() + (Math.random() + "00000000").substr(2, 10)).split("");
                for (var t in o) e[t] = e[o[t]];
                return e.join("") + "3"
            }, t.checkPWID = function (e) {
                if (!e || 32 !== e.length || "3" !== e[31]) return !1;
                var t = e.split("");
                for (var n in o)
                    if (t.hasOwnProperty(n) && t[n] !== t[o[n]]) return !1;
                return !0
            }, t.getPWID = function () {
                if ("object" != typeof window) return t.generatePWID();
                var o = r.get(n);
                return t.checkPWID(o) || (o = t.generatePWID(), e(o)), o
            }, t
        }()
    },
    27: function (e, t, n) {
        var r = n(5);
        ! function (e) {
            function t(t, n, r) {
                var o = e.Event(n);
                return e(t).trigger(o, r), !o.isDefaultPrevented()
            }

            function n(e, n, r, o) {
                if (e.global) return t(n || x, r, o)
            }

            function r(t) {
                t.global && 0 == e.active++ && n(t, null, "ajaxStart")
            }

            function o(t) {
                t.global && !--e.active && n(t, null, "ajaxStop")
            }

            function i(e, t) {
                var r = t.context;
                if (!1 === t.beforeSend.call(r, e, t) || !1 === n(t, r, "ajaxBeforeSend", [e, t])) return !1;
                n(t, r, "ajaxSend", [e, t])
            }

            function a(e, t, r, o) {
                var i = r.context;
                r.success.call(i, e, "success", t), o && o.resolveWith(i, [e, "success", t]), n(r, i, "ajaxSuccess", [t, r, e]), c("success", t, r)
            }

            function s(e, t, r, o, i) {
                var a = o.context;
                o.error.call(a, r, t, e), i && i.rejectWith(a, [r, t, e]), n(o, a, "ajaxError", [r, o, e || t]), c(t, r, o)
            }

            function c(e, t, r) {
                var i = r.context;
                r.complete.call(i, t, e), n(r, i, "ajaxComplete", [t, r]), o(r)
            }

            function u(e, t, n) {
                if (n.dataFilter == l) return e;
                var r = n.context;
                return n.dataFilter.call(r, e, t)
            }

            function l() {}

            function f(e) {
                return e && (e = e.split(";", 2)[0]), e && (e == A ? "html" : e == T ? "json" : b.test(e) ? "script" : _.test(e) && "xml") || "text"
            }

            function p(e, t) {
                return "" == t ? e : (e + "&" + t).replace(/[&?]{1,2}/, "?")
            }

            function d(t) {
                t.processData && t.data && "string" != e.type(t.data) && (t.data = e.param(t.data, t.traditional)), !t.data || t.type && "GET" != t.type.toUpperCase() && "jsonp" != t.dataType || (t.url = p(t.url, t.data), t.data = void 0)
            }

            function h(t, n, r, o) {
                return e.isFunction(n) && (o = r, r = n, n = void 0), e.isFunction(r) || (o = r, r = void 0), {
                    url: t,
                    data: n,
                    success: r,
                    dataType: o
                }
            }

            function g(t, n, r, o) {
                var i, a = e.isArray(n),
                    s = e.isPlainObject(n);
                e.each(n, function (n, c) {
                    i = e.type(c), o && (n = r ? o : o + "[" + (s || "object" == i || "array" == i ? n : "") + "]"), !o && a ? t.add(c.name, c.value) : "array" == i || !r && "object" == i ? g(t, c, r, n) : t.add(n, c)
                })
            }
            var m, y, v = +new Date,
                x = window.document,
                w = /<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,
                b = /^(?:text|application)\/javascript/i,
                _ = /^(?:text|application)\/xml/i,
                T = "application/json",
                A = "text/html",
                E = /^\s*$/,
                S = x.createElement("a");
            S.href = window.location.href, e.active = 0, e.ajaxJSONP = function (t, n) {
                if (!("type" in t)) return e.ajax(t);
                var r, o, c = t.jsonpCallback,
                    u = (e.isFunction(c) ? c() : c) || "Zepto" + v++,
                    l = x.createElement("script"),
                    f = window[u],
                    p = function (t) {
                        e(l).triggerHandler("error", t || "abort")
                    },
                    d = {
                        abort: p
                    };
                return n && n.promise(d), e(l).on("load error", function (i, c) {
                    clearTimeout(o), e(l).off().remove(), "error" != i.type && r ? a(r[0], d, t, n) : s(null, c || "error", d, t, n), window[u] = f, r && e.isFunction(f) && f(r[0]), f = r = void 0
                }), !1 === i(d, t) ? (p("abort"), d) : (window[u] = function () {
                    r = arguments
                }, l.src = t.url.replace(/\?(.+)=\?/, "?$1=" + u), x.head.appendChild(l), t.timeout > 0 && (o = setTimeout(function () {
                    p("timeout")
                }, t.timeout)), d)
            }, e.ajaxSettings = {
                type: "GET",
                beforeSend: l,
                success: l,
                error: l,
                complete: l,
                context: null,
                global: !0,
                xhr: function () {
                    return new window.XMLHttpRequest
                },
                accepts: {
                    script: "text/javascript, application/javascript, application/x-javascript",
                    json: T,
                    xml: "application/xml, text/xml",
                    html: A,
                    text: "text/plain"
                },
                crossDomain: !1,
                timeout: 0,
                processData: !0,
                cache: !0,
                dataFilter: l
            }, e.ajax = function (t) {
                var n, o, c = e.extend({}, t || {}),
                    h = e.Deferred && e.Deferred();
                for (m in e.ajaxSettings) void 0 === c[m] && (c[m] = e.ajaxSettings[m]);
                r(c), c.crossDomain || (n = x.createElement("a"), n.href = c.url, n.href = n.href, c.crossDomain = S.protocol + "//" + S.host != n.protocol + "//" + n.host), c.url || (c.url = window.location.toString()), (o = c.url.indexOf("#")) > -1 && (c.url = c.url.slice(0, o)), d(c);
                var g = c.dataType,
                    v = /\?.+=\?/.test(c.url);
                if (v && (g = "jsonp"), !1 !== c.cache && (t && !0 === t.cache || "script" != g && "jsonp" != g) || (c.url = p(c.url, "_=" + Date.now())), "jsonp" == g) return v || (c.url = p(c.url, c.jsonp ? c.jsonp + "=?" : !1 === c.jsonp ? "" : "callback=?")), e.ajaxJSONP(c, h);
                var w, b = c.accepts[g],
                    _ = {},
                    T = function (e, t) {
                        _[e.toLowerCase()] = [e, t]
                    },
                    A = /^([\w-]+:)\/\//.test(c.url) ? RegExp.$1 : window.location.protocol,
                    k = c.xhr(),
                    C = k.setRequestHeader;
                if (h && h.promise(k), c.crossDomain || T("X-Requested-With", "XMLHttpRequest"), T("Accept", b || "*/*"), (b = c.mimeType || b) && (b.indexOf(",") > -1 && (b = b.split(",", 2)[0]), k.overrideMimeType && k.overrideMimeType(b)), (c.contentType || !1 !== c.contentType && c.data && "GET" != c.type.toUpperCase()) && T("Content-Type", c.contentType || "application/x-www-form-urlencoded"), c.headers)
                    for (y in c.headers) T(y, c.headers[y]);
                if (k.setRequestHeader = T, k.onreadystatechange = function () {
                        if (4 == k.readyState) {
                            k.onreadystatechange = l, clearTimeout(w);
                            var t, n = !1;
                            if (k.status >= 200 && k.status < 300 || 304 == k.status || 0 == k.status && "file:" == A) {
                                if (g = g || f(c.mimeType || k.getResponseHeader("content-type")), "arraybuffer" == k.responseType || "blob" == k.responseType) t = k.response;
                                else {
                                    t = k.responseText;
                                    try {
                                        t = u(t, g, c), "script" == g ? (0, eval)(t) : "xml" == g ? t = k.responseXML : "json" == g && (t = E.test(t) ? null : e.parseJSON(t))
                                    } catch (e) {
                                        n = e
                                    }
                                    if (n) return s(n, "parsererror", k, c, h)
                                }
                                a(t, k, c, h)
                            } else s(k.statusText || null, k.status ? "error" : "abort", k, c, h)
                        }
                    }, !1 === i(k, c)) return k.abort(), s(null, "abort", k, c, h), k;
                var P = !("async" in c) || c.async;
                if (k.open(c.type, c.url, P, c.username, c.password), c.xhrFields)
                    for (y in c.xhrFields) k[y] = c.xhrFields[y];
                for (y in _) C.apply(k, _[y]);
                return c.timeout > 0 && (w = setTimeout(function () {
                    k.onreadystatechange = l, k.abort(), s(null, "timeout", k, c, h)
                }, c.timeout)), k.send(c.data ? c.data : null), k
            }, e.get = function () {
                return e.ajax(h.apply(null, arguments))
            }, e.post = function () {
                var t = h.apply(null, arguments);
                return t.type = "POST", e.ajax(t)
            }, e.getJSON = function () {
                var t = h.apply(null, arguments);
                return t.dataType = "json", e.ajax(t)
            }, e.fn.load = function (t, n, r) {
                if (!this.length) return this;
                var o, i = this,
                    a = t.split(/\s/),
                    s = h(t, n, r),
                    c = s.success;
                return a.length > 1 && (s.url = a[0], o = a[1]), s.success = function (t) {
                    i.html(o ? e("<div>").html(t.replace(w, "")).find(o) : t), c && c.apply(i, arguments)
                }, e.ajax(s), this
            };
            var k = encodeURIComponent;
            e.param = function (t, n) {
                var r = [];
                return r.add = function (t, n) {
                    e.isFunction(n) && (n = n()), null == n && (n = ""), this.push(k(t) + "=" + k(n))
                }, g(r, t, n), r.join("&").replace(/%20/g, "+")
            }
        }(r), e.exports = r
    },
    28: function (e, t, n) {
        var r = n(5);
        ! function (e) {
            function t(e) {
                return e._zid || (e._zid = p++)
            }

            function n(e, n, i, a) {
                if (n = r(n), n.ns) var s = o(n.ns);
                return (m[t(e)] || []).filter(function (e) {
                    return e && (!n.e || e.e == n.e) && (!n.ns || s.test(e.ns)) && (!i || t(e.fn) === t(i)) && (!a || e.sel == a)
                })
            }

            function r(e) {
                var t = ("" + e).split(".");
                return {
                    e: t[0],
                    ns: t.slice(1).sort().join(" ")
                }
            }

            function o(e) {
                return new RegExp("(?:^| )" + e.replace(" ", " .* ?") + "(?: |$)")
            }

            function i(e, t) {
                return e.del && !v && e.e in x || !!t
            }

            function a(e) {
                return w[e] || v && x[e] || e
            }

            function s(n, o, s, c, l, p, d) {
                var h = t(n),
                    g = m[h] || (m[h] = []);
                o.split(/\s/).forEach(function (t) {
                    if ("ready" == t) return e(document).ready(s);
                    var o = r(t);
                    o.fn = s, o.sel = l, o.e in w && (s = function (t) {
                        var n = t.relatedTarget;
                        if (!n || n !== this && !e.contains(this, n)) return o.fn.apply(this, arguments)
                    }), o.del = p;
                    var h = p || s;
                    o.proxy = function (e) {
                        if (e = u(e), !e.isImmediatePropagationStopped()) {
                            e.data = c;
                            var t = h.apply(n, e._args == f ? [e] : [e].concat(e._args));
                            return !1 === t && (e.preventDefault(), e.stopPropagation()), t
                        }
                    }, o.i = g.length, g.push(o), "addEventListener" in n && n.addEventListener(a(o.e), o.proxy, i(o, d))
                })
            }

            function c(e, r, o, s, c) {
                var u = t(e);
                (r || "").split(/\s/).forEach(function (t) {
                    n(e, t, o, s).forEach(function (t) {
                        delete m[u][t.i], "removeEventListener" in e && e.removeEventListener(a(t.e), t.proxy, i(t, c))
                    })
                })
            }

            function u(t, n) {
                if (n || !t.isDefaultPrevented) {
                    n || (n = t), e.each(A, function (e, r) {
                        var o = n[e];
                        t[e] = function () {
                            return this[r] = b, o && o.apply(n, arguments)
                        }, t[r] = _
                    });
                    try {
                        t.timeStamp || (t.timeStamp = Date.now())
                    } catch (e) {}(n.defaultPrevented !== f ? n.defaultPrevented : "returnValue" in n ? !1 === n.returnValue : n.getPreventDefault && n.getPreventDefault()) && (t.isDefaultPrevented = b)
                }
                return t
            }

            function l(e) {
                var t, n = {
                    originalEvent: e
                };
                for (t in e) T.test(t) || e[t] === f || (n[t] = e[t]);
                return u(n, e)
            }
            var f, p = 1,
                d = Array.prototype.slice,
                h = e.isFunction,
                g = function (e) {
                    return "string" == typeof e
                },
                m = {},
                y = {},
                v = "onfocusin" in window,
                x = {
                    focus: "focusin",
                    blur: "focusout"
                },
                w = {
                    mouseenter: "mouseover",
                    mouseleave: "mouseout"
                };
            y.click = y.mousedown = y.mouseup = y.mousemove = "MouseEvents", e.event = {
                add: s,
                remove: c
            }, e.proxy = function (n, r) {
                var o = 2 in arguments && d.call(arguments, 2);
                if (h(n)) {
                    var i = function () {
                        return n.apply(r, o ? o.concat(d.call(arguments)) : arguments)
                    };
                    return i._zid = t(n), i
                }
                if (g(r)) return o ? (o.unshift(n[r], n), e.proxy.apply(null, o)) : e.proxy(n[r], n);
                throw new TypeError("expected function")
            }, e.fn.bind = function (e, t, n) {
                return this.on(e, t, n)
            }, e.fn.unbind = function (e, t) {
                return this.off(e, t)
            }, e.fn.one = function (e, t, n, r) {
                return this.on(e, t, n, r, 1)
            };
            var b = function () {
                    return !0
                },
                _ = function () {
                    return !1
                },
                T = /^([A-Z]|returnValue$|layer[XY]$|webkitMovement[XY]$)/,
                A = {
                    preventDefault: "isDefaultPrevented",
                    stopImmediatePropagation: "isImmediatePropagationStopped",
                    stopPropagation: "isPropagationStopped"
                };
            e.fn.delegate = function (e, t, n) {
                return this.on(t, e, n)
            }, e.fn.undelegate = function (e, t, n) {
                return this.off(t, e, n)
            }, e.fn.live = function (t, n) {
                return e(document.body).delegate(this.selector, t, n), this
            }, e.fn.die = function (t, n) {
                return e(document.body).undelegate(this.selector, t, n), this
            }, e.fn.on = function (t, n, r, o, i) {
                var a, u, p = this;
                return t && !g(t) ? (e.each(t, function (e, t) {
                    p.on(e, n, r, t, i)
                }), p) : (g(n) || h(o) || !1 === o || (o = r, r = n, n = f), o !== f && !1 !== r || (o = r, r = f), !1 === o && (o = _), p.each(function (f, p) {
                    i && (a = function (e) {
                        return c(p, e.type, o), o.apply(this, arguments)
                    }), n && (u = function (t) {
                        var r, i = e(t.target).closest(n, p).get(0);
                        if (i && i !== p) return r = e.extend(l(t), {
                            currentTarget: i,
                            liveFired: p
                        }), (a || o).apply(i, [r].concat(d.call(arguments, 1)))
                    }), s(p, t, o, r, n, u || a)
                }))
            }, e.fn.off = function (t, n, r) {
                var o = this;
                return t && !g(t) ? (e.each(t, function (e, t) {
                    o.off(e, n, t)
                }), o) : (g(n) || h(r) || !1 === r || (r = n, n = f), !1 === r && (r = _), o.each(function () {
                    c(this, t, r, n)
                }))
            }, e.fn.trigger = function (t, n) {
                return t = g(t) || e.isPlainObject(t) ? e.Event(t) : u(t), t._args = n, this.each(function () {
                    t.type in x && "function" == typeof this[t.type] ? this[t.type]() : "dispatchEvent" in this ? this.dispatchEvent(t) : e(this).triggerHandler(t, n)
                })
            }, e.fn.triggerHandler = function (t, r) {
                var o, i;
                return this.each(function (a, s) {
                    o = l(g(t) ? e.Event(t) : t), o._args = r, o.target = s, e.each(n(s, t.type || t), function (e, t) {
                        if (i = t.proxy(o), o.isImmediatePropagationStopped()) return !1
                    })
                }), i
            }, "focusin focusout focus blur load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select keydown keypress keyup error".split(" ").forEach(function (t) {
                e.fn[t] = function (e) {
                    return 0 in arguments ? this.bind(t, e) : this.trigger(t)
                }
            }), e.Event = function (e, t) {
                g(e) || (t = e, e = t.type);
                var n = document.createEvent(y[e] || "Events"),
                    r = !0;
                if (t)
                    for (var o in t) "bubbles" == o ? r = !!t[o] : n[o] = t[o];
                return n.initEvent(e, r, !0), u(n)
            }
        }(r), e.exports = r
    },
    29: function (e, t, n) {
        var r = n(5);
        ! function (e) {
            e.fn.serializeArray = function () {
                var t, n, r = [],
                    o = function (e) {
                        if (e.forEach) return e.forEach(o);
                        r.push({
                            name: t,
                            value: e
                        })
                    };
                return this[0] && e.each(this[0].elements, function (r, i) {
                    n = i.type, t = i.name, t && "fieldset" != i.nodeName.toLowerCase() && !i.disabled && "submit" != n && "reset" != n && "button" != n && "file" != n && ("radio" != n && "checkbox" != n || i.checked) && o(e(i).val())
                }), r
            }, e.fn.serialize = function () {
                var e = [];
                return this.serializeArray().forEach(function (t) {
                    e.push(encodeURIComponent(t.name) + "=" + encodeURIComponent(t.value))
                }), e.join("&")
            }, e.fn.submit = function (t) {
                if (0 in arguments) this.bind("submit", t);
                else if (this.length) {
                    var n = e.Event("submit");
                    this.eq(0).trigger(n), n.isDefaultPrevented() || this.get(0).submit()
                }
                return this
            }
        }(r), e.exports = r
    },
    3: function (e, t, n) {
        var r, o;
        ! function (t, n) {
            "use strict";
            "object" == typeof e && "object" == typeof e.exports ? e.exports = t.document ? n(t, !0) : function (e) {
                if (!e.document) throw new Error("jQuery requires a window with a document");
                return n(e)
            } : n(t)
        }("undefined" != typeof window ? window : this, function (n, i) {
            "use strict";

            function a(e, t, n) {
                t = t || le;
                var r, o = t.createElement("script");
                if (o.text = e, n)
                    for (r in Ae) n[r] && (o[r] = n[r]);
                t.head.appendChild(o).parentNode.removeChild(o)
            }

            function s(e) {
                return null == e ? e + "" : "object" == typeof e || "function" == typeof e ? me[ye.call(e)] || "object" : typeof e
            }

            function c(e) {
                var t = !!e && "length" in e && e.length,
                    n = s(e);
                return !_e(e) && !Te(e) && ("array" === n || 0 === t || "number" == typeof t && t > 0 && t - 1 in e)
            }

            function u(e, t) {
                return e.nodeName && e.nodeName.toLowerCase() === t.toLowerCase()
            }

            function l(e, t, n) {
                return _e(t) ? Ee.grep(e, function (e, r) {
                    return !!t.call(e, r, e) !== n
                }) : t.nodeType ? Ee.grep(e, function (e) {
                    return e === t !== n
                }) : "string" != typeof t ? Ee.grep(e, function (e) {
                    return ge.call(t, e) > -1 !== n
                }) : Ee.filter(t, e, n)
            }

            function f(e, t) {
                for (;
                    (e = e[t]) && 1 !== e.nodeType;);
                return e
            }

            function p(e) {
                var t = {};
                return Ee.each(e.match(Re) || [], function (e, n) {
                    t[n] = !0
                }), t
            }

            function d(e) {
                return e
            }

            function h(e) {
                throw e
            }

            function g(e, t, n, r) {
                var o;
                try {
                    e && _e(o = e.promise) ? o.call(e).done(t).fail(n) : e && _e(o = e.then) ? o.call(e, t, n) : t.apply(void 0, [e].slice(r))
                } catch (e) {
                    n.apply(void 0, [e])
                }
            }

            function m() {
                le.removeEventListener("DOMContentLoaded", m), n.removeEventListener("load", m), Ee.ready()
            }

            function y(e, t) {
                return t.toUpperCase()
            }

            function v(e) {
                return e.replace(Me, "ms-").replace(We, y)
            }

            function x() {
                this.expando = Ee.expando + x.uid++
            }

            function w(e) {
                return "true" === e || "false" !== e && ("null" === e ? null : e === +e + "" ? +e : Ge.test(e) ? JSON.parse(e) : e)
            }

            function b(e, t, n) {
                var r;
                if (void 0 === n && 1 === e.nodeType)
                    if (r = "data-" + t.replace(Ve, "-$&").toLowerCase(), "string" == typeof (n = e.getAttribute(r))) {
                        try {
                            n = w(n)
                        } catch (e) {}
                        $e.set(e, t, n)
                    } else n = void 0;
                return n
            }

            function _(e, t, n, r) {
                var o, i, a = 20,
                    s = r ? function () {
                        return r.cur()
                    } : function () {
                        return Ee.css(e, t, "")
                    },
                    c = s(),
                    u = n && n[3] || (Ee.cssNumber[t] ? "" : "px"),
                    l = (Ee.cssNumber[t] || "px" !== u && +c) && Xe.exec(Ee.css(e, t));
                if (l && l[3] !== u) {
                    for (c /= 2, u = u || l[3], l = +c || 1; a--;) Ee.style(e, t, l + u), (1 - i) * (1 - (i = s() / c || .5)) <= 0 && (a = 0), l /= i;
                    l *= 2, Ee.style(e, t, l + u), n = n || []
                }
                return n && (l = +l || +c || 0, o = n[1] ? l + (n[1] + 1) * n[2] : +n[2], r && (r.unit = u, r.start = l, r.end = o)), o
            }

            function T(e) {
                var t, n = e.ownerDocument,
                    r = e.nodeName,
                    o = Qe[r];
                return o || (t = n.body.appendChild(n.createElement(r)), o = Ee.css(t, "display"), t.parentNode.removeChild(t), "none" === o && (o = "block"), Qe[r] = o, o)
            }

            function A(e, t) {
                for (var n, r, o = [], i = 0, a = e.length; i < a; i++) r = e[i], r.style && (n = r.style.display, t ? ("none" === n && (o[i] = Fe.get(r, "display") || null, o[i] || (r.style.display = "")), "" === r.style.display && Ke(r) && (o[i] = T(r))) : "none" !== n && (o[i] = "none", Fe.set(r, "display", n)));
                for (i = 0; i < a; i++) null != o[i] && (e[i].style.display = o[i]);
                return e
            }

            function E(e, t) {
                var n;
                return n = void 0 !== e.getElementsByTagName ? e.getElementsByTagName(t || "*") : void 0 !== e.querySelectorAll ? e.querySelectorAll(t || "*") : [], void 0 === t || t && u(e, t) ? Ee.merge([e], n) : n
            }

            function S(e, t) {
                for (var n = 0, r = e.length; n < r; n++) Fe.set(e[n], "globalEval", !t || Fe.get(t[n], "globalEval"))
            }

            function k(e, t, n, r, o) {
                for (var i, a, c, u, l, f, p = t.createDocumentFragment(), d = [], h = 0, g = e.length; h < g; h++)
                    if ((i = e[h]) || 0 === i)
                        if ("object" === s(i)) Ee.merge(d, i.nodeType ? [i] : i);
                        else if (rt.test(i)) {
                    for (a = a || p.appendChild(t.createElement("div")), c = (et.exec(i) || ["", ""])[1].toLowerCase(), u = nt[c] || nt._default, a.innerHTML = u[1] + Ee.htmlPrefilter(i) + u[2], f = u[0]; f--;) a = a.lastChild;
                    Ee.merge(d, a.childNodes), a = p.firstChild, a.textContent = ""
                } else d.push(t.createTextNode(i));
                for (p.textContent = "", h = 0; i = d[h++];)
                    if (r && Ee.inArray(i, r) > -1) o && o.push(i);
                    else if (l = Ee.contains(i.ownerDocument, i), a = E(p.appendChild(i), "script"), l && S(a), n)
                    for (f = 0; i = a[f++];) tt.test(i.type || "") && n.push(i);
                return p
            }

            function C() {
                return !0
            }

            function P() {
                return !1
            }

            function O() {
                try {
                    return le.activeElement
                } catch (e) {}
            }

            function I(e, t, n, r, o, i) {
                var a, s;
                if ("object" == typeof t) {
                    "string" != typeof n && (r = r || n, n = void 0);
                    for (s in t) I(e, s, n, r, t[s], i);
                    return e
                }
                if (null == r && null == o ? (o = n, r = n = void 0) : null == o && ("string" == typeof n ? (o = r, r = void 0) : (o = r, r = n, n = void 0)), !1 === o) o = P;
                else if (!o) return e;
                return 1 === i && (a = o, o = function (e) {
                    return Ee().off(e), a.apply(this, arguments)
                }, o.guid = a.guid || (a.guid = Ee.guid++)), e.each(function () {
                    Ee.event.add(this, t, o, r, n)
                })
            }

            function N(e, t) {
                return u(e, "table") && u(11 !== t.nodeType ? t : t.firstChild, "tr") ? Ee(e).children("tbody")[0] || e : e
            }

            function D(e) {
                return e.type = (null !== e.getAttribute("type")) + "/" + e.type, e
            }

            function j(e) {
                return "true/" === (e.type || "").slice(0, 5) ? e.type = e.type.slice(5) : e.removeAttribute("type"), e
            }

            function L(e, t) {
                var n, r, o, i, a, s, c, u;
                if (1 === t.nodeType) {
                    if (Fe.hasData(e) && (i = Fe.access(e), a = Fe.set(t, i), u = i.events)) {
                        delete a.handle, a.events = {};
                        for (o in u)
                            for (n = 0, r = u[o].length; n < r; n++) Ee.event.add(t, o, u[o][n])
                    }
                    $e.hasData(e) && (s = $e.access(e), c = Ee.extend({}, s), $e.set(t, c))
                }
            }

            function R(e, t) {
                var n = t.nodeName.toLowerCase();
                "input" === n && Ze.test(e.type) ? t.checked = e.checked : "input" !== n && "textarea" !== n || (t.defaultValue = e.defaultValue)
            }

            function q(e, t, n, r) {
                t = de.apply([], t);
                var o, i, s, c, u, l, f = 0,
                    p = e.length,
                    d = p - 1,
                    h = t[0],
                    g = _e(h);
                if (g || p > 1 && "string" == typeof h && !be.checkClone && lt.test(h)) return e.each(function (o) {
                    var i = e.eq(o);
                    g && (t[0] = h.call(this, o, i.html())), q(i, t, n, r)
                });
                if (p && (o = k(t, e[0].ownerDocument, !1, e, r), i = o.firstChild, 1 === o.childNodes.length && (o = i), i || r)) {
                    for (s = Ee.map(E(o, "script"), D), c = s.length; f < p; f++) u = o, f !== d && (u = Ee.clone(u, !0, !0), c && Ee.merge(s, E(u, "script"))), n.call(e[f], u, f);
                    if (c)
                        for (l = s[s.length - 1].ownerDocument, Ee.map(s, j), f = 0; f < c; f++) u = s[f], tt.test(u.type || "") && !Fe.access(u, "globalEval") && Ee.contains(l, u) && (u.src && "module" !== (u.type || "").toLowerCase() ? Ee._evalUrl && Ee._evalUrl(u.src) : a(u.textContent.replace(ft, ""), l, u))
                }
                return e
            }

            function H(e, t, n) {
                for (var r, o = t ? Ee.filter(t, e) : e, i = 0; null != (r = o[i]); i++) n || 1 !== r.nodeType || Ee.cleanData(E(r)), r.parentNode && (n && Ee.contains(r.ownerDocument, r) && S(E(r, "script")), r.parentNode.removeChild(r));
                return e
            }

            function U(e, t, n) {
                var r, o, i, a, s = e.style;
                return n = n || dt(e), n && (a = n.getPropertyValue(t) || n[t], "" !== a || Ee.contains(e.ownerDocument, e) || (a = Ee.style(e, t)), !be.pixelBoxStyles() && pt.test(a) && ht.test(t) && (r = s.width, o = s.minWidth, i = s.maxWidth, s.minWidth = s.maxWidth = s.width = a, a = n.width, s.width = r, s.minWidth = o, s.maxWidth = i)), void 0 !== a ? a + "" : a
            }

            function M(e, t) {
                return {
                    get: function () {
                        return e() ? void delete this.get : (this.get = t).apply(this, arguments)
                    }
                }
            }

            function W(e) {
                if (e in wt) return e;
                for (var t = e[0].toUpperCase() + e.slice(1), n = xt.length; n--;)
                    if ((e = xt[n] + t) in wt) return e
            }

            function B(e) {
                var t = Ee.cssProps[e];
                return t || (t = Ee.cssProps[e] = W(e) || e), t
            }

            function F(e, t, n) {
                var r = Xe.exec(t);
                return r ? Math.max(0, r[2] - (n || 0)) + (r[3] || "px") : t
            }

            function $(e, t, n, r, o, i) {
                var a = "width" === t ? 1 : 0,
                    s = 0,
                    c = 0;
                if (n === (r ? "border" : "content")) return 0;
                for (; a < 4; a += 2) "margin" === n && (c += Ee.css(e, n + Ye[a], !0, o)), r ? ("content" === n && (c -= Ee.css(e, "padding" + Ye[a], !0, o)), "margin" !== n && (c -= Ee.css(e, "border" + Ye[a] + "Width", !0, o))) : (c += Ee.css(e, "padding" + Ye[a], !0, o), "padding" !== n ? c += Ee.css(e, "border" + Ye[a] + "Width", !0, o) : s += Ee.css(e, "border" + Ye[a] + "Width", !0, o));
                return !r && i >= 0 && (c += Math.max(0, Math.ceil(e["offset" + t[0].toUpperCase() + t.slice(1)] - i - c - s - .5))), c
            }

            function G(e, t, n) {
                var r = dt(e),
                    o = U(e, t, r),
                    i = "border-box" === Ee.css(e, "boxSizing", !1, r),
                    a = i;
                if (pt.test(o)) {
                    if (!n) return o;
                    o = "auto"
                }
                return a = a && (be.boxSizingReliable() || o === e.style[t]), ("auto" === o || !parseFloat(o) && "inline" === Ee.css(e, "display", !1, r)) && (o = e["offset" + t[0].toUpperCase() + t.slice(1)], a = !0), (o = parseFloat(o) || 0) + $(e, t, n || (i ? "border" : "content"), a, r, o) + "px"
            }

            function V(e, t, n, r, o) {
                return new V.prototype.init(e, t, n, r, o)
            }

            function z() {
                _t && (!1 === le.hidden && n.requestAnimationFrame ? n.requestAnimationFrame(z) : n.setTimeout(z, Ee.fx.interval), Ee.fx.tick())
            }

            function X() {
                return n.setTimeout(function () {
                    bt = void 0
                }), bt = Date.now()
            }

            function Y(e, t) {
                var n, r = 0,
                    o = {
                        height: e
                    };
                for (t = t ? 1 : 0; r < 4; r += 2 - t) n = Ye[r], o["margin" + n] = o["padding" + n] = e;
                return t && (o.opacity = o.width = e), o
            }

            function K(e, t, n) {
                for (var r, o = (Z.tweeners[t] || []).concat(Z.tweeners["*"]), i = 0, a = o.length; i < a; i++)
                    if (r = o[i].call(n, t, e)) return r
            }

            function J(e, t, n) {
                var r, o, i, a, s, c, u, l, f = "width" in t || "height" in t,
                    p = this,
                    d = {},
                    h = e.style,
                    g = e.nodeType && Ke(e),
                    m = Fe.get(e, "fxshow");
                n.queue || (a = Ee._queueHooks(e, "fx"), null == a.unqueued && (a.unqueued = 0, s = a.empty.fire, a.empty.fire = function () {
                    a.unqueued || s()
                }), a.unqueued++, p.always(function () {
                    p.always(function () {
                        a.unqueued--, Ee.queue(e, "fx").length || a.empty.fire()
                    })
                }));
                for (r in t)
                    if (o = t[r], Tt.test(o)) {
                        if (delete t[r], i = i || "toggle" === o, o === (g ? "hide" : "show")) {
                            if ("show" !== o || !m || void 0 === m[r]) continue;
                            g = !0
                        }
                        d[r] = m && m[r] || Ee.style(e, r)
                    }
                if ((c = !Ee.isEmptyObject(t)) || !Ee.isEmptyObject(d)) {
                    f && 1 === e.nodeType && (n.overflow = [h.overflow, h.overflowX, h.overflowY], u = m && m.display, null == u && (u = Fe.get(e, "display")), l = Ee.css(e, "display"), "none" === l && (u ? l = u : (A([e], !0), u = e.style.display || u, l = Ee.css(e, "display"), A([e]))), ("inline" === l || "inline-block" === l && null != u) && "none" === Ee.css(e, "float") && (c || (p.done(function () {
                        h.display = u
                    }), null == u && (l = h.display, u = "none" === l ? "" : l)), h.display = "inline-block")), n.overflow && (h.overflow = "hidden", p.always(function () {
                        h.overflow = n.overflow[0], h.overflowX = n.overflow[1], h.overflowY = n.overflow[2]
                    })), c = !1;
                    for (r in d) c || (m ? "hidden" in m && (g = m.hidden) : m = Fe.access(e, "fxshow", {
                        display: u
                    }), i && (m.hidden = !g), g && A([e], !0), p.done(function () {
                        g || A([e]), Fe.remove(e, "fxshow");
                        for (r in d) Ee.style(e, r, d[r])
                    })), c = K(g ? m[r] : 0, r, p), r in m || (m[r] = c.start, g && (c.end = c.start, c.start = 0))
                }
            }

            function Q(e, t) {
                var n, r, o, i, a;
                for (n in e)
                    if (r = v(n), o = t[r], i = e[n], Array.isArray(i) && (o = i[1], i = e[n] = i[0]), n !== r && (e[r] = i, delete e[n]), (a = Ee.cssHooks[r]) && "expand" in a) {
                        i = a.expand(i), delete e[r];
                        for (n in i) n in e || (e[n] = i[n], t[n] = o)
                    } else t[r] = o
            }

            function Z(e, t, n) {
                var r, o, i = 0,
                    a = Z.prefilters.length,
                    s = Ee.Deferred().always(function () {
                        delete c.elem
                    }),
                    c = function () {
                        if (o) return !1;
                        for (var t = bt || X(), n = Math.max(0, u.startTime + u.duration - t), r = n / u.duration || 0, i = 1 - r, a = 0, c = u.tweens.length; a < c; a++) u.tweens[a].run(i);
                        return s.notifyWith(e, [u, i, n]), i < 1 && c ? n : (c || s.notifyWith(e, [u, 1, 0]), s.resolveWith(e, [u]), !1)
                    },
                    u = s.promise({
                        elem: e,
                        props: Ee.extend({}, t),
                        opts: Ee.extend(!0, {
                            specialEasing: {},
                            easing: Ee.easing._default
                        }, n),
                        originalProperties: t,
                        originalOptions: n,
                        startTime: bt || X(),
                        duration: n.duration,
                        tweens: [],
                        createTween: function (t, n) {
                            var r = Ee.Tween(e, u.opts, t, n, u.opts.specialEasing[t] || u.opts.easing);
                            return u.tweens.push(r), r
                        },
                        stop: function (t) {
                            var n = 0,
                                r = t ? u.tweens.length : 0;
                            if (o) return this;
                            for (o = !0; n < r; n++) u.tweens[n].run(1);
                            return t ? (s.notifyWith(e, [u, 1, 0]), s.resolveWith(e, [u, t])) : s.rejectWith(e, [u, t]), this
                        }
                    }),
                    l = u.props;
                for (Q(l, u.opts.specialEasing); i < a; i++)
                    if (r = Z.prefilters[i].call(u, e, l, u.opts)) return _e(r.stop) && (Ee._queueHooks(u.elem, u.opts.queue).stop = r.stop.bind(r)), r;
                return Ee.map(l, K, u), _e(u.opts.start) && u.opts.start.call(e, u), u.progress(u.opts.progress).done(u.opts.done, u.opts.complete).fail(u.opts.fail).always(u.opts.always), Ee.fx.timer(Ee.extend(c, {
                    elem: e,
                    anim: u,
                    queue: u.opts.queue
                })), u
            }

            function ee(e) {
                return (e.match(Re) || []).join(" ")
            }

            function te(e) {
                return e.getAttribute && e.getAttribute("class") || ""
            }

            function ne(e) {
                return Array.isArray(e) ? e : "string" == typeof e ? e.match(Re) || [] : []
            }

            function re(e, t, n, r) {
                var o;
                if (Array.isArray(t)) Ee.each(t, function (t, o) {
                    n || Lt.test(e) ? r(e, o) : re(e + "[" + ("object" == typeof o && null != o ? t : "") + "]", o, n, r)
                });
                else if (n || "object" !== s(t)) r(e, t);
                else
                    for (o in t) re(e + "[" + o + "]", t[o], n, r)
            }

            function oe(e) {
                return function (t, n) {
                    "string" != typeof t && (n = t, t = "*");
                    var r, o = 0,
                        i = t.toLowerCase().match(Re) || [];
                    if (_e(n))
                        for (; r = i[o++];) "+" === r[0] ? (r = r.slice(1) || "*", (e[r] = e[r] || []).unshift(n)) : (e[r] = e[r] || []).push(n)
                }
            }

            function ie(e, t, n, r) {
                function o(s) {
                    var c;
                    return i[s] = !0, Ee.each(e[s] || [], function (e, s) {
                        var u = s(t, n, r);
                        return "string" != typeof u || a || i[u] ? a ? !(c = u) : void 0 : (t.dataTypes.unshift(u), o(u), !1)
                    }), c
                }
                var i = {},
                    a = e === zt;
                return o(t.dataTypes[0]) || !i["*"] && o("*")
            }

            function ae(e, t) {
                var n, r, o = Ee.ajaxSettings.flatOptions || {};
                for (n in t) void 0 !== t[n] && ((o[n] ? e : r || (r = {}))[n] = t[n]);
                return r && Ee.extend(!0, e, r), e
            }

            function se(e, t, n) {
                for (var r, o, i, a, s = e.contents, c = e.dataTypes;
                    "*" === c[0];) c.shift(), void 0 === r && (r = e.mimeType || t.getResponseHeader("Content-Type"));
                if (r)
                    for (o in s)
                        if (s[o] && s[o].test(r)) {
                            c.unshift(o);
                            break
                        }
                if (c[0] in n) i = c[0];
                else {
                    for (o in n) {
                        if (!c[0] || e.converters[o + " " + c[0]]) {
                            i = o;
                            break
                        }
                        a || (a = o)
                    }
                    i = i || a
                }
                if (i) return i !== c[0] && c.unshift(i), n[i]
            }

            function ce(e, t, n, r) {
                var o, i, a, s, c, u = {},
                    l = e.dataTypes.slice();
                if (l[1])
                    for (a in e.converters) u[a.toLowerCase()] = e.converters[a];
                for (i = l.shift(); i;)
                    if (e.responseFields[i] && (n[e.responseFields[i]] = t), !c && r && e.dataFilter && (t = e.dataFilter(t, e.dataType)), c = i, i = l.shift())
                        if ("*" === i) i = c;
                        else if ("*" !== c && c !== i) {
                    if (!(a = u[c + " " + i] || u["* " + i]))
                        for (o in u)
                            if (s = o.split(" "), s[1] === i && (a = u[c + " " + s[0]] || u["* " + s[0]])) {
                                !0 === a ? a = u[o] : !0 !== u[o] && (i = s[0], l.unshift(s[1]));
                                break
                            }
                    if (!0 !== a)
                        if (a && e.throws) t = a(t);
                        else try {
                            t = a(t)
                        } catch (e) {
                            return {
                                state: "parsererror",
                                error: a ? e : "No conversion from " + c + " to " + i
                            }
                        }
                }
                return {
                    state: "success",
                    data: t
                }
            }
            var ue = [],
                le = n.document,
                fe = Object.getPrototypeOf,
                pe = ue.slice,
                de = ue.concat,
                he = ue.push,
                ge = ue.indexOf,
                me = {},
                ye = me.toString,
                ve = me.hasOwnProperty,
                xe = ve.toString,
                we = xe.call(Object),
                be = {},
                _e = function (e) {
                    return "function" == typeof e && "number" != typeof e.nodeType
                },
                Te = function (e) {
                    return null != e && e === e.window
                },
                Ae = {
                    type: !0,
                    src: !0,
                    noModule: !0
                },
                Ee = function (e, t) {
                    return new Ee.fn.init(e, t)
                },
                Se = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
            Ee.fn = Ee.prototype = {
                jquery: "3.3.1",
                constructor: Ee,
                length: 0,
                toArray: function () {
                    return pe.call(this)
                },
                get: function (e) {
                    return null == e ? pe.call(this) : e < 0 ? this[e + this.length] : this[e]
                },
                pushStack: function (e) {
                    var t = Ee.merge(this.constructor(), e);
                    return t.prevObject = this, t
                },
                each: function (e) {
                    return Ee.each(this, e)
                },
                map: function (e) {
                    return this.pushStack(Ee.map(this, function (t, n) {
                        return e.call(t, n, t)
                    }))
                },
                slice: function () {
                    return this.pushStack(pe.apply(this, arguments))
                },
                first: function () {
                    return this.eq(0)
                },
                last: function () {
                    return this.eq(-1)
                },
                eq: function (e) {
                    var t = this.length,
                        n = +e + (e < 0 ? t : 0);
                    return this.pushStack(n >= 0 && n < t ? [this[n]] : [])
                },
                end: function () {
                    return this.prevObject || this.constructor()
                },
                push: he,
                sort: ue.sort,
                splice: ue.splice
            }, Ee.extend = Ee.fn.extend = function () {
                var e, t, n, r, o, i, a = arguments[0] || {},
                    s = 1,
                    c = arguments.length,
                    u = !1;
                for ("boolean" == typeof a && (u = a, a = arguments[s] || {}, s++), "object" == typeof a || _e(a) || (a = {}), s === c && (a = this, s--); s < c; s++)
                    if (null != (e = arguments[s]))
                        for (t in e) n = a[t], r = e[t], a !== r && (u && r && (Ee.isPlainObject(r) || (o = Array.isArray(r))) ? (o ? (o = !1, i = n && Array.isArray(n) ? n : []) : i = n && Ee.isPlainObject(n) ? n : {}, a[t] = Ee.extend(u, i, r)) : void 0 !== r && (a[t] = r));
                return a
            }, Ee.extend({
                expando: "jQuery" + ("3.3.1" + Math.random()).replace(/\D/g, ""),
                isReady: !0,
                error: function (e) {
                    throw new Error(e)
                },
                noop: function () {},
                isPlainObject: function (e) {
                    var t, n;
                    return !(!e || "[object Object]" !== ye.call(e)) && (!(t = fe(e)) || "function" == typeof (n = ve.call(t, "constructor") && t.constructor) && xe.call(n) === we)
                },
                isEmptyObject: function (e) {
                    var t;
                    for (t in e) return !1;
                    return !0
                },
                globalEval: function (e) {
                    a(e)
                },
                each: function (e, t) {
                    var n, r = 0;
                    if (c(e))
                        for (n = e.length; r < n && !1 !== t.call(e[r], r, e[r]); r++);
                    else
                        for (r in e)
                            if (!1 === t.call(e[r], r, e[r])) break;
                    return e
                },
                trim: function (e) {
                    return null == e ? "" : (e + "").replace(Se, "")
                },
                makeArray: function (e, t) {
                    var n = t || [];
                    return null != e && (c(Object(e)) ? Ee.merge(n, "string" == typeof e ? [e] : e) : he.call(n, e)), n
                },
                inArray: function (e, t, n) {
                    return null == t ? -1 : ge.call(t, e, n)
                },
                merge: function (e, t) {
                    for (var n = +t.length, r = 0, o = e.length; r < n; r++) e[o++] = t[r];
                    return e.length = o, e
                },
                grep: function (e, t, n) {
                    for (var r = [], o = 0, i = e.length, a = !n; o < i; o++) !t(e[o], o) !== a && r.push(e[o]);
                    return r
                },
                map: function (e, t, n) {
                    var r, o, i = 0,
                        a = [];
                    if (c(e))
                        for (r = e.length; i < r; i++) null != (o = t(e[i], i, n)) && a.push(o);
                    else
                        for (i in e) null != (o = t(e[i], i, n)) && a.push(o);
                    return de.apply([], a)
                },
                guid: 1,
                support: be
            }), "function" == typeof Symbol && (Ee.fn[Symbol.iterator] = ue[Symbol.iterator]), Ee.each("Boolean Number String Function Array Date RegExp Object Error Symbol".split(" "), function (e, t) {
                me["[object " + t + "]"] = t.toLowerCase()
            });
            var ke = function (e) {
                function t(e, t, n, r) {
                    var o, i, a, s, c, l, p, d = t && t.ownerDocument,
                        h = t ? t.nodeType : 9;
                    if (n = n || [], "string" != typeof e || !e || 1 !== h && 9 !== h && 11 !== h) return n;
                    if (!r && ((t ? t.ownerDocument || t : U) !== I && O(t), t = t || I, D)) {
                        if (11 !== h && (c = ge.exec(e)))
                            if (o = c[1]) {
                                if (9 === h) {
                                    if (!(a = t.getElementById(o))) return n;
                                    if (a.id === o) return n.push(a), n
                                } else if (d && (a = d.getElementById(o)) && q(t, a) && a.id === o) return n.push(a), n
                            } else {
                                if (c[2]) return K.apply(n, t.getElementsByTagName(e)), n;
                                if ((o = c[3]) && w.getElementsByClassName && t.getElementsByClassName) return K.apply(n, t.getElementsByClassName(o)), n
                            }
                        if (w.qsa && !$[e + " "] && (!j || !j.test(e))) {
                            if (1 !== h) d = t, p = e;
                            else if ("object" !== t.nodeName.toLowerCase()) {
                                for ((s = t.getAttribute("id")) ? s = s.replace(xe, we) : t.setAttribute("id", s = H), l = A(e), i = l.length; i--;) l[i] = "#" + s + " " + f(l[i]);
                                p = l.join(","), d = me.test(e) && u(t.parentNode) || t
                            }
                            if (p) try {
                                return K.apply(n, d.querySelectorAll(p)), n
                            } catch (e) {} finally {
                                s === H && t.removeAttribute("id")
                            }
                        }
                    }
                    return S(e.replace(ie, "$1"), t, n, r)
                }

                function n() {
                    function e(n, r) {
                        return t.push(n + " ") > b.cacheLength && delete e[t.shift()], e[n + " "] = r
                    }
                    var t = [];
                    return e
                }

                function r(e) {
                    return e[H] = !0, e
                }

                function o(e) {
                    var t = I.createElement("fieldset");
                    try {
                        return !!e(t)
                    } catch (e) {
                        return !1
                    } finally {
                        t.parentNode && t.parentNode.removeChild(t), t = null
                    }
                }

                function i(e, t) {
                    for (var n = e.split("|"), r = n.length; r--;) b.attrHandle[n[r]] = t
                }

                function a(e, t) {
                    var n = t && e,
                        r = n && 1 === e.nodeType && 1 === t.nodeType && e.sourceIndex - t.sourceIndex;
                    if (r) return r;
                    if (n)
                        for (; n = n.nextSibling;)
                            if (n === t) return -1;
                    return e ? 1 : -1
                }

                function s(e) {
                    return function (t) {
                        return "form" in t ? t.parentNode && !1 === t.disabled ? "label" in t ? "label" in t.parentNode ? t.parentNode.disabled === e : t.disabled === e : t.isDisabled === e || t.isDisabled !== !e && _e(t) === e : t.disabled === e : "label" in t && t.disabled === e
                    }
                }

                function c(e) {
                    return r(function (t) {
                        return t = +t, r(function (n, r) {
                            for (var o, i = e([], n.length, t), a = i.length; a--;) n[o = i[a]] && (n[o] = !(r[o] = n[o]))
                        })
                    })
                }

                function u(e) {
                    return e && void 0 !== e.getElementsByTagName && e
                }

                function l() {}

                function f(e) {
                    for (var t = 0, n = e.length, r = ""; t < n; t++) r += e[t].value;
                    return r
                }

                function p(e, t, n) {
                    var r = t.dir,
                        o = t.next,
                        i = o || r,
                        a = n && "parentNode" === i,
                        s = W++;
                    return t.first ? function (t, n, o) {
                        for (; t = t[r];)
                            if (1 === t.nodeType || a) return e(t, n, o);
                        return !1
                    } : function (t, n, c) {
                        var u, l, f, p = [M, s];
                        if (c) {
                            for (; t = t[r];)
                                if ((1 === t.nodeType || a) && e(t, n, c)) return !0
                        } else
                            for (; t = t[r];)
                                if (1 === t.nodeType || a)
                                    if (f = t[H] || (t[H] = {}), l = f[t.uniqueID] || (f[t.uniqueID] = {}), o && o === t.nodeName.toLowerCase()) t = t[r] || t;
                                    else {
                                        if ((u = l[i]) && u[0] === M && u[1] === s) return p[2] = u[2];
                                        if (l[i] = p, p[2] = e(t, n, c)) return !0
                                    } return !1
                    }
                }

                function d(e) {
                    return e.length > 1 ? function (t, n, r) {
                        for (var o = e.length; o--;)
                            if (!e[o](t, n, r)) return !1;
                        return !0
                    } : e[0]
                }

                function h(e, n, r) {
                    for (var o = 0, i = n.length; o < i; o++) t(e, n[o], r);
                    return r
                }

                function g(e, t, n, r, o) {
                    for (var i, a = [], s = 0, c = e.length, u = null != t; s < c; s++)(i = e[s]) && (n && !n(i, r, o) || (a.push(i), u && t.push(s)));
                    return a
                }

                function m(e, t, n, o, i, a) {
                    return o && !o[H] && (o = m(o)), i && !i[H] && (i = m(i, a)), r(function (r, a, s, c) {
                        var u, l, f, p = [],
                            d = [],
                            m = a.length,
                            y = r || h(t || "*", s.nodeType ? [s] : s, []),
                            v = !e || !r && t ? y : g(y, p, e, s, c),
                            x = n ? i || (r ? e : m || o) ? [] : a : v;
                        if (n && n(v, x, s, c), o)
                            for (u = g(x, d), o(u, [], s, c), l = u.length; l--;)(f = u[l]) && (x[d[l]] = !(v[d[l]] = f));
                        if (r) {
                            if (i || e) {
                                if (i) {
                                    for (u = [], l = x.length; l--;)(f = x[l]) && u.push(v[l] = f);
                                    i(null, x = [], u, c)
                                }
                                for (l = x.length; l--;)(f = x[l]) && (u = i ? Q(r, f) : p[l]) > -1 && (r[u] = !(a[u] = f))
                            }
                        } else x = g(x === a ? x.splice(m, x.length) : x), i ? i(null, a, x, c) : K.apply(a, x)
                    })
                }

                function y(e) {
                    for (var t, n, r, o = e.length, i = b.relative[e[0].type], a = i || b.relative[" "], s = i ? 1 : 0, c = p(function (e) {
                            return e === t
                        }, a, !0), u = p(function (e) {
                            return Q(t, e) > -1
                        }, a, !0), l = [function (e, n, r) {
                            var o = !i && (r || n !== k) || ((t = n).nodeType ? c(e, n, r) : u(e, n, r));
                            return t = null, o
                        }]; s < o; s++)
                        if (n = b.relative[e[s].type]) l = [p(d(l), n)];
                        else {
                            if (n = b.filter[e[s].type].apply(null, e[s].matches), n[H]) {
                                for (r = ++s; r < o && !b.relative[e[r].type]; r++);
                                return m(s > 1 && d(l), s > 1 && f(e.slice(0, s - 1).concat({
                                    value: " " === e[s - 2].type ? "*" : ""
                                })).replace(ie, "$1"), n, s < r && y(e.slice(s, r)), r < o && y(e = e.slice(r)), r < o && f(e))
                            }
                            l.push(n)
                        }
                    return d(l)
                }

                function v(e, n) {
                    var o = n.length > 0,
                        i = e.length > 0,
                        a = function (r, a, s, c, u) {
                            var l, f, p, d = 0,
                                h = "0",
                                m = r && [],
                                y = [],
                                v = k,
                                x = r || i && b.find.TAG("*", u),
                                w = M += null == v ? 1 : Math.random() || .1,
                                _ = x.length;
                            for (u && (k = a === I || a || u); h !== _ && null != (l = x[h]); h++) {
                                if (i && l) {
                                    for (f = 0, a || l.ownerDocument === I || (O(l), s = !D); p = e[f++];)
                                        if (p(l, a || I, s)) {
                                            c.push(l);
                                            break
                                        }
                                    u && (M = w)
                                }
                                o && ((l = !p && l) && d--, r && m.push(l))
                            }
                            if (d += h, o && h !== d) {
                                for (f = 0; p = n[f++];) p(m, y, a, s);
                                if (r) {
                                    if (d > 0)
                                        for (; h--;) m[h] || y[h] || (y[h] = X.call(c));
                                    y = g(y)
                                }
                                K.apply(c, y), u && !r && y.length > 0 && d + n.length > 1 && t.uniqueSort(c)
                            }
                            return u && (M = w, k = v), m
                        };
                    return o ? r(a) : a
                }
                var x, w, b, _, T, A, E, S, k, C, P, O, I, N, D, j, L, R, q, H = "sizzle" + 1 * new Date,
                    U = e.document,
                    M = 0,
                    W = 0,
                    B = n(),
                    F = n(),
                    $ = n(),
                    G = function (e, t) {
                        return e === t && (P = !0), 0
                    },
                    V = {}.hasOwnProperty,
                    z = [],
                    X = z.pop,
                    Y = z.push,
                    K = z.push,
                    J = z.slice,
                    Q = function (e, t) {
                        for (var n = 0, r = e.length; n < r; n++)
                            if (e[n] === t) return n;
                        return -1
                    },
                    Z = "checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",
                    ee = "[\\x20\\t\\r\\n\\f]",
                    te = "(?:\\\\.|[\\w-]|[^\0-\\xa0])+",
                    ne = "\\[" + ee + "*(" + te + ")(?:" + ee + "*([*^$|!~]?=)" + ee + "*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|(" + te + "))|)" + ee + "*\\]",
                    re = ":(" + te + ")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|" + ne + ")*)|.*)\\)|)",
                    oe = new RegExp(ee + "+", "g"),
                    ie = new RegExp("^" + ee + "+|((?:^|[^\\\\])(?:\\\\.)*)" + ee + "+$", "g"),
                    ae = new RegExp("^" + ee + "*," + ee + "*"),
                    se = new RegExp("^" + ee + "*([>+~]|" + ee + ")" + ee + "*"),
                    ce = new RegExp("=" + ee + "*([^\\]'\"]*?)" + ee + "*\\]", "g"),
                    ue = new RegExp(re),
                    le = new RegExp("^" + te + "$"),
                    fe = {
                        ID: new RegExp("^#(" + te + ")"),
                        CLASS: new RegExp("^\\.(" + te + ")"),
                        TAG: new RegExp("^(" + te + "|[*])"),
                        ATTR: new RegExp("^" + ne),
                        PSEUDO: new RegExp("^" + re),
                        CHILD: new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\(" + ee + "*(even|odd|(([+-]|)(\\d*)n|)" + ee + "*(?:([+-]|)" + ee + "*(\\d+)|))" + ee + "*\\)|)", "i"),
                        bool: new RegExp("^(?:" + Z + ")$", "i"),
                        needsContext: new RegExp("^" + ee + "*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\(" + ee + "*((?:-\\d)?\\d*)" + ee + "*\\)|)(?=[^-]|$)", "i")
                    },
                    pe = /^(?:input|select|textarea|button)$/i,
                    de = /^h\d$/i,
                    he = /^[^{]+\{\s*\[native \w/,
                    ge = /^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,
                    me = /[+~]/,
                    ye = new RegExp("\\\\([\\da-f]{1,6}" + ee + "?|(" + ee + ")|.)", "ig"),
                    ve = function (e, t, n) {
                        var r = "0x" + t - 65536;
                        return r !== r || n ? t : r < 0 ? String.fromCharCode(r + 65536) : String.fromCharCode(r >> 10 | 55296, 1023 & r | 56320)
                    },
                    xe = /([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,
                    we = function (e, t) {
                        return t ? "\0" === e ? "�" : e.slice(0, -1) + "\\" + e.charCodeAt(e.length - 1).toString(16) + " " : "\\" + e
                    },
                    be = function () {
                        O()
                    },
                    _e = p(function (e) {
                        return !0 === e.disabled && ("form" in e || "label" in e)
                    }, {
                        dir: "parentNode",
                        next: "legend"
                    });
                try {
                    K.apply(z = J.call(U.childNodes), U.childNodes), z[U.childNodes.length].nodeType
                } catch (e) {
                    K = {
                        apply: z.length ? function (e, t) {
                            Y.apply(e, J.call(t))
                        } : function (e, t) {
                            for (var n = e.length, r = 0; e[n++] = t[r++];);
                            e.length = n - 1
                        }
                    }
                }
                w = t.support = {}, T = t.isXML = function (e) {
                    var t = e && (e.ownerDocument || e).documentElement;
                    return !!t && "HTML" !== t.nodeName
                }, O = t.setDocument = function (e) {
                    var t, n, r = e ? e.ownerDocument || e : U;
                    return r !== I && 9 === r.nodeType && r.documentElement ? (I = r, N = I.documentElement, D = !T(I), U !== I && (n = I.defaultView) && n.top !== n && (n.addEventListener ? n.addEventListener("unload", be, !1) : n.attachEvent && n.attachEvent("onunload", be)), w.attributes = o(function (e) {
                        return e.className = "i", !e.getAttribute("className")
                    }), w.getElementsByTagName = o(function (e) {
                        return e.appendChild(I.createComment("")), !e.getElementsByTagName("*").length
                    }), w.getElementsByClassName = he.test(I.getElementsByClassName), w.getById = o(function (e) {
                        return N.appendChild(e).id = H, !I.getElementsByName || !I.getElementsByName(H).length
                    }), w.getById ? (b.filter.ID = function (e) {
                        var t = e.replace(ye, ve);
                        return function (e) {
                            return e.getAttribute("id") === t
                        }
                    }, b.find.ID = function (e, t) {
                        if (void 0 !== t.getElementById && D) {
                            var n = t.getElementById(e);
                            return n ? [n] : []
                        }
                    }) : (b.filter.ID = function (e) {
                        var t = e.replace(ye, ve);
                        return function (e) {
                            var n = void 0 !== e.getAttributeNode && e.getAttributeNode("id");
                            return n && n.value === t
                        }
                    }, b.find.ID = function (e, t) {
                        if (void 0 !== t.getElementById && D) {
                            var n, r, o, i = t.getElementById(e);
                            if (i) {
                                if ((n = i.getAttributeNode("id")) && n.value === e) return [i];
                                for (o = t.getElementsByName(e), r = 0; i = o[r++];)
                                    if ((n = i.getAttributeNode("id")) && n.value === e) return [i]
                            }
                            return []
                        }
                    }), b.find.TAG = w.getElementsByTagName ? function (e, t) {
                        return void 0 !== t.getElementsByTagName ? t.getElementsByTagName(e) : w.qsa ? t.querySelectorAll(e) : void 0
                    } : function (e, t) {
                        var n, r = [],
                            o = 0,
                            i = t.getElementsByTagName(e);
                        if ("*" === e) {
                            for (; n = i[o++];) 1 === n.nodeType && r.push(n);
                            return r
                        }
                        return i
                    }, b.find.CLASS = w.getElementsByClassName && function (e, t) {
                        if (void 0 !== t.getElementsByClassName && D) return t.getElementsByClassName(e)
                    }, L = [], j = [], (w.qsa = he.test(I.querySelectorAll)) && (o(function (e) {
                        N.appendChild(e).innerHTML = "<a id='" + H + "'></a><select id='" + H + "-\r\\' msallowcapture=''><option selected=''></option></select>", e.querySelectorAll("[msallowcapture^='']").length && j.push("[*^$]=" + ee + "*(?:''|\"\")"), e.querySelectorAll("[selected]").length || j.push("\\[" + ee + "*(?:value|" + Z + ")"), e.querySelectorAll("[id~=" + H + "-]").length || j.push("~="), e.querySelectorAll(":checked").length || j.push(":checked"), e.querySelectorAll("a#" + H + "+*").length || j.push(".#.+[+~]")
                    }), o(function (e) {
                        e.innerHTML = "<a href='' disabled='disabled'></a><select disabled='disabled'><option/></select>";
                        var t = I.createElement("input");
                        t.setAttribute("type", "hidden"), e.appendChild(t).setAttribute("name", "D"), e.querySelectorAll("[name=d]").length && j.push("name" + ee + "*[*^$|!~]?="), 2 !== e.querySelectorAll(":enabled").length && j.push(":enabled", ":disabled"), N.appendChild(e).disabled = !0, 2 !== e.querySelectorAll(":disabled").length && j.push(":enabled", ":disabled"), e.querySelectorAll("*,:x"), j.push(",.*:")
                    })), (w.matchesSelector = he.test(R = N.matches || N.webkitMatchesSelector || N.mozMatchesSelector || N.oMatchesSelector || N.msMatchesSelector)) && o(function (e) {
                        w.disconnectedMatch = R.call(e, "*"), R.call(e, "[s!='']:x"), L.push("!=", re)
                    }), j = j.length && new RegExp(j.join("|")), L = L.length && new RegExp(L.join("|")), t = he.test(N.compareDocumentPosition), q = t || he.test(N.contains) ? function (e, t) {
                        var n = 9 === e.nodeType ? e.documentElement : e,
                            r = t && t.parentNode;
                        return e === r || !(!r || 1 !== r.nodeType || !(n.contains ? n.contains(r) : e.compareDocumentPosition && 16 & e.compareDocumentPosition(r)))
                    } : function (e, t) {
                        if (t)
                            for (; t = t.parentNode;)
                                if (t === e) return !0;
                        return !1
                    }, G = t ? function (e, t) {
                        if (e === t) return P = !0, 0;
                        var n = !e.compareDocumentPosition - !t.compareDocumentPosition;
                        return n || (n = (e.ownerDocument || e) === (t.ownerDocument || t) ? e.compareDocumentPosition(t) : 1, 1 & n || !w.sortDetached && t.compareDocumentPosition(e) === n ? e === I || e.ownerDocument === U && q(U, e) ? -1 : t === I || t.ownerDocument === U && q(U, t) ? 1 : C ? Q(C, e) - Q(C, t) : 0 : 4 & n ? -1 : 1)
                    } : function (e, t) {
                        if (e === t) return P = !0, 0;
                        var n, r = 0,
                            o = e.parentNode,
                            i = t.parentNode,
                            s = [e],
                            c = [t];
                        if (!o || !i) return e === I ? -1 : t === I ? 1 : o ? -1 : i ? 1 : C ? Q(C, e) - Q(C, t) : 0;
                        if (o === i) return a(e, t);
                        for (n = e; n = n.parentNode;) s.unshift(n);
                        for (n = t; n = n.parentNode;) c.unshift(n);
                        for (; s[r] === c[r];) r++;
                        return r ? a(s[r], c[r]) : s[r] === U ? -1 : c[r] === U ? 1 : 0
                    }, I) : I
                }, t.matches = function (e, n) {
                    return t(e, null, null, n)
                }, t.matchesSelector = function (e, n) {
                    if ((e.ownerDocument || e) !== I && O(e), n = n.replace(ce, "='$1']"), w.matchesSelector && D && !$[n + " "] && (!L || !L.test(n)) && (!j || !j.test(n))) try {
                        var r = R.call(e, n);
                        if (r || w.disconnectedMatch || e.document && 11 !== e.document.nodeType) return r
                    } catch (e) {}
                    return t(n, I, null, [e]).length > 0
                }, t.contains = function (e, t) {
                    return (e.ownerDocument || e) !== I && O(e), q(e, t)
                }, t.attr = function (e, t) {
                    (e.ownerDocument || e) !== I && O(e);
                    var n = b.attrHandle[t.toLowerCase()],
                        r = n && V.call(b.attrHandle, t.toLowerCase()) ? n(e, t, !D) : void 0;
                    return void 0 !== r ? r : w.attributes || !D ? e.getAttribute(t) : (r = e.getAttributeNode(t)) && r.specified ? r.value : null
                }, t.escape = function (e) {
                    return (e + "").replace(xe, we)
                }, t.error = function (e) {
                    throw new Error("Syntax error, unrecognized expression: " + e)
                }, t.uniqueSort = function (e) {
                    var t, n = [],
                        r = 0,
                        o = 0;
                    if (P = !w.detectDuplicates, C = !w.sortStable && e.slice(0), e.sort(G), P) {
                        for (; t = e[o++];) t === e[o] && (r = n.push(o));
                        for (; r--;) e.splice(n[r], 1)
                    }
                    return C = null, e
                }, _ = t.getText = function (e) {
                    var t, n = "",
                        r = 0,
                        o = e.nodeType;
                    if (o) {
                        if (1 === o || 9 === o || 11 === o) {
                            if ("string" == typeof e.textContent) return e.textContent;
                            for (e = e.firstChild; e; e = e.nextSibling) n += _(e)
                        } else if (3 === o || 4 === o) return e.nodeValue
                    } else
                        for (; t = e[r++];) n += _(t);
                    return n
                }, b = t.selectors = {
                    cacheLength: 50,
                    createPseudo: r,
                    match: fe,
                    attrHandle: {},
                    find: {},
                    relative: {
                        ">": {
                            dir: "parentNode",
                            first: !0
                        },
                        " ": {
                            dir: "parentNode"
                        },
                        "+": {
                            dir: "previousSibling",
                            first: !0
                        },
                        "~": {
                            dir: "previousSibling"
                        }
                    },
                    preFilter: {
                        ATTR: function (e) {
                            return e[1] = e[1].replace(ye, ve), e[3] = (e[3] || e[4] || e[5] || "").replace(ye, ve), "~=" === e[2] && (e[3] = " " + e[3] + " "), e.slice(0, 4)
                        },
                        CHILD: function (e) {
                            return e[1] = e[1].toLowerCase(), "nth" === e[1].slice(0, 3) ? (e[3] || t.error(e[0]), e[4] = +(e[4] ? e[5] + (e[6] || 1) : 2 * ("even" === e[3] || "odd" === e[3])), e[5] = +(e[7] + e[8] || "odd" === e[3])) : e[3] && t.error(e[0]), e
                        },
                        PSEUDO: function (e) {
                            var t, n = !e[6] && e[2];
                            return fe.CHILD.test(e[0]) ? null : (e[3] ? e[2] = e[4] || e[5] || "" : n && ue.test(n) && (t = A(n, !0)) && (t = n.indexOf(")", n.length - t) - n.length) && (e[0] = e[0].slice(0, t), e[2] = n.slice(0, t)), e.slice(0, 3))
                        }
                    },
                    filter: {
                        TAG: function (e) {
                            var t = e.replace(ye, ve).toLowerCase();
                            return "*" === e ? function () {
                                return !0
                            } : function (e) {
                                return e.nodeName && e.nodeName.toLowerCase() === t
                            }
                        },
                        CLASS: function (e) {
                            var t = B[e + " "];
                            return t || (t = new RegExp("(^|" + ee + ")" + e + "(" + ee + "|$)")) && B(e, function (e) {
                                return t.test("string" == typeof e.className && e.className || void 0 !== e.getAttribute && e.getAttribute("class") || "")
                            })
                        },
                        ATTR: function (e, n, r) {
                            return function (o) {
                                var i = t.attr(o, e);
                                return null == i ? "!=" === n : !n || (i += "", "=" === n ? i === r : "!=" === n ? i !== r : "^=" === n ? r && 0 === i.indexOf(r) : "*=" === n ? r && i.indexOf(r) > -1 : "$=" === n ? r && i.slice(-r.length) === r : "~=" === n ? (" " + i.replace(oe, " ") + " ").indexOf(r) > -1 : "|=" === n && (i === r || i.slice(0, r.length + 1) === r + "-"))
                            }
                        },
                        CHILD: function (e, t, n, r, o) {
                            var i = "nth" !== e.slice(0, 3),
                                a = "last" !== e.slice(-4),
                                s = "of-type" === t;
                            return 1 === r && 0 === o ? function (e) {
                                return !!e.parentNode
                            } : function (t, n, c) {
                                var u, l, f, p, d, h, g = i !== a ? "nextSibling" : "previousSibling",
                                    m = t.parentNode,
                                    y = s && t.nodeName.toLowerCase(),
                                    v = !c && !s,
                                    x = !1;
                                if (m) {
                                    if (i) {
                                        for (; g;) {
                                            for (p = t; p = p[g];)
                                                if (s ? p.nodeName.toLowerCase() === y : 1 === p.nodeType) return !1;
                                            h = g = "only" === e && !h && "nextSibling"
                                        }
                                        return !0
                                    }
                                    if (h = [a ? m.firstChild : m.lastChild], a && v) {
                                        for (p = m, f = p[H] || (p[H] = {}), l = f[p.uniqueID] || (f[p.uniqueID] = {}), u = l[e] || [], d = u[0] === M && u[1], x = d && u[2], p = d && m.childNodes[d]; p = ++d && p && p[g] || (x = d = 0) || h.pop();)
                                            if (1 === p.nodeType && ++x && p === t) {
                                                l[e] = [M, d, x];
                                                break
                                            }
                                    } else if (v && (p = t, f = p[H] || (p[H] = {}), l = f[p.uniqueID] || (f[p.uniqueID] = {}), u = l[e] || [], d = u[0] === M && u[1], x = d), !1 === x)
                                        for (;
                                            (p = ++d && p && p[g] || (x = d = 0) || h.pop()) && ((s ? p.nodeName.toLowerCase() !== y : 1 !== p.nodeType) || !++x || (v && (f = p[H] || (p[H] = {}), l = f[p.uniqueID] || (f[p.uniqueID] = {}), l[e] = [M, x]), p !== t)););
                                    return (x -= o) === r || x % r == 0 && x / r >= 0
                                }
                            }
                        },
                        PSEUDO: function (e, n) {
                            var o, i = b.pseudos[e] || b.setFilters[e.toLowerCase()] || t.error("unsupported pseudo: " + e);
                            return i[H] ? i(n) : i.length > 1 ? (o = [e, e, "", n], b.setFilters.hasOwnProperty(e.toLowerCase()) ? r(function (e, t) {
                                for (var r, o = i(e, n), a = o.length; a--;) r = Q(e, o[a]), e[r] = !(t[r] = o[a])
                            }) : function (e) {
                                return i(e, 0, o)
                            }) : i
                        }
                    },
                    pseudos: {
                        not: r(function (e) {
                            var t = [],
                                n = [],
                                o = E(e.replace(ie, "$1"));
                            return o[H] ? r(function (e, t, n, r) {
                                for (var i, a = o(e, null, r, []), s = e.length; s--;)(i = a[s]) && (e[s] = !(t[s] = i))
                            }) : function (e, r, i) {
                                return t[0] = e, o(t, null, i, n), t[0] = null, !n.pop()
                            }
                        }),
                        has: r(function (e) {
                            return function (n) {
                                return t(e, n).length > 0
                            }
                        }),
                        contains: r(function (e) {
                            return e = e.replace(ye, ve),
                                function (t) {
                                    return (t.textContent || t.innerText || _(t)).indexOf(e) > -1
                                }
                        }),
                        lang: r(function (e) {
                            return le.test(e || "") || t.error("unsupported lang: " + e), e = e.replace(ye, ve).toLowerCase(),
                                function (t) {
                                    var n;
                                    do {
                                        if (n = D ? t.lang : t.getAttribute("xml:lang") || t.getAttribute("lang")) return (n = n.toLowerCase()) === e || 0 === n.indexOf(e + "-")
                                    } while ((t = t.parentNode) && 1 === t.nodeType);
                                    return !1
                                }
                        }),
                        target: function (t) {
                            var n = e.location && e.location.hash;
                            return n && n.slice(1) === t.id
                        },
                        root: function (e) {
                            return e === N
                        },
                        focus: function (e) {
                            return e === I.activeElement && (!I.hasFocus || I.hasFocus()) && !!(e.type || e.href || ~e.tabIndex)
                        },
                        enabled: s(!1),
                        disabled: s(!0),
                        checked: function (e) {
                            var t = e.nodeName.toLowerCase();
                            return "input" === t && !!e.checked || "option" === t && !!e.selected
                        },
                        selected: function (e) {
                            return e.parentNode && e.parentNode.selectedIndex, !0 === e.selected
                        },
                        empty: function (e) {
                            for (e = e.firstChild; e; e = e.nextSibling)
                                if (e.nodeType < 6) return !1;
                            return !0
                        },
                        parent: function (e) {
                            return !b.pseudos.empty(e)
                        },
                        header: function (e) {
                            return de.test(e.nodeName)
                        },
                        input: function (e) {
                            return pe.test(e.nodeName)
                        },
                        button: function (e) {
                            var t = e.nodeName.toLowerCase();
                            return "input" === t && "button" === e.type || "button" === t
                        },
                        text: function (e) {
                            var t;
                            return "input" === e.nodeName.toLowerCase() && "text" === e.type && (null == (t = e.getAttribute("type")) || "text" === t.toLowerCase())
                        },
                        first: c(function () {
                            return [0]
                        }),
                        last: c(function (e, t) {
                            return [t - 1]
                        }),
                        eq: c(function (e, t, n) {
                            return [n < 0 ? n + t : n]
                        }),
                        even: c(function (e, t) {
                            for (var n = 0; n < t; n += 2) e.push(n);
                            return e
                        }),
                        odd: c(function (e, t) {
                            for (var n = 1; n < t; n += 2) e.push(n);
                            return e
                        }),
                        lt: c(function (e, t, n) {
                            for (var r = n < 0 ? n + t : n; --r >= 0;) e.push(r);
                            return e
                        }),
                        gt: c(function (e, t, n) {
                            for (var r = n < 0 ? n + t : n; ++r < t;) e.push(r);
                            return e
                        })
                    }
                }, b.pseudos.nth = b.pseudos.eq;
                for (x in {
                        radio: !0,
                        checkbox: !0,
                        file: !0,
                        password: !0,
                        image: !0
                    }) b.pseudos[x] = function (e) {
                    return function (t) {
                        return "input" === t.nodeName.toLowerCase() && t.type === e
                    }
                }(x);
                for (x in {
                        submit: !0,
                        reset: !0
                    }) b.pseudos[x] = function (e) {
                    return function (t) {
                        var n = t.nodeName.toLowerCase();
                        return ("input" === n || "button" === n) && t.type === e
                    }
                }(x);
                return l.prototype = b.filters = b.pseudos, b.setFilters = new l, A = t.tokenize = function (e, n) {
                    var r, o, i, a, s, c, u, l = F[e + " "];
                    if (l) return n ? 0 : l.slice(0);
                    for (s = e, c = [], u = b.preFilter; s;) {
                        r && !(o = ae.exec(s)) || (o && (s = s.slice(o[0].length) || s), c.push(i = [])), r = !1, (o = se.exec(s)) && (r = o.shift(), i.push({
                            value: r,
                            type: o[0].replace(ie, " ")
                        }), s = s.slice(r.length));
                        for (a in b.filter) !(o = fe[a].exec(s)) || u[a] && !(o = u[a](o)) || (r = o.shift(), i.push({
                            value: r,
                            type: a,
                            matches: o
                        }), s = s.slice(r.length));
                        if (!r) break
                    }
                    return n ? s.length : s ? t.error(e) : F(e, c).slice(0)
                }, E = t.compile = function (e, t) {
                    var n, r = [],
                        o = [],
                        i = $[e + " "];
                    if (!i) {
                        for (t || (t = A(e)), n = t.length; n--;) i = y(t[n]), i[H] ? r.push(i) : o.push(i);
                        i = $(e, v(o, r)), i.selector = e
                    }
                    return i
                }, S = t.select = function (e, t, n, r) {
                    var o, i, a, s, c, l = "function" == typeof e && e,
                        p = !r && A(e = l.selector || e);
                    if (n = n || [], 1 === p.length) {
                        if (i = p[0] = p[0].slice(0), i.length > 2 && "ID" === (a = i[0]).type && 9 === t.nodeType && D && b.relative[i[1].type]) {
                            if (!(t = (b.find.ID(a.matches[0].replace(ye, ve), t) || [])[0])) return n;
                            l && (t = t.parentNode), e = e.slice(i.shift().value.length)
                        }
                        for (o = fe.needsContext.test(e) ? 0 : i.length; o-- && (a = i[o], !b.relative[s = a.type]);)
                            if ((c = b.find[s]) && (r = c(a.matches[0].replace(ye, ve), me.test(i[0].type) && u(t.parentNode) || t))) {
                                if (i.splice(o, 1), !(e = r.length && f(i))) return K.apply(n, r), n;
                                break
                            }
                    }
                    return (l || E(e, p))(r, t, !D, n, !t || me.test(e) && u(t.parentNode) || t), n
                }, w.sortStable = H.split("").sort(G).join("") === H, w.detectDuplicates = !!P, O(), w.sortDetached = o(function (e) {
                    return 1 & e.compareDocumentPosition(I.createElement("fieldset"))
                }), o(function (e) {
                    return e.innerHTML = "<a href='#'></a>", "#" === e.firstChild.getAttribute("href")
                }) || i("type|href|height|width", function (e, t, n) {
                    if (!n) return e.getAttribute(t, "type" === t.toLowerCase() ? 1 : 2)
                }), w.attributes && o(function (e) {
                    return e.innerHTML = "<input/>", e.firstChild.setAttribute("value", ""), "" === e.firstChild.getAttribute("value")
                }) || i("value", function (e, t, n) {
                    if (!n && "input" === e.nodeName.toLowerCase()) return e.defaultValue
                }), o(function (e) {
                    return null == e.getAttribute("disabled")
                }) || i(Z, function (e, t, n) {
                    var r;
                    if (!n) return !0 === e[t] ? t.toLowerCase() : (r = e.getAttributeNode(t)) && r.specified ? r.value : null
                }), t
            }(n);
            Ee.find = ke, Ee.expr = ke.selectors, Ee.expr[":"] = Ee.expr.pseudos, Ee.uniqueSort = Ee.unique = ke.uniqueSort, Ee.text = ke.getText, Ee.isXMLDoc = ke.isXML, Ee.contains = ke.contains, Ee.escapeSelector = ke.escape;
            var Ce = function (e, t, n) {
                    for (var r = [], o = void 0 !== n;
                        (e = e[t]) && 9 !== e.nodeType;)
                        if (1 === e.nodeType) {
                            if (o && Ee(e).is(n)) break;
                            r.push(e)
                        }
                    return r
                },
                Pe = function (e, t) {
                    for (var n = []; e; e = e.nextSibling) 1 === e.nodeType && e !== t && n.push(e);
                    return n
                },
                Oe = Ee.expr.match.needsContext,
                Ie = /^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?:<\/\1>|)$/i;
            Ee.filter = function (e, t, n) {
                var r = t[0];
                return n && (e = ":not(" + e + ")"), 1 === t.length && 1 === r.nodeType ? Ee.find.matchesSelector(r, e) ? [r] : [] : Ee.find.matches(e, Ee.grep(t, function (e) {
                    return 1 === e.nodeType
                }))
            }, Ee.fn.extend({
                find: function (e) {
                    var t, n, r = this.length,
                        o = this;
                    if ("string" != typeof e) return this.pushStack(Ee(e).filter(function () {
                        for (t = 0; t < r; t++)
                            if (Ee.contains(o[t], this)) return !0
                    }));
                    for (n = this.pushStack([]), t = 0; t < r; t++) Ee.find(e, o[t], n);
                    return r > 1 ? Ee.uniqueSort(n) : n
                },
                filter: function (e) {
                    return this.pushStack(l(this, e || [], !1))
                },
                not: function (e) {
                    return this.pushStack(l(this, e || [], !0))
                },
                is: function (e) {
                    return !!l(this, "string" == typeof e && Oe.test(e) ? Ee(e) : e || [], !1).length
                }
            });
            var Ne, De = /^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;
            (Ee.fn.init = function (e, t, n) {
                var r, o;
                if (!e) return this;
                if (n = n || Ne, "string" == typeof e) {
                    if (!(r = "<" === e[0] && ">" === e[e.length - 1] && e.length >= 3 ? [null, e, null] : De.exec(e)) || !r[1] && t) return !t || t.jquery ? (t || n).find(e) : this.constructor(t).find(e);
                    if (r[1]) {
                        if (t = t instanceof Ee ? t[0] : t, Ee.merge(this, Ee.parseHTML(r[1], t && t.nodeType ? t.ownerDocument || t : le, !0)), Ie.test(r[1]) && Ee.isPlainObject(t))
                            for (r in t) _e(this[r]) ? this[r](t[r]) : this.attr(r, t[r]);
                        return this
                    }
                    return o = le.getElementById(r[2]), o && (this[0] = o, this.length = 1), this
                }
                return e.nodeType ? (this[0] = e, this.length = 1, this) : _e(e) ? void 0 !== n.ready ? n.ready(e) : e(Ee) : Ee.makeArray(e, this)
            }).prototype = Ee.fn, Ne = Ee(le);
            var je = /^(?:parents|prev(?:Until|All))/,
                Le = {
                    children: !0,
                    contents: !0,
                    next: !0,
                    prev: !0
                };
            Ee.fn.extend({
                has: function (e) {
                    var t = Ee(e, this),
                        n = t.length;
                    return this.filter(function () {
                        for (var e = 0; e < n; e++)
                            if (Ee.contains(this, t[e])) return !0
                    })
                },
                closest: function (e, t) {
                    var n, r = 0,
                        o = this.length,
                        i = [],
                        a = "string" != typeof e && Ee(e);
                    if (!Oe.test(e))
                        for (; r < o; r++)
                            for (n = this[r]; n && n !== t; n = n.parentNode)
                                if (n.nodeType < 11 && (a ? a.index(n) > -1 : 1 === n.nodeType && Ee.find.matchesSelector(n, e))) {
                                    i.push(n);
                                    break
                                }
                    return this.pushStack(i.length > 1 ? Ee.uniqueSort(i) : i)
                },
                index: function (e) {
                    return e ? "string" == typeof e ? ge.call(Ee(e), this[0]) : ge.call(this, e.jquery ? e[0] : e) : this[0] && this[0].parentNode ? this.first().prevAll().length : -1
                },
                add: function (e, t) {
                    return this.pushStack(Ee.uniqueSort(Ee.merge(this.get(), Ee(e, t))))
                },
                addBack: function (e) {
                    return this.add(null == e ? this.prevObject : this.prevObject.filter(e))
                }
            }), Ee.each({
                parent: function (e) {
                    var t = e.parentNode;
                    return t && 11 !== t.nodeType ? t : null
                },
                parents: function (e) {
                    return Ce(e, "parentNode")
                },
                parentsUntil: function (e, t, n) {
                    return Ce(e, "parentNode", n)
                },
                next: function (e) {
                    return f(e, "nextSibling")
                },
                prev: function (e) {
                    return f(e, "previousSibling")
                },
                nextAll: function (e) {
                    return Ce(e, "nextSibling")
                },
                prevAll: function (e) {
                    return Ce(e, "previousSibling")
                },
                nextUntil: function (e, t, n) {
                    return Ce(e, "nextSibling", n)
                },
                prevUntil: function (e, t, n) {
                    return Ce(e, "previousSibling", n)
                },
                siblings: function (e) {
                    return Pe((e.parentNode || {}).firstChild, e)
                },
                children: function (e) {
                    return Pe(e.firstChild)
                },
                contents: function (e) {
                    return u(e, "iframe") ? e.contentDocument : (u(e, "template") && (e = e.content || e), Ee.merge([], e.childNodes))
                }
            }, function (e, t) {
                Ee.fn[e] = function (n, r) {
                    var o = Ee.map(this, t, n);
                    return "Until" !== e.slice(-5) && (r = n), r && "string" == typeof r && (o = Ee.filter(r, o)), this.length > 1 && (Le[e] || Ee.uniqueSort(o), je.test(e) && o.reverse()), this.pushStack(o)
                }
            });
            var Re = /[^\x20\t\r\n\f]+/g;
            Ee.Callbacks = function (e) {
                e = "string" == typeof e ? p(e) : Ee.extend({}, e);
                var t, n, r, o, i = [],
                    a = [],
                    c = -1,
                    u = function () {
                        for (o = o || e.once, r = t = !0; a.length; c = -1)
                            for (n = a.shift(); ++c < i.length;) !1 === i[c].apply(n[0], n[1]) && e.stopOnFalse && (c = i.length, n = !1);
                        e.memory || (n = !1), t = !1, o && (i = n ? [] : "")
                    },
                    l = {
                        add: function () {
                            return i && (n && !t && (c = i.length - 1, a.push(n)), function t(n) {
                                Ee.each(n, function (n, r) {
                                    _e(r) ? e.unique && l.has(r) || i.push(r) : r && r.length && "string" !== s(r) && t(r)
                                })
                            }(arguments), n && !t && u()), this
                        },
                        remove: function () {
                            return Ee.each(arguments, function (e, t) {
                                for (var n;
                                    (n = Ee.inArray(t, i, n)) > -1;) i.splice(n, 1), n <= c && c--
                            }), this
                        },
                        has: function (e) {
                            return e ? Ee.inArray(e, i) > -1 : i.length > 0
                        },
                        empty: function () {
                            return i && (i = []), this
                        },
                        disable: function () {
                            return o = a = [], i = n = "", this
                        },
                        disabled: function () {
                            return !i
                        },
                        lock: function () {
                            return o = a = [], n || t || (i = n = ""), this
                        },
                        locked: function () {
                            return !!o
                        },
                        fireWith: function (e, n) {
                            return o || (n = n || [], n = [e, n.slice ? n.slice() : n], a.push(n), t || u()), this
                        },
                        fire: function () {
                            return l.fireWith(this, arguments), this
                        },
                        fired: function () {
                            return !!r
                        }
                    };
                return l
            }, Ee.extend({
                Deferred: function (e) {
                    var t = [
                            ["notify", "progress", Ee.Callbacks("memory"), Ee.Callbacks("memory"), 2],
                            ["resolve", "done", Ee.Callbacks("once memory"), Ee.Callbacks("once memory"), 0, "resolved"],
                            ["reject", "fail", Ee.Callbacks("once memory"), Ee.Callbacks("once memory"), 1, "rejected"]
                        ],
                        r = "pending",
                        o = {
                            state: function () {
                                return r
                            },
                            always: function () {
                                return i.done(arguments).fail(arguments), this
                            },
                            catch: function (e) {
                                return o.then(null, e)
                            },
                            pipe: function () {
                                var e = arguments;
                                return Ee.Deferred(function (n) {
                                    Ee.each(t, function (t, r) {
                                        var o = _e(e[r[4]]) && e[r[4]];
                                        i[r[1]](function () {
                                            var e = o && o.apply(this, arguments);
                                            e && _e(e.promise) ? e.promise().progress(n.notify).done(n.resolve).fail(n.reject) : n[r[0] + "With"](this, o ? [e] : arguments)
                                        })
                                    }), e = null
                                }).promise()
                            },
                            then: function (e, r, o) {
                                function i(e, t, r, o) {
                                    return function () {
                                        var s = this,
                                            c = arguments,
                                            u = function () {
                                                var n, u;
                                                if (!(e < a)) {
                                                    if ((n = r.apply(s, c)) === t.promise()) throw new TypeError("Thenable self-resolution");
                                                    u = n && ("object" == typeof n || "function" == typeof n) && n.then, _e(u) ? o ? u.call(n, i(a, t, d, o), i(a, t, h, o)) : (a++, u.call(n, i(a, t, d, o), i(a, t, h, o), i(a, t, d, t.notifyWith))) : (r !== d && (s = void 0, c = [n]), (o || t.resolveWith)(s, c))
                                                }
                                            },
                                            l = o ? u : function () {
                                                try {
                                                    u()
                                                } catch (n) {
                                                    Ee.Deferred.exceptionHook && Ee.Deferred.exceptionHook(n, l.stackTrace), e + 1 >= a && (r !== h && (s = void 0, c = [n]), t.rejectWith(s, c))
                                                }
                                            };
                                        e ? l() : (Ee.Deferred.getStackHook && (l.stackTrace = Ee.Deferred.getStackHook()), n.setTimeout(l))
                                    }
                                }
                                var a = 0;
                                return Ee.Deferred(function (n) {
                                    t[0][3].add(i(0, n, _e(o) ? o : d, n.notifyWith)), t[1][3].add(i(0, n, _e(e) ? e : d)), t[2][3].add(i(0, n, _e(r) ? r : h))
                                }).promise()
                            },
                            promise: function (e) {
                                return null != e ? Ee.extend(e, o) : o
                            }
                        },
                        i = {};
                    return Ee.each(t, function (e, n) {
                        var a = n[2],
                            s = n[5];
                        o[n[1]] = a.add, s && a.add(function () {
                            r = s
                        }, t[3 - e][2].disable, t[3 - e][3].disable, t[0][2].lock, t[0][3].lock), a.add(n[3].fire), i[n[0]] = function () {
                            return i[n[0] + "With"](this === i ? void 0 : this, arguments), this
                        }, i[n[0] + "With"] = a.fireWith
                    }), o.promise(i), e && e.call(i, i), i
                },
                when: function (e) {
                    var t = arguments.length,
                        n = t,
                        r = Array(n),
                        o = pe.call(arguments),
                        i = Ee.Deferred(),
                        a = function (e) {
                            return function (n) {
                                r[e] = this, o[e] = arguments.length > 1 ? pe.call(arguments) : n, --t || i.resolveWith(r, o)
                            }
                        };
                    if (t <= 1 && (g(e, i.done(a(n)).resolve, i.reject, !t), "pending" === i.state() || _e(o[n] && o[n].then))) return i.then();
                    for (; n--;) g(o[n], a(n), i.reject);
                    return i.promise()
                }
            });
            var qe = /^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;
            Ee.Deferred.exceptionHook = function (e, t) {
                n.console && n.console.warn && e && qe.test(e.name) && n.console.warn("jQuery.Deferred exception: " + e.message, e.stack, t)
            }, Ee.readyException = function (e) {
                n.setTimeout(function () {
                    throw e
                })
            };
            var He = Ee.Deferred();
            Ee.fn.ready = function (e) {
                return He.then(e).catch(function (e) {
                    Ee.readyException(e)
                }), this
            }, Ee.extend({
                isReady: !1,
                readyWait: 1,
                ready: function (e) {
                    (!0 === e ? --Ee.readyWait : Ee.isReady) || (Ee.isReady = !0, !0 !== e && --Ee.readyWait > 0 || He.resolveWith(le, [Ee]))
                }
            }), Ee.ready.then = He.then, "complete" === le.readyState || "loading" !== le.readyState && !le.documentElement.doScroll ? n.setTimeout(Ee.ready) : (le.addEventListener("DOMContentLoaded", m), n.addEventListener("load", m));
            var Ue = function (e, t, n, r, o, i, a) {
                    var c = 0,
                        u = e.length,
                        l = null == n;
                    if ("object" === s(n)) {
                        o = !0;
                        for (c in n) Ue(e, t, c, n[c], !0, i, a)
                    } else if (void 0 !== r && (o = !0, _e(r) || (a = !0), l && (a ? (t.call(e, r), t = null) : (l = t, t = function (e, t, n) {
                            return l.call(Ee(e), n)
                        })), t))
                        for (; c < u; c++) t(e[c], n, a ? r : r.call(e[c], c, t(e[c], n)));
                    return o ? e : l ? t.call(e) : u ? t(e[0], n) : i
                },
                Me = /^-ms-/,
                We = /-([a-z])/g,
                Be = function (e) {
                    return 1 === e.nodeType || 9 === e.nodeType || !+e.nodeType
                };
            x.uid = 1, x.prototype = {
                cache: function (e) {
                    var t = e[this.expando];
                    return t || (t = {}, Be(e) && (e.nodeType ? e[this.expando] = t : Object.defineProperty(e, this.expando, {
                        value: t,
                        configurable: !0
                    }))), t
                },
                set: function (e, t, n) {
                    var r, o = this.cache(e);
                    if ("string" == typeof t) o[v(t)] = n;
                    else
                        for (r in t) o[v(r)] = t[r];
                    return o
                },
                get: function (e, t) {
                    return void 0 === t ? this.cache(e) : e[this.expando] && e[this.expando][v(t)]
                },
                access: function (e, t, n) {
                    return void 0 === t || t && "string" == typeof t && void 0 === n ? this.get(e, t) : (this.set(e, t, n), void 0 !== n ? n : t)
                },
                remove: function (e, t) {
                    var n, r = e[this.expando];
                    if (void 0 !== r) {
                        if (void 0 !== t) {
                            Array.isArray(t) ? t = t.map(v) : (t = v(t), t = t in r ? [t] : t.match(Re) || []), n = t.length;
                            for (; n--;) delete r[t[n]]
                        }(void 0 === t || Ee.isEmptyObject(r)) && (e.nodeType ? e[this.expando] = void 0 : delete e[this.expando])
                    }
                },
                hasData: function (e) {
                    var t = e[this.expando];
                    return void 0 !== t && !Ee.isEmptyObject(t)
                }
            };
            var Fe = new x,
                $e = new x,
                Ge = /^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,
                Ve = /[A-Z]/g;
            Ee.extend({
                hasData: function (e) {
                    return $e.hasData(e) || Fe.hasData(e)
                },
                data: function (e, t, n) {
                    return $e.access(e, t, n)
                },
                removeData: function (e, t) {
                    $e.remove(e, t)
                },
                _data: function (e, t, n) {
                    return Fe.access(e, t, n)
                },
                _removeData: function (e, t) {
                    Fe.remove(e, t)
                }
            }), Ee.fn.extend({
                data: function (e, t) {
                    var n, r, o, i = this[0],
                        a = i && i.attributes;
                    if (void 0 === e) {
                        if (this.length && (o = $e.get(i), 1 === i.nodeType && !Fe.get(i, "hasDataAttrs"))) {
                            for (n = a.length; n--;) a[n] && (r = a[n].name, 0 === r.indexOf("data-") && (r = v(r.slice(5)), b(i, r, o[r])));
                            Fe.set(i, "hasDataAttrs", !0)
                        }
                        return o
                    }
                    return "object" == typeof e ? this.each(function () {
                        $e.set(this, e)
                    }) : Ue(this, function (t) {
                        var n;
                        if (i && void 0 === t) {
                            if (void 0 !== (n = $e.get(i, e))) return n;
                            if (void 0 !== (n = b(i, e))) return n
                        } else this.each(function () {
                            $e.set(this, e, t)
                        })
                    }, null, t, arguments.length > 1, null, !0)
                },
                removeData: function (e) {
                    return this.each(function () {
                        $e.remove(this, e)
                    })
                }
            }), Ee.extend({
                queue: function (e, t, n) {
                    var r;
                    if (e) return t = (t || "fx") + "queue", r = Fe.get(e, t), n && (!r || Array.isArray(n) ? r = Fe.access(e, t, Ee.makeArray(n)) : r.push(n)), r || []
                },
                dequeue: function (e, t) {
                    t = t || "fx";
                    var n = Ee.queue(e, t),
                        r = n.length,
                        o = n.shift(),
                        i = Ee._queueHooks(e, t),
                        a = function () {
                            Ee.dequeue(e, t)
                        };
                    "inprogress" === o && (o = n.shift(), r--), o && ("fx" === t && n.unshift("inprogress"), delete i.stop, o.call(e, a, i)), !r && i && i.empty.fire()
                },
                _queueHooks: function (e, t) {
                    var n = t + "queueHooks";
                    return Fe.get(e, n) || Fe.access(e, n, {
                        empty: Ee.Callbacks("once memory").add(function () {
                            Fe.remove(e, [t + "queue", n])
                        })
                    })
                }
            }), Ee.fn.extend({
                queue: function (e, t) {
                    var n = 2;
                    return "string" != typeof e && (t = e, e = "fx", n--), arguments.length < n ? Ee.queue(this[0], e) : void 0 === t ? this : this.each(function () {
                        var n = Ee.queue(this, e, t);
                        Ee._queueHooks(this, e), "fx" === e && "inprogress" !== n[0] && Ee.dequeue(this, e)
                    })
                },
                dequeue: function (e) {
                    return this.each(function () {
                        Ee.dequeue(this, e)
                    })
                },
                clearQueue: function (e) {
                    return this.queue(e || "fx", [])
                },
                promise: function (e, t) {
                    var n, r = 1,
                        o = Ee.Deferred(),
                        i = this,
                        a = this.length,
                        s = function () {
                            --r || o.resolveWith(i, [i])
                        };
                    for ("string" != typeof e && (t = e, e = void 0), e = e || "fx"; a--;)(n = Fe.get(i[a], e + "queueHooks")) && n.empty && (r++, n.empty.add(s));
                    return s(), o.promise(t)
                }
            });
            var ze = /[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,
                Xe = new RegExp("^(?:([+-])=|)(" + ze + ")([a-z%]*)$", "i"),
                Ye = ["Top", "Right", "Bottom", "Left"],
                Ke = function (e, t) {
                    return e = t || e, "none" === e.style.display || "" === e.style.display && Ee.contains(e.ownerDocument, e) && "none" === Ee.css(e, "display")
                },
                Je = function (e, t, n, r) {
                    var o, i, a = {};
                    for (i in t) a[i] = e.style[i], e.style[i] = t[i];
                    o = n.apply(e, r || []);
                    for (i in t) e.style[i] = a[i];
                    return o
                },
                Qe = {};
            Ee.fn.extend({
                show: function () {
                    return A(this, !0)
                },
                hide: function () {
                    return A(this)
                },
                toggle: function (e) {
                    return "boolean" == typeof e ? e ? this.show() : this.hide() : this.each(function () {
                        Ke(this) ? Ee(this).show() : Ee(this).hide()
                    })
                }
            });
            var Ze = /^(?:checkbox|radio)$/i,
                et = /<([a-z][^\/\0>\x20\t\r\n\f]+)/i,
                tt = /^$|^module$|\/(?:java|ecma)script/i,
                nt = {
                    option: [1, "<select multiple='multiple'>", "</select>"],
                    thead: [1, "<table>", "</table>"],
                    col: [2, "<table><colgroup>", "</colgroup></table>"],
                    tr: [2, "<table><tbody>", "</tbody></table>"],
                    td: [3, "<table><tbody><tr>", "</tr></tbody></table>"],
                    _default: [0, "", ""]
                };
            nt.optgroup = nt.option, nt.tbody = nt.tfoot = nt.colgroup = nt.caption = nt.thead, nt.th = nt.td;
            var rt = /<|&#?\w+;/;
            ! function () {
                var e = le.createDocumentFragment(),
                    t = e.appendChild(le.createElement("div")),
                    n = le.createElement("input");
                n.setAttribute("type", "radio"), n.setAttribute("checked", "checked"), n.setAttribute("name", "t"), t.appendChild(n), be.checkClone = t.cloneNode(!0).cloneNode(!0).lastChild.checked, t.innerHTML = "<textarea>x</textarea>", be.noCloneChecked = !!t.cloneNode(!0).lastChild.defaultValue
            }();
            var ot = le.documentElement,
                it = /^key/,
                at = /^(?:mouse|pointer|contextmenu|drag|drop)|click/,
                st = /^([^.]*)(?:\.(.+)|)/;
            Ee.event = {
                global: {},
                add: function (e, t, n, r, o) {
                    var i, a, s, c, u, l, f, p, d, h, g, m = Fe.get(e);
                    if (m)
                        for (n.handler && (i = n, n = i.handler, o = i.selector), o && Ee.find.matchesSelector(ot, o), n.guid || (n.guid = Ee.guid++), (c = m.events) || (c = m.events = {}), (a = m.handle) || (a = m.handle = function (t) {
                                return void 0 !== Ee && Ee.event.triggered !== t.type ? Ee.event.dispatch.apply(e, arguments) : void 0
                            }), t = (t || "").match(Re) || [""], u = t.length; u--;) s = st.exec(t[u]) || [], d = g = s[1], h = (s[2] || "").split(".").sort(), d && (f = Ee.event.special[d] || {}, d = (o ? f.delegateType : f.bindType) || d, f = Ee.event.special[d] || {}, l = Ee.extend({
                            type: d,
                            origType: g,
                            data: r,
                            handler: n,
                            guid: n.guid,
                            selector: o,
                            needsContext: o && Ee.expr.match.needsContext.test(o),
                            namespace: h.join(".")
                        }, i), (p = c[d]) || (p = c[d] = [], p.delegateCount = 0, f.setup && !1 !== f.setup.call(e, r, h, a) || e.addEventListener && e.addEventListener(d, a)), f.add && (f.add.call(e, l), l.handler.guid || (l.handler.guid = n.guid)), o ? p.splice(p.delegateCount++, 0, l) : p.push(l), Ee.event.global[d] = !0)
                },
                remove: function (e, t, n, r, o) {
                    var i, a, s, c, u, l, f, p, d, h, g, m = Fe.hasData(e) && Fe.get(e);
                    if (m && (c = m.events)) {
                        for (t = (t || "").match(Re) || [""], u = t.length; u--;)
                            if (s = st.exec(t[u]) || [], d = g = s[1], h = (s[2] || "").split(".").sort(), d) {
                                for (f = Ee.event.special[d] || {}, d = (r ? f.delegateType : f.bindType) || d, p = c[d] || [], s = s[2] && new RegExp("(^|\\.)" + h.join("\\.(?:.*\\.|)") + "(\\.|$)"), a = i = p.length; i--;) l = p[i], !o && g !== l.origType || n && n.guid !== l.guid || s && !s.test(l.namespace) || r && r !== l.selector && ("**" !== r || !l.selector) || (p.splice(i, 1), l.selector && p.delegateCount--, f.remove && f.remove.call(e, l));
                                a && !p.length && (f.teardown && !1 !== f.teardown.call(e, h, m.handle) || Ee.removeEvent(e, d, m.handle), delete c[d])
                            } else
                                for (d in c) Ee.event.remove(e, d + t[u], n, r, !0);
                        Ee.isEmptyObject(c) && Fe.remove(e, "handle events")
                    }
                },
                dispatch: function (e) {
                    var t, n, r, o, i, a, s = Ee.event.fix(e),
                        c = new Array(arguments.length),
                        u = (Fe.get(this, "events") || {})[s.type] || [],
                        l = Ee.event.special[s.type] || {};
                    for (c[0] = s, t = 1; t < arguments.length; t++) c[t] = arguments[t];
                    if (s.delegateTarget = this, !l.preDispatch || !1 !== l.preDispatch.call(this, s)) {
                        for (a = Ee.event.handlers.call(this, s, u), t = 0;
                            (o = a[t++]) && !s.isPropagationStopped();)
                            for (s.currentTarget = o.elem, n = 0;
                                (i = o.handlers[n++]) && !s.isImmediatePropagationStopped();) s.rnamespace && !s.rnamespace.test(i.namespace) || (s.handleObj = i, s.data = i.data, void 0 !== (r = ((Ee.event.special[i.origType] || {}).handle || i.handler).apply(o.elem, c)) && !1 === (s.result = r) && (s.preventDefault(), s.stopPropagation()));
                        return l.postDispatch && l.postDispatch.call(this, s), s.result
                    }
                },
                handlers: function (e, t) {
                    var n, r, o, i, a, s = [],
                        c = t.delegateCount,
                        u = e.target;
                    if (c && u.nodeType && !("click" === e.type && e.button >= 1))
                        for (; u !== this; u = u.parentNode || this)
                            if (1 === u.nodeType && ("click" !== e.type || !0 !== u.disabled)) {
                                for (i = [], a = {}, n = 0; n < c; n++) r = t[n], o = r.selector + " ", void 0 === a[o] && (a[o] = r.needsContext ? Ee(o, this).index(u) > -1 : Ee.find(o, this, null, [u]).length), a[o] && i.push(r);
                                i.length && s.push({
                                    elem: u,
                                    handlers: i
                                })
                            }
                    return u = this, c < t.length && s.push({
                        elem: u,
                        handlers: t.slice(c)
                    }), s
                },
                addProp: function (e, t) {
                    Object.defineProperty(Ee.Event.prototype, e, {
                        enumerable: !0,
                        configurable: !0,
                        get: _e(t) ? function () {
                            if (this.originalEvent) return t(this.originalEvent)
                        } : function () {
                            if (this.originalEvent) return this.originalEvent[e]
                        },
                        set: function (t) {
                            Object.defineProperty(this, e, {
                                enumerable: !0,
                                configurable: !0,
                                writable: !0,
                                value: t
                            })
                        }
                    })
                },
                fix: function (e) {
                    return e[Ee.expando] ? e : new Ee.Event(e)
                },
                special: {
                    load: {
                        noBubble: !0
                    },
                    focus: {
                        trigger: function () {
                            if (this !== O() && this.focus) return this.focus(), !1
                        },
                        delegateType: "focusin"
                    },
                    blur: {
                        trigger: function () {
                            if (this === O() && this.blur) return this.blur(), !1
                        },
                        delegateType: "focusout"
                    },
                    click: {
                        trigger: function () {
                            if ("checkbox" === this.type && this.click && u(this, "input")) return this.click(), !1
                        },
                        _default: function (e) {
                            return u(e.target, "a")
                        }
                    },
                    beforeunload: {
                        postDispatch: function (e) {
                            void 0 !== e.result && e.originalEvent && (e.originalEvent.returnValue = e.result)
                        }
                    }
                }
            }, Ee.removeEvent = function (e, t, n) {
                e.removeEventListener && e.removeEventListener(t, n)
            }, Ee.Event = function (e, t) {
                if (!(this instanceof Ee.Event)) return new Ee.Event(e, t);
                e && e.type ? (this.originalEvent = e, this.type = e.type, this.isDefaultPrevented = e.defaultPrevented || void 0 === e.defaultPrevented && !1 === e.returnValue ? C : P, this.target = e.target && 3 === e.target.nodeType ? e.target.parentNode : e.target, this.currentTarget = e.currentTarget, this.relatedTarget = e.relatedTarget) : this.type = e, t && Ee.extend(this, t), this.timeStamp = e && e.timeStamp || Date.now(), this[Ee.expando] = !0
            }, Ee.Event.prototype = {
                constructor: Ee.Event,
                isDefaultPrevented: P,
                isPropagationStopped: P,
                isImmediatePropagationStopped: P,
                isSimulated: !1,
                preventDefault: function () {
                    var e = this.originalEvent;
                    this.isDefaultPrevented = C, e && !this.isSimulated && e.preventDefault()
                },
                stopPropagation: function () {
                    var e = this.originalEvent;
                    this.isPropagationStopped = C, e && !this.isSimulated && e.stopPropagation()
                },
                stopImmediatePropagation: function () {
                    var e = this.originalEvent;
                    this.isImmediatePropagationStopped = C, e && !this.isSimulated && e.stopImmediatePropagation(), this.stopPropagation()
                }
            }, Ee.each({
                altKey: !0,
                bubbles: !0,
                cancelable: !0,
                changedTouches: !0,
                ctrlKey: !0,
                detail: !0,
                eventPhase: !0,
                metaKey: !0,
                pageX: !0,
                pageY: !0,
                shiftKey: !0,
                view: !0,
                char: !0,
                charCode: !0,
                key: !0,
                keyCode: !0,
                button: !0,
                buttons: !0,
                clientX: !0,
                clientY: !0,
                offsetX: !0,
                offsetY: !0,
                pointerId: !0,
                pointerType: !0,
                screenX: !0,
                screenY: !0,
                targetTouches: !0,
                toElement: !0,
                touches: !0,
                which: function (e) {
                    var t = e.button;
                    return null == e.which && it.test(e.type) ? null != e.charCode ? e.charCode : e.keyCode : !e.which && void 0 !== t && at.test(e.type) ? 1 & t ? 1 : 2 & t ? 3 : 4 & t ? 2 : 0 : e.which
                }
            }, Ee.event.addProp), Ee.each({
                mouseenter: "mouseover",
                mouseleave: "mouseout",
                pointerenter: "pointerover",
                pointerleave: "pointerout"
            }, function (e, t) {
                Ee.event.special[e] = {
                    delegateType: t,
                    bindType: t,
                    handle: function (e) {
                        var n, r = this,
                            o = e.relatedTarget,
                            i = e.handleObj;
                        return o && (o === r || Ee.contains(r, o)) || (e.type = i.origType, n = i.handler.apply(this, arguments), e.type = t), n
                    }
                }
            }), Ee.fn.extend({
                on: function (e, t, n, r) {
                    return I(this, e, t, n, r)
                },
                one: function (e, t, n, r) {
                    return I(this, e, t, n, r, 1)
                },
                off: function (e, t, n) {
                    var r, o;
                    if (e && e.preventDefault && e.handleObj) return r = e.handleObj, Ee(e.delegateTarget).off(r.namespace ? r.origType + "." + r.namespace : r.origType, r.selector, r.handler), this;
                    if ("object" == typeof e) {
                        for (o in e) this.off(o, t, e[o]);
                        return this
                    }
                    return !1 !== t && "function" != typeof t || (n = t, t = void 0), !1 === n && (n = P), this.each(function () {
                        Ee.event.remove(this, e, n, t)
                    })
                }
            });
            var ct = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([a-z][^\/\0>\x20\t\r\n\f]*)[^>]*)\/>/gi,
                ut = /<script|<style|<link/i,
                lt = /checked\s*(?:[^=]|=\s*.checked.)/i,
                ft = /^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;
            Ee.extend({
                htmlPrefilter: function (e) {
                    return e.replace(ct, "<$1></$2>")
                },
                clone: function (e, t, n) {
                    var r, o, i, a, s = e.cloneNode(!0),
                        c = Ee.contains(e.ownerDocument, e);
                    if (!(be.noCloneChecked || 1 !== e.nodeType && 11 !== e.nodeType || Ee.isXMLDoc(e)))
                        for (a = E(s), i = E(e), r = 0, o = i.length; r < o; r++) R(i[r], a[r]);
                    if (t)
                        if (n)
                            for (i = i || E(e), a = a || E(s), r = 0, o = i.length; r < o; r++) L(i[r], a[r]);
                        else L(e, s);
                    return a = E(s, "script"), a.length > 0 && S(a, !c && E(e, "script")), s
                },
                cleanData: function (e) {
                    for (var t, n, r, o = Ee.event.special, i = 0; void 0 !== (n = e[i]); i++)
                        if (Be(n)) {
                            if (t = n[Fe.expando]) {
                                if (t.events)
                                    for (r in t.events) o[r] ? Ee.event.remove(n, r) : Ee.removeEvent(n, r, t.handle);
                                n[Fe.expando] = void 0
                            }
                            n[$e.expando] && (n[$e.expando] = void 0)
                        }
                }
            }), Ee.fn.extend({
                detach: function (e) {
                    return H(this, e, !0)
                },
                remove: function (e) {
                    return H(this, e)
                },
                text: function (e) {
                    return Ue(this, function (e) {
                        return void 0 === e ? Ee.text(this) : this.empty().each(function () {
                            1 !== this.nodeType && 11 !== this.nodeType && 9 !== this.nodeType || (this.textContent = e)
                        })
                    }, null, e, arguments.length)
                },
                append: function () {
                    return q(this, arguments, function (e) {
                        if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
                            N(this, e).appendChild(e)
                        }
                    })
                },
                prepend: function () {
                    return q(this, arguments, function (e) {
                        if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
                            var t = N(this, e);
                            t.insertBefore(e, t.firstChild)
                        }
                    })
                },
                before: function () {
                    return q(this, arguments, function (e) {
                        this.parentNode && this.parentNode.insertBefore(e, this)
                    })
                },
                after: function () {
                    return q(this, arguments, function (e) {
                        this.parentNode && this.parentNode.insertBefore(e, this.nextSibling)
                    })
                },
                empty: function () {
                    for (var e, t = 0; null != (e = this[t]); t++) 1 === e.nodeType && (Ee.cleanData(E(e, !1)), e.textContent = "");
                    return this
                },
                clone: function (e, t) {
                    return e = null != e && e, t = null == t ? e : t, this.map(function () {
                        return Ee.clone(this, e, t)
                    })
                },
                html: function (e) {
                    return Ue(this, function (e) {
                        var t = this[0] || {},
                            n = 0,
                            r = this.length;
                        if (void 0 === e && 1 === t.nodeType) return t.innerHTML;
                        if ("string" == typeof e && !ut.test(e) && !nt[(et.exec(e) || ["", ""])[1].toLowerCase()]) {
                            e = Ee.htmlPrefilter(e);
                            try {
                                for (; n < r; n++) t = this[n] || {}, 1 === t.nodeType && (Ee.cleanData(E(t, !1)), t.innerHTML = e);
                                t = 0
                            } catch (e) {}
                        }
                        t && this.empty().append(e)
                    }, null, e, arguments.length)
                },
                replaceWith: function () {
                    var e = [];
                    return q(this, arguments, function (t) {
                        var n = this.parentNode;
                        Ee.inArray(this, e) < 0 && (Ee.cleanData(E(this)), n && n.replaceChild(t, this))
                    }, e)
                }
            }), Ee.each({
                appendTo: "append",
                prependTo: "prepend",
                insertBefore: "before",
                insertAfter: "after",
                replaceAll: "replaceWith"
            }, function (e, t) {
                Ee.fn[e] = function (e) {
                    for (var n, r = [], o = Ee(e), i = o.length - 1, a = 0; a <= i; a++) n = a === i ? this : this.clone(!0), Ee(o[a])[t](n), he.apply(r, n.get());
                    return this.pushStack(r)
                }
            });
            var pt = new RegExp("^(" + ze + ")(?!px)[a-z%]+$", "i"),
                dt = function (e) {
                    var t = e.ownerDocument.defaultView;
                    return t && t.opener || (t = n), t.getComputedStyle(e)
                },
                ht = new RegExp(Ye.join("|"), "i");
            ! function () {
                function e() {
                    if (u) {
                        c.style.cssText = "position:absolute;left:-11111px;width:60px;margin-top:1px;padding:0;border:0", u.style.cssText = "position:relative;display:block;box-sizing:border-box;overflow:scroll;margin:auto;border:1px;padding:1px;width:60%;top:1%", ot.appendChild(c).appendChild(u);
                        var e = n.getComputedStyle(u);
                        r = "1%" !== e.top, s = 12 === t(e.marginLeft), u.style.right = "60%", a = 36 === t(e.right), o = 36 === t(e.width), u.style.position = "absolute", i = 36 === u.offsetWidth || "absolute", ot.removeChild(c), u = null
                    }
                }

                function t(e) {
                    return Math.round(parseFloat(e))
                }
                var r, o, i, a, s, c = le.createElement("div"),
                    u = le.createElement("div");
                u.style && (u.style.backgroundClip = "content-box", u.cloneNode(!0).style.backgroundClip = "", be.clearCloneStyle = "content-box" === u.style.backgroundClip, Ee.extend(be, {
                    boxSizingReliable: function () {
                        return e(), o
                    },
                    pixelBoxStyles: function () {
                        return e(), a
                    },
                    pixelPosition: function () {
                        return e(), r
                    },
                    reliableMarginLeft: function () {
                        return e(), s
                    },
                    scrollboxSize: function () {
                        return e(), i
                    }
                }))
            }();
            var gt = /^(none|table(?!-c[ea]).+)/,
                mt = /^--/,
                yt = {
                    position: "absolute",
                    visibility: "hidden",
                    display: "block"
                },
                vt = {
                    letterSpacing: "0",
                    fontWeight: "400"
                },
                xt = ["Webkit", "Moz", "ms"],
                wt = le.createElement("div").style;
            Ee.extend({
                cssHooks: {
                    opacity: {
                        get: function (e, t) {
                            if (t) {
                                var n = U(e, "opacity");
                                return "" === n ? "1" : n
                            }
                        }
                    }
                },
                cssNumber: {
                    animationIterationCount: !0,
                    columnCount: !0,
                    fillOpacity: !0,
                    flexGrow: !0,
                    flexShrink: !0,
                    fontWeight: !0,
                    lineHeight: !0,
                    opacity: !0,
                    order: !0,
                    orphans: !0,
                    widows: !0,
                    zIndex: !0,
                    zoom: !0
                },
                cssProps: {},
                style: function (e, t, n, r) {
                    if (e && 3 !== e.nodeType && 8 !== e.nodeType && e.style) {
                        var o, i, a, s = v(t),
                            c = mt.test(t),
                            u = e.style;
                        if (c || (t = B(s)), a = Ee.cssHooks[t] || Ee.cssHooks[s], void 0 === n) return a && "get" in a && void 0 !== (o = a.get(e, !1, r)) ? o : u[t];
                        i = typeof n, "string" === i && (o = Xe.exec(n)) && o[1] && (n = _(e, t, o), i = "number"), null != n && n === n && ("number" === i && (n += o && o[3] || (Ee.cssNumber[s] ? "" : "px")), be.clearCloneStyle || "" !== n || 0 !== t.indexOf("background") || (u[t] = "inherit"), a && "set" in a && void 0 === (n = a.set(e, n, r)) || (c ? u.setProperty(t, n) : u[t] = n))
                    }
                },
                css: function (e, t, n, r) {
                    var o, i, a, s = v(t);
                    return mt.test(t) || (t = B(s)), a = Ee.cssHooks[t] || Ee.cssHooks[s], a && "get" in a && (o = a.get(e, !0, n)), void 0 === o && (o = U(e, t, r)), "normal" === o && t in vt && (o = vt[t]), "" === n || n ? (i = parseFloat(o), !0 === n || isFinite(i) ? i || 0 : o) : o
                }
            }), Ee.each(["height", "width"], function (e, t) {
                Ee.cssHooks[t] = {
                    get: function (e, n, r) {
                        if (n) return !gt.test(Ee.css(e, "display")) || e.getClientRects().length && e.getBoundingClientRect().width ? G(e, t, r) : Je(e, yt, function () {
                            return G(e, t, r)
                        })
                    },
                    set: function (e, n, r) {
                        var o, i = dt(e),
                            a = "border-box" === Ee.css(e, "boxSizing", !1, i),
                            s = r && $(e, t, r, a, i);
                        return a && be.scrollboxSize() === i.position && (s -= Math.ceil(e["offset" + t[0].toUpperCase() + t.slice(1)] - parseFloat(i[t]) - $(e, t, "border", !1, i) - .5)), s && (o = Xe.exec(n)) && "px" !== (o[3] || "px") && (e.style[t] = n, n = Ee.css(e, t)), F(e, n, s)
                    }
                }
            }), Ee.cssHooks.marginLeft = M(be.reliableMarginLeft, function (e, t) {
                if (t) return (parseFloat(U(e, "marginLeft")) || e.getBoundingClientRect().left - Je(e, {
                    marginLeft: 0
                }, function () {
                    return e.getBoundingClientRect().left
                })) + "px"
            }), Ee.each({
                margin: "",
                padding: "",
                border: "Width"
            }, function (e, t) {
                Ee.cssHooks[e + t] = {
                    expand: function (n) {
                        for (var r = 0, o = {}, i = "string" == typeof n ? n.split(" ") : [n]; r < 4; r++) o[e + Ye[r] + t] = i[r] || i[r - 2] || i[0];
                        return o
                    }
                }, "margin" !== e && (Ee.cssHooks[e + t].set = F)
            }), Ee.fn.extend({
                css: function (e, t) {
                    return Ue(this, function (e, t, n) {
                        var r, o, i = {},
                            a = 0;
                        if (Array.isArray(t)) {
                            for (r = dt(e), o = t.length; a < o; a++) i[t[a]] = Ee.css(e, t[a], !1, r);
                            return i
                        }
                        return void 0 !== n ? Ee.style(e, t, n) : Ee.css(e, t)
                    }, e, t, arguments.length > 1)
                }
            }), Ee.Tween = V, V.prototype = {
                constructor: V,
                init: function (e, t, n, r, o, i) {
                    this.elem = e, this.prop = n, this.easing = o || Ee.easing._default, this.options = t, this.start = this.now = this.cur(), this.end = r, this.unit = i || (Ee.cssNumber[n] ? "" : "px")
                },
                cur: function () {
                    var e = V.propHooks[this.prop];
                    return e && e.get ? e.get(this) : V.propHooks._default.get(this)
                },
                run: function (e) {
                    var t, n = V.propHooks[this.prop];
                    return this.options.duration ? this.pos = t = Ee.easing[this.easing](e, this.options.duration * e, 0, 1, this.options.duration) : this.pos = t = e, this.now = (this.end - this.start) * t + this.start, this.options.step && this.options.step.call(this.elem, this.now, this), n && n.set ? n.set(this) : V.propHooks._default.set(this), this
                }
            }, V.prototype.init.prototype = V.prototype, V.propHooks = {
                _default: {
                    get: function (e) {
                        var t;
                        return 1 !== e.elem.nodeType || null != e.elem[e.prop] && null == e.elem.style[e.prop] ? e.elem[e.prop] : (t = Ee.css(e.elem, e.prop, ""), t && "auto" !== t ? t : 0)
                    },
                    set: function (e) {
                        Ee.fx.step[e.prop] ? Ee.fx.step[e.prop](e) : 1 !== e.elem.nodeType || null == e.elem.style[Ee.cssProps[e.prop]] && !Ee.cssHooks[e.prop] ? e.elem[e.prop] = e.now : Ee.style(e.elem, e.prop, e.now + e.unit)
                    }
                }
            }, V.propHooks.scrollTop = V.propHooks.scrollLeft = {
                set: function (e) {
                    e.elem.nodeType && e.elem.parentNode && (e.elem[e.prop] = e.now)
                }
            }, Ee.easing = {
                linear: function (e) {
                    return e
                },
                swing: function (e) {
                    return .5 - Math.cos(e * Math.PI) / 2
                },
                _default: "swing"
            }, Ee.fx = V.prototype.init, Ee.fx.step = {};
            var bt, _t, Tt = /^(?:toggle|show|hide)$/,
                At = /queueHooks$/;
            Ee.Animation = Ee.extend(Z, {
                    tweeners: {
                        "*": [function (e, t) {
                            var n = this.createTween(e, t);
                            return _(n.elem, e, Xe.exec(t), n), n
                        }]
                    },
                    tweener: function (e, t) {
                        _e(e) ? (t = e, e = ["*"]) : e = e.match(Re);
                        for (var n, r = 0, o = e.length; r < o; r++) n = e[r], Z.tweeners[n] = Z.tweeners[n] || [], Z.tweeners[n].unshift(t)
                    },
                    prefilters: [J],
                    prefilter: function (e, t) {
                        t ? Z.prefilters.unshift(e) : Z.prefilters.push(e)
                    }
                }), Ee.speed = function (e, t, n) {
                    var r = e && "object" == typeof e ? Ee.extend({}, e) : {
                        complete: n || !n && t || _e(e) && e,
                        duration: e,
                        easing: n && t || t && !_e(t) && t
                    };
                    return Ee.fx.off ? r.duration = 0 : "number" != typeof r.duration && (r.duration in Ee.fx.speeds ? r.duration = Ee.fx.speeds[r.duration] : r.duration = Ee.fx.speeds._default), null != r.queue && !0 !== r.queue || (r.queue = "fx"), r.old = r.complete, r.complete = function () {
                        _e(r.old) && r.old.call(this), r.queue && Ee.dequeue(this, r.queue)
                    }, r
                }, Ee.fn.extend({
                    fadeTo: function (e, t, n, r) {
                        return this.filter(Ke).css("opacity", 0).show().end().animate({
                            opacity: t
                        }, e, n, r)
                    },
                    animate: function (e, t, n, r) {
                        var o = Ee.isEmptyObject(e),
                            i = Ee.speed(t, n, r),
                            a = function () {
                                var t = Z(this, Ee.extend({}, e), i);
                                (o || Fe.get(this, "finish")) && t.stop(!0)
                            };
                        return a.finish = a, o || !1 === i.queue ? this.each(a) : this.queue(i.queue, a)
                    },
                    stop: function (e, t, n) {
                        var r = function (e) {
                            var t = e.stop;
                            delete e.stop, t(n)
                        };
                        return "string" != typeof e && (n = t, t = e, e = void 0), t && !1 !== e && this.queue(e || "fx", []), this.each(function () {
                            var t = !0,
                                o = null != e && e + "queueHooks",
                                i = Ee.timers,
                                a = Fe.get(this);
                            if (o) a[o] && a[o].stop && r(a[o]);
                            else
                                for (o in a) a[o] && a[o].stop && At.test(o) && r(a[o]);
                            for (o = i.length; o--;) i[o].elem !== this || null != e && i[o].queue !== e || (i[o].anim.stop(n), t = !1, i.splice(o, 1));
                            !t && n || Ee.dequeue(this, e)
                        })
                    },
                    finish: function (e) {
                        return !1 !== e && (e = e || "fx"), this.each(function () {
                            var t, n = Fe.get(this),
                                r = n[e + "queue"],
                                o = n[e + "queueHooks"],
                                i = Ee.timers,
                                a = r ? r.length : 0;
                            for (n.finish = !0, Ee.queue(this, e, []), o && o.stop && o.stop.call(this, !0), t = i.length; t--;) i[t].elem === this && i[t].queue === e && (i[t].anim.stop(!0), i.splice(t, 1));
                            for (t = 0; t < a; t++) r[t] && r[t].finish && r[t].finish.call(this);
                            delete n.finish
                        })
                    }
                }), Ee.each(["toggle", "show", "hide"], function (e, t) {
                    var n = Ee.fn[t];
                    Ee.fn[t] = function (e, r, o) {
                        return null == e || "boolean" == typeof e ? n.apply(this, arguments) : this.animate(Y(t, !0), e, r, o)
                    }
                }), Ee.each({
                    slideDown: Y("show"),
                    slideUp: Y("hide"),
                    slideToggle: Y("toggle"),
                    fadeIn: {
                        opacity: "show"
                    },
                    fadeOut: {
                        opacity: "hide"
                    },
                    fadeToggle: {
                        opacity: "toggle"
                    }
                }, function (e, t) {
                    Ee.fn[e] = function (e, n, r) {
                        return this.animate(t, e, n, r)
                    }
                }), Ee.timers = [], Ee.fx.tick = function () {
                    var e, t = 0,
                        n = Ee.timers;
                    for (bt = Date.now(); t < n.length; t++)(e = n[t])() || n[t] !== e || n.splice(t--, 1);
                    n.length || Ee.fx.stop(), bt = void 0
                }, Ee.fx.timer = function (e) {
                    Ee.timers.push(e), Ee.fx.start()
                }, Ee.fx.interval = 13, Ee.fx.start = function () {
                    _t || (_t = !0, z())
                }, Ee.fx.stop = function () {
                    _t = null
                }, Ee.fx.speeds = {
                    slow: 600,
                    fast: 200,
                    _default: 400
                }, Ee.fn.delay = function (e, t) {
                    return e = Ee.fx ? Ee.fx.speeds[e] || e : e, t = t || "fx", this.queue(t, function (t, r) {
                        var o = n.setTimeout(t, e);
                        r.stop = function () {
                            n.clearTimeout(o)
                        }
                    })
                },
                function () {
                    var e = le.createElement("input"),
                        t = le.createElement("select"),
                        n = t.appendChild(le.createElement("option"));
                    e.type = "checkbox", be.checkOn = "" !== e.value, be.optSelected = n.selected, e = le.createElement("input"), e.value = "t", e.type = "radio", be.radioValue = "t" === e.value
                }();
            var Et, St = Ee.expr.attrHandle;
            Ee.fn.extend({
                attr: function (e, t) {
                    return Ue(this, Ee.attr, e, t, arguments.length > 1)
                },
                removeAttr: function (e) {
                    return this.each(function () {
                        Ee.removeAttr(this, e)
                    })
                }
            }), Ee.extend({
                attr: function (e, t, n) {
                    var r, o, i = e.nodeType;
                    if (3 !== i && 8 !== i && 2 !== i) return void 0 === e.getAttribute ? Ee.prop(e, t, n) : (1 === i && Ee.isXMLDoc(e) || (o = Ee.attrHooks[t.toLowerCase()] || (Ee.expr.match.bool.test(t) ? Et : void 0)), void 0 !== n ? null === n ? void Ee.removeAttr(e, t) : o && "set" in o && void 0 !== (r = o.set(e, n, t)) ? r : (e.setAttribute(t, n + ""), n) : o && "get" in o && null !== (r = o.get(e, t)) ? r : (r = Ee.find.attr(e, t), null == r ? void 0 : r))
                },
                attrHooks: {
                    type: {
                        set: function (e, t) {
                            if (!be.radioValue && "radio" === t && u(e, "input")) {
                                var n = e.value;
                                return e.setAttribute("type", t), n && (e.value = n), t
                            }
                        }
                    }
                },
                removeAttr: function (e, t) {
                    var n, r = 0,
                        o = t && t.match(Re);
                    if (o && 1 === e.nodeType)
                        for (; n = o[r++];) e.removeAttribute(n)
                }
            }), Et = {
                set: function (e, t, n) {
                    return !1 === t ? Ee.removeAttr(e, n) : e.setAttribute(n, n), n
                }
            }, Ee.each(Ee.expr.match.bool.source.match(/\w+/g), function (e, t) {
                var n = St[t] || Ee.find.attr;
                St[t] = function (e, t, r) {
                    var o, i, a = t.toLowerCase();
                    return r || (i = St[a], St[a] = o, o = null != n(e, t, r) ? a : null, St[a] = i), o
                }
            });
            var kt = /^(?:input|select|textarea|button)$/i,
                Ct = /^(?:a|area)$/i;
            Ee.fn.extend({
                prop: function (e, t) {
                    return Ue(this, Ee.prop, e, t, arguments.length > 1)
                },
                removeProp: function (e) {
                    return this.each(function () {
                        delete this[Ee.propFix[e] || e]
                    })
                }
            }), Ee.extend({
                prop: function (e, t, n) {
                    var r, o, i = e.nodeType;
                    if (3 !== i && 8 !== i && 2 !== i) return 1 === i && Ee.isXMLDoc(e) || (t = Ee.propFix[t] || t, o = Ee.propHooks[t]), void 0 !== n ? o && "set" in o && void 0 !== (r = o.set(e, n, t)) ? r : e[t] = n : o && "get" in o && null !== (r = o.get(e, t)) ? r : e[t]
                },
                propHooks: {
                    tabIndex: {
                        get: function (e) {
                            var t = Ee.find.attr(e, "tabindex");
                            return t ? parseInt(t, 10) : kt.test(e.nodeName) || Ct.test(e.nodeName) && e.href ? 0 : -1
                        }
                    }
                },
                propFix: {
                    for: "htmlFor",
                    class: "className"
                }
            }), be.optSelected || (Ee.propHooks.selected = {
                get: function (e) {
                    var t = e.parentNode;
                    return t && t.parentNode && t.parentNode.selectedIndex, null
                },
                set: function (e) {
                    var t = e.parentNode;
                    t && (t.selectedIndex, t.parentNode && t.parentNode.selectedIndex)
                }
            }), Ee.each(["tabIndex", "readOnly", "maxLength", "cellSpacing", "cellPadding", "rowSpan", "colSpan", "useMap", "frameBorder", "contentEditable"], function () {
                Ee.propFix[this.toLowerCase()] = this
            }), Ee.fn.extend({
                addClass: function (e) {
                    var t, n, r, o, i, a, s, c = 0;
                    if (_e(e)) return this.each(function (t) {
                        Ee(this).addClass(e.call(this, t, te(this)))
                    });
                    if (t = ne(e), t.length)
                        for (; n = this[c++];)
                            if (o = te(n), r = 1 === n.nodeType && " " + ee(o) + " ") {
                                for (a = 0; i = t[a++];) r.indexOf(" " + i + " ") < 0 && (r += i + " ");
                                s = ee(r), o !== s && n.setAttribute("class", s)
                            }
                    return this
                },
                removeClass: function (e) {
                    var t, n, r, o, i, a, s, c = 0;
                    if (_e(e)) return this.each(function (t) {
                        Ee(this).removeClass(e.call(this, t, te(this)))
                    });
                    if (!arguments.length) return this.attr("class", "");
                    if (t = ne(e), t.length)
                        for (; n = this[c++];)
                            if (o = te(n), r = 1 === n.nodeType && " " + ee(o) + " ") {
                                for (a = 0; i = t[a++];)
                                    for (; r.indexOf(" " + i + " ") > -1;) r = r.replace(" " + i + " ", " ");
                                s = ee(r), o !== s && n.setAttribute("class", s)
                            }
                    return this
                },
                toggleClass: function (e, t) {
                    var n = typeof e,
                        r = "string" === n || Array.isArray(e);
                    return "boolean" == typeof t && r ? t ? this.addClass(e) : this.removeClass(e) : _e(e) ? this.each(function (n) {
                        Ee(this).toggleClass(e.call(this, n, te(this), t), t)
                    }) : this.each(function () {
                        var t, o, i, a;
                        if (r)
                            for (o = 0, i = Ee(this), a = ne(e); t = a[o++];) i.hasClass(t) ? i.removeClass(t) : i.addClass(t);
                        else void 0 !== e && "boolean" !== n || (t = te(this), t && Fe.set(this, "__className__", t), this.setAttribute && this.setAttribute("class", t || !1 === e ? "" : Fe.get(this, "__className__") || ""))
                    })
                },
                hasClass: function (e) {
                    var t, n, r = 0;
                    for (t = " " + e + " "; n = this[r++];)
                        if (1 === n.nodeType && (" " + ee(te(n)) + " ").indexOf(t) > -1) return !0;
                    return !1
                }
            });
            var Pt = /\r/g;
            Ee.fn.extend({
                val: function (e) {
                    var t, n, r, o = this[0]; {
                        if (arguments.length) return r = _e(e), this.each(function (n) {
                            var o;
                            1 === this.nodeType && (o = r ? e.call(this, n, Ee(this).val()) : e, null == o ? o = "" : "number" == typeof o ? o += "" : Array.isArray(o) && (o = Ee.map(o, function (e) {
                                return null == e ? "" : e + ""
                            })), (t = Ee.valHooks[this.type] || Ee.valHooks[this.nodeName.toLowerCase()]) && "set" in t && void 0 !== t.set(this, o, "value") || (this.value = o))
                        });
                        if (o) return (t = Ee.valHooks[o.type] || Ee.valHooks[o.nodeName.toLowerCase()]) && "get" in t && void 0 !== (n = t.get(o, "value")) ? n : (n = o.value, "string" == typeof n ? n.replace(Pt, "") : null == n ? "" : n)
                    }
                }
            }), Ee.extend({
                valHooks: {
                    option: {
                        get: function (e) {
                            var t = Ee.find.attr(e, "value");
                            return null != t ? t : ee(Ee.text(e))
                        }
                    },
                    select: {
                        get: function (e) {
                            var t, n, r, o = e.options,
                                i = e.selectedIndex,
                                a = "select-one" === e.type,
                                s = a ? null : [],
                                c = a ? i + 1 : o.length;
                            for (r = i < 0 ? c : a ? i : 0; r < c; r++)
                                if (n = o[r], (n.selected || r === i) && !n.disabled && (!n.parentNode.disabled || !u(n.parentNode, "optgroup"))) {
                                    if (t = Ee(n).val(), a) return t;
                                    s.push(t)
                                }
                            return s
                        },
                        set: function (e, t) {
                            for (var n, r, o = e.options, i = Ee.makeArray(t), a = o.length; a--;) r = o[a], (r.selected = Ee.inArray(Ee.valHooks.option.get(r), i) > -1) && (n = !0);
                            return n || (e.selectedIndex = -1), i
                        }
                    }
                }
            }), Ee.each(["radio", "checkbox"], function () {
                Ee.valHooks[this] = {
                    set: function (e, t) {
                        if (Array.isArray(t)) return e.checked = Ee.inArray(Ee(e).val(), t) > -1
                    }
                }, be.checkOn || (Ee.valHooks[this].get = function (e) {
                    return null === e.getAttribute("value") ? "on" : e.value
                })
            }), be.focusin = "onfocusin" in n;
            var Ot = /^(?:focusinfocus|focusoutblur)$/,
                It = function (e) {
                    e.stopPropagation()
                };
            Ee.extend(Ee.event, {
                trigger: function (e, t, r, o) {
                    var i, a, s, c, u, l, f, p, d = [r || le],
                        h = ve.call(e, "type") ? e.type : e,
                        g = ve.call(e, "namespace") ? e.namespace.split(".") : [];
                    if (a = p = s = r = r || le, 3 !== r.nodeType && 8 !== r.nodeType && !Ot.test(h + Ee.event.triggered) && (h.indexOf(".") > -1 && (g = h.split("."), h = g.shift(), g.sort()), u = h.indexOf(":") < 0 && "on" + h, e = e[Ee.expando] ? e : new Ee.Event(h, "object" == typeof e && e), e.isTrigger = o ? 2 : 3, e.namespace = g.join("."), e.rnamespace = e.namespace ? new RegExp("(^|\\.)" + g.join("\\.(?:.*\\.|)") + "(\\.|$)") : null, e.result = void 0, e.target || (e.target = r), t = null == t ? [e] : Ee.makeArray(t, [e]), f = Ee.event.special[h] || {}, o || !f.trigger || !1 !== f.trigger.apply(r, t))) {
                        if (!o && !f.noBubble && !Te(r)) {
                            for (c = f.delegateType || h, Ot.test(c + h) || (a = a.parentNode); a; a = a.parentNode) d.push(a), s = a;
                            s === (r.ownerDocument || le) && d.push(s.defaultView || s.parentWindow || n)
                        }
                        for (i = 0;
                            (a = d[i++]) && !e.isPropagationStopped();) p = a, e.type = i > 1 ? c : f.bindType || h, l = (Fe.get(a, "events") || {})[e.type] && Fe.get(a, "handle"), l && l.apply(a, t), (l = u && a[u]) && l.apply && Be(a) && (e.result = l.apply(a, t), !1 === e.result && e.preventDefault());
                        return e.type = h, o || e.isDefaultPrevented() || f._default && !1 !== f._default.apply(d.pop(), t) || !Be(r) || u && _e(r[h]) && !Te(r) && (s = r[u], s && (r[u] = null), Ee.event.triggered = h, e.isPropagationStopped() && p.addEventListener(h, It), r[h](), e.isPropagationStopped() && p.removeEventListener(h, It), Ee.event.triggered = void 0, s && (r[u] = s)), e.result
                    }
                },
                simulate: function (e, t, n) {
                    var r = Ee.extend(new Ee.Event, n, {
                        type: e,
                        isSimulated: !0
                    });
                    Ee.event.trigger(r, null, t)
                }
            }), Ee.fn.extend({
                trigger: function (e, t) {
                    return this.each(function () {
                        Ee.event.trigger(e, t, this)
                    })
                },
                triggerHandler: function (e, t) {
                    var n = this[0];
                    if (n) return Ee.event.trigger(e, t, n, !0)
                }
            }), be.focusin || Ee.each({
                focus: "focusin",
                blur: "focusout"
            }, function (e, t) {
                var n = function (e) {
                    Ee.event.simulate(t, e.target, Ee.event.fix(e))
                };
                Ee.event.special[t] = {
                    setup: function () {
                        var r = this.ownerDocument || this,
                            o = Fe.access(r, t);
                        o || r.addEventListener(e, n, !0), Fe.access(r, t, (o || 0) + 1)
                    },
                    teardown: function () {
                        var r = this.ownerDocument || this,
                            o = Fe.access(r, t) - 1;
                        o ? Fe.access(r, t, o) : (r.removeEventListener(e, n, !0), Fe.remove(r, t))
                    }
                }
            });
            var Nt = n.location,
                Dt = Date.now(),
                jt = /\?/;
            Ee.parseXML = function (e) {
                var t;
                if (!e || "string" != typeof e) return null;
                try {
                    t = (new n.DOMParser).parseFromString(e, "text/xml")
                } catch (e) {
                    t = void 0
                }
                return t && !t.getElementsByTagName("parsererror").length || Ee.error("Invalid XML: " + e), t
            };
            var Lt = /\[\]$/,
                Rt = /\r?\n/g,
                qt = /^(?:submit|button|image|reset|file)$/i,
                Ht = /^(?:input|select|textarea|keygen)/i;
            Ee.param = function (e, t) {
                var n, r = [],
                    o = function (e, t) {
                        var n = _e(t) ? t() : t;
                        r[r.length] = encodeURIComponent(e) + "=" + encodeURIComponent(null == n ? "" : n)
                    };
                if (Array.isArray(e) || e.jquery && !Ee.isPlainObject(e)) Ee.each(e, function () {
                    o(this.name, this.value)
                });
                else
                    for (n in e) re(n, e[n], t, o);
                return r.join("&")
            }, Ee.fn.extend({
                serialize: function () {
                    return Ee.param(this.serializeArray())
                },
                serializeArray: function () {
                    return this.map(function () {
                        var e = Ee.prop(this, "elements");
                        return e ? Ee.makeArray(e) : this
                    }).filter(function () {
                        var e = this.type;
                        return this.name && !Ee(this).is(":disabled") && Ht.test(this.nodeName) && !qt.test(e) && (this.checked || !Ze.test(e))
                    }).map(function (e, t) {
                        var n = Ee(this).val();
                        return null == n ? null : Array.isArray(n) ? Ee.map(n, function (e) {
                            return {
                                name: t.name,
                                value: e.replace(Rt, "\r\n")
                            }
                        }) : {
                            name: t.name,
                            value: n.replace(Rt, "\r\n")
                        }
                    }).get()
                }
            });
            var Ut = /%20/g,
                Mt = /#.*$/,
                Wt = /([?&])_=[^&]*/,
                Bt = /^(.*?):[ \t]*([^\r\n]*)$/gm,
                Ft = /^(?:about|app|app-storage|.+-extension|file|res|widget):$/,
                $t = /^(?:GET|HEAD)$/,
                Gt = /^\/\//,
                Vt = {},
                zt = {},
                Xt = "*/".concat("*"),
                Yt = le.createElement("a");
            Yt.href = Nt.href, Ee.extend({
                active: 0,
                lastModified: {},
                etag: {},
                ajaxSettings: {
                    url: Nt.href,
                    type: "GET",
                    isLocal: Ft.test(Nt.protocol),
                    global: !0,
                    processData: !0,
                    async: !0,
                    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                    accepts: {
                        "*": Xt,
                        text: "text/plain",
                        html: "text/html",
                        xml: "application/xml, text/xml",
                        json: "application/json, text/javascript"
                    },
                    contents: {
                        xml: /\bxml\b/,
                        html: /\bhtml/,
                        json: /\bjson\b/
                    },
                    responseFields: {
                        xml: "responseXML",
                        text: "responseText",
                        json: "responseJSON"
                    },
                    converters: {
                        "* text": String,
                        "text html": !0,
                        "text json": JSON.parse,
                        "text xml": Ee.parseXML
                    },
                    flatOptions: {
                        url: !0,
                        context: !0
                    }
                },
                ajaxSetup: function (e, t) {
                    return t ? ae(ae(e, Ee.ajaxSettings), t) : ae(Ee.ajaxSettings, e)
                },
                ajaxPrefilter: oe(Vt),
                ajaxTransport: oe(zt),
                ajax: function (e, t) {
                    function r(e, t, r, s) {
                        var u, p, d, w, b, _ = t;
                        l || (l = !0, c && n.clearTimeout(c), o = void 0, a = s || "", T.readyState = e > 0 ? 4 : 0, u = e >= 200 && e < 300 || 304 === e, r && (w = se(h, T, r)), w = ce(h, w, T, u), u ? (h.ifModified && (b = T.getResponseHeader("Last-Modified"), b && (Ee.lastModified[i] = b), (b = T.getResponseHeader("etag")) && (Ee.etag[i] = b)), 204 === e || "HEAD" === h.type ? _ = "nocontent" : 304 === e ? _ = "notmodified" : (_ = w.state, p = w.data, d = w.error, u = !d)) : (d = _, !e && _ || (_ = "error", e < 0 && (e = 0))), T.status = e, T.statusText = (t || _) + "", u ? y.resolveWith(g, [p, _, T]) : y.rejectWith(g, [T, _, d]), T.statusCode(x), x = void 0, f && m.trigger(u ? "ajaxSuccess" : "ajaxError", [T, h, u ? p : d]), v.fireWith(g, [T, _]), f && (m.trigger("ajaxComplete", [T, h]), --Ee.active || Ee.event.trigger("ajaxStop")))
                    }
                    "object" == typeof e && (t = e, e = void 0), t = t || {};
                    var o, i, a, s, c, u, l, f, p, d, h = Ee.ajaxSetup({}, t),
                        g = h.context || h,
                        m = h.context && (g.nodeType || g.jquery) ? Ee(g) : Ee.event,
                        y = Ee.Deferred(),
                        v = Ee.Callbacks("once memory"),
                        x = h.statusCode || {},
                        w = {},
                        b = {},
                        _ = "canceled",
                        T = {
                            readyState: 0,
                            getResponseHeader: function (e) {
                                var t;
                                if (l) {
                                    if (!s)
                                        for (s = {}; t = Bt.exec(a);) s[t[1].toLowerCase()] = t[2];
                                    t = s[e.toLowerCase()]
                                }
                                return null == t ? null : t
                            },
                            getAllResponseHeaders: function () {
                                return l ? a : null
                            },
                            setRequestHeader: function (e, t) {
                                return null == l && (e = b[e.toLowerCase()] = b[e.toLowerCase()] || e, w[e] = t), this
                            },
                            overrideMimeType: function (e) {
                                return null == l && (h.mimeType = e), this
                            },
                            statusCode: function (e) {
                                var t;
                                if (e)
                                    if (l) T.always(e[T.status]);
                                    else
                                        for (t in e) x[t] = [x[t], e[t]];
                                return this
                            },
                            abort: function (e) {
                                var t = e || _;
                                return o && o.abort(t), r(0, t), this
                            }
                        };
                    if (y.promise(T), h.url = ((e || h.url || Nt.href) + "").replace(Gt, Nt.protocol + "//"), h.type = t.method || t.type || h.method || h.type, h.dataTypes = (h.dataType || "*").toLowerCase().match(Re) || [""], null == h.crossDomain) {
                        u = le.createElement("a");
                        try {
                            u.href = h.url, u.href = u.href, h.crossDomain = Yt.protocol + "//" + Yt.host != u.protocol + "//" + u.host
                        } catch (e) {
                            h.crossDomain = !0
                        }
                    }
                    if (h.data && h.processData && "string" != typeof h.data && (h.data = Ee.param(h.data, h.traditional)), ie(Vt, h, t, T), l) return T;
                    f = Ee.event && h.global, f && 0 == Ee.active++ && Ee.event.trigger("ajaxStart"), h.type = h.type.toUpperCase(), h.hasContent = !$t.test(h.type), i = h.url.replace(Mt, ""), h.hasContent ? h.data && h.processData && 0 === (h.contentType || "").indexOf("application/x-www-form-urlencoded") && (h.data = h.data.replace(Ut, "+")) : (d = h.url.slice(i.length), h.data && (h.processData || "string" == typeof h.data) && (i += (jt.test(i) ? "&" : "?") + h.data, delete h.data), !1 === h.cache && (i = i.replace(Wt, "$1"), d = (jt.test(i) ? "&" : "?") + "_=" + Dt++ + d), h.url = i + d), h.ifModified && (Ee.lastModified[i] && T.setRequestHeader("If-Modified-Since", Ee.lastModified[i]), Ee.etag[i] && T.setRequestHeader("If-None-Match", Ee.etag[i])), (h.data && h.hasContent && !1 !== h.contentType || t.contentType) && T.setRequestHeader("Content-Type", h.contentType), T.setRequestHeader("Accept", h.dataTypes[0] && h.accepts[h.dataTypes[0]] ? h.accepts[h.dataTypes[0]] + ("*" !== h.dataTypes[0] ? ", " + Xt + "; q=0.01" : "") : h.accepts["*"]);
                    for (p in h.headers) T.setRequestHeader(p, h.headers[p]);
                    if (h.beforeSend && (!1 === h.beforeSend.call(g, T, h) || l)) return T.abort();
                    if (_ = "abort", v.add(h.complete), T.done(h.success), T.fail(h.error), o = ie(zt, h, t, T)) {
                        if (T.readyState = 1, f && m.trigger("ajaxSend", [T, h]), l) return T;
                        h.async && h.timeout > 0 && (c = n.setTimeout(function () {
                            T.abort("timeout")
                        }, h.timeout));
                        try {
                            l = !1, o.send(w, r)
                        } catch (e) {
                            if (l) throw e;
                            r(-1, e)
                        }
                    } else r(-1, "No Transport");
                    return T
                },
                getJSON: function (e, t, n) {
                    return Ee.get(e, t, n, "json")
                },
                getScript: function (e, t) {
                    return Ee.get(e, void 0, t, "script")
                }
            }), Ee.each(["get", "post"], function (e, t) {
                Ee[t] = function (e, n, r, o) {
                    return _e(n) && (o = o || r, r = n, n = void 0), Ee.ajax(Ee.extend({
                        url: e,
                        type: t,
                        dataType: o,
                        data: n,
                        success: r
                    }, Ee.isPlainObject(e) && e))
                }
            }), Ee._evalUrl = function (e) {
                return Ee.ajax({
                    url: e,
                    type: "GET",
                    dataType: "script",
                    cache: !0,
                    async: !1,
                    global: !1,
                    throws: !0
                })
            }, Ee.fn.extend({
                wrapAll: function (e) {
                    var t;
                    return this[0] && (_e(e) && (e = e.call(this[0])), t = Ee(e, this[0].ownerDocument).eq(0).clone(!0), this[0].parentNode && t.insertBefore(this[0]), t.map(function () {
                        for (var e = this; e.firstElementChild;) e = e.firstElementChild;
                        return e
                    }).append(this)), this
                },
                wrapInner: function (e) {
                    return _e(e) ? this.each(function (t) {
                        Ee(this).wrapInner(e.call(this, t))
                    }) : this.each(function () {
                        var t = Ee(this),
                            n = t.contents();
                        n.length ? n.wrapAll(e) : t.append(e)
                    })
                },
                wrap: function (e) {
                    var t = _e(e);
                    return this.each(function (n) {
                        Ee(this).wrapAll(t ? e.call(this, n) : e)
                    })
                },
                unwrap: function (e) {
                    return this.parent(e).not("body").each(function () {
                        Ee(this).replaceWith(this.childNodes)
                    }), this
                }
            }), Ee.expr.pseudos.hidden = function (e) {
                return !Ee.expr.pseudos.visible(e)
            }, Ee.expr.pseudos.visible = function (e) {
                return !!(e.offsetWidth || e.offsetHeight || e.getClientRects().length)
            }, Ee.ajaxSettings.xhr = function () {
                try {
                    return new n.XMLHttpRequest
                } catch (e) {}
            };
            var Kt = {
                    0: 200,
                    1223: 204
                },
                Jt = Ee.ajaxSettings.xhr();
            be.cors = !!Jt && "withCredentials" in Jt, be.ajax = Jt = !!Jt, Ee.ajaxTransport(function (e) {
                var t, r;
                if (be.cors || Jt && !e.crossDomain) return {
                    send: function (o, i) {
                        var a, s = e.xhr();
                        if (s.open(e.type, e.url, e.async, e.username, e.password), e.xhrFields)
                            for (a in e.xhrFields) s[a] = e.xhrFields[a];
                        e.mimeType && s.overrideMimeType && s.overrideMimeType(e.mimeType), e.crossDomain || o["X-Requested-With"] || (o["X-Requested-With"] = "XMLHttpRequest");
                        for (a in o) s.setRequestHeader(a, o[a]);
                        t = function (e) {
                            return function () {
                                t && (t = r = s.onload = s.onerror = s.onabort = s.ontimeout = s.onreadystatechange = null, "abort" === e ? s.abort() : "error" === e ? "number" != typeof s.status ? i(0, "error") : i(s.status, s.statusText) : i(Kt[s.status] || s.status, s.statusText, "text" !== (s.responseType || "text") || "string" != typeof s.responseText ? {
                                    binary: s.response
                                } : {
                                    text: s.responseText
                                }, s.getAllResponseHeaders()))
                            }
                        }, s.onload = t(), r = s.onerror = s.ontimeout = t("error"), void 0 !== s.onabort ? s.onabort = r : s.onreadystatechange = function () {
                            4 === s.readyState && n.setTimeout(function () {
                                t && r()
                            })
                        }, t = t("abort");
                        try {
                            s.send(e.hasContent && e.data || null)
                        } catch (e) {
                            if (t) throw e
                        }
                    },
                    abort: function () {
                        t && t()
                    }
                }
            }), Ee.ajaxPrefilter(function (e) {
                e.crossDomain && (e.contents.script = !1)
            }), Ee.ajaxSetup({
                accepts: {
                    script: "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"
                },
                contents: {
                    script: /\b(?:java|ecma)script\b/
                },
                converters: {
                    "text script": function (e) {
                        return Ee.globalEval(e), e
                    }
                }
            }), Ee.ajaxPrefilter("script", function (e) {
                void 0 === e.cache && (e.cache = !1), e.crossDomain && (e.type = "GET")
            }), Ee.ajaxTransport("script", function (e) {
                if (e.crossDomain) {
                    var t, n;
                    return {
                        send: function (r, o) {
                            t = Ee("<script>").prop({
                                charset: e.scriptCharset,
                                src: e.url
                            }).on("load error", n = function (e) {
                                t.remove(), n = null, e && o("error" === e.type ? 404 : 200, e.type)
                            }), le.head.appendChild(t[0])
                        },
                        abort: function () {
                            n && n()
                        }
                    }
                }
            });
            var Qt = [],
                Zt = /(=)\?(?=&|$)|\?\?/;
            Ee.ajaxSetup({
                jsonp: "callback",
                jsonpCallback: function () {
                    var e = Qt.pop() || Ee.expando + "_" + Dt++;
                    return this[e] = !0, e
                }
            }), Ee.ajaxPrefilter("json jsonp", function (e, t, r) {
                var o, i, a, s = !1 !== e.jsonp && (Zt.test(e.url) ? "url" : "string" == typeof e.data && 0 === (e.contentType || "").indexOf("application/x-www-form-urlencoded") && Zt.test(e.data) && "data");
                if (s || "jsonp" === e.dataTypes[0]) return o = e.jsonpCallback = _e(e.jsonpCallback) ? e.jsonpCallback() : e.jsonpCallback, s ? e[s] = e[s].replace(Zt, "$1" + o) : !1 !== e.jsonp && (e.url += (jt.test(e.url) ? "&" : "?") + e.jsonp + "=" + o), e.converters["script json"] = function () {
                    return a || Ee.error(o + " was not called"), a[0]
                }, e.dataTypes[0] = "json", i = n[o], n[o] = function () {
                    a = arguments
                }, r.always(function () {
                    void 0 === i ? Ee(n).removeProp(o) : n[o] = i, e[o] && (e.jsonpCallback = t.jsonpCallback, Qt.push(o)), a && _e(i) && i(a[0]), a = i = void 0
                }), "script"
            }), be.createHTMLDocument = function () {
                var e = le.implementation.createHTMLDocument("").body;
                return e.innerHTML = "<form></form><form></form>", 2 === e.childNodes.length
            }(), Ee.parseHTML = function (e, t, n) {
                if ("string" != typeof e) return [];
                "boolean" == typeof t && (n = t, t = !1);
                var r, o, i;
                return t || (be.createHTMLDocument ? (t = le.implementation.createHTMLDocument(""), r = t.createElement("base"), r.href = le.location.href, t.head.appendChild(r)) : t = le), o = Ie.exec(e), i = !n && [], o ? [t.createElement(o[1])] : (o = k([e], t, i), i && i.length && Ee(i).remove(), Ee.merge([], o.childNodes))
            }, Ee.fn.load = function (e, t, n) {
                var r, o, i, a = this,
                    s = e.indexOf(" ");
                return s > -1 && (r = ee(e.slice(s)), e = e.slice(0, s)), _e(t) ? (n = t, t = void 0) : t && "object" == typeof t && (o = "POST"), a.length > 0 && Ee.ajax({
                    url: e,
                    type: o || "GET",
                    dataType: "html",
                    data: t
                }).done(function (e) {
                    i = arguments, a.html(r ? Ee("<div>").append(Ee.parseHTML(e)).find(r) : e)
                }).always(n && function (e, t) {
                    a.each(function () {
                        n.apply(this, i || [e.responseText, t, e])
                    })
                }), this
            }, Ee.each(["ajaxStart", "ajaxStop", "ajaxComplete", "ajaxError", "ajaxSuccess", "ajaxSend"], function (e, t) {
                Ee.fn[t] = function (e) {
                    return this.on(t, e)
                }
            }), Ee.expr.pseudos.animated = function (e) {
                return Ee.grep(Ee.timers, function (t) {
                    return e === t.elem
                }).length
            }, Ee.offset = {
                setOffset: function (e, t, n) {
                    var r, o, i, a, s, c, u, l = Ee.css(e, "position"),
                        f = Ee(e),
                        p = {};
                    "static" === l && (e.style.position = "relative"), s = f.offset(), i = Ee.css(e, "top"), c = Ee.css(e, "left"), u = ("absolute" === l || "fixed" === l) && (i + c).indexOf("auto") > -1, u ? (r = f.position(), a = r.top, o = r.left) : (a = parseFloat(i) || 0, o = parseFloat(c) || 0), _e(t) && (t = t.call(e, n, Ee.extend({}, s))), null != t.top && (p.top = t.top - s.top + a), null != t.left && (p.left = t.left - s.left + o), "using" in t ? t.using.call(e, p) : f.css(p)
                }
            }, Ee.fn.extend({
                offset: function (e) {
                    if (arguments.length) return void 0 === e ? this : this.each(function (t) {
                        Ee.offset.setOffset(this, e, t)
                    });
                    var t, n, r = this[0];
                    if (r) return r.getClientRects().length ? (t = r.getBoundingClientRect(), n = r.ownerDocument.defaultView, {
                        top: t.top + n.pageYOffset,
                        left: t.left + n.pageXOffset
                    }) : {
                        top: 0,
                        left: 0
                    }
                },
                position: function () {
                    if (this[0]) {
                        var e, t, n, r = this[0],
                            o = {
                                top: 0,
                                left: 0
                            };
                        if ("fixed" === Ee.css(r, "position")) t = r.getBoundingClientRect();
                        else {
                            for (t = this.offset(), n = r.ownerDocument, e = r.offsetParent || n.documentElement; e && (e === n.body || e === n.documentElement) && "static" === Ee.css(e, "position");) e = e.parentNode;
                            e && e !== r && 1 === e.nodeType && (o = Ee(e).offset(), o.top += Ee.css(e, "borderTopWidth", !0), o.left += Ee.css(e, "borderLeftWidth", !0))
                        }
                        return {
                            top: t.top - o.top - Ee.css(r, "marginTop", !0),
                            left: t.left - o.left - Ee.css(r, "marginLeft", !0)
                        }
                    }
                },
                offsetParent: function () {
                    return this.map(function () {
                        for (var e = this.offsetParent; e && "static" === Ee.css(e, "position");) e = e.offsetParent;
                        return e || ot
                    })
                }
            }), Ee.each({
                scrollLeft: "pageXOffset",
                scrollTop: "pageYOffset"
            }, function (e, t) {
                var n = "pageYOffset" === t;
                Ee.fn[e] = function (r) {
                    return Ue(this, function (e, r, o) {
                        var i;
                        if (Te(e) ? i = e : 9 === e.nodeType && (i = e.defaultView), void 0 === o) return i ? i[t] : e[r];
                        i ? i.scrollTo(n ? i.pageXOffset : o, n ? o : i.pageYOffset) : e[r] = o
                    }, e, r, arguments.length)
                }
            }), Ee.each(["top", "left"], function (e, t) {
                Ee.cssHooks[t] = M(be.pixelPosition, function (e, n) {
                    if (n) return n = U(e, t), pt.test(n) ? Ee(e).position()[t] + "px" : n
                })
            }), Ee.each({
                Height: "height",
                Width: "width"
            }, function (e, t) {
                Ee.each({
                    padding: "inner" + e,
                    content: t,
                    "": "outer" + e
                }, function (n, r) {
                    Ee.fn[r] = function (o, i) {
                        var a = arguments.length && (n || "boolean" != typeof o),
                            s = n || (!0 === o || !0 === i ? "margin" : "border");
                        return Ue(this, function (t, n, o) {
                            var i;
                            return Te(t) ? 0 === r.indexOf("outer") ? t["inner" + e] : t.document.documentElement["client" + e] : 9 === t.nodeType ? (i = t.documentElement, Math.max(t.body["scroll" + e], i["scroll" + e], t.body["offset" + e], i["offset" + e], i["client" + e])) : void 0 === o ? Ee.css(t, n, s) : Ee.style(t, n, o, s)
                        }, t, a ? o : void 0, a)
                    }
                })
            }), Ee.each("blur focus focusin focusout resize scroll click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup contextmenu".split(" "), function (e, t) {
                Ee.fn[t] = function (e, n) {
                    return arguments.length > 0 ? this.on(t, null, e, n) : this.trigger(t)
                }
            }), Ee.fn.extend({
                hover: function (e, t) {
                    return this.mouseenter(e).mouseleave(t || e)
                }
            }), Ee.fn.extend({
                bind: function (e, t, n) {
                    return this.on(e, null, t, n)
                },
                unbind: function (e, t) {
                    return this.off(e, null, t)
                },
                delegate: function (e, t, n, r) {
                    return this.on(t, e, n, r)
                },
                undelegate: function (e, t, n) {
                    return 1 === arguments.length ? this.off(e, "**") : this.off(t, e || "**", n)
                }
            }), Ee.proxy = function (e, t) {
                var n, r, o;
                if ("string" == typeof t && (n = e[t], t = e, e = n), _e(e)) return r = pe.call(arguments, 2), o = function () {
                    return e.apply(t || this, r.concat(pe.call(arguments)))
                }, o.guid = e.guid = e.guid || Ee.guid++, o
            }, Ee.holdReady = function (e) {
                e ? Ee.readyWait++ : Ee.ready(!0)
            }, Ee.isArray = Array.isArray, Ee.parseJSON = JSON.parse, Ee.nodeName = u, Ee.isFunction = _e, Ee.isWindow = Te, Ee.camelCase = v, Ee.type = s, Ee.now = Date.now, Ee.isNumeric = function (e) {
                var t = Ee.type(e);
                return ("number" === t || "string" === t) && !isNaN(e - parseFloat(e))
            }, r = [], void 0 !== (o = function () {
                return Ee
            }.apply(t, r)) && (e.exports = o);
            var en = n.jQuery,
                tn = n.$;
            return Ee.noConflict = function (e) {
                return n.$ === Ee && (n.$ = tn), e && n.jQuery === Ee && (n.jQuery = en), Ee
            }, i || (n.jQuery = n.$ = Ee), Ee
        })
    },
    30: function (e, t) {
        ! function () {
            try {
                getComputedStyle(void 0)
            } catch (t) {
                var e = getComputedStyle;
                window.getComputedStyle = function (t, n) {
                    try {
                        return e(t, n)
                    } catch (e) {
                        return null
                    }
                }
            }
        }()
    },
    4: function (e, t, n) {
        "use strict";
        var r = n(0);
        r.getQueryString = function (e, t) {
            var n = "",
                r = "";
            if (void 0 !== t) {
                var o = -1 !== t.indexOf("#") ? t.indexOf("#") : t.length;
                n = t.substring(t.indexOf("?"), o), r = t.substring(o, t.length)
            } else n = window.location.search, r = window.location.hash;
            var i = new RegExp("(^|&)" + e + "=([^&]*)(&|$)", "i"),
                a = (n || r).substr(1).match(i);
            return null != a ? decodeURIComponent(a[2]) : ""
        }, r.delQueryString = function (e, t) {
            var n = "";
            return void 0 !== t ? n = e + "=" + encodeURIComponent(r.getQueryString(e, t)) : (t = window.location.href, n = e + "=" + encodeURIComponent(r.getQueryString(e))), -1 !== t.indexOf("?" + n) ? (t = t.replace(n + "&", "").replace(n, ""), "?" === t[t.length - 1] && (t = t.replace("?", "")), -1 !== t.indexOf("?#") && (t = t.replace("?#", "#"))) : t = t.replace("&" + n, ""), t
        }, r.queryFormat = function (e, t) {
            if ("string" != typeof e && (e = ""), "object" == typeof t) {
                var n = e.indexOf("#") < 0 ? "" : e.substring(e.indexOf("#")),
                    r = e.substring(0, e.indexOf("?") < 0 ? e.length : e.indexOf("?")),
                    o = e.substr(r.length + 1, e.length - r.length - n.length - 1);
                n && (r = r.substring(0, r.indexOf("#") < 0 ? r.length : r.indexOf("#")));
                var i = o.split("&").filter(function (e) {
                    return "" !== e
                }).map(function (e) {
                    return e.split("=")
                });
                for (var a in t)
                    if (t.hasOwnProperty(a) && function (e) {
                            return null !== e && void 0 !== e && "" !== e
                        }(t[a])) {
                        for (var s = !1, c = 0; c < i.length; c++) i[c][0] === a && (i[c][1] = encodeURIComponent(t[a]), s = !0);
                        s || i.push([a, encodeURIComponent(t[a])])
                    }
                return i.length > 0 && (o = "?" + i.map(function (e) {
                    return e.join("=")
                }).join("&")), r + o + n
            }
            return e
        }, e.exports = r
    },
    5: function (e, t) {
        var n = function () {
            function e(e) {
                return null == e ? String(e) : z[X.call(e)] || "object"
            }

            function t(t) {
                return "function" == e(t)
            }

            function n(e) {
                return null != e && e == e.window
            }

            function r(e) {
                return null != e && e.nodeType == e.DOCUMENT_NODE
            }

            function o(t) {
                return "object" == e(t)
            }

            function i(e) {
                return o(e) && !n(e) && Object.getPrototypeOf(e) == Object.prototype
            }

            function a(e) {
                var t = !!e && "length" in e && e.length,
                    r = A.type(e);
                return "function" != r && !n(e) && ("array" == r || 0 === t || "number" == typeof t && t > 0 && t - 1 in e)
            }

            function s(e) {
                return O.call(e, function (e) {
                    return null != e
                })
            }

            function c(e) {
                return e.length > 0 ? A.fn.concat.apply([], e) : e
            }

            function u(e) {
                return e.replace(/::/g, "/").replace(/([A-Z]+)([A-Z][a-z])/g, "$1_$2").replace(/([a-z\d])([A-Z])/g, "$1_$2").replace(/_/g, "-").toLowerCase()
            }

            function l(e) {
                return e in j ? j[e] : j[e] = new RegExp("(^|\\s)" + e + "(\\s|$)")
            }

            function f(e, t) {
                return "number" != typeof t || L[u(e)] ? t : t + "px"
            }

            function p(e) {
                var t, n;
                return D[e] || (t = N.createElement(e), N.body.appendChild(t), n = getComputedStyle(t, "").getPropertyValue("display"), t.parentNode.removeChild(t), "none" == n && (n = "block"), D[e] = n), D[e]
            }

            function d(e) {
                return "children" in e ? I.call(e.children) : A.map(e.childNodes, function (e) {
                    if (1 == e.nodeType) return e
                })
            }

            function h(e, t) {
                var n, r = e ? e.length : 0;
                for (n = 0; n < r; n++) this[n] = e[n];
                this.length = r, this.selector = t || ""
            }

            function g(e, t, n) {
                for (T in t) n && (i(t[T]) || Q(t[T])) ? (i(t[T]) && !i(e[T]) && (e[T] = {}), Q(t[T]) && !Q(e[T]) && (e[T] = []), g(e[T], t[T], n)) : t[T] !== _ && (e[T] = t[T])
            }

            function m(e, t) {
                return null == t ? A(e) : A(e).filter(t)
            }

            function y(e, n, r, o) {
                return t(n) ? n.call(e, r, o) : n
            }

            function v(e, t, n) {
                null == n ? e.removeAttribute(t) : e.setAttribute(t, n)
            }

            function x(e, t) {
                var n = e.className || "",
                    r = n && n.baseVal !== _;
                if (t === _) return r ? n.baseVal : n;
                r ? n.baseVal = t : e.className = t
            }

            function w(e) {
                try {
                    return e ? "true" == e || "false" != e && ("null" == e ? null : +e + "" == e ? +e : /^[\[\{]/.test(e) ? A.parseJSON(e) : e) : e
                } catch (t) {
                    return e
                }
            }

            function b(e, t) {
                t(e);
                for (var n = 0, r = e.childNodes.length; n < r; n++) b(e.childNodes[n], t)
            }
            var _, T, A, E, S, k, C = [],
                P = C.concat,
                O = C.filter,
                I = C.slice,
                N = window.document,
                D = {},
                j = {},
                L = {
                    "column-count": 1,
                    columns: 1,
                    "font-weight": 1,
                    "line-height": 1,
                    opacity: 1,
                    "z-index": 1,
                    zoom: 1
                },
                R = /^\s*<(\w+|!)[^>]*>/,
                q = /^<(\w+)\s*\/?>(?:<\/\1>|)$/,
                H = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,
                U = /^(?:body|html)$/i,
                M = /([A-Z])/g,
                W = ["val", "css", "html", "text", "data", "width", "height", "offset"],
                B = ["after", "prepend", "before", "append"],
                F = N.createElement("table"),
                $ = N.createElement("tr"),
                G = {
                    tr: N.createElement("tbody"),
                    tbody: F,
                    thead: F,
                    tfoot: F,
                    td: $,
                    th: $,
                    "*": N.createElement("div")
                },
                V = /^[\w-]*$/,
                z = {},
                X = z.toString,
                Y = {},
                K = N.createElement("div"),
                J = {
                    tabindex: "tabIndex",
                    readonly: "readOnly",
                    for: "htmlFor",
                    class: "className",
                    maxlength: "maxLength",
                    cellspacing: "cellSpacing",
                    cellpadding: "cellPadding",
                    rowspan: "rowSpan",
                    colspan: "colSpan",
                    usemap: "useMap",
                    frameborder: "frameBorder",
                    contenteditable: "contentEditable"
                },
                Q = Array.isArray || function (e) {
                    return e instanceof Array
                };
            return Y.matches = function (e, t) {
                if (!t || !e || 1 !== e.nodeType) return !1;
                var n = e.matches || e.webkitMatchesSelector || e.mozMatchesSelector || e.oMatchesSelector || e.matchesSelector;
                if (n) return n.call(e, t);
                var r, o = e.parentNode,
                    i = !o;
                return i && (o = K).appendChild(e), r = ~Y.qsa(o, t).indexOf(e), i && K.removeChild(e), r
            }, S = function (e) {
                return e.replace(/-+(.)?/g, function (e, t) {
                    return t ? t.toUpperCase() : ""
                })
            }, k = function (e) {
                return O.call(e, function (t, n) {
                    return e.indexOf(t) == n
                })
            }, Y.fragment = function (e, t, n) {
                var r, o, a;
                return q.test(e) && (r = A(N.createElement(RegExp.$1))), r || (e.replace && (e = e.replace(H, "<$1></$2>")), t === _ && (t = R.test(e) && RegExp.$1), t in G || (t = "*"), a = G[t], a.innerHTML = "" + e, r = A.each(I.call(a.childNodes), function () {
                    a.removeChild(this)
                })), i(n) && (o = A(r), A.each(n, function (e, t) {
                    W.indexOf(e) > -1 ? o[e](t) : o.attr(e, t)
                })), r
            }, Y.Z = function (e, t) {
                return new h(e, t)
            }, Y.isZ = function (e) {
                return e instanceof Y.Z
            }, Y.init = function (e, n) {
                var r;
                if (!e) return Y.Z();
                if ("string" == typeof e)
                    if (e = e.trim(), "<" == e[0] && R.test(e)) r = Y.fragment(e, RegExp.$1, n), e = null;
                    else {
                        if (n !== _) return A(n).find(e);
                        r = Y.qsa(N, e)
                    }
                else {
                    if (t(e)) return A(N).ready(e);
                    if (Y.isZ(e)) return e;
                    if (Q(e)) r = s(e);
                    else if (o(e)) r = [e], e = null;
                    else if (R.test(e)) r = Y.fragment(e.trim(), RegExp.$1, n), e = null;
                    else {
                        if (n !== _) return A(n).find(e);
                        r = Y.qsa(N, e)
                    }
                }
                return Y.Z(r, e)
            }, A = function (e, t) {
                return Y.init(e, t)
            }, A.extend = function (e) {
                var t, n = I.call(arguments, 1);
                return "boolean" == typeof e && (t = e, e = n.shift()), n.forEach(function (n) {
                    g(e, n, t)
                }), e
            }, Y.qsa = function (e, t) {
                var n, r = "#" == t[0],
                    o = !r && "." == t[0],
                    i = r || o ? t.slice(1) : t,
                    a = V.test(i);
                return e.getElementById && a && r ? (n = e.getElementById(i)) ? [n] : [] : 1 !== e.nodeType && 9 !== e.nodeType && 11 !== e.nodeType ? [] : I.call(a && !r && e.getElementsByClassName ? o ? e.getElementsByClassName(i) : e.getElementsByTagName(t) : e.querySelectorAll(t))
            }, A.contains = N.documentElement.contains ? function (e, t) {
                return e !== t && e.contains(t)
            } : function (e, t) {
                for (; t && (t = t.parentNode);)
                    if (t === e) return !0;
                return !1
            }, A.type = e, A.isFunction = t, A.isWindow = n, A.isArray = Q, A.isPlainObject = i, A.isEmptyObject = function (e) {
                var t;
                for (t in e) return !1;
                return !0
            }, A.isNumeric = function (e) {
                var t = Number(e),
                    n = typeof e;
                return null != e && "boolean" != n && ("string" != n || e.length) && !isNaN(t) && isFinite(t) || !1
            }, A.inArray = function (e, t, n) {
                return C.indexOf.call(t, e, n)
            }, A.camelCase = S, A.trim = function (e) {
                return null == e ? "" : String.prototype.trim.call(e)
            }, A.uuid = 0, A.support = {}, A.expr = {}, A.noop = function () {}, A.map = function (e, t) {
                var n, r, o, i = [];
                if (a(e))
                    for (r = 0; r < e.length; r++) null != (n = t(e[r], r)) && i.push(n);
                else
                    for (o in e) null != (n = t(e[o], o)) && i.push(n);
                return c(i)
            }, A.each = function (e, t) {
                var n, r;
                if (a(e)) {
                    for (n = 0; n < e.length; n++)
                        if (!1 === t.call(e[n], n, e[n])) return e
                } else
                    for (r in e)
                        if (!1 === t.call(e[r], r, e[r])) return e;
                return e
            }, A.grep = function (e, t) {
                return O.call(e, t)
            }, window.JSON && (A.parseJSON = JSON.parse), A.each("Boolean Number String Function Array Date RegExp Object Error".split(" "), function (e, t) {
                z["[object " + t + "]"] = t.toLowerCase()
            }), A.fn = {
                constructor: Y.Z,
                length: 0,
                forEach: C.forEach,
                reduce: C.reduce,
                push: C.push,
                sort: C.sort,
                splice: C.splice,
                indexOf: C.indexOf,
                concat: function () {
                    var e, t, n = [];
                    for (e = 0; e < arguments.length; e++) t = arguments[e], n[e] = Y.isZ(t) ? t.toArray() : t;
                    return P.apply(Y.isZ(this) ? this.toArray() : this, n)
                },
                map: function (e) {
                    return A(A.map(this, function (t, n) {
                        return e.call(t, n, t)
                    }))
                },
                slice: function () {
                    return A(I.apply(this, arguments))
                },
                ready: function (e) {
                    if ("complete" === N.readyState || "loading" !== N.readyState && !N.documentElement.doScroll) setTimeout(function () {
                        e(A)
                    }, 0);
                    else {
                        var t = function () {
                            N.removeEventListener("DOMContentLoaded", t, !1), window.removeEventListener("load", t, !1), e(A)
                        };
                        N.addEventListener("DOMContentLoaded", t, !1), window.addEventListener("load", t, !1)
                    }
                    return this
                },
                get: function (e) {
                    return e === _ ? I.call(this) : this[e >= 0 ? e : e + this.length]
                },
                toArray: function () {
                    return this.get()
                },
                size: function () {
                    return this.length
                },
                remove: function () {
                    return this.each(function () {
                        null != this.parentNode && this.parentNode.removeChild(this)
                    })
                },
                each: function (e) {
                    return C.every.call(this, function (t, n) {
                        return !1 !== e.call(t, n, t)
                    }), this
                },
                filter: function (e) {
                    return t(e) ? this.not(this.not(e)) : A(O.call(this, function (t) {
                        return Y.matches(t, e)
                    }))
                },
                add: function (e, t) {
                    return A(k(this.concat(A(e, t))))
                },
                is: function (e) {
                    return this.length > 0 && Y.matches(this[0], e)
                },
                not: function (e) {
                    var n = [];
                    if (t(e) && e.call !== _) this.each(function (t) {
                        e.call(this, t) || n.push(this)
                    });
                    else {
                        var r = "string" == typeof e ? this.filter(e) : a(e) && t(e.item) ? I.call(e) : A(e);
                        this.forEach(function (e) {
                            r.indexOf(e) < 0 && n.push(e)
                        })
                    }
                    return A(n)
                },
                has: function (e) {
                    return this.filter(function () {
                        return o(e) ? A.contains(this, e) : A(this).find(e).size()
                    })
                },
                eq: function (e) {
                    return -1 === e ? this.slice(e) : this.slice(e, +e + 1)
                },
                first: function () {
                    var e = this[0];
                    return e && !o(e) ? e : A(e)
                },
                last: function () {
                    var e = this[this.length - 1];
                    return e && !o(e) ? e : A(e)
                },
                find: function (e) {
                    var t = this;
                    return e ? "object" == typeof e ? A(e).filter(function () {
                        var e = this;
                        return C.some.call(t, function (t) {
                            return A.contains(t, e)
                        })
                    }) : 1 == this.length ? A(Y.qsa(this[0], e)) : this.map(function () {
                        return Y.qsa(this, e)
                    }) : A()
                },
                closest: function (e, t) {
                    var n = [],
                        o = "object" == typeof e && A(e);
                    return this.each(function (i, a) {
                        for (; a && !(o ? o.indexOf(a) >= 0 : Y.matches(a, e));) a = a !== t && !r(a) && a.parentNode;
                        a && n.indexOf(a) < 0 && n.push(a)
                    }), A(n)
                },
                parents: function (e) {
                    for (var t = [], n = this; n.length > 0;) n = A.map(n, function (e) {
                        if ((e = e.parentNode) && !r(e) && t.indexOf(e) < 0) return t.push(e), e
                    });
                    return m(t, e)
                },
                parent: function (e) {
                    return m(k(this.pluck("parentNode")), e)
                },
                children: function (e) {
                    return m(this.map(function () {
                        return d(this)
                    }), e)
                },
                contents: function () {
                    return this.map(function () {
                        return this.contentDocument || I.call(this.childNodes)
                    })
                },
                siblings: function (e) {
                    return m(this.map(function (e, t) {
                        return O.call(d(t.parentNode), function (e) {
                            return e !== t
                        })
                    }), e)
                },
                empty: function () {
                    return this.each(function () {
                        this.innerHTML = ""
                    })
                },
                pluck: function (e) {
                    return A.map(this, function (t) {
                        return t[e]
                    })
                },
                show: function () {
                    return this.each(function () {
                        "none" == this.style.display && (this.style.display = ""), "none" == getComputedStyle(this, "").getPropertyValue("display") && (this.style.display = p(this.nodeName))
                    })
                },
                replaceWith: function (e) {
                    return this.before(e).remove()
                },
                wrap: function (e) {
                    var n = t(e);
                    if (this[0] && !n) var r = A(e).get(0),
                        o = r.parentNode || this.length > 1;
                    return this.each(function (t) {
                        A(this).wrapAll(n ? e.call(this, t) : o ? r.cloneNode(!0) : r)
                    })
                },
                wrapAll: function (e) {
                    if (this[0]) {
                        A(this[0]).before(e = A(e));
                        for (var t;
                            (t = e.children()).length;) e = t.first();
                        A(e).append(this)
                    }
                    return this
                },
                wrapInner: function (e) {
                    var n = t(e);
                    return this.each(function (t) {
                        var r = A(this),
                            o = r.contents(),
                            i = n ? e.call(this, t) : e;
                        o.length ? o.wrapAll(i) : r.append(i)
                    })
                },
                unwrap: function () {
                    return this.parent().each(function () {
                        A(this).replaceWith(A(this).children())
                    }), this
                },
                clone: function () {
                    return this.map(function () {
                        return this.cloneNode(!0)
                    })
                },
                hide: function () {
                    return this.css("display", "none")
                },
                toggle: function (e) {
                    return this.each(function () {
                        var t = A(this);
                        (e === _ ? "none" == t.css("display") : e) ? t.show(): t.hide()
                    })
                },
                prev: function (e) {
                    return A(this.pluck("previousElementSibling")).filter(e || "*")
                },
                next: function (e) {
                    return A(this.pluck("nextElementSibling")).filter(e || "*")
                },
                html: function (e) {
                    return 0 in arguments ? this.each(function (t) {
                        var n = this.innerHTML;
                        A(this).empty().append(y(this, e, t, n))
                    }) : 0 in this ? this[0].innerHTML : null
                },
                text: function (e) {
                    return 0 in arguments ? this.each(function (t) {
                        var n = y(this, e, t, this.textContent);
                        this.textContent = null == n ? "" : "" + n
                    }) : 0 in this ? this.pluck("textContent").join("") : null
                },
                attr: function (e, t) {
                    var n;
                    return "string" != typeof e || 1 in arguments ? this.each(function (n) {
                        if (1 === this.nodeType)
                            if (o(e))
                                for (T in e) v(this, T, e[T]);
                            else v(this, e, y(this, t, n, this.getAttribute(e)))
                    }) : 0 in this && 1 == this[0].nodeType && null != (n = this[0].getAttribute(e)) ? n : _
                },
                removeAttr: function (e) {
                    return this.each(function () {
                        1 === this.nodeType && e.split(" ").forEach(function (e) {
                            v(this, e)
                        }, this)
                    })
                },
                prop: function (e, t) {
                    return e = J[e] || e, 1 in arguments ? this.each(function (n) {
                        this[e] = y(this, t, n, this[e])
                    }) : this[0] && this[0][e]
                },
                removeProp: function (e) {
                    return e = J[e] || e, this.each(function () {
                        delete this[e]
                    })
                },
                data: function (e, t) {
                    var n = "data-" + e.replace(M, "-$1").toLowerCase(),
                        r = 1 in arguments ? this.attr(n, t) : this.attr(n);
                    return null !== r ? w(r) : _
                },
                val: function (e) {
                    return 0 in arguments ? (null == e && (e = ""), this.each(function (t) {
                        this.value = y(this, e, t, this.value)
                    })) : this[0] && (this[0].multiple ? A(this[0]).find("option").filter(function () {
                        return this.selected
                    }).pluck("value") : this[0].value)
                },
                offset: function (e) {
                    if (e) return this.each(function (t) {
                        var n = A(this),
                            r = y(this, e, t, n.offset()),
                            o = n.offsetParent().offset(),
                            i = {
                                top: r.top - o.top,
                                left: r.left - o.left
                            };
                        "static" == n.css("position") && (i.position = "relative"), n.css(i)
                    });
                    if (!this.length) return null;
                    if (N.documentElement !== this[0] && !A.contains(N.documentElement, this[0])) return {
                        top: 0,
                        left: 0
                    };
                    var t = this[0].getBoundingClientRect();
                    return {
                        left: t.left + window.pageXOffset,
                        top: t.top + window.pageYOffset,
                        width: Math.round(t.width),
                        height: Math.round(t.height)
                    }
                },
                css: function (t, n) {
                    if (arguments.length < 2) {
                        var r = this[0];
                        if ("string" == typeof t) {
                            if (!r) return;
                            return r.style[S(t)] || getComputedStyle(r, "").getPropertyValue(t)
                        }
                        if (Q(t)) {
                            if (!r) return;
                            var o = {},
                                i = getComputedStyle(r, "");
                            return A.each(t, function (e, t) {
                                o[t] = r.style[S(t)] || i.getPropertyValue(t)
                            }), o
                        }
                    }
                    var a = "";
                    if ("string" == e(t)) n || 0 === n ? a = u(t) + ":" + f(t, n) : this.each(function () {
                        this.style.removeProperty(u(t))
                    });
                    else
                        for (T in t) t[T] || 0 === t[T] ? a += u(T) + ":" + f(T, t[T]) + ";" : this.each(function () {
                            this.style.removeProperty(u(T))
                        });
                    return this.each(function () {
                        this.style.cssText += ";" + a
                    })
                },
                index: function (e) {
                    return e ? this.indexOf(A(e)[0]) : this.parent().children().indexOf(this[0])
                },
                hasClass: function (e) {
                    return !!e && C.some.call(this, function (e) {
                        return this.test(x(e))
                    }, l(e))
                },
                addClass: function (e) {
                    return e ? this.each(function (t) {
                        if ("className" in this) {
                            E = [];
                            var n = x(this);
                            y(this, e, t, n).split(/\s+/g).forEach(function (e) {
                                A(this).hasClass(e) || E.push(e)
                            }, this), E.length && x(this, n + (n ? " " : "") + E.join(" "))
                        }
                    }) : this
                },
                removeClass: function (e) {
                    return this.each(function (t) {
                        if ("className" in this) {
                            if (e === _) return x(this, "");
                            E = x(this), y(this, e, t, E).split(/\s+/g).forEach(function (e) {
                                E = E.replace(l(e), " ")
                            }), x(this, E.trim())
                        }
                    })
                },
                toggleClass: function (e, t) {
                    return e ? this.each(function (n) {
                        var r = A(this);
                        y(this, e, n, x(this)).split(/\s+/g).forEach(function (e) {
                            (t === _ ? !r.hasClass(e) : t) ? r.addClass(e): r.removeClass(e)
                        })
                    }) : this
                },
                scrollTop: function (e) {
                    if (this.length) {
                        var t = "scrollTop" in this[0];
                        return e === _ ? t ? this[0].scrollTop : this[0].pageYOffset : this.each(t ? function () {
                            this.scrollTop = e
                        } : function () {
                            this.scrollTo(this.scrollX, e)
                        })
                    }
                },
                scrollLeft: function (e) {
                    if (this.length) {
                        var t = "scrollLeft" in this[0];
                        return e === _ ? t ? this[0].scrollLeft : this[0].pageXOffset : this.each(t ? function () {
                            this.scrollLeft = e
                        } : function () {
                            this.scrollTo(e, this.scrollY)
                        })
                    }
                },
                position: function () {
                    if (this.length) {
                        var e = this[0],
                            t = this.offsetParent(),
                            n = this.offset(),
                            r = U.test(t[0].nodeName) ? {
                                top: 0,
                                left: 0
                            } : t.offset();
                        return n.top -= parseFloat(A(e).css("margin-top")) || 0, n.left -= parseFloat(A(e).css("margin-left")) || 0, r.top += parseFloat(A(t[0]).css("border-top-width")) || 0, r.left += parseFloat(A(t[0]).css("border-left-width")) || 0, {
                            top: n.top - r.top,
                            left: n.left - r.left
                        }
                    }
                },
                offsetParent: function () {
                    return this.map(function () {
                        for (var e = this.offsetParent || N.body; e && !U.test(e.nodeName) && "static" == A(e).css("position");) e = e.offsetParent;
                        return e
                    })
                }
            }, A.fn.detach = A.fn.remove, ["width", "height"].forEach(function (e) {
                var t = e.replace(/./, function (e) {
                    return e[0].toUpperCase()
                });
                A.fn[e] = function (o) {
                    var i, a = this[0];
                    return o === _ ? n(a) ? a["inner" + t] : r(a) ? a.documentElement["scroll" + t] : (i = this.offset()) && i[e] : this.each(function (t) {
                        a = A(this), a.css(e, y(this, o, t, a[e]()))
                    })
                }
            }), B.forEach(function (t, n) {
                var r = n % 2;
                A.fn[t] = function () {
                    var t, o, i = A.map(arguments, function (n) {
                            var r = [];
                            return t = e(n), "array" == t ? (n.forEach(function (e) {
                                return e.nodeType !== _ ? r.push(e) : A.zepto.isZ(e) ? r = r.concat(e.get()) : void(r = r.concat(Y.fragment(e)))
                            }), r) : "object" == t || null == n ? n : Y.fragment(n)
                        }),
                        a = this.length > 1;
                    return i.length < 1 ? this : this.each(function (e, t) {
                        o = r ? t : t.parentNode, t = 0 == n ? t.nextSibling : 1 == n ? t.firstChild : 2 == n ? t : null;
                        var s = A.contains(N.documentElement, o);
                        i.forEach(function (e) {
                            if (a) e = e.cloneNode(!0);
                            else if (!o) return A(e).remove();
                            o.insertBefore(e, t), s && b(e, function (e) {
                                if (!(null == e.nodeName || "SCRIPT" !== e.nodeName.toUpperCase() || e.type && "text/javascript" !== e.type || e.src)) {
                                    var t = e.ownerDocument ? e.ownerDocument.defaultView : window;
                                    t.eval.call(t, e.innerHTML)
                                }
                            })
                        })
                    })
                }, A.fn[r ? t + "To" : "insert" + (n ? "Before" : "After")] = function (e) {
                    return A(e)[t](this), this
                }
            }), Y.Z.prototype = h.prototype = A.fn, Y.uniq = k, Y.deserializeValue = w, A.zepto = Y, A
        }();
        window.Zepto = n, void 0 === window.$ && (window.$ = n), e.exports = n
    },
    6: function (e, t, n) {
        "use strict";
        var r = n(0),
            o = n(7),
            i = navigator.userAgent.toLowerCase(),
            a = {
                isInPP: !1,
                isInNewWdj: !1
            };
        r.ua = {
            toString: function () {
                return i
            },
            weixin: -1 !== i.indexOf("micromessenger"),
            uc: -1 !== i.indexOf("ucbrowser"),
            ucweb: -1 !== i.indexOf("ucweb"),
            android: -1 !== i.indexOf("android"),
            ipad: -1 !== i.indexOf("ipad"),
            iphone: -1 !== i.indexOf("iphone"),
            ios: -1 !== i.indexOf("ipad") || -1 !== i.indexOf("iphone") || -1 !== i.indexOf("ipod")
        }, r.getPlatform = function () {
            var e = "unkonw";
            return i.indexOf("windows") > -1 && (e = "windows"), i.indexOf("windows nt") > -1 && (e = "windows"), i.indexOf("linux") > -1 && (e = "linux"), i.indexOf("mac") > -1 && (e = "mac"), i.indexOf("ipod") > -1 && (e = "iPod"), i.indexOf("ipad") > -1 && (e = "iPad"), i.indexOf("iphone") > -1 && (e = "iPhone"), i.indexOf("android") > -1 && (e = "android"), i.indexOf("iphone") > -1 && i.indexOf("micromessenger") > -1 && (e = "iphone_weChat"), i.indexOf("ipad") > -1 && i.indexOf("micromessenger") > -1 && (e = "ipad_weChat"), i.indexOf("android") > -1 && i.indexOf("micromessenger") > -1 && (e = "android_weChat"), e
        }, r.clientType = function () {
            var e = r.getPlatform();
            return e = window.StatLoggerInterface ? "ppa" : void 0 !== window.ppAJSClient ? "ppplugin" : e.indexOf("weChat") > -1 ? "wechat" : -1 !== i.indexOf("pphelperns") ? "ppyy" : -1 !== i.indexOf("ppappinstallzb") ? "ppzb" : window.campaignPlugin ? "wdj" : "browser"
        }, r.getOs = function () {
            return r.ua.android ? "android" : r.ua.ios ? "ios" : "other"
        }, r.getBrowser = function () {
            var e = "unknown";
            return i.indexOf("ucweb") > -1 || i.indexOf("ucbrowser") > -1 ? e = "UC" : i.indexOf("qqbrowser") > -1 ? e = "QQ" : i.indexOf("baidubrowser") > -1 ? e = "Baidu" : i.indexOf("mxios") > -1 ? e = "Maxthon" : i.indexOf("qhbrowser") > -1 ? e = "360" : i.indexOf("opios") > -1 ? e = "Opera" : i.indexOf("firefox") > -1 || i.indexOf("fxios") > -1 ? e = "Firefox" : i.indexOf("quark") > -1 ? e = "Quark" : i.indexOf("micromessenger") > -1 ? e = "weChat" : i.indexOf("msie") > -1 || i.indexOf("iemobile") > -1 ? e = "IE" : i.indexOf("chrome") > -1 || i.indexOf("crios") > -1 ? e = "Chrome" : i.indexOf("safari") > -1 && (e = "Safari"), e
        }, r.browserType = r.getBrowser(), r.isInUCBrowser = function () {
            var e = i.indexOf("ucbrowser") > -1 && i.split("ucbrowser/")[1].split(" ")[0],
                t = !1;
            if (!e) try {
                e = document.cookie.split(" ve=")[1].split(" ")[0]
            } catch (e) {}
            return window.ucweb && e && (e.match(/^9\.9\.[3-9]/) || e.match(/^\d{2,}\.\d+\.\d+/)) && (t = !0), t
        }, r.isInAndroidClient = function () {
            return "ppa" === r.clientType()
        }, r.isInPPPlugin = function () {
            return "ppplugin" === r.clientType()
        }, r.isInIOSClient = function () {
            return "ppyy" === r.clientType() || "ppzb" === r.clientType()
        }, r.isInWdjClient = function () {
            return "wdj" === r.clientType()
        }, r.isInWdjOrPPClient = function (e) {
            !r.isInAndroidClient() || a.isInPP || a.isInNewWdj ? e(a) : o.getClientInfo(function (t) {
                t && t.key_data && (2011 === t.key_data.productId ? a.isInNewWdj = !0 : 2001 === t.key_data.productId && (a.isInPP = !0)), e(a)
            })
        }, r.isInClient = function () {
            return r.isInAndroidClient() || r.isInIOSClient() || r.isInWdjClient()
        }, e.exports = r
    },
    7: function (e, t, n) {
        "use strict";
        var r = n(1),
            o = n(2);
        o.getSysInfo = function (e) {
            o.ApiProtocol(r.methodId.SYSTEM_INFO, {}, e)
        }, o.getClientInfo = function (e) {
            o.ApiProtocol(r.methodId.CLIENT_INFO, {}, e)
        }, o.newPage = function (e, t, n, i) {
            o.ApiProtocol(r.methodId.NEW_PAGE, {
                url: e,
                title: t,
                level: n
            }, i)
        }, o.showPageSSO = function (e) {
            var t = {
                url: e
            };
            o.ApiProtocol(r.methodId.SHOW_PAGE_SSO, t)
        }, o.exit = function () {
            o.ApiProtocol(r.methodId.EXIT_PAGE, {})
        }, o.clearHistory = function () {
            o.ApiProtocol(r.methodId.EVENT, {
                event: 1
            })
        }, o.openInputKeyboard = function () {
            o.ApiProtocol(r.methodId.INPUT_KEYBOARD, {
                show: !0
            })
        }, o.closeInputKeyboard = function () {
            o.ApiProtocol(r.methodId.INPUT_KEYBOARD, {
                show: !1
            })
        }, o.screenCapture = function (e, t, n, i, a) {
            o.ApiProtocol(r.methodId.SCREEN_CAPTURE, {
                left: e,
                top: t,
                right: n,
                bottom: i,
                action: 0
            }, a)
        }, o.screenCaptureShare = function (e, t, n, i, a, s, c) {
            o.ApiProtocol(r.methodId.SCREEN_CAPTURE, {
                left: e,
                top: t,
                right: n,
                bottom: i,
                action: 1,
                msg: s
            }, c)
        }, o.shake = function (e) {
            o.ApiProtocol(r.methodId.SHAKE, {
                shake: e
            })
        }, o.switchTitle = function (e) {
            o.ApiProtocol(r.methodId.SWITCH_TITLE, {
                show: e
            })
        }, o.hideLoading = function () {
            o.ApiProtocol(r.methodId.HIDE_LOADING)
        }, o.fullScreen = function (e) {
            o.ApiProtocol(r.methodId.FULL_SCREEN, {
                isFullScreen: e
            })
        }, o.checkIsNewUser = function (e) {
            o.ApiProtocol(r.methodId.USER_IS_NEW, {}, e)
        }, e.exports = o
    },
    8: function (e, t, n) {
        n(28), n(27), n(29), n(30), e.exports = n(5)
    },
    9: function (e, t, n) {
        "use strict";
        var r = n(0);
        r.cookie = {
            set: function (e, t, n) {
                n && "object" == typeof n || (n = {});
                var r = e + "=" + encodeURIComponent(t);
                if (n && n.seconds) {
                    var o = new Date;
                    o.setTime(o.getTime() + 1e3 * n.seconds), r += ";expires=" + o.toGMTString()
                }
                n && n.path && (r += ";path=" + n.path), n && n.domain && (r += ";domain=" + n.domain), document.cookie = r
            },
            get: function (e) {
                var t, n = new RegExp("(^| )" + e + "=([^;]*)(;|$)");
                return document.cookie.match(n) ? (t = document.cookie.match(n), decodeURIComponent(t[2])) : null
            },
            del: function (e) {
                var t = new Date,
                    n = r.cookie.get(e);
                t.setTime(t.getTime() - 1), null != n && (document.cookie = e + "=" + n + ";expires=" + t.toGMTString())
            }
        }, e.exports = r
    }
}, [254]);
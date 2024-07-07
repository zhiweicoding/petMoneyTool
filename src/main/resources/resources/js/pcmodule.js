webpackJsonp([5], [function (e, t, n) {
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
}, function (e, t, n) {
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
}, function (e, t, n) {
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
}, function (e, t, n) {
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
            return _e(t) ? ke.grep(e, function (e, r) {
                return !!t.call(e, r, e) !== n
            }) : t.nodeType ? ke.grep(e, function (e) {
                return e === t !== n
            }) : "string" != typeof t ? ke.grep(e, function (e) {
                return ge.call(t, e) > -1 !== n
            }) : ke.filter(t, e, n)
        }

        function p(e, t) {
            for (;
                (e = e[t]) && 1 !== e.nodeType;);
            return e
        }

        function f(e) {
            var t = {};
            return ke.each(e.match(Ue) || [], function (e, n) {
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
            le.removeEventListener("DOMContentLoaded", m), n.removeEventListener("load", m), ke.ready()
        }

        function y(e, t) {
            return t.toUpperCase()
        }

        function v(e) {
            return e.replace(He, "ms-").replace(We, y)
        }

        function w() {
            this.expando = ke.expando + w.uid++
        }

        function b(e) {
            return "true" === e || "false" !== e && ("null" === e ? null : e === +e + "" ? +e : $e.test(e) ? JSON.parse(e) : e)
        }

        function x(e, t, n) {
            var r;
            if (void 0 === n && 1 === e.nodeType)
                if (r = "data-" + t.replace(Ge, "-$&").toLowerCase(), "string" == typeof (n = e.getAttribute(r))) {
                    try {
                        n = b(n)
                    } catch (e) {}
                    ze.set(e, t, n)
                } else n = void 0;
            return n
        }

        function _(e, t, n, r) {
            var o, i, a = 20,
                s = r ? function () {
                    return r.cur()
                } : function () {
                    return ke.css(e, t, "")
                },
                c = s(),
                u = n && n[3] || (ke.cssNumber[t] ? "" : "px"),
                l = (ke.cssNumber[t] || "px" !== u && +c) && Ve.exec(ke.css(e, t));
            if (l && l[3] !== u) {
                for (c /= 2, u = u || l[3], l = +c || 1; a--;) ke.style(e, t, l + u), (1 - i) * (1 - (i = s() / c || .5)) <= 0 && (a = 0), l /= i;
                l *= 2, ke.style(e, t, l + u), n = n || []
            }
            return n && (l = +l || +c || 0, o = n[1] ? l + (n[1] + 1) * n[2] : +n[2], r && (r.unit = u, r.start = l, r.end = o)), o
        }

        function T(e) {
            var t, n = e.ownerDocument,
                r = e.nodeName,
                o = Qe[r];
            return o || (t = n.body.appendChild(n.createElement(r)), o = ke.css(t, "display"), t.parentNode.removeChild(t), "none" === o && (o = "block"), Qe[r] = o, o)
        }

        function A(e, t) {
            for (var n, r, o = [], i = 0, a = e.length; i < a; i++) r = e[i], r.style && (n = r.style.display, t ? ("none" === n && (o[i] = Be.get(r, "display") || null, o[i] || (r.style.display = "")), "" === r.style.display && Je(r) && (o[i] = T(r))) : "none" !== n && (o[i] = "none", Be.set(r, "display", n)));
            for (i = 0; i < a; i++) null != o[i] && (e[i].style.display = o[i]);
            return e
        }

        function k(e, t) {
            var n;
            return n = void 0 !== e.getElementsByTagName ? e.getElementsByTagName(t || "*") : void 0 !== e.querySelectorAll ? e.querySelectorAll(t || "*") : [], void 0 === t || t && u(e, t) ? ke.merge([e], n) : n
        }

        function S(e, t) {
            for (var n = 0, r = e.length; n < r; n++) Be.set(e[n], "globalEval", !t || Be.get(t[n], "globalEval"))
        }

        function I(e, t, n, r, o) {
            for (var i, a, c, u, l, p, f = t.createDocumentFragment(), d = [], h = 0, g = e.length; h < g; h++)
                if ((i = e[h]) || 0 === i)
                    if ("object" === s(i)) ke.merge(d, i.nodeType ? [i] : i);
                    else if (rt.test(i)) {
                for (a = a || f.appendChild(t.createElement("div")), c = (et.exec(i) || ["", ""])[1].toLowerCase(), u = nt[c] || nt._default, a.innerHTML = u[1] + ke.htmlPrefilter(i) + u[2], p = u[0]; p--;) a = a.lastChild;
                ke.merge(d, a.childNodes), a = f.firstChild, a.textContent = ""
            } else d.push(t.createTextNode(i));
            for (f.textContent = "", h = 0; i = d[h++];)
                if (r && ke.inArray(i, r) > -1) o && o.push(i);
                else if (l = ke.contains(i.ownerDocument, i), a = k(f.appendChild(i), "script"), l && S(a), n)
                for (p = 0; i = a[p++];) tt.test(i.type || "") && n.push(i);
            return f
        }

        function C() {
            return !0
        }

        function P() {
            return !1
        }

        function E() {
            try {
                return le.activeElement
            } catch (e) {}
        }

        function O(e, t, n, r, o, i) {
            var a, s;
            if ("object" == typeof t) {
                "string" != typeof n && (r = r || n, n = void 0);
                for (s in t) O(e, s, n, r, t[s], i);
                return e
            }
            if (null == r && null == o ? (o = n, r = n = void 0) : null == o && ("string" == typeof n ? (o = r, r = void 0) : (o = r, r = n, n = void 0)), !1 === o) o = P;
            else if (!o) return e;
            return 1 === i && (a = o, o = function (e) {
                return ke().off(e), a.apply(this, arguments)
            }, o.guid = a.guid || (a.guid = ke.guid++)), e.each(function () {
                ke.event.add(this, t, o, r, n)
            })
        }

        function N(e, t) {
            return u(e, "table") && u(11 !== t.nodeType ? t : t.firstChild, "tr") ? ke(e).children("tbody")[0] || e : e
        }

        function j(e) {
            return e.type = (null !== e.getAttribute("type")) + "/" + e.type, e
        }

        function D(e) {
            return "true/" === (e.type || "").slice(0, 5) ? e.type = e.type.slice(5) : e.removeAttribute("type"), e
        }

        function L(e, t) {
            var n, r, o, i, a, s, c, u;
            if (1 === t.nodeType) {
                if (Be.hasData(e) && (i = Be.access(e), a = Be.set(t, i), u = i.events)) {
                    delete a.handle, a.events = {};
                    for (o in u)
                        for (n = 0, r = u[o].length; n < r; n++) ke.event.add(t, o, u[o][n])
                }
                ze.hasData(e) && (s = ze.access(e), c = ke.extend({}, s), ze.set(t, c))
            }
        }

        function U(e, t) {
            var n = t.nodeName.toLowerCase();
            "input" === n && Ze.test(e.type) ? t.checked = e.checked : "input" !== n && "textarea" !== n || (t.defaultValue = e.defaultValue)
        }

        function R(e, t, n, r) {
            t = de.apply([], t);
            var o, i, s, c, u, l, p = 0,
                f = e.length,
                d = f - 1,
                h = t[0],
                g = _e(h);
            if (g || f > 1 && "string" == typeof h && !xe.checkClone && lt.test(h)) return e.each(function (o) {
                var i = e.eq(o);
                g && (t[0] = h.call(this, o, i.html())), R(i, t, n, r)
            });
            if (f && (o = I(t, e[0].ownerDocument, !1, e, r), i = o.firstChild, 1 === o.childNodes.length && (o = i), i || r)) {
                for (s = ke.map(k(o, "script"), j), c = s.length; p < f; p++) u = o, p !== d && (u = ke.clone(u, !0, !0), c && ke.merge(s, k(u, "script"))), n.call(e[p], u, p);
                if (c)
                    for (l = s[s.length - 1].ownerDocument, ke.map(s, D), p = 0; p < c; p++) u = s[p], tt.test(u.type || "") && !Be.access(u, "globalEval") && ke.contains(l, u) && (u.src && "module" !== (u.type || "").toLowerCase() ? ke._evalUrl && ke._evalUrl(u.src) : a(u.textContent.replace(pt, ""), l, u))
            }
            return e
        }

        function M(e, t, n) {
            for (var r, o = t ? ke.filter(t, e) : e, i = 0; null != (r = o[i]); i++) n || 1 !== r.nodeType || ke.cleanData(k(r)), r.parentNode && (n && ke.contains(r.ownerDocument, r) && S(k(r, "script")), r.parentNode.removeChild(r));
            return e
        }

        function q(e, t, n) {
            var r, o, i, a, s = e.style;
            return n = n || dt(e), n && (a = n.getPropertyValue(t) || n[t], "" !== a || ke.contains(e.ownerDocument, e) || (a = ke.style(e, t)), !xe.pixelBoxStyles() && ft.test(a) && ht.test(t) && (r = s.width, o = s.minWidth, i = s.maxWidth, s.minWidth = s.maxWidth = s.width = a, a = n.width, s.width = r, s.minWidth = o, s.maxWidth = i)), void 0 !== a ? a + "" : a
        }

        function H(e, t) {
            return {
                get: function () {
                    return e() ? void delete this.get : (this.get = t).apply(this, arguments)
                }
            }
        }

        function W(e) {
            if (e in bt) return e;
            for (var t = e[0].toUpperCase() + e.slice(1), n = wt.length; n--;)
                if ((e = wt[n] + t) in bt) return e
        }

        function F(e) {
            var t = ke.cssProps[e];
            return t || (t = ke.cssProps[e] = W(e) || e), t
        }

        function B(e, t, n) {
            var r = Ve.exec(t);
            return r ? Math.max(0, r[2] - (n || 0)) + (r[3] || "px") : t
        }

        function z(e, t, n, r, o, i) {
            var a = "width" === t ? 1 : 0,
                s = 0,
                c = 0;
            if (n === (r ? "border" : "content")) return 0;
            for (; a < 4; a += 2) "margin" === n && (c += ke.css(e, n + Ye[a], !0, o)), r ? ("content" === n && (c -= ke.css(e, "padding" + Ye[a], !0, o)), "margin" !== n && (c -= ke.css(e, "border" + Ye[a] + "Width", !0, o))) : (c += ke.css(e, "padding" + Ye[a], !0, o), "padding" !== n ? c += ke.css(e, "border" + Ye[a] + "Width", !0, o) : s += ke.css(e, "border" + Ye[a] + "Width", !0, o));
            return !r && i >= 0 && (c += Math.max(0, Math.ceil(e["offset" + t[0].toUpperCase() + t.slice(1)] - i - c - s - .5))), c
        }

        function $(e, t, n) {
            var r = dt(e),
                o = q(e, t, r),
                i = "border-box" === ke.css(e, "boxSizing", !1, r),
                a = i;
            if (ft.test(o)) {
                if (!n) return o;
                o = "auto"
            }
            return a = a && (xe.boxSizingReliable() || o === e.style[t]), ("auto" === o || !parseFloat(o) && "inline" === ke.css(e, "display", !1, r)) && (o = e["offset" + t[0].toUpperCase() + t.slice(1)], a = !0), (o = parseFloat(o) || 0) + z(e, t, n || (i ? "border" : "content"), a, r, o) + "px"
        }

        function G(e, t, n, r, o) {
            return new G.prototype.init(e, t, n, r, o)
        }

        function K() {
            _t && (!1 === le.hidden && n.requestAnimationFrame ? n.requestAnimationFrame(K) : n.setTimeout(K, ke.fx.interval), ke.fx.tick())
        }

        function V() {
            return n.setTimeout(function () {
                xt = void 0
            }), xt = Date.now()
        }

        function Y(e, t) {
            var n, r = 0,
                o = {
                    height: e
                };
            for (t = t ? 1 : 0; r < 4; r += 2 - t) n = Ye[r], o["margin" + n] = o["padding" + n] = e;
            return t && (o.opacity = o.width = e), o
        }

        function J(e, t, n) {
            for (var r, o = (Z.tweeners[t] || []).concat(Z.tweeners["*"]), i = 0, a = o.length; i < a; i++)
                if (r = o[i].call(n, t, e)) return r
        }

        function X(e, t, n) {
            var r, o, i, a, s, c, u, l, p = "width" in t || "height" in t,
                f = this,
                d = {},
                h = e.style,
                g = e.nodeType && Je(e),
                m = Be.get(e, "fxshow");
            n.queue || (a = ke._queueHooks(e, "fx"), null == a.unqueued && (a.unqueued = 0, s = a.empty.fire, a.empty.fire = function () {
                a.unqueued || s()
            }), a.unqueued++, f.always(function () {
                f.always(function () {
                    a.unqueued--, ke.queue(e, "fx").length || a.empty.fire()
                })
            }));
            for (r in t)
                if (o = t[r], Tt.test(o)) {
                    if (delete t[r], i = i || "toggle" === o, o === (g ? "hide" : "show")) {
                        if ("show" !== o || !m || void 0 === m[r]) continue;
                        g = !0
                    }
                    d[r] = m && m[r] || ke.style(e, r)
                }
            if ((c = !ke.isEmptyObject(t)) || !ke.isEmptyObject(d)) {
                p && 1 === e.nodeType && (n.overflow = [h.overflow, h.overflowX, h.overflowY], u = m && m.display, null == u && (u = Be.get(e, "display")), l = ke.css(e, "display"), "none" === l && (u ? l = u : (A([e], !0), u = e.style.display || u, l = ke.css(e, "display"), A([e]))), ("inline" === l || "inline-block" === l && null != u) && "none" === ke.css(e, "float") && (c || (f.done(function () {
                    h.display = u
                }), null == u && (l = h.display, u = "none" === l ? "" : l)), h.display = "inline-block")), n.overflow && (h.overflow = "hidden", f.always(function () {
                    h.overflow = n.overflow[0], h.overflowX = n.overflow[1], h.overflowY = n.overflow[2]
                })), c = !1;
                for (r in d) c || (m ? "hidden" in m && (g = m.hidden) : m = Be.access(e, "fxshow", {
                    display: u
                }), i && (m.hidden = !g), g && A([e], !0), f.done(function () {
                    g || A([e]), Be.remove(e, "fxshow");
                    for (r in d) ke.style(e, r, d[r])
                })), c = J(g ? m[r] : 0, r, f), r in m || (m[r] = c.start, g && (c.end = c.start, c.start = 0))
            }
        }

        function Q(e, t) {
            var n, r, o, i, a;
            for (n in e)
                if (r = v(n), o = t[r], i = e[n], Array.isArray(i) && (o = i[1], i = e[n] = i[0]), n !== r && (e[r] = i, delete e[n]), (a = ke.cssHooks[r]) && "expand" in a) {
                    i = a.expand(i), delete e[r];
                    for (n in i) n in e || (e[n] = i[n], t[n] = o)
                } else t[r] = o
        }

        function Z(e, t, n) {
            var r, o, i = 0,
                a = Z.prefilters.length,
                s = ke.Deferred().always(function () {
                    delete c.elem
                }),
                c = function () {
                    if (o) return !1;
                    for (var t = xt || V(), n = Math.max(0, u.startTime + u.duration - t), r = n / u.duration || 0, i = 1 - r, a = 0, c = u.tweens.length; a < c; a++) u.tweens[a].run(i);
                    return s.notifyWith(e, [u, i, n]), i < 1 && c ? n : (c || s.notifyWith(e, [u, 1, 0]), s.resolveWith(e, [u]), !1)
                },
                u = s.promise({
                    elem: e,
                    props: ke.extend({}, t),
                    opts: ke.extend(!0, {
                        specialEasing: {},
                        easing: ke.easing._default
                    }, n),
                    originalProperties: t,
                    originalOptions: n,
                    startTime: xt || V(),
                    duration: n.duration,
                    tweens: [],
                    createTween: function (t, n) {
                        var r = ke.Tween(e, u.opts, t, n, u.opts.specialEasing[t] || u.opts.easing);
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
                if (r = Z.prefilters[i].call(u, e, l, u.opts)) return _e(r.stop) && (ke._queueHooks(u.elem, u.opts.queue).stop = r.stop.bind(r)), r;
            return ke.map(l, J, u), _e(u.opts.start) && u.opts.start.call(e, u), u.progress(u.opts.progress).done(u.opts.done, u.opts.complete).fail(u.opts.fail).always(u.opts.always), ke.fx.timer(ke.extend(c, {
                elem: e,
                anim: u,
                queue: u.opts.queue
            })), u
        }

        function ee(e) {
            return (e.match(Ue) || []).join(" ")
        }

        function te(e) {
            return e.getAttribute && e.getAttribute("class") || ""
        }

        function ne(e) {
            return Array.isArray(e) ? e : "string" == typeof e ? e.match(Ue) || [] : []
        }

        function re(e, t, n, r) {
            var o;
            if (Array.isArray(t)) ke.each(t, function (t, o) {
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
                    i = t.toLowerCase().match(Ue) || [];
                if (_e(n))
                    for (; r = i[o++];) "+" === r[0] ? (r = r.slice(1) || "*", (e[r] = e[r] || []).unshift(n)) : (e[r] = e[r] || []).push(n)
            }
        }

        function ie(e, t, n, r) {
            function o(s) {
                var c;
                return i[s] = !0, ke.each(e[s] || [], function (e, s) {
                    var u = s(t, n, r);
                    return "string" != typeof u || a || i[u] ? a ? !(c = u) : void 0 : (t.dataTypes.unshift(u), o(u), !1)
                }), c
            }
            var i = {},
                a = e === Kt;
            return o(t.dataTypes[0]) || !i["*"] && o("*")
        }

        function ae(e, t) {
            var n, r, o = ke.ajaxSettings.flatOptions || {};
            for (n in t) void 0 !== t[n] && ((o[n] ? e : r || (r = {}))[n] = t[n]);
            return r && ke.extend(!0, e, r), e
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
            pe = Object.getPrototypeOf,
            fe = ue.slice,
            de = ue.concat,
            he = ue.push,
            ge = ue.indexOf,
            me = {},
            ye = me.toString,
            ve = me.hasOwnProperty,
            we = ve.toString,
            be = we.call(Object),
            xe = {},
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
            ke = function (e, t) {
                return new ke.fn.init(e, t)
            },
            Se = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
        ke.fn = ke.prototype = {
            jquery: "3.3.1",
            constructor: ke,
            length: 0,
            toArray: function () {
                return fe.call(this)
            },
            get: function (e) {
                return null == e ? fe.call(this) : e < 0 ? this[e + this.length] : this[e]
            },
            pushStack: function (e) {
                var t = ke.merge(this.constructor(), e);
                return t.prevObject = this, t
            },
            each: function (e) {
                return ke.each(this, e)
            },
            map: function (e) {
                return this.pushStack(ke.map(this, function (t, n) {
                    return e.call(t, n, t)
                }))
            },
            slice: function () {
                return this.pushStack(fe.apply(this, arguments))
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
        }, ke.extend = ke.fn.extend = function () {
            var e, t, n, r, o, i, a = arguments[0] || {},
                s = 1,
                c = arguments.length,
                u = !1;
            for ("boolean" == typeof a && (u = a, a = arguments[s] || {}, s++), "object" == typeof a || _e(a) || (a = {}), s === c && (a = this, s--); s < c; s++)
                if (null != (e = arguments[s]))
                    for (t in e) n = a[t], r = e[t], a !== r && (u && r && (ke.isPlainObject(r) || (o = Array.isArray(r))) ? (o ? (o = !1, i = n && Array.isArray(n) ? n : []) : i = n && ke.isPlainObject(n) ? n : {}, a[t] = ke.extend(u, i, r)) : void 0 !== r && (a[t] = r));
            return a
        }, ke.extend({
            expando: "jQuery" + ("3.3.1" + Math.random()).replace(/\D/g, ""),
            isReady: !0,
            error: function (e) {
                throw new Error(e)
            },
            noop: function () {},
            isPlainObject: function (e) {
                var t, n;
                return !(!e || "[object Object]" !== ye.call(e)) && (!(t = pe(e)) || "function" == typeof (n = ve.call(t, "constructor") && t.constructor) && we.call(n) === be)
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
                return null != e && (c(Object(e)) ? ke.merge(n, "string" == typeof e ? [e] : e) : he.call(n, e)), n
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
            support: xe
        }), "function" == typeof Symbol && (ke.fn[Symbol.iterator] = ue[Symbol.iterator]), ke.each("Boolean Number String Function Array Date RegExp Object Error Symbol".split(" "), function (e, t) {
            me["[object " + t + "]"] = t.toLowerCase()
        });
        var Ie = function (e) {
            function t(e, t, n, r) {
                var o, i, a, s, c, l, f, d = t && t.ownerDocument,
                    h = t ? t.nodeType : 9;
                if (n = n || [], "string" != typeof e || !e || 1 !== h && 9 !== h && 11 !== h) return n;
                if (!r && ((t ? t.ownerDocument || t : q) !== O && E(t), t = t || O, j)) {
                    if (11 !== h && (c = ge.exec(e)))
                        if (o = c[1]) {
                            if (9 === h) {
                                if (!(a = t.getElementById(o))) return n;
                                if (a.id === o) return n.push(a), n
                            } else if (d && (a = d.getElementById(o)) && R(t, a) && a.id === o) return n.push(a), n
                        } else {
                            if (c[2]) return J.apply(n, t.getElementsByTagName(e)), n;
                            if ((o = c[3]) && b.getElementsByClassName && t.getElementsByClassName) return J.apply(n, t.getElementsByClassName(o)), n
                        }
                    if (b.qsa && !z[e + " "] && (!D || !D.test(e))) {
                        if (1 !== h) d = t, f = e;
                        else if ("object" !== t.nodeName.toLowerCase()) {
                            for ((s = t.getAttribute("id")) ? s = s.replace(we, be) : t.setAttribute("id", s = M), l = A(e), i = l.length; i--;) l[i] = "#" + s + " " + p(l[i]);
                            f = l.join(","), d = me.test(e) && u(t.parentNode) || t
                        }
                        if (f) try {
                            return J.apply(n, d.querySelectorAll(f)), n
                        } catch (e) {} finally {
                            s === M && t.removeAttribute("id")
                        }
                    }
                }
                return S(e.replace(ie, "$1"), t, n, r)
            }

            function n() {
                function e(n, r) {
                    return t.push(n + " ") > x.cacheLength && delete e[t.shift()], e[n + " "] = r
                }
                var t = [];
                return e
            }

            function r(e) {
                return e[M] = !0, e
            }

            function o(e) {
                var t = O.createElement("fieldset");
                try {
                    return !!e(t)
                } catch (e) {
                    return !1
                } finally {
                    t.parentNode && t.parentNode.removeChild(t), t = null
                }
            }

            function i(e, t) {
                for (var n = e.split("|"), r = n.length; r--;) x.attrHandle[n[r]] = t
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

            function p(e) {
                for (var t = 0, n = e.length, r = ""; t < n; t++) r += e[t].value;
                return r
            }

            function f(e, t, n) {
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
                    var u, l, p, f = [H, s];
                    if (c) {
                        for (; t = t[r];)
                            if ((1 === t.nodeType || a) && e(t, n, c)) return !0
                    } else
                        for (; t = t[r];)
                            if (1 === t.nodeType || a)
                                if (p = t[M] || (t[M] = {}), l = p[t.uniqueID] || (p[t.uniqueID] = {}), o && o === t.nodeName.toLowerCase()) t = t[r] || t;
                                else {
                                    if ((u = l[i]) && u[0] === H && u[1] === s) return f[2] = u[2];
                                    if (l[i] = f, f[2] = e(t, n, c)) return !0
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
                return o && !o[M] && (o = m(o)), i && !i[M] && (i = m(i, a)), r(function (r, a, s, c) {
                    var u, l, p, f = [],
                        d = [],
                        m = a.length,
                        y = r || h(t || "*", s.nodeType ? [s] : s, []),
                        v = !e || !r && t ? y : g(y, f, e, s, c),
                        w = n ? i || (r ? e : m || o) ? [] : a : v;
                    if (n && n(v, w, s, c), o)
                        for (u = g(w, d), o(u, [], s, c), l = u.length; l--;)(p = u[l]) && (w[d[l]] = !(v[d[l]] = p));
                    if (r) {
                        if (i || e) {
                            if (i) {
                                for (u = [], l = w.length; l--;)(p = w[l]) && u.push(v[l] = p);
                                i(null, w = [], u, c)
                            }
                            for (l = w.length; l--;)(p = w[l]) && (u = i ? Q(r, p) : f[l]) > -1 && (r[u] = !(a[u] = p))
                        }
                    } else w = g(w === a ? w.splice(m, w.length) : w), i ? i(null, a, w, c) : J.apply(a, w)
                })
            }

            function y(e) {
                for (var t, n, r, o = e.length, i = x.relative[e[0].type], a = i || x.relative[" "], s = i ? 1 : 0, c = f(function (e) {
                        return e === t
                    }, a, !0), u = f(function (e) {
                        return Q(t, e) > -1
                    }, a, !0), l = [function (e, n, r) {
                        var o = !i && (r || n !== I) || ((t = n).nodeType ? c(e, n, r) : u(e, n, r));
                        return t = null, o
                    }]; s < o; s++)
                    if (n = x.relative[e[s].type]) l = [f(d(l), n)];
                    else {
                        if (n = x.filter[e[s].type].apply(null, e[s].matches), n[M]) {
                            for (r = ++s; r < o && !x.relative[e[r].type]; r++);
                            return m(s > 1 && d(l), s > 1 && p(e.slice(0, s - 1).concat({
                                value: " " === e[s - 2].type ? "*" : ""
                            })).replace(ie, "$1"), n, s < r && y(e.slice(s, r)), r < o && y(e = e.slice(r)), r < o && p(e))
                        }
                        l.push(n)
                    }
                return d(l)
            }

            function v(e, n) {
                var o = n.length > 0,
                    i = e.length > 0,
                    a = function (r, a, s, c, u) {
                        var l, p, f, d = 0,
                            h = "0",
                            m = r && [],
                            y = [],
                            v = I,
                            w = r || i && x.find.TAG("*", u),
                            b = H += null == v ? 1 : Math.random() || .1,
                            _ = w.length;
                        for (u && (I = a === O || a || u); h !== _ && null != (l = w[h]); h++) {
                            if (i && l) {
                                for (p = 0, a || l.ownerDocument === O || (E(l), s = !j); f = e[p++];)
                                    if (f(l, a || O, s)) {
                                        c.push(l);
                                        break
                                    }
                                u && (H = b)
                            }
                            o && ((l = !f && l) && d--, r && m.push(l))
                        }
                        if (d += h, o && h !== d) {
                            for (p = 0; f = n[p++];) f(m, y, a, s);
                            if (r) {
                                if (d > 0)
                                    for (; h--;) m[h] || y[h] || (y[h] = V.call(c));
                                y = g(y)
                            }
                            J.apply(c, y), u && !r && y.length > 0 && d + n.length > 1 && t.uniqueSort(c)
                        }
                        return u && (H = b, I = v), m
                    };
                return o ? r(a) : a
            }
            var w, b, x, _, T, A, k, S, I, C, P, E, O, N, j, D, L, U, R, M = "sizzle" + 1 * new Date,
                q = e.document,
                H = 0,
                W = 0,
                F = n(),
                B = n(),
                z = n(),
                $ = function (e, t) {
                    return e === t && (P = !0), 0
                },
                G = {}.hasOwnProperty,
                K = [],
                V = K.pop,
                Y = K.push,
                J = K.push,
                X = K.slice,
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
                pe = {
                    ID: new RegExp("^#(" + te + ")"),
                    CLASS: new RegExp("^\\.(" + te + ")"),
                    TAG: new RegExp("^(" + te + "|[*])"),
                    ATTR: new RegExp("^" + ne),
                    PSEUDO: new RegExp("^" + re),
                    CHILD: new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\(" + ee + "*(even|odd|(([+-]|)(\\d*)n|)" + ee + "*(?:([+-]|)" + ee + "*(\\d+)|))" + ee + "*\\)|)", "i"),
                    bool: new RegExp("^(?:" + Z + ")$", "i"),
                    needsContext: new RegExp("^" + ee + "*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\(" + ee + "*((?:-\\d)?\\d*)" + ee + "*\\)|)(?=[^-]|$)", "i")
                },
                fe = /^(?:input|select|textarea|button)$/i,
                de = /^h\d$/i,
                he = /^[^{]+\{\s*\[native \w/,
                ge = /^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,
                me = /[+~]/,
                ye = new RegExp("\\\\([\\da-f]{1,6}" + ee + "?|(" + ee + ")|.)", "ig"),
                ve = function (e, t, n) {
                    var r = "0x" + t - 65536;
                    return r !== r || n ? t : r < 0 ? String.fromCharCode(r + 65536) : String.fromCharCode(r >> 10 | 55296, 1023 & r | 56320)
                },
                we = /([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,
                be = function (e, t) {
                    return t ? "\0" === e ? "�" : e.slice(0, -1) + "\\" + e.charCodeAt(e.length - 1).toString(16) + " " : "\\" + e
                },
                xe = function () {
                    E()
                },
                _e = f(function (e) {
                    return !0 === e.disabled && ("form" in e || "label" in e)
                }, {
                    dir: "parentNode",
                    next: "legend"
                });
            try {
                J.apply(K = X.call(q.childNodes), q.childNodes), K[q.childNodes.length].nodeType
            } catch (e) {
                J = {
                    apply: K.length ? function (e, t) {
                        Y.apply(e, X.call(t))
                    } : function (e, t) {
                        for (var n = e.length, r = 0; e[n++] = t[r++];);
                        e.length = n - 1
                    }
                }
            }
            b = t.support = {}, T = t.isXML = function (e) {
                var t = e && (e.ownerDocument || e).documentElement;
                return !!t && "HTML" !== t.nodeName
            }, E = t.setDocument = function (e) {
                var t, n, r = e ? e.ownerDocument || e : q;
                return r !== O && 9 === r.nodeType && r.documentElement ? (O = r, N = O.documentElement, j = !T(O), q !== O && (n = O.defaultView) && n.top !== n && (n.addEventListener ? n.addEventListener("unload", xe, !1) : n.attachEvent && n.attachEvent("onunload", xe)), b.attributes = o(function (e) {
                    return e.className = "i", !e.getAttribute("className")
                }), b.getElementsByTagName = o(function (e) {
                    return e.appendChild(O.createComment("")), !e.getElementsByTagName("*").length
                }), b.getElementsByClassName = he.test(O.getElementsByClassName), b.getById = o(function (e) {
                    return N.appendChild(e).id = M, !O.getElementsByName || !O.getElementsByName(M).length
                }), b.getById ? (x.filter.ID = function (e) {
                    var t = e.replace(ye, ve);
                    return function (e) {
                        return e.getAttribute("id") === t
                    }
                }, x.find.ID = function (e, t) {
                    if (void 0 !== t.getElementById && j) {
                        var n = t.getElementById(e);
                        return n ? [n] : []
                    }
                }) : (x.filter.ID = function (e) {
                    var t = e.replace(ye, ve);
                    return function (e) {
                        var n = void 0 !== e.getAttributeNode && e.getAttributeNode("id");
                        return n && n.value === t
                    }
                }, x.find.ID = function (e, t) {
                    if (void 0 !== t.getElementById && j) {
                        var n, r, o, i = t.getElementById(e);
                        if (i) {
                            if ((n = i.getAttributeNode("id")) && n.value === e) return [i];
                            for (o = t.getElementsByName(e), r = 0; i = o[r++];)
                                if ((n = i.getAttributeNode("id")) && n.value === e) return [i]
                        }
                        return []
                    }
                }), x.find.TAG = b.getElementsByTagName ? function (e, t) {
                    return void 0 !== t.getElementsByTagName ? t.getElementsByTagName(e) : b.qsa ? t.querySelectorAll(e) : void 0
                } : function (e, t) {
                    var n, r = [],
                        o = 0,
                        i = t.getElementsByTagName(e);
                    if ("*" === e) {
                        for (; n = i[o++];) 1 === n.nodeType && r.push(n);
                        return r
                    }
                    return i
                }, x.find.CLASS = b.getElementsByClassName && function (e, t) {
                    if (void 0 !== t.getElementsByClassName && j) return t.getElementsByClassName(e)
                }, L = [], D = [], (b.qsa = he.test(O.querySelectorAll)) && (o(function (e) {
                    N.appendChild(e).innerHTML = "<a id='" + M + "'></a><select id='" + M + "-\r\\' msallowcapture=''><option selected=''></option></select>", e.querySelectorAll("[msallowcapture^='']").length && D.push("[*^$]=" + ee + "*(?:''|\"\")"), e.querySelectorAll("[selected]").length || D.push("\\[" + ee + "*(?:value|" + Z + ")"), e.querySelectorAll("[id~=" + M + "-]").length || D.push("~="), e.querySelectorAll(":checked").length || D.push(":checked"), e.querySelectorAll("a#" + M + "+*").length || D.push(".#.+[+~]")
                }), o(function (e) {
                    e.innerHTML = "<a href='' disabled='disabled'></a><select disabled='disabled'><option/></select>";
                    var t = O.createElement("input");
                    t.setAttribute("type", "hidden"), e.appendChild(t).setAttribute("name", "D"), e.querySelectorAll("[name=d]").length && D.push("name" + ee + "*[*^$|!~]?="), 2 !== e.querySelectorAll(":enabled").length && D.push(":enabled", ":disabled"), N.appendChild(e).disabled = !0, 2 !== e.querySelectorAll(":disabled").length && D.push(":enabled", ":disabled"), e.querySelectorAll("*,:x"), D.push(",.*:")
                })), (b.matchesSelector = he.test(U = N.matches || N.webkitMatchesSelector || N.mozMatchesSelector || N.oMatchesSelector || N.msMatchesSelector)) && o(function (e) {
                    b.disconnectedMatch = U.call(e, "*"), U.call(e, "[s!='']:x"), L.push("!=", re)
                }), D = D.length && new RegExp(D.join("|")), L = L.length && new RegExp(L.join("|")), t = he.test(N.compareDocumentPosition), R = t || he.test(N.contains) ? function (e, t) {
                    var n = 9 === e.nodeType ? e.documentElement : e,
                        r = t && t.parentNode;
                    return e === r || !(!r || 1 !== r.nodeType || !(n.contains ? n.contains(r) : e.compareDocumentPosition && 16 & e.compareDocumentPosition(r)))
                } : function (e, t) {
                    if (t)
                        for (; t = t.parentNode;)
                            if (t === e) return !0;
                    return !1
                }, $ = t ? function (e, t) {
                    if (e === t) return P = !0, 0;
                    var n = !e.compareDocumentPosition - !t.compareDocumentPosition;
                    return n || (n = (e.ownerDocument || e) === (t.ownerDocument || t) ? e.compareDocumentPosition(t) : 1, 1 & n || !b.sortDetached && t.compareDocumentPosition(e) === n ? e === O || e.ownerDocument === q && R(q, e) ? -1 : t === O || t.ownerDocument === q && R(q, t) ? 1 : C ? Q(C, e) - Q(C, t) : 0 : 4 & n ? -1 : 1)
                } : function (e, t) {
                    if (e === t) return P = !0, 0;
                    var n, r = 0,
                        o = e.parentNode,
                        i = t.parentNode,
                        s = [e],
                        c = [t];
                    if (!o || !i) return e === O ? -1 : t === O ? 1 : o ? -1 : i ? 1 : C ? Q(C, e) - Q(C, t) : 0;
                    if (o === i) return a(e, t);
                    for (n = e; n = n.parentNode;) s.unshift(n);
                    for (n = t; n = n.parentNode;) c.unshift(n);
                    for (; s[r] === c[r];) r++;
                    return r ? a(s[r], c[r]) : s[r] === q ? -1 : c[r] === q ? 1 : 0
                }, O) : O
            }, t.matches = function (e, n) {
                return t(e, null, null, n)
            }, t.matchesSelector = function (e, n) {
                if ((e.ownerDocument || e) !== O && E(e), n = n.replace(ce, "='$1']"), b.matchesSelector && j && !z[n + " "] && (!L || !L.test(n)) && (!D || !D.test(n))) try {
                    var r = U.call(e, n);
                    if (r || b.disconnectedMatch || e.document && 11 !== e.document.nodeType) return r
                } catch (e) {}
                return t(n, O, null, [e]).length > 0
            }, t.contains = function (e, t) {
                return (e.ownerDocument || e) !== O && E(e), R(e, t)
            }, t.attr = function (e, t) {
                (e.ownerDocument || e) !== O && E(e);
                var n = x.attrHandle[t.toLowerCase()],
                    r = n && G.call(x.attrHandle, t.toLowerCase()) ? n(e, t, !j) : void 0;
                return void 0 !== r ? r : b.attributes || !j ? e.getAttribute(t) : (r = e.getAttributeNode(t)) && r.specified ? r.value : null
            }, t.escape = function (e) {
                return (e + "").replace(we, be)
            }, t.error = function (e) {
                throw new Error("Syntax error, unrecognized expression: " + e)
            }, t.uniqueSort = function (e) {
                var t, n = [],
                    r = 0,
                    o = 0;
                if (P = !b.detectDuplicates, C = !b.sortStable && e.slice(0), e.sort($), P) {
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
            }, x = t.selectors = {
                cacheLength: 50,
                createPseudo: r,
                match: pe,
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
                        return pe.CHILD.test(e[0]) ? null : (e[3] ? e[2] = e[4] || e[5] || "" : n && ue.test(n) && (t = A(n, !0)) && (t = n.indexOf(")", n.length - t) - n.length) && (e[0] = e[0].slice(0, t), e[2] = n.slice(0, t)), e.slice(0, 3))
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
                        var t = F[e + " "];
                        return t || (t = new RegExp("(^|" + ee + ")" + e + "(" + ee + "|$)")) && F(e, function (e) {
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
                            var u, l, p, f, d, h, g = i !== a ? "nextSibling" : "previousSibling",
                                m = t.parentNode,
                                y = s && t.nodeName.toLowerCase(),
                                v = !c && !s,
                                w = !1;
                            if (m) {
                                if (i) {
                                    for (; g;) {
                                        for (f = t; f = f[g];)
                                            if (s ? f.nodeName.toLowerCase() === y : 1 === f.nodeType) return !1;
                                        h = g = "only" === e && !h && "nextSibling"
                                    }
                                    return !0
                                }
                                if (h = [a ? m.firstChild : m.lastChild], a && v) {
                                    for (f = m, p = f[M] || (f[M] = {}), l = p[f.uniqueID] || (p[f.uniqueID] = {}), u = l[e] || [], d = u[0] === H && u[1], w = d && u[2], f = d && m.childNodes[d]; f = ++d && f && f[g] || (w = d = 0) || h.pop();)
                                        if (1 === f.nodeType && ++w && f === t) {
                                            l[e] = [H, d, w];
                                            break
                                        }
                                } else if (v && (f = t, p = f[M] || (f[M] = {}), l = p[f.uniqueID] || (p[f.uniqueID] = {}), u = l[e] || [], d = u[0] === H && u[1], w = d), !1 === w)
                                    for (;
                                        (f = ++d && f && f[g] || (w = d = 0) || h.pop()) && ((s ? f.nodeName.toLowerCase() !== y : 1 !== f.nodeType) || !++w || (v && (p = f[M] || (f[M] = {}), l = p[f.uniqueID] || (p[f.uniqueID] = {}), l[e] = [H, w]), f !== t)););
                                return (w -= o) === r || w % r == 0 && w / r >= 0
                            }
                        }
                    },
                    PSEUDO: function (e, n) {
                        var o, i = x.pseudos[e] || x.setFilters[e.toLowerCase()] || t.error("unsupported pseudo: " + e);
                        return i[M] ? i(n) : i.length > 1 ? (o = [e, e, "", n], x.setFilters.hasOwnProperty(e.toLowerCase()) ? r(function (e, t) {
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
                            o = k(e.replace(ie, "$1"));
                        return o[M] ? r(function (e, t, n, r) {
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
                                    if (n = j ? t.lang : t.getAttribute("xml:lang") || t.getAttribute("lang")) return (n = n.toLowerCase()) === e || 0 === n.indexOf(e + "-")
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
                        return e === O.activeElement && (!O.hasFocus || O.hasFocus()) && !!(e.type || e.href || ~e.tabIndex)
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
                        return !x.pseudos.empty(e)
                    },
                    header: function (e) {
                        return de.test(e.nodeName)
                    },
                    input: function (e) {
                        return fe.test(e.nodeName)
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
            }, x.pseudos.nth = x.pseudos.eq;
            for (w in {
                    radio: !0,
                    checkbox: !0,
                    file: !0,
                    password: !0,
                    image: !0
                }) x.pseudos[w] = function (e) {
                return function (t) {
                    return "input" === t.nodeName.toLowerCase() && t.type === e
                }
            }(w);
            for (w in {
                    submit: !0,
                    reset: !0
                }) x.pseudos[w] = function (e) {
                return function (t) {
                    var n = t.nodeName.toLowerCase();
                    return ("input" === n || "button" === n) && t.type === e
                }
            }(w);
            return l.prototype = x.filters = x.pseudos, x.setFilters = new l, A = t.tokenize = function (e, n) {
                var r, o, i, a, s, c, u, l = B[e + " "];
                if (l) return n ? 0 : l.slice(0);
                for (s = e, c = [], u = x.preFilter; s;) {
                    r && !(o = ae.exec(s)) || (o && (s = s.slice(o[0].length) || s), c.push(i = [])), r = !1, (o = se.exec(s)) && (r = o.shift(), i.push({
                        value: r,
                        type: o[0].replace(ie, " ")
                    }), s = s.slice(r.length));
                    for (a in x.filter) !(o = pe[a].exec(s)) || u[a] && !(o = u[a](o)) || (r = o.shift(), i.push({
                        value: r,
                        type: a,
                        matches: o
                    }), s = s.slice(r.length));
                    if (!r) break
                }
                return n ? s.length : s ? t.error(e) : B(e, c).slice(0)
            }, k = t.compile = function (e, t) {
                var n, r = [],
                    o = [],
                    i = z[e + " "];
                if (!i) {
                    for (t || (t = A(e)), n = t.length; n--;) i = y(t[n]), i[M] ? r.push(i) : o.push(i);
                    i = z(e, v(o, r)), i.selector = e
                }
                return i
            }, S = t.select = function (e, t, n, r) {
                var o, i, a, s, c, l = "function" == typeof e && e,
                    f = !r && A(e = l.selector || e);
                if (n = n || [], 1 === f.length) {
                    if (i = f[0] = f[0].slice(0), i.length > 2 && "ID" === (a = i[0]).type && 9 === t.nodeType && j && x.relative[i[1].type]) {
                        if (!(t = (x.find.ID(a.matches[0].replace(ye, ve), t) || [])[0])) return n;
                        l && (t = t.parentNode), e = e.slice(i.shift().value.length)
                    }
                    for (o = pe.needsContext.test(e) ? 0 : i.length; o-- && (a = i[o], !x.relative[s = a.type]);)
                        if ((c = x.find[s]) && (r = c(a.matches[0].replace(ye, ve), me.test(i[0].type) && u(t.parentNode) || t))) {
                            if (i.splice(o, 1), !(e = r.length && p(i))) return J.apply(n, r), n;
                            break
                        }
                }
                return (l || k(e, f))(r, t, !j, n, !t || me.test(e) && u(t.parentNode) || t), n
            }, b.sortStable = M.split("").sort($).join("") === M, b.detectDuplicates = !!P, E(), b.sortDetached = o(function (e) {
                return 1 & e.compareDocumentPosition(O.createElement("fieldset"))
            }), o(function (e) {
                return e.innerHTML = "<a href='#'></a>", "#" === e.firstChild.getAttribute("href")
            }) || i("type|href|height|width", function (e, t, n) {
                if (!n) return e.getAttribute(t, "type" === t.toLowerCase() ? 1 : 2)
            }), b.attributes && o(function (e) {
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
        ke.find = Ie, ke.expr = Ie.selectors, ke.expr[":"] = ke.expr.pseudos, ke.uniqueSort = ke.unique = Ie.uniqueSort, ke.text = Ie.getText, ke.isXMLDoc = Ie.isXML, ke.contains = Ie.contains, ke.escapeSelector = Ie.escape;
        var Ce = function (e, t, n) {
                for (var r = [], o = void 0 !== n;
                    (e = e[t]) && 9 !== e.nodeType;)
                    if (1 === e.nodeType) {
                        if (o && ke(e).is(n)) break;
                        r.push(e)
                    }
                return r
            },
            Pe = function (e, t) {
                for (var n = []; e; e = e.nextSibling) 1 === e.nodeType && e !== t && n.push(e);
                return n
            },
            Ee = ke.expr.match.needsContext,
            Oe = /^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?:<\/\1>|)$/i;
        ke.filter = function (e, t, n) {
            var r = t[0];
            return n && (e = ":not(" + e + ")"), 1 === t.length && 1 === r.nodeType ? ke.find.matchesSelector(r, e) ? [r] : [] : ke.find.matches(e, ke.grep(t, function (e) {
                return 1 === e.nodeType
            }))
        }, ke.fn.extend({
            find: function (e) {
                var t, n, r = this.length,
                    o = this;
                if ("string" != typeof e) return this.pushStack(ke(e).filter(function () {
                    for (t = 0; t < r; t++)
                        if (ke.contains(o[t], this)) return !0
                }));
                for (n = this.pushStack([]), t = 0; t < r; t++) ke.find(e, o[t], n);
                return r > 1 ? ke.uniqueSort(n) : n
            },
            filter: function (e) {
                return this.pushStack(l(this, e || [], !1))
            },
            not: function (e) {
                return this.pushStack(l(this, e || [], !0))
            },
            is: function (e) {
                return !!l(this, "string" == typeof e && Ee.test(e) ? ke(e) : e || [], !1).length
            }
        });
        var Ne, je = /^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;
        (ke.fn.init = function (e, t, n) {
            var r, o;
            if (!e) return this;
            if (n = n || Ne, "string" == typeof e) {
                if (!(r = "<" === e[0] && ">" === e[e.length - 1] && e.length >= 3 ? [null, e, null] : je.exec(e)) || !r[1] && t) return !t || t.jquery ? (t || n).find(e) : this.constructor(t).find(e);
                if (r[1]) {
                    if (t = t instanceof ke ? t[0] : t, ke.merge(this, ke.parseHTML(r[1], t && t.nodeType ? t.ownerDocument || t : le, !0)), Oe.test(r[1]) && ke.isPlainObject(t))
                        for (r in t) _e(this[r]) ? this[r](t[r]) : this.attr(r, t[r]);
                    return this
                }
                return o = le.getElementById(r[2]), o && (this[0] = o, this.length = 1), this
            }
            return e.nodeType ? (this[0] = e, this.length = 1, this) : _e(e) ? void 0 !== n.ready ? n.ready(e) : e(ke) : ke.makeArray(e, this)
        }).prototype = ke.fn, Ne = ke(le);
        var De = /^(?:parents|prev(?:Until|All))/,
            Le = {
                children: !0,
                contents: !0,
                next: !0,
                prev: !0
            };
        ke.fn.extend({
            has: function (e) {
                var t = ke(e, this),
                    n = t.length;
                return this.filter(function () {
                    for (var e = 0; e < n; e++)
                        if (ke.contains(this, t[e])) return !0
                })
            },
            closest: function (e, t) {
                var n, r = 0,
                    o = this.length,
                    i = [],
                    a = "string" != typeof e && ke(e);
                if (!Ee.test(e))
                    for (; r < o; r++)
                        for (n = this[r]; n && n !== t; n = n.parentNode)
                            if (n.nodeType < 11 && (a ? a.index(n) > -1 : 1 === n.nodeType && ke.find.matchesSelector(n, e))) {
                                i.push(n);
                                break
                            }
                return this.pushStack(i.length > 1 ? ke.uniqueSort(i) : i)
            },
            index: function (e) {
                return e ? "string" == typeof e ? ge.call(ke(e), this[0]) : ge.call(this, e.jquery ? e[0] : e) : this[0] && this[0].parentNode ? this.first().prevAll().length : -1
            },
            add: function (e, t) {
                return this.pushStack(ke.uniqueSort(ke.merge(this.get(), ke(e, t))))
            },
            addBack: function (e) {
                return this.add(null == e ? this.prevObject : this.prevObject.filter(e))
            }
        }), ke.each({
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
                return p(e, "nextSibling")
            },
            prev: function (e) {
                return p(e, "previousSibling")
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
                return u(e, "iframe") ? e.contentDocument : (u(e, "template") && (e = e.content || e), ke.merge([], e.childNodes))
            }
        }, function (e, t) {
            ke.fn[e] = function (n, r) {
                var o = ke.map(this, t, n);
                return "Until" !== e.slice(-5) && (r = n), r && "string" == typeof r && (o = ke.filter(r, o)), this.length > 1 && (Le[e] || ke.uniqueSort(o), De.test(e) && o.reverse()), this.pushStack(o)
            }
        });
        var Ue = /[^\x20\t\r\n\f]+/g;
        ke.Callbacks = function (e) {
            e = "string" == typeof e ? f(e) : ke.extend({}, e);
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
                            ke.each(n, function (n, r) {
                                _e(r) ? e.unique && l.has(r) || i.push(r) : r && r.length && "string" !== s(r) && t(r)
                            })
                        }(arguments), n && !t && u()), this
                    },
                    remove: function () {
                        return ke.each(arguments, function (e, t) {
                            for (var n;
                                (n = ke.inArray(t, i, n)) > -1;) i.splice(n, 1), n <= c && c--
                        }), this
                    },
                    has: function (e) {
                        return e ? ke.inArray(e, i) > -1 : i.length > 0
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
        }, ke.extend({
            Deferred: function (e) {
                var t = [
                        ["notify", "progress", ke.Callbacks("memory"), ke.Callbacks("memory"), 2],
                        ["resolve", "done", ke.Callbacks("once memory"), ke.Callbacks("once memory"), 0, "resolved"],
                        ["reject", "fail", ke.Callbacks("once memory"), ke.Callbacks("once memory"), 1, "rejected"]
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
                            return ke.Deferred(function (n) {
                                ke.each(t, function (t, r) {
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
                                                ke.Deferred.exceptionHook && ke.Deferred.exceptionHook(n, l.stackTrace), e + 1 >= a && (r !== h && (s = void 0, c = [n]), t.rejectWith(s, c))
                                            }
                                        };
                                    e ? l() : (ke.Deferred.getStackHook && (l.stackTrace = ke.Deferred.getStackHook()), n.setTimeout(l))
                                }
                            }
                            var a = 0;
                            return ke.Deferred(function (n) {
                                t[0][3].add(i(0, n, _e(o) ? o : d, n.notifyWith)), t[1][3].add(i(0, n, _e(e) ? e : d)), t[2][3].add(i(0, n, _e(r) ? r : h))
                            }).promise()
                        },
                        promise: function (e) {
                            return null != e ? ke.extend(e, o) : o
                        }
                    },
                    i = {};
                return ke.each(t, function (e, n) {
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
                    o = fe.call(arguments),
                    i = ke.Deferred(),
                    a = function (e) {
                        return function (n) {
                            r[e] = this, o[e] = arguments.length > 1 ? fe.call(arguments) : n, --t || i.resolveWith(r, o)
                        }
                    };
                if (t <= 1 && (g(e, i.done(a(n)).resolve, i.reject, !t), "pending" === i.state() || _e(o[n] && o[n].then))) return i.then();
                for (; n--;) g(o[n], a(n), i.reject);
                return i.promise()
            }
        });
        var Re = /^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;
        ke.Deferred.exceptionHook = function (e, t) {
            n.console && n.console.warn && e && Re.test(e.name) && n.console.warn("jQuery.Deferred exception: " + e.message, e.stack, t)
        }, ke.readyException = function (e) {
            n.setTimeout(function () {
                throw e
            })
        };
        var Me = ke.Deferred();
        ke.fn.ready = function (e) {
            return Me.then(e).catch(function (e) {
                ke.readyException(e)
            }), this
        }, ke.extend({
            isReady: !1,
            readyWait: 1,
            ready: function (e) {
                (!0 === e ? --ke.readyWait : ke.isReady) || (ke.isReady = !0, !0 !== e && --ke.readyWait > 0 || Me.resolveWith(le, [ke]))
            }
        }), ke.ready.then = Me.then, "complete" === le.readyState || "loading" !== le.readyState && !le.documentElement.doScroll ? n.setTimeout(ke.ready) : (le.addEventListener("DOMContentLoaded", m), n.addEventListener("load", m));
        var qe = function (e, t, n, r, o, i, a) {
                var c = 0,
                    u = e.length,
                    l = null == n;
                if ("object" === s(n)) {
                    o = !0;
                    for (c in n) qe(e, t, c, n[c], !0, i, a)
                } else if (void 0 !== r && (o = !0, _e(r) || (a = !0), l && (a ? (t.call(e, r), t = null) : (l = t, t = function (e, t, n) {
                        return l.call(ke(e), n)
                    })), t))
                    for (; c < u; c++) t(e[c], n, a ? r : r.call(e[c], c, t(e[c], n)));
                return o ? e : l ? t.call(e) : u ? t(e[0], n) : i
            },
            He = /^-ms-/,
            We = /-([a-z])/g,
            Fe = function (e) {
                return 1 === e.nodeType || 9 === e.nodeType || !+e.nodeType
            };
        w.uid = 1, w.prototype = {
            cache: function (e) {
                var t = e[this.expando];
                return t || (t = {}, Fe(e) && (e.nodeType ? e[this.expando] = t : Object.defineProperty(e, this.expando, {
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
                        Array.isArray(t) ? t = t.map(v) : (t = v(t), t = t in r ? [t] : t.match(Ue) || []), n = t.length;
                        for (; n--;) delete r[t[n]]
                    }(void 0 === t || ke.isEmptyObject(r)) && (e.nodeType ? e[this.expando] = void 0 : delete e[this.expando])
                }
            },
            hasData: function (e) {
                var t = e[this.expando];
                return void 0 !== t && !ke.isEmptyObject(t)
            }
        };
        var Be = new w,
            ze = new w,
            $e = /^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,
            Ge = /[A-Z]/g;
        ke.extend({
            hasData: function (e) {
                return ze.hasData(e) || Be.hasData(e)
            },
            data: function (e, t, n) {
                return ze.access(e, t, n)
            },
            removeData: function (e, t) {
                ze.remove(e, t)
            },
            _data: function (e, t, n) {
                return Be.access(e, t, n)
            },
            _removeData: function (e, t) {
                Be.remove(e, t)
            }
        }), ke.fn.extend({
            data: function (e, t) {
                var n, r, o, i = this[0],
                    a = i && i.attributes;
                if (void 0 === e) {
                    if (this.length && (o = ze.get(i), 1 === i.nodeType && !Be.get(i, "hasDataAttrs"))) {
                        for (n = a.length; n--;) a[n] && (r = a[n].name, 0 === r.indexOf("data-") && (r = v(r.slice(5)), x(i, r, o[r])));
                        Be.set(i, "hasDataAttrs", !0)
                    }
                    return o
                }
                return "object" == typeof e ? this.each(function () {
                    ze.set(this, e)
                }) : qe(this, function (t) {
                    var n;
                    if (i && void 0 === t) {
                        if (void 0 !== (n = ze.get(i, e))) return n;
                        if (void 0 !== (n = x(i, e))) return n
                    } else this.each(function () {
                        ze.set(this, e, t)
                    })
                }, null, t, arguments.length > 1, null, !0)
            },
            removeData: function (e) {
                return this.each(function () {
                    ze.remove(this, e)
                })
            }
        }), ke.extend({
            queue: function (e, t, n) {
                var r;
                if (e) return t = (t || "fx") + "queue", r = Be.get(e, t), n && (!r || Array.isArray(n) ? r = Be.access(e, t, ke.makeArray(n)) : r.push(n)), r || []
            },
            dequeue: function (e, t) {
                t = t || "fx";
                var n = ke.queue(e, t),
                    r = n.length,
                    o = n.shift(),
                    i = ke._queueHooks(e, t),
                    a = function () {
                        ke.dequeue(e, t)
                    };
                "inprogress" === o && (o = n.shift(), r--), o && ("fx" === t && n.unshift("inprogress"), delete i.stop, o.call(e, a, i)), !r && i && i.empty.fire()
            },
            _queueHooks: function (e, t) {
                var n = t + "queueHooks";
                return Be.get(e, n) || Be.access(e, n, {
                    empty: ke.Callbacks("once memory").add(function () {
                        Be.remove(e, [t + "queue", n])
                    })
                })
            }
        }), ke.fn.extend({
            queue: function (e, t) {
                var n = 2;
                return "string" != typeof e && (t = e, e = "fx", n--), arguments.length < n ? ke.queue(this[0], e) : void 0 === t ? this : this.each(function () {
                    var n = ke.queue(this, e, t);
                    ke._queueHooks(this, e), "fx" === e && "inprogress" !== n[0] && ke.dequeue(this, e)
                })
            },
            dequeue: function (e) {
                return this.each(function () {
                    ke.dequeue(this, e)
                })
            },
            clearQueue: function (e) {
                return this.queue(e || "fx", [])
            },
            promise: function (e, t) {
                var n, r = 1,
                    o = ke.Deferred(),
                    i = this,
                    a = this.length,
                    s = function () {
                        --r || o.resolveWith(i, [i])
                    };
                for ("string" != typeof e && (t = e, e = void 0), e = e || "fx"; a--;)(n = Be.get(i[a], e + "queueHooks")) && n.empty && (r++, n.empty.add(s));
                return s(), o.promise(t)
            }
        });
        var Ke = /[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,
            Ve = new RegExp("^(?:([+-])=|)(" + Ke + ")([a-z%]*)$", "i"),
            Ye = ["Top", "Right", "Bottom", "Left"],
            Je = function (e, t) {
                return e = t || e, "none" === e.style.display || "" === e.style.display && ke.contains(e.ownerDocument, e) && "none" === ke.css(e, "display")
            },
            Xe = function (e, t, n, r) {
                var o, i, a = {};
                for (i in t) a[i] = e.style[i], e.style[i] = t[i];
                o = n.apply(e, r || []);
                for (i in t) e.style[i] = a[i];
                return o
            },
            Qe = {};
        ke.fn.extend({
            show: function () {
                return A(this, !0)
            },
            hide: function () {
                return A(this)
            },
            toggle: function (e) {
                return "boolean" == typeof e ? e ? this.show() : this.hide() : this.each(function () {
                    Je(this) ? ke(this).show() : ke(this).hide()
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
            n.setAttribute("type", "radio"), n.setAttribute("checked", "checked"), n.setAttribute("name", "t"), t.appendChild(n), xe.checkClone = t.cloneNode(!0).cloneNode(!0).lastChild.checked, t.innerHTML = "<textarea>x</textarea>", xe.noCloneChecked = !!t.cloneNode(!0).lastChild.defaultValue
        }();
        var ot = le.documentElement,
            it = /^key/,
            at = /^(?:mouse|pointer|contextmenu|drag|drop)|click/,
            st = /^([^.]*)(?:\.(.+)|)/;
        ke.event = {
            global: {},
            add: function (e, t, n, r, o) {
                var i, a, s, c, u, l, p, f, d, h, g, m = Be.get(e);
                if (m)
                    for (n.handler && (i = n, n = i.handler, o = i.selector), o && ke.find.matchesSelector(ot, o), n.guid || (n.guid = ke.guid++), (c = m.events) || (c = m.events = {}), (a = m.handle) || (a = m.handle = function (t) {
                            return void 0 !== ke && ke.event.triggered !== t.type ? ke.event.dispatch.apply(e, arguments) : void 0
                        }), t = (t || "").match(Ue) || [""], u = t.length; u--;) s = st.exec(t[u]) || [], d = g = s[1], h = (s[2] || "").split(".").sort(), d && (p = ke.event.special[d] || {}, d = (o ? p.delegateType : p.bindType) || d, p = ke.event.special[d] || {}, l = ke.extend({
                        type: d,
                        origType: g,
                        data: r,
                        handler: n,
                        guid: n.guid,
                        selector: o,
                        needsContext: o && ke.expr.match.needsContext.test(o),
                        namespace: h.join(".")
                    }, i), (f = c[d]) || (f = c[d] = [], f.delegateCount = 0, p.setup && !1 !== p.setup.call(e, r, h, a) || e.addEventListener && e.addEventListener(d, a)), p.add && (p.add.call(e, l), l.handler.guid || (l.handler.guid = n.guid)), o ? f.splice(f.delegateCount++, 0, l) : f.push(l), ke.event.global[d] = !0)
            },
            remove: function (e, t, n, r, o) {
                var i, a, s, c, u, l, p, f, d, h, g, m = Be.hasData(e) && Be.get(e);
                if (m && (c = m.events)) {
                    for (t = (t || "").match(Ue) || [""], u = t.length; u--;)
                        if (s = st.exec(t[u]) || [], d = g = s[1], h = (s[2] || "").split(".").sort(), d) {
                            for (p = ke.event.special[d] || {}, d = (r ? p.delegateType : p.bindType) || d, f = c[d] || [], s = s[2] && new RegExp("(^|\\.)" + h.join("\\.(?:.*\\.|)") + "(\\.|$)"), a = i = f.length; i--;) l = f[i], !o && g !== l.origType || n && n.guid !== l.guid || s && !s.test(l.namespace) || r && r !== l.selector && ("**" !== r || !l.selector) || (f.splice(i, 1), l.selector && f.delegateCount--, p.remove && p.remove.call(e, l));
                            a && !f.length && (p.teardown && !1 !== p.teardown.call(e, h, m.handle) || ke.removeEvent(e, d, m.handle), delete c[d])
                        } else
                            for (d in c) ke.event.remove(e, d + t[u], n, r, !0);
                    ke.isEmptyObject(c) && Be.remove(e, "handle events")
                }
            },
            dispatch: function (e) {
                var t, n, r, o, i, a, s = ke.event.fix(e),
                    c = new Array(arguments.length),
                    u = (Be.get(this, "events") || {})[s.type] || [],
                    l = ke.event.special[s.type] || {};
                for (c[0] = s, t = 1; t < arguments.length; t++) c[t] = arguments[t];
                if (s.delegateTarget = this, !l.preDispatch || !1 !== l.preDispatch.call(this, s)) {
                    for (a = ke.event.handlers.call(this, s, u), t = 0;
                        (o = a[t++]) && !s.isPropagationStopped();)
                        for (s.currentTarget = o.elem, n = 0;
                            (i = o.handlers[n++]) && !s.isImmediatePropagationStopped();) s.rnamespace && !s.rnamespace.test(i.namespace) || (s.handleObj = i, s.data = i.data, void 0 !== (r = ((ke.event.special[i.origType] || {}).handle || i.handler).apply(o.elem, c)) && !1 === (s.result = r) && (s.preventDefault(), s.stopPropagation()));
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
                            for (i = [], a = {}, n = 0; n < c; n++) r = t[n], o = r.selector + " ", void 0 === a[o] && (a[o] = r.needsContext ? ke(o, this).index(u) > -1 : ke.find(o, this, null, [u]).length), a[o] && i.push(r);
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
                Object.defineProperty(ke.Event.prototype, e, {
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
                return e[ke.expando] ? e : new ke.Event(e)
            },
            special: {
                load: {
                    noBubble: !0
                },
                focus: {
                    trigger: function () {
                        if (this !== E() && this.focus) return this.focus(), !1
                    },
                    delegateType: "focusin"
                },
                blur: {
                    trigger: function () {
                        if (this === E() && this.blur) return this.blur(), !1
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
        }, ke.removeEvent = function (e, t, n) {
            e.removeEventListener && e.removeEventListener(t, n)
        }, ke.Event = function (e, t) {
            if (!(this instanceof ke.Event)) return new ke.Event(e, t);
            e && e.type ? (this.originalEvent = e, this.type = e.type, this.isDefaultPrevented = e.defaultPrevented || void 0 === e.defaultPrevented && !1 === e.returnValue ? C : P, this.target = e.target && 3 === e.target.nodeType ? e.target.parentNode : e.target, this.currentTarget = e.currentTarget, this.relatedTarget = e.relatedTarget) : this.type = e, t && ke.extend(this, t), this.timeStamp = e && e.timeStamp || Date.now(), this[ke.expando] = !0
        }, ke.Event.prototype = {
            constructor: ke.Event,
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
        }, ke.each({
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
        }, ke.event.addProp), ke.each({
            mouseenter: "mouseover",
            mouseleave: "mouseout",
            pointerenter: "pointerover",
            pointerleave: "pointerout"
        }, function (e, t) {
            ke.event.special[e] = {
                delegateType: t,
                bindType: t,
                handle: function (e) {
                    var n, r = this,
                        o = e.relatedTarget,
                        i = e.handleObj;
                    return o && (o === r || ke.contains(r, o)) || (e.type = i.origType, n = i.handler.apply(this, arguments), e.type = t), n
                }
            }
        }), ke.fn.extend({
            on: function (e, t, n, r) {
                return O(this, e, t, n, r)
            },
            one: function (e, t, n, r) {
                return O(this, e, t, n, r, 1)
            },
            off: function (e, t, n) {
                var r, o;
                if (e && e.preventDefault && e.handleObj) return r = e.handleObj, ke(e.delegateTarget).off(r.namespace ? r.origType + "." + r.namespace : r.origType, r.selector, r.handler), this;
                if ("object" == typeof e) {
                    for (o in e) this.off(o, t, e[o]);
                    return this
                }
                return !1 !== t && "function" != typeof t || (n = t, t = void 0), !1 === n && (n = P), this.each(function () {
                    ke.event.remove(this, e, n, t)
                })
            }
        });
        var ct = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([a-z][^\/\0>\x20\t\r\n\f]*)[^>]*)\/>/gi,
            ut = /<script|<style|<link/i,
            lt = /checked\s*(?:[^=]|=\s*.checked.)/i,
            pt = /^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;
        ke.extend({
            htmlPrefilter: function (e) {
                return e.replace(ct, "<$1></$2>")
            },
            clone: function (e, t, n) {
                var r, o, i, a, s = e.cloneNode(!0),
                    c = ke.contains(e.ownerDocument, e);
                if (!(xe.noCloneChecked || 1 !== e.nodeType && 11 !== e.nodeType || ke.isXMLDoc(e)))
                    for (a = k(s), i = k(e), r = 0, o = i.length; r < o; r++) U(i[r], a[r]);
                if (t)
                    if (n)
                        for (i = i || k(e), a = a || k(s), r = 0, o = i.length; r < o; r++) L(i[r], a[r]);
                    else L(e, s);
                return a = k(s, "script"), a.length > 0 && S(a, !c && k(e, "script")), s
            },
            cleanData: function (e) {
                for (var t, n, r, o = ke.event.special, i = 0; void 0 !== (n = e[i]); i++)
                    if (Fe(n)) {
                        if (t = n[Be.expando]) {
                            if (t.events)
                                for (r in t.events) o[r] ? ke.event.remove(n, r) : ke.removeEvent(n, r, t.handle);
                            n[Be.expando] = void 0
                        }
                        n[ze.expando] && (n[ze.expando] = void 0)
                    }
            }
        }), ke.fn.extend({
            detach: function (e) {
                return M(this, e, !0)
            },
            remove: function (e) {
                return M(this, e)
            },
            text: function (e) {
                return qe(this, function (e) {
                    return void 0 === e ? ke.text(this) : this.empty().each(function () {
                        1 !== this.nodeType && 11 !== this.nodeType && 9 !== this.nodeType || (this.textContent = e)
                    })
                }, null, e, arguments.length)
            },
            append: function () {
                return R(this, arguments, function (e) {
                    if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
                        N(this, e).appendChild(e)
                    }
                })
            },
            prepend: function () {
                return R(this, arguments, function (e) {
                    if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
                        var t = N(this, e);
                        t.insertBefore(e, t.firstChild)
                    }
                })
            },
            before: function () {
                return R(this, arguments, function (e) {
                    this.parentNode && this.parentNode.insertBefore(e, this)
                })
            },
            after: function () {
                return R(this, arguments, function (e) {
                    this.parentNode && this.parentNode.insertBefore(e, this.nextSibling)
                })
            },
            empty: function () {
                for (var e, t = 0; null != (e = this[t]); t++) 1 === e.nodeType && (ke.cleanData(k(e, !1)), e.textContent = "");
                return this
            },
            clone: function (e, t) {
                return e = null != e && e, t = null == t ? e : t, this.map(function () {
                    return ke.clone(this, e, t)
                })
            },
            html: function (e) {
                return qe(this, function (e) {
                    var t = this[0] || {},
                        n = 0,
                        r = this.length;
                    if (void 0 === e && 1 === t.nodeType) return t.innerHTML;
                    if ("string" == typeof e && !ut.test(e) && !nt[(et.exec(e) || ["", ""])[1].toLowerCase()]) {
                        e = ke.htmlPrefilter(e);
                        try {
                            for (; n < r; n++) t = this[n] || {}, 1 === t.nodeType && (ke.cleanData(k(t, !1)), t.innerHTML = e);
                            t = 0
                        } catch (e) {}
                    }
                    t && this.empty().append(e)
                }, null, e, arguments.length)
            },
            replaceWith: function () {
                var e = [];
                return R(this, arguments, function (t) {
                    var n = this.parentNode;
                    ke.inArray(this, e) < 0 && (ke.cleanData(k(this)), n && n.replaceChild(t, this))
                }, e)
            }
        }), ke.each({
            appendTo: "append",
            prependTo: "prepend",
            insertBefore: "before",
            insertAfter: "after",
            replaceAll: "replaceWith"
        }, function (e, t) {
            ke.fn[e] = function (e) {
                for (var n, r = [], o = ke(e), i = o.length - 1, a = 0; a <= i; a++) n = a === i ? this : this.clone(!0), ke(o[a])[t](n), he.apply(r, n.get());
                return this.pushStack(r)
            }
        });
        var ft = new RegExp("^(" + Ke + ")(?!px)[a-z%]+$", "i"),
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
            u.style && (u.style.backgroundClip = "content-box", u.cloneNode(!0).style.backgroundClip = "", xe.clearCloneStyle = "content-box" === u.style.backgroundClip, ke.extend(xe, {
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
            wt = ["Webkit", "Moz", "ms"],
            bt = le.createElement("div").style;
        ke.extend({
            cssHooks: {
                opacity: {
                    get: function (e, t) {
                        if (t) {
                            var n = q(e, "opacity");
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
                    if (c || (t = F(s)), a = ke.cssHooks[t] || ke.cssHooks[s], void 0 === n) return a && "get" in a && void 0 !== (o = a.get(e, !1, r)) ? o : u[t];
                    i = typeof n, "string" === i && (o = Ve.exec(n)) && o[1] && (n = _(e, t, o), i = "number"), null != n && n === n && ("number" === i && (n += o && o[3] || (ke.cssNumber[s] ? "" : "px")), xe.clearCloneStyle || "" !== n || 0 !== t.indexOf("background") || (u[t] = "inherit"), a && "set" in a && void 0 === (n = a.set(e, n, r)) || (c ? u.setProperty(t, n) : u[t] = n))
                }
            },
            css: function (e, t, n, r) {
                var o, i, a, s = v(t);
                return mt.test(t) || (t = F(s)), a = ke.cssHooks[t] || ke.cssHooks[s], a && "get" in a && (o = a.get(e, !0, n)), void 0 === o && (o = q(e, t, r)), "normal" === o && t in vt && (o = vt[t]), "" === n || n ? (i = parseFloat(o), !0 === n || isFinite(i) ? i || 0 : o) : o
            }
        }), ke.each(["height", "width"], function (e, t) {
            ke.cssHooks[t] = {
                get: function (e, n, r) {
                    if (n) return !gt.test(ke.css(e, "display")) || e.getClientRects().length && e.getBoundingClientRect().width ? $(e, t, r) : Xe(e, yt, function () {
                        return $(e, t, r)
                    })
                },
                set: function (e, n, r) {
                    var o, i = dt(e),
                        a = "border-box" === ke.css(e, "boxSizing", !1, i),
                        s = r && z(e, t, r, a, i);
                    return a && xe.scrollboxSize() === i.position && (s -= Math.ceil(e["offset" + t[0].toUpperCase() + t.slice(1)] - parseFloat(i[t]) - z(e, t, "border", !1, i) - .5)), s && (o = Ve.exec(n)) && "px" !== (o[3] || "px") && (e.style[t] = n, n = ke.css(e, t)), B(e, n, s)
                }
            }
        }), ke.cssHooks.marginLeft = H(xe.reliableMarginLeft, function (e, t) {
            if (t) return (parseFloat(q(e, "marginLeft")) || e.getBoundingClientRect().left - Xe(e, {
                marginLeft: 0
            }, function () {
                return e.getBoundingClientRect().left
            })) + "px"
        }), ke.each({
            margin: "",
            padding: "",
            border: "Width"
        }, function (e, t) {
            ke.cssHooks[e + t] = {
                expand: function (n) {
                    for (var r = 0, o = {}, i = "string" == typeof n ? n.split(" ") : [n]; r < 4; r++) o[e + Ye[r] + t] = i[r] || i[r - 2] || i[0];
                    return o
                }
            }, "margin" !== e && (ke.cssHooks[e + t].set = B)
        }), ke.fn.extend({
            css: function (e, t) {
                return qe(this, function (e, t, n) {
                    var r, o, i = {},
                        a = 0;
                    if (Array.isArray(t)) {
                        for (r = dt(e), o = t.length; a < o; a++) i[t[a]] = ke.css(e, t[a], !1, r);
                        return i
                    }
                    return void 0 !== n ? ke.style(e, t, n) : ke.css(e, t)
                }, e, t, arguments.length > 1)
            }
        }), ke.Tween = G, G.prototype = {
            constructor: G,
            init: function (e, t, n, r, o, i) {
                this.elem = e, this.prop = n, this.easing = o || ke.easing._default, this.options = t, this.start = this.now = this.cur(), this.end = r, this.unit = i || (ke.cssNumber[n] ? "" : "px")
            },
            cur: function () {
                var e = G.propHooks[this.prop];
                return e && e.get ? e.get(this) : G.propHooks._default.get(this)
            },
            run: function (e) {
                var t, n = G.propHooks[this.prop];
                return this.options.duration ? this.pos = t = ke.easing[this.easing](e, this.options.duration * e, 0, 1, this.options.duration) : this.pos = t = e, this.now = (this.end - this.start) * t + this.start, this.options.step && this.options.step.call(this.elem, this.now, this), n && n.set ? n.set(this) : G.propHooks._default.set(this), this
            }
        }, G.prototype.init.prototype = G.prototype, G.propHooks = {
            _default: {
                get: function (e) {
                    var t;
                    return 1 !== e.elem.nodeType || null != e.elem[e.prop] && null == e.elem.style[e.prop] ? e.elem[e.prop] : (t = ke.css(e.elem, e.prop, ""), t && "auto" !== t ? t : 0)
                },
                set: function (e) {
                    ke.fx.step[e.prop] ? ke.fx.step[e.prop](e) : 1 !== e.elem.nodeType || null == e.elem.style[ke.cssProps[e.prop]] && !ke.cssHooks[e.prop] ? e.elem[e.prop] = e.now : ke.style(e.elem, e.prop, e.now + e.unit)
                }
            }
        }, G.propHooks.scrollTop = G.propHooks.scrollLeft = {
            set: function (e) {
                e.elem.nodeType && e.elem.parentNode && (e.elem[e.prop] = e.now)
            }
        }, ke.easing = {
            linear: function (e) {
                return e
            },
            swing: function (e) {
                return .5 - Math.cos(e * Math.PI) / 2
            },
            _default: "swing"
        }, ke.fx = G.prototype.init, ke.fx.step = {};
        var xt, _t, Tt = /^(?:toggle|show|hide)$/,
            At = /queueHooks$/;
        ke.Animation = ke.extend(Z, {
                tweeners: {
                    "*": [function (e, t) {
                        var n = this.createTween(e, t);
                        return _(n.elem, e, Ve.exec(t), n), n
                    }]
                },
                tweener: function (e, t) {
                    _e(e) ? (t = e, e = ["*"]) : e = e.match(Ue);
                    for (var n, r = 0, o = e.length; r < o; r++) n = e[r], Z.tweeners[n] = Z.tweeners[n] || [], Z.tweeners[n].unshift(t)
                },
                prefilters: [X],
                prefilter: function (e, t) {
                    t ? Z.prefilters.unshift(e) : Z.prefilters.push(e)
                }
            }), ke.speed = function (e, t, n) {
                var r = e && "object" == typeof e ? ke.extend({}, e) : {
                    complete: n || !n && t || _e(e) && e,
                    duration: e,
                    easing: n && t || t && !_e(t) && t
                };
                return ke.fx.off ? r.duration = 0 : "number" != typeof r.duration && (r.duration in ke.fx.speeds ? r.duration = ke.fx.speeds[r.duration] : r.duration = ke.fx.speeds._default), null != r.queue && !0 !== r.queue || (r.queue = "fx"), r.old = r.complete, r.complete = function () {
                    _e(r.old) && r.old.call(this), r.queue && ke.dequeue(this, r.queue)
                }, r
            }, ke.fn.extend({
                fadeTo: function (e, t, n, r) {
                    return this.filter(Je).css("opacity", 0).show().end().animate({
                        opacity: t
                    }, e, n, r)
                },
                animate: function (e, t, n, r) {
                    var o = ke.isEmptyObject(e),
                        i = ke.speed(t, n, r),
                        a = function () {
                            var t = Z(this, ke.extend({}, e), i);
                            (o || Be.get(this, "finish")) && t.stop(!0)
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
                            i = ke.timers,
                            a = Be.get(this);
                        if (o) a[o] && a[o].stop && r(a[o]);
                        else
                            for (o in a) a[o] && a[o].stop && At.test(o) && r(a[o]);
                        for (o = i.length; o--;) i[o].elem !== this || null != e && i[o].queue !== e || (i[o].anim.stop(n), t = !1, i.splice(o, 1));
                        !t && n || ke.dequeue(this, e)
                    })
                },
                finish: function (e) {
                    return !1 !== e && (e = e || "fx"), this.each(function () {
                        var t, n = Be.get(this),
                            r = n[e + "queue"],
                            o = n[e + "queueHooks"],
                            i = ke.timers,
                            a = r ? r.length : 0;
                        for (n.finish = !0, ke.queue(this, e, []), o && o.stop && o.stop.call(this, !0), t = i.length; t--;) i[t].elem === this && i[t].queue === e && (i[t].anim.stop(!0), i.splice(t, 1));
                        for (t = 0; t < a; t++) r[t] && r[t].finish && r[t].finish.call(this);
                        delete n.finish
                    })
                }
            }), ke.each(["toggle", "show", "hide"], function (e, t) {
                var n = ke.fn[t];
                ke.fn[t] = function (e, r, o) {
                    return null == e || "boolean" == typeof e ? n.apply(this, arguments) : this.animate(Y(t, !0), e, r, o)
                }
            }), ke.each({
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
                ke.fn[e] = function (e, n, r) {
                    return this.animate(t, e, n, r)
                }
            }), ke.timers = [], ke.fx.tick = function () {
                var e, t = 0,
                    n = ke.timers;
                for (xt = Date.now(); t < n.length; t++)(e = n[t])() || n[t] !== e || n.splice(t--, 1);
                n.length || ke.fx.stop(), xt = void 0
            }, ke.fx.timer = function (e) {
                ke.timers.push(e), ke.fx.start()
            }, ke.fx.interval = 13, ke.fx.start = function () {
                _t || (_t = !0, K())
            }, ke.fx.stop = function () {
                _t = null
            }, ke.fx.speeds = {
                slow: 600,
                fast: 200,
                _default: 400
            }, ke.fn.delay = function (e, t) {
                return e = ke.fx ? ke.fx.speeds[e] || e : e, t = t || "fx", this.queue(t, function (t, r) {
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
                e.type = "checkbox", xe.checkOn = "" !== e.value, xe.optSelected = n.selected, e = le.createElement("input"), e.value = "t", e.type = "radio", xe.radioValue = "t" === e.value
            }();
        var kt, St = ke.expr.attrHandle;
        ke.fn.extend({
            attr: function (e, t) {
                return qe(this, ke.attr, e, t, arguments.length > 1)
            },
            removeAttr: function (e) {
                return this.each(function () {
                    ke.removeAttr(this, e)
                })
            }
        }), ke.extend({
            attr: function (e, t, n) {
                var r, o, i = e.nodeType;
                if (3 !== i && 8 !== i && 2 !== i) return void 0 === e.getAttribute ? ke.prop(e, t, n) : (1 === i && ke.isXMLDoc(e) || (o = ke.attrHooks[t.toLowerCase()] || (ke.expr.match.bool.test(t) ? kt : void 0)), void 0 !== n ? null === n ? void ke.removeAttr(e, t) : o && "set" in o && void 0 !== (r = o.set(e, n, t)) ? r : (e.setAttribute(t, n + ""), n) : o && "get" in o && null !== (r = o.get(e, t)) ? r : (r = ke.find.attr(e, t), null == r ? void 0 : r))
            },
            attrHooks: {
                type: {
                    set: function (e, t) {
                        if (!xe.radioValue && "radio" === t && u(e, "input")) {
                            var n = e.value;
                            return e.setAttribute("type", t), n && (e.value = n), t
                        }
                    }
                }
            },
            removeAttr: function (e, t) {
                var n, r = 0,
                    o = t && t.match(Ue);
                if (o && 1 === e.nodeType)
                    for (; n = o[r++];) e.removeAttribute(n)
            }
        }), kt = {
            set: function (e, t, n) {
                return !1 === t ? ke.removeAttr(e, n) : e.setAttribute(n, n), n
            }
        }, ke.each(ke.expr.match.bool.source.match(/\w+/g), function (e, t) {
            var n = St[t] || ke.find.attr;
            St[t] = function (e, t, r) {
                var o, i, a = t.toLowerCase();
                return r || (i = St[a], St[a] = o, o = null != n(e, t, r) ? a : null, St[a] = i), o
            }
        });
        var It = /^(?:input|select|textarea|button)$/i,
            Ct = /^(?:a|area)$/i;
        ke.fn.extend({
            prop: function (e, t) {
                return qe(this, ke.prop, e, t, arguments.length > 1)
            },
            removeProp: function (e) {
                return this.each(function () {
                    delete this[ke.propFix[e] || e]
                })
            }
        }), ke.extend({
            prop: function (e, t, n) {
                var r, o, i = e.nodeType;
                if (3 !== i && 8 !== i && 2 !== i) return 1 === i && ke.isXMLDoc(e) || (t = ke.propFix[t] || t, o = ke.propHooks[t]), void 0 !== n ? o && "set" in o && void 0 !== (r = o.set(e, n, t)) ? r : e[t] = n : o && "get" in o && null !== (r = o.get(e, t)) ? r : e[t]
            },
            propHooks: {
                tabIndex: {
                    get: function (e) {
                        var t = ke.find.attr(e, "tabindex");
                        return t ? parseInt(t, 10) : It.test(e.nodeName) || Ct.test(e.nodeName) && e.href ? 0 : -1
                    }
                }
            },
            propFix: {
                for: "htmlFor",
                class: "className"
            }
        }), xe.optSelected || (ke.propHooks.selected = {
            get: function (e) {
                var t = e.parentNode;
                return t && t.parentNode && t.parentNode.selectedIndex, null
            },
            set: function (e) {
                var t = e.parentNode;
                t && (t.selectedIndex, t.parentNode && t.parentNode.selectedIndex)
            }
        }), ke.each(["tabIndex", "readOnly", "maxLength", "cellSpacing", "cellPadding", "rowSpan", "colSpan", "useMap", "frameBorder", "contentEditable"], function () {
            ke.propFix[this.toLowerCase()] = this
        }), ke.fn.extend({
            addClass: function (e) {
                var t, n, r, o, i, a, s, c = 0;
                if (_e(e)) return this.each(function (t) {
                    ke(this).addClass(e.call(this, t, te(this)))
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
                    ke(this).removeClass(e.call(this, t, te(this)))
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
                    ke(this).toggleClass(e.call(this, n, te(this), t), t)
                }) : this.each(function () {
                    var t, o, i, a;
                    if (r)
                        for (o = 0, i = ke(this), a = ne(e); t = a[o++];) i.hasClass(t) ? i.removeClass(t) : i.addClass(t);
                    else void 0 !== e && "boolean" !== n || (t = te(this), t && Be.set(this, "__className__", t), this.setAttribute && this.setAttribute("class", t || !1 === e ? "" : Be.get(this, "__className__") || ""))
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
        ke.fn.extend({
            val: function (e) {
                var t, n, r, o = this[0]; {
                    if (arguments.length) return r = _e(e), this.each(function (n) {
                        var o;
                        1 === this.nodeType && (o = r ? e.call(this, n, ke(this).val()) : e, null == o ? o = "" : "number" == typeof o ? o += "" : Array.isArray(o) && (o = ke.map(o, function (e) {
                            return null == e ? "" : e + ""
                        })), (t = ke.valHooks[this.type] || ke.valHooks[this.nodeName.toLowerCase()]) && "set" in t && void 0 !== t.set(this, o, "value") || (this.value = o))
                    });
                    if (o) return (t = ke.valHooks[o.type] || ke.valHooks[o.nodeName.toLowerCase()]) && "get" in t && void 0 !== (n = t.get(o, "value")) ? n : (n = o.value, "string" == typeof n ? n.replace(Pt, "") : null == n ? "" : n)
                }
            }
        }), ke.extend({
            valHooks: {
                option: {
                    get: function (e) {
                        var t = ke.find.attr(e, "value");
                        return null != t ? t : ee(ke.text(e))
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
                                if (t = ke(n).val(), a) return t;
                                s.push(t)
                            }
                        return s
                    },
                    set: function (e, t) {
                        for (var n, r, o = e.options, i = ke.makeArray(t), a = o.length; a--;) r = o[a], (r.selected = ke.inArray(ke.valHooks.option.get(r), i) > -1) && (n = !0);
                        return n || (e.selectedIndex = -1), i
                    }
                }
            }
        }), ke.each(["radio", "checkbox"], function () {
            ke.valHooks[this] = {
                set: function (e, t) {
                    if (Array.isArray(t)) return e.checked = ke.inArray(ke(e).val(), t) > -1
                }
            }, xe.checkOn || (ke.valHooks[this].get = function (e) {
                return null === e.getAttribute("value") ? "on" : e.value
            })
        }), xe.focusin = "onfocusin" in n;
        var Et = /^(?:focusinfocus|focusoutblur)$/,
            Ot = function (e) {
                e.stopPropagation()
            };
        ke.extend(ke.event, {
            trigger: function (e, t, r, o) {
                var i, a, s, c, u, l, p, f, d = [r || le],
                    h = ve.call(e, "type") ? e.type : e,
                    g = ve.call(e, "namespace") ? e.namespace.split(".") : [];
                if (a = f = s = r = r || le, 3 !== r.nodeType && 8 !== r.nodeType && !Et.test(h + ke.event.triggered) && (h.indexOf(".") > -1 && (g = h.split("."), h = g.shift(), g.sort()), u = h.indexOf(":") < 0 && "on" + h, e = e[ke.expando] ? e : new ke.Event(h, "object" == typeof e && e), e.isTrigger = o ? 2 : 3, e.namespace = g.join("."), e.rnamespace = e.namespace ? new RegExp("(^|\\.)" + g.join("\\.(?:.*\\.|)") + "(\\.|$)") : null, e.result = void 0, e.target || (e.target = r), t = null == t ? [e] : ke.makeArray(t, [e]), p = ke.event.special[h] || {}, o || !p.trigger || !1 !== p.trigger.apply(r, t))) {
                    if (!o && !p.noBubble && !Te(r)) {
                        for (c = p.delegateType || h, Et.test(c + h) || (a = a.parentNode); a; a = a.parentNode) d.push(a), s = a;
                        s === (r.ownerDocument || le) && d.push(s.defaultView || s.parentWindow || n)
                    }
                    for (i = 0;
                        (a = d[i++]) && !e.isPropagationStopped();) f = a, e.type = i > 1 ? c : p.bindType || h, l = (Be.get(a, "events") || {})[e.type] && Be.get(a, "handle"), l && l.apply(a, t), (l = u && a[u]) && l.apply && Fe(a) && (e.result = l.apply(a, t), !1 === e.result && e.preventDefault());
                    return e.type = h, o || e.isDefaultPrevented() || p._default && !1 !== p._default.apply(d.pop(), t) || !Fe(r) || u && _e(r[h]) && !Te(r) && (s = r[u], s && (r[u] = null), ke.event.triggered = h, e.isPropagationStopped() && f.addEventListener(h, Ot), r[h](), e.isPropagationStopped() && f.removeEventListener(h, Ot), ke.event.triggered = void 0, s && (r[u] = s)), e.result
                }
            },
            simulate: function (e, t, n) {
                var r = ke.extend(new ke.Event, n, {
                    type: e,
                    isSimulated: !0
                });
                ke.event.trigger(r, null, t)
            }
        }), ke.fn.extend({
            trigger: function (e, t) {
                return this.each(function () {
                    ke.event.trigger(e, t, this)
                })
            },
            triggerHandler: function (e, t) {
                var n = this[0];
                if (n) return ke.event.trigger(e, t, n, !0)
            }
        }), xe.focusin || ke.each({
            focus: "focusin",
            blur: "focusout"
        }, function (e, t) {
            var n = function (e) {
                ke.event.simulate(t, e.target, ke.event.fix(e))
            };
            ke.event.special[t] = {
                setup: function () {
                    var r = this.ownerDocument || this,
                        o = Be.access(r, t);
                    o || r.addEventListener(e, n, !0), Be.access(r, t, (o || 0) + 1)
                },
                teardown: function () {
                    var r = this.ownerDocument || this,
                        o = Be.access(r, t) - 1;
                    o ? Be.access(r, t, o) : (r.removeEventListener(e, n, !0), Be.remove(r, t))
                }
            }
        });
        var Nt = n.location,
            jt = Date.now(),
            Dt = /\?/;
        ke.parseXML = function (e) {
            var t;
            if (!e || "string" != typeof e) return null;
            try {
                t = (new n.DOMParser).parseFromString(e, "text/xml")
            } catch (e) {
                t = void 0
            }
            return t && !t.getElementsByTagName("parsererror").length || ke.error("Invalid XML: " + e), t
        };
        var Lt = /\[\]$/,
            Ut = /\r?\n/g,
            Rt = /^(?:submit|button|image|reset|file)$/i,
            Mt = /^(?:input|select|textarea|keygen)/i;
        ke.param = function (e, t) {
            var n, r = [],
                o = function (e, t) {
                    var n = _e(t) ? t() : t;
                    r[r.length] = encodeURIComponent(e) + "=" + encodeURIComponent(null == n ? "" : n)
                };
            if (Array.isArray(e) || e.jquery && !ke.isPlainObject(e)) ke.each(e, function () {
                o(this.name, this.value)
            });
            else
                for (n in e) re(n, e[n], t, o);
            return r.join("&")
        }, ke.fn.extend({
            serialize: function () {
                return ke.param(this.serializeArray())
            },
            serializeArray: function () {
                return this.map(function () {
                    var e = ke.prop(this, "elements");
                    return e ? ke.makeArray(e) : this
                }).filter(function () {
                    var e = this.type;
                    return this.name && !ke(this).is(":disabled") && Mt.test(this.nodeName) && !Rt.test(e) && (this.checked || !Ze.test(e))
                }).map(function (e, t) {
                    var n = ke(this).val();
                    return null == n ? null : Array.isArray(n) ? ke.map(n, function (e) {
                        return {
                            name: t.name,
                            value: e.replace(Ut, "\r\n")
                        }
                    }) : {
                        name: t.name,
                        value: n.replace(Ut, "\r\n")
                    }
                }).get()
            }
        });
        var qt = /%20/g,
            Ht = /#.*$/,
            Wt = /([?&])_=[^&]*/,
            Ft = /^(.*?):[ \t]*([^\r\n]*)$/gm,
            Bt = /^(?:about|app|app-storage|.+-extension|file|res|widget):$/,
            zt = /^(?:GET|HEAD)$/,
            $t = /^\/\//,
            Gt = {},
            Kt = {},
            Vt = "*/".concat("*"),
            Yt = le.createElement("a");
        Yt.href = Nt.href, ke.extend({
            active: 0,
            lastModified: {},
            etag: {},
            ajaxSettings: {
                url: Nt.href,
                type: "GET",
                isLocal: Bt.test(Nt.protocol),
                global: !0,
                processData: !0,
                async: !0,
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                accepts: {
                    "*": Vt,
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
                    "text xml": ke.parseXML
                },
                flatOptions: {
                    url: !0,
                    context: !0
                }
            },
            ajaxSetup: function (e, t) {
                return t ? ae(ae(e, ke.ajaxSettings), t) : ae(ke.ajaxSettings, e)
            },
            ajaxPrefilter: oe(Gt),
            ajaxTransport: oe(Kt),
            ajax: function (e, t) {
                function r(e, t, r, s) {
                    var u, f, d, b, x, _ = t;
                    l || (l = !0, c && n.clearTimeout(c), o = void 0, a = s || "", T.readyState = e > 0 ? 4 : 0, u = e >= 200 && e < 300 || 304 === e, r && (b = se(h, T, r)), b = ce(h, b, T, u), u ? (h.ifModified && (x = T.getResponseHeader("Last-Modified"), x && (ke.lastModified[i] = x), (x = T.getResponseHeader("etag")) && (ke.etag[i] = x)), 204 === e || "HEAD" === h.type ? _ = "nocontent" : 304 === e ? _ = "notmodified" : (_ = b.state, f = b.data, d = b.error, u = !d)) : (d = _, !e && _ || (_ = "error", e < 0 && (e = 0))), T.status = e, T.statusText = (t || _) + "", u ? y.resolveWith(g, [f, _, T]) : y.rejectWith(g, [T, _, d]), T.statusCode(w), w = void 0, p && m.trigger(u ? "ajaxSuccess" : "ajaxError", [T, h, u ? f : d]), v.fireWith(g, [T, _]), p && (m.trigger("ajaxComplete", [T, h]), --ke.active || ke.event.trigger("ajaxStop")))
                }
                "object" == typeof e && (t = e, e = void 0), t = t || {};
                var o, i, a, s, c, u, l, p, f, d, h = ke.ajaxSetup({}, t),
                    g = h.context || h,
                    m = h.context && (g.nodeType || g.jquery) ? ke(g) : ke.event,
                    y = ke.Deferred(),
                    v = ke.Callbacks("once memory"),
                    w = h.statusCode || {},
                    b = {},
                    x = {},
                    _ = "canceled",
                    T = {
                        readyState: 0,
                        getResponseHeader: function (e) {
                            var t;
                            if (l) {
                                if (!s)
                                    for (s = {}; t = Ft.exec(a);) s[t[1].toLowerCase()] = t[2];
                                t = s[e.toLowerCase()]
                            }
                            return null == t ? null : t
                        },
                        getAllResponseHeaders: function () {
                            return l ? a : null
                        },
                        setRequestHeader: function (e, t) {
                            return null == l && (e = x[e.toLowerCase()] = x[e.toLowerCase()] || e, b[e] = t), this
                        },
                        overrideMimeType: function (e) {
                            return null == l && (h.mimeType = e), this
                        },
                        statusCode: function (e) {
                            var t;
                            if (e)
                                if (l) T.always(e[T.status]);
                                else
                                    for (t in e) w[t] = [w[t], e[t]];
                            return this
                        },
                        abort: function (e) {
                            var t = e || _;
                            return o && o.abort(t), r(0, t), this
                        }
                    };
                if (y.promise(T), h.url = ((e || h.url || Nt.href) + "").replace($t, Nt.protocol + "//"), h.type = t.method || t.type || h.method || h.type, h.dataTypes = (h.dataType || "*").toLowerCase().match(Ue) || [""], null == h.crossDomain) {
                    u = le.createElement("a");
                    try {
                        u.href = h.url, u.href = u.href, h.crossDomain = Yt.protocol + "//" + Yt.host != u.protocol + "//" + u.host
                    } catch (e) {
                        h.crossDomain = !0
                    }
                }
                if (h.data && h.processData && "string" != typeof h.data && (h.data = ke.param(h.data, h.traditional)), ie(Gt, h, t, T), l) return T;
                p = ke.event && h.global, p && 0 == ke.active++ && ke.event.trigger("ajaxStart"), h.type = h.type.toUpperCase(), h.hasContent = !zt.test(h.type), i = h.url.replace(Ht, ""), h.hasContent ? h.data && h.processData && 0 === (h.contentType || "").indexOf("application/x-www-form-urlencoded") && (h.data = h.data.replace(qt, "+")) : (d = h.url.slice(i.length), h.data && (h.processData || "string" == typeof h.data) && (i += (Dt.test(i) ? "&" : "?") + h.data, delete h.data), !1 === h.cache && (i = i.replace(Wt, "$1"), d = (Dt.test(i) ? "&" : "?") + "_=" + jt++ + d), h.url = i + d), h.ifModified && (ke.lastModified[i] && T.setRequestHeader("If-Modified-Since", ke.lastModified[i]), ke.etag[i] && T.setRequestHeader("If-None-Match", ke.etag[i])), (h.data && h.hasContent && !1 !== h.contentType || t.contentType) && T.setRequestHeader("Content-Type", h.contentType), T.setRequestHeader("Accept", h.dataTypes[0] && h.accepts[h.dataTypes[0]] ? h.accepts[h.dataTypes[0]] + ("*" !== h.dataTypes[0] ? ", " + Vt + "; q=0.01" : "") : h.accepts["*"]);
                for (f in h.headers) T.setRequestHeader(f, h.headers[f]);
                if (h.beforeSend && (!1 === h.beforeSend.call(g, T, h) || l)) return T.abort();
                if (_ = "abort", v.add(h.complete), T.done(h.success), T.fail(h.error), o = ie(Kt, h, t, T)) {
                    if (T.readyState = 1, p && m.trigger("ajaxSend", [T, h]), l) return T;
                    h.async && h.timeout > 0 && (c = n.setTimeout(function () {
                        T.abort("timeout")
                    }, h.timeout));
                    try {
                        l = !1, o.send(b, r)
                    } catch (e) {
                        if (l) throw e;
                        r(-1, e)
                    }
                } else r(-1, "No Transport");
                return T
            },
            getJSON: function (e, t, n) {
                return ke.get(e, t, n, "json")
            },
            getScript: function (e, t) {
                return ke.get(e, void 0, t, "script")
            }
        }), ke.each(["get", "post"], function (e, t) {
            ke[t] = function (e, n, r, o) {
                return _e(n) && (o = o || r, r = n, n = void 0), ke.ajax(ke.extend({
                    url: e,
                    type: t,
                    dataType: o,
                    data: n,
                    success: r
                }, ke.isPlainObject(e) && e))
            }
        }), ke._evalUrl = function (e) {
            return ke.ajax({
                url: e,
                type: "GET",
                dataType: "script",
                cache: !0,
                async: !1,
                global: !1,
                throws: !0
            })
        }, ke.fn.extend({
            wrapAll: function (e) {
                var t;
                return this[0] && (_e(e) && (e = e.call(this[0])), t = ke(e, this[0].ownerDocument).eq(0).clone(!0), this[0].parentNode && t.insertBefore(this[0]), t.map(function () {
                    for (var e = this; e.firstElementChild;) e = e.firstElementChild;
                    return e
                }).append(this)), this
            },
            wrapInner: function (e) {
                return _e(e) ? this.each(function (t) {
                    ke(this).wrapInner(e.call(this, t))
                }) : this.each(function () {
                    var t = ke(this),
                        n = t.contents();
                    n.length ? n.wrapAll(e) : t.append(e)
                })
            },
            wrap: function (e) {
                var t = _e(e);
                return this.each(function (n) {
                    ke(this).wrapAll(t ? e.call(this, n) : e)
                })
            },
            unwrap: function (e) {
                return this.parent(e).not("body").each(function () {
                    ke(this).replaceWith(this.childNodes)
                }), this
            }
        }), ke.expr.pseudos.hidden = function (e) {
            return !ke.expr.pseudos.visible(e)
        }, ke.expr.pseudos.visible = function (e) {
            return !!(e.offsetWidth || e.offsetHeight || e.getClientRects().length)
        }, ke.ajaxSettings.xhr = function () {
            try {
                return new n.XMLHttpRequest
            } catch (e) {}
        };
        var Jt = {
                0: 200,
                1223: 204
            },
            Xt = ke.ajaxSettings.xhr();
        xe.cors = !!Xt && "withCredentials" in Xt, xe.ajax = Xt = !!Xt, ke.ajaxTransport(function (e) {
            var t, r;
            if (xe.cors || Xt && !e.crossDomain) return {
                send: function (o, i) {
                    var a, s = e.xhr();
                    if (s.open(e.type, e.url, e.async, e.username, e.password), e.xhrFields)
                        for (a in e.xhrFields) s[a] = e.xhrFields[a];
                    e.mimeType && s.overrideMimeType && s.overrideMimeType(e.mimeType), e.crossDomain || o["X-Requested-With"] || (o["X-Requested-With"] = "XMLHttpRequest");
                    for (a in o) s.setRequestHeader(a, o[a]);
                    t = function (e) {
                        return function () {
                            t && (t = r = s.onload = s.onerror = s.onabort = s.ontimeout = s.onreadystatechange = null, "abort" === e ? s.abort() : "error" === e ? "number" != typeof s.status ? i(0, "error") : i(s.status, s.statusText) : i(Jt[s.status] || s.status, s.statusText, "text" !== (s.responseType || "text") || "string" != typeof s.responseText ? {
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
        }), ke.ajaxPrefilter(function (e) {
            e.crossDomain && (e.contents.script = !1)
        }), ke.ajaxSetup({
            accepts: {
                script: "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"
            },
            contents: {
                script: /\b(?:java|ecma)script\b/
            },
            converters: {
                "text script": function (e) {
                    return ke.globalEval(e), e
                }
            }
        }), ke.ajaxPrefilter("script", function (e) {
            void 0 === e.cache && (e.cache = !1), e.crossDomain && (e.type = "GET")
        }), ke.ajaxTransport("script", function (e) {
            if (e.crossDomain) {
                var t, n;
                return {
                    send: function (r, o) {
                        t = ke("<script>").prop({
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
        ke.ajaxSetup({
            jsonp: "callback",
            jsonpCallback: function () {
                var e = Qt.pop() || ke.expando + "_" + jt++;
                return this[e] = !0, e
            }
        }), ke.ajaxPrefilter("json jsonp", function (e, t, r) {
            var o, i, a, s = !1 !== e.jsonp && (Zt.test(e.url) ? "url" : "string" == typeof e.data && 0 === (e.contentType || "").indexOf("application/x-www-form-urlencoded") && Zt.test(e.data) && "data");
            if (s || "jsonp" === e.dataTypes[0]) return o = e.jsonpCallback = _e(e.jsonpCallback) ? e.jsonpCallback() : e.jsonpCallback, s ? e[s] = e[s].replace(Zt, "$1" + o) : !1 !== e.jsonp && (e.url += (Dt.test(e.url) ? "&" : "?") + e.jsonp + "=" + o), e.converters["script json"] = function () {
                return a || ke.error(o + " was not called"), a[0]
            }, e.dataTypes[0] = "json", i = n[o], n[o] = function () {
                a = arguments
            }, r.always(function () {
                void 0 === i ? ke(n).removeProp(o) : n[o] = i, e[o] && (e.jsonpCallback = t.jsonpCallback, Qt.push(o)), a && _e(i) && i(a[0]), a = i = void 0
            }), "script"
        }), xe.createHTMLDocument = function () {
            var e = le.implementation.createHTMLDocument("").body;
            return e.innerHTML = "<form></form><form></form>", 2 === e.childNodes.length
        }(), ke.parseHTML = function (e, t, n) {
            if ("string" != typeof e) return [];
            "boolean" == typeof t && (n = t, t = !1);
            var r, o, i;
            return t || (xe.createHTMLDocument ? (t = le.implementation.createHTMLDocument(""), r = t.createElement("base"), r.href = le.location.href, t.head.appendChild(r)) : t = le), o = Oe.exec(e), i = !n && [], o ? [t.createElement(o[1])] : (o = I([e], t, i), i && i.length && ke(i).remove(), ke.merge([], o.childNodes))
        }, ke.fn.load = function (e, t, n) {
            var r, o, i, a = this,
                s = e.indexOf(" ");
            return s > -1 && (r = ee(e.slice(s)), e = e.slice(0, s)), _e(t) ? (n = t, t = void 0) : t && "object" == typeof t && (o = "POST"), a.length > 0 && ke.ajax({
                url: e,
                type: o || "GET",
                dataType: "html",
                data: t
            }).done(function (e) {
                i = arguments, a.html(r ? ke("<div>").append(ke.parseHTML(e)).find(r) : e)
            }).always(n && function (e, t) {
                a.each(function () {
                    n.apply(this, i || [e.responseText, t, e])
                })
            }), this
        }, ke.each(["ajaxStart", "ajaxStop", "ajaxComplete", "ajaxError", "ajaxSuccess", "ajaxSend"], function (e, t) {
            ke.fn[t] = function (e) {
                return this.on(t, e)
            }
        }), ke.expr.pseudos.animated = function (e) {
            return ke.grep(ke.timers, function (t) {
                return e === t.elem
            }).length
        }, ke.offset = {
            setOffset: function (e, t, n) {
                var r, o, i, a, s, c, u, l = ke.css(e, "position"),
                    p = ke(e),
                    f = {};
                "static" === l && (e.style.position = "relative"), s = p.offset(), i = ke.css(e, "top"), c = ke.css(e, "left"), u = ("absolute" === l || "fixed" === l) && (i + c).indexOf("auto") > -1, u ? (r = p.position(), a = r.top, o = r.left) : (a = parseFloat(i) || 0, o = parseFloat(c) || 0), _e(t) && (t = t.call(e, n, ke.extend({}, s))), null != t.top && (f.top = t.top - s.top + a), null != t.left && (f.left = t.left - s.left + o), "using" in t ? t.using.call(e, f) : p.css(f)
            }
        }, ke.fn.extend({
            offset: function (e) {
                if (arguments.length) return void 0 === e ? this : this.each(function (t) {
                    ke.offset.setOffset(this, e, t)
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
                    if ("fixed" === ke.css(r, "position")) t = r.getBoundingClientRect();
                    else {
                        for (t = this.offset(), n = r.ownerDocument, e = r.offsetParent || n.documentElement; e && (e === n.body || e === n.documentElement) && "static" === ke.css(e, "position");) e = e.parentNode;
                        e && e !== r && 1 === e.nodeType && (o = ke(e).offset(), o.top += ke.css(e, "borderTopWidth", !0), o.left += ke.css(e, "borderLeftWidth", !0))
                    }
                    return {
                        top: t.top - o.top - ke.css(r, "marginTop", !0),
                        left: t.left - o.left - ke.css(r, "marginLeft", !0)
                    }
                }
            },
            offsetParent: function () {
                return this.map(function () {
                    for (var e = this.offsetParent; e && "static" === ke.css(e, "position");) e = e.offsetParent;
                    return e || ot
                })
            }
        }), ke.each({
            scrollLeft: "pageXOffset",
            scrollTop: "pageYOffset"
        }, function (e, t) {
            var n = "pageYOffset" === t;
            ke.fn[e] = function (r) {
                return qe(this, function (e, r, o) {
                    var i;
                    if (Te(e) ? i = e : 9 === e.nodeType && (i = e.defaultView), void 0 === o) return i ? i[t] : e[r];
                    i ? i.scrollTo(n ? i.pageXOffset : o, n ? o : i.pageYOffset) : e[r] = o
                }, e, r, arguments.length)
            }
        }), ke.each(["top", "left"], function (e, t) {
            ke.cssHooks[t] = H(xe.pixelPosition, function (e, n) {
                if (n) return n = q(e, t), ft.test(n) ? ke(e).position()[t] + "px" : n
            })
        }), ke.each({
            Height: "height",
            Width: "width"
        }, function (e, t) {
            ke.each({
                padding: "inner" + e,
                content: t,
                "": "outer" + e
            }, function (n, r) {
                ke.fn[r] = function (o, i) {
                    var a = arguments.length && (n || "boolean" != typeof o),
                        s = n || (!0 === o || !0 === i ? "margin" : "border");
                    return qe(this, function (t, n, o) {
                        var i;
                        return Te(t) ? 0 === r.indexOf("outer") ? t["inner" + e] : t.document.documentElement["client" + e] : 9 === t.nodeType ? (i = t.documentElement, Math.max(t.body["scroll" + e], i["scroll" + e], t.body["offset" + e], i["offset" + e], i["client" + e])) : void 0 === o ? ke.css(t, n, s) : ke.style(t, n, o, s)
                    }, t, a ? o : void 0, a)
                }
            })
        }), ke.each("blur focus focusin focusout resize scroll click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup contextmenu".split(" "), function (e, t) {
            ke.fn[t] = function (e, n) {
                return arguments.length > 0 ? this.on(t, null, e, n) : this.trigger(t)
            }
        }), ke.fn.extend({
            hover: function (e, t) {
                return this.mouseenter(e).mouseleave(t || e)
            }
        }), ke.fn.extend({
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
        }), ke.proxy = function (e, t) {
            var n, r, o;
            if ("string" == typeof t && (n = e[t], t = e, e = n), _e(e)) return r = fe.call(arguments, 2), o = function () {
                return e.apply(t || this, r.concat(fe.call(arguments)))
            }, o.guid = e.guid = e.guid || ke.guid++, o
        }, ke.holdReady = function (e) {
            e ? ke.readyWait++ : ke.ready(!0)
        }, ke.isArray = Array.isArray, ke.parseJSON = JSON.parse, ke.nodeName = u, ke.isFunction = _e, ke.isWindow = Te, ke.camelCase = v, ke.type = s, ke.now = Date.now, ke.isNumeric = function (e) {
            var t = ke.type(e);
            return ("number" === t || "string" === t) && !isNaN(e - parseFloat(e))
        }, r = [], void 0 !== (o = function () {
            return ke
        }.apply(t, r)) && (e.exports = o);
        var en = n.jQuery,
            tn = n.$;
        return ke.noConflict = function (e) {
            return n.$ === ke && (n.$ = tn), e && n.jQuery === ke && (n.jQuery = en), ke
        }, i || (n.jQuery = n.$ = ke), ke
    })
}, function (e, t, n) {
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
}, function (e, t) {
    var n = function () {
        function e(e) {
            return null == e ? String(e) : K[V.call(e)] || "object"
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
            return E.call(e, function (e) {
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
            return e in D ? D[e] : D[e] = new RegExp("(^|\\s)" + e + "(\\s|$)")
        }

        function p(e, t) {
            return "number" != typeof t || L[u(e)] ? t : t + "px"
        }

        function f(e) {
            var t, n;
            return j[e] || (t = N.createElement(e), N.body.appendChild(t), n = getComputedStyle(t, "").getPropertyValue("display"), t.parentNode.removeChild(t), "none" == n && (n = "block"), j[e] = n), j[e]
        }

        function d(e) {
            return "children" in e ? O.call(e.children) : A.map(e.childNodes, function (e) {
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

        function w(e, t) {
            var n = e.className || "",
                r = n && n.baseVal !== _;
            if (t === _) return r ? n.baseVal : n;
            r ? n.baseVal = t : e.className = t
        }

        function b(e) {
            try {
                return e ? "true" == e || "false" != e && ("null" == e ? null : +e + "" == e ? +e : /^[\[\{]/.test(e) ? A.parseJSON(e) : e) : e
            } catch (t) {
                return e
            }
        }

        function x(e, t) {
            t(e);
            for (var n = 0, r = e.childNodes.length; n < r; n++) x(e.childNodes[n], t)
        }
        var _, T, A, k, S, I, C = [],
            P = C.concat,
            E = C.filter,
            O = C.slice,
            N = window.document,
            j = {},
            D = {},
            L = {
                "column-count": 1,
                columns: 1,
                "font-weight": 1,
                "line-height": 1,
                opacity: 1,
                "z-index": 1,
                zoom: 1
            },
            U = /^\s*<(\w+|!)[^>]*>/,
            R = /^<(\w+)\s*\/?>(?:<\/\1>|)$/,
            M = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,
            q = /^(?:body|html)$/i,
            H = /([A-Z])/g,
            W = ["val", "css", "html", "text", "data", "width", "height", "offset"],
            F = ["after", "prepend", "before", "append"],
            B = N.createElement("table"),
            z = N.createElement("tr"),
            $ = {
                tr: N.createElement("tbody"),
                tbody: B,
                thead: B,
                tfoot: B,
                td: z,
                th: z,
                "*": N.createElement("div")
            },
            G = /^[\w-]*$/,
            K = {},
            V = K.toString,
            Y = {},
            J = N.createElement("div"),
            X = {
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
            return i && (o = J).appendChild(e), r = ~Y.qsa(o, t).indexOf(e), i && J.removeChild(e), r
        }, S = function (e) {
            return e.replace(/-+(.)?/g, function (e, t) {
                return t ? t.toUpperCase() : ""
            })
        }, I = function (e) {
            return E.call(e, function (t, n) {
                return e.indexOf(t) == n
            })
        }, Y.fragment = function (e, t, n) {
            var r, o, a;
            return R.test(e) && (r = A(N.createElement(RegExp.$1))), r || (e.replace && (e = e.replace(M, "<$1></$2>")), t === _ && (t = U.test(e) && RegExp.$1), t in $ || (t = "*"), a = $[t], a.innerHTML = "" + e, r = A.each(O.call(a.childNodes), function () {
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
                if (e = e.trim(), "<" == e[0] && U.test(e)) r = Y.fragment(e, RegExp.$1, n), e = null;
                else {
                    if (n !== _) return A(n).find(e);
                    r = Y.qsa(N, e)
                }
            else {
                if (t(e)) return A(N).ready(e);
                if (Y.isZ(e)) return e;
                if (Q(e)) r = s(e);
                else if (o(e)) r = [e], e = null;
                else if (U.test(e)) r = Y.fragment(e.trim(), RegExp.$1, n), e = null;
                else {
                    if (n !== _) return A(n).find(e);
                    r = Y.qsa(N, e)
                }
            }
            return Y.Z(r, e)
        }, A = function (e, t) {
            return Y.init(e, t)
        }, A.extend = function (e) {
            var t, n = O.call(arguments, 1);
            return "boolean" == typeof e && (t = e, e = n.shift()), n.forEach(function (n) {
                g(e, n, t)
            }), e
        }, Y.qsa = function (e, t) {
            var n, r = "#" == t[0],
                o = !r && "." == t[0],
                i = r || o ? t.slice(1) : t,
                a = G.test(i);
            return e.getElementById && a && r ? (n = e.getElementById(i)) ? [n] : [] : 1 !== e.nodeType && 9 !== e.nodeType && 11 !== e.nodeType ? [] : O.call(a && !r && e.getElementsByClassName ? o ? e.getElementsByClassName(i) : e.getElementsByTagName(t) : e.querySelectorAll(t))
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
            return E.call(e, t)
        }, window.JSON && (A.parseJSON = JSON.parse), A.each("Boolean Number String Function Array Date RegExp Object Error".split(" "), function (e, t) {
            K["[object " + t + "]"] = t.toLowerCase()
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
                return A(O.apply(this, arguments))
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
                return e === _ ? O.call(this) : this[e >= 0 ? e : e + this.length]
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
                return t(e) ? this.not(this.not(e)) : A(E.call(this, function (t) {
                    return Y.matches(t, e)
                }))
            },
            add: function (e, t) {
                return A(I(this.concat(A(e, t))))
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
                    var r = "string" == typeof e ? this.filter(e) : a(e) && t(e.item) ? O.call(e) : A(e);
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
                return m(I(this.pluck("parentNode")), e)
            },
            children: function (e) {
                return m(this.map(function () {
                    return d(this)
                }), e)
            },
            contents: function () {
                return this.map(function () {
                    return this.contentDocument || O.call(this.childNodes)
                })
            },
            siblings: function (e) {
                return m(this.map(function (e, t) {
                    return E.call(d(t.parentNode), function (e) {
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
                    "none" == this.style.display && (this.style.display = ""), "none" == getComputedStyle(this, "").getPropertyValue("display") && (this.style.display = f(this.nodeName))
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
                return e = X[e] || e, 1 in arguments ? this.each(function (n) {
                    this[e] = y(this, t, n, this[e])
                }) : this[0] && this[0][e]
            },
            removeProp: function (e) {
                return e = X[e] || e, this.each(function () {
                    delete this[e]
                })
            },
            data: function (e, t) {
                var n = "data-" + e.replace(H, "-$1").toLowerCase(),
                    r = 1 in arguments ? this.attr(n, t) : this.attr(n);
                return null !== r ? b(r) : _
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
                if ("string" == e(t)) n || 0 === n ? a = u(t) + ":" + p(t, n) : this.each(function () {
                    this.style.removeProperty(u(t))
                });
                else
                    for (T in t) t[T] || 0 === t[T] ? a += u(T) + ":" + p(T, t[T]) + ";" : this.each(function () {
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
                    return this.test(w(e))
                }, l(e))
            },
            addClass: function (e) {
                return e ? this.each(function (t) {
                    if ("className" in this) {
                        k = [];
                        var n = w(this);
                        y(this, e, t, n).split(/\s+/g).forEach(function (e) {
                            A(this).hasClass(e) || k.push(e)
                        }, this), k.length && w(this, n + (n ? " " : "") + k.join(" "))
                    }
                }) : this
            },
            removeClass: function (e) {
                return this.each(function (t) {
                    if ("className" in this) {
                        if (e === _) return w(this, "");
                        k = w(this), y(this, e, t, k).split(/\s+/g).forEach(function (e) {
                            k = k.replace(l(e), " ")
                        }), w(this, k.trim())
                    }
                })
            },
            toggleClass: function (e, t) {
                return e ? this.each(function (n) {
                    var r = A(this);
                    y(this, e, n, w(this)).split(/\s+/g).forEach(function (e) {
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
                        r = q.test(t[0].nodeName) ? {
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
                    for (var e = this.offsetParent || N.body; e && !q.test(e.nodeName) && "static" == A(e).css("position");) e = e.offsetParent;
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
        }), F.forEach(function (t, n) {
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
                        o.insertBefore(e, t), s && x(e, function (e) {
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
        }), Y.Z.prototype = h.prototype = A.fn, Y.uniq = I, Y.deserializeValue = b, A.zepto = Y, A
    }();
    window.Zepto = n, void 0 === window.$ && (window.$ = n), e.exports = n
}, function (e, t, n) {
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
}, function (e, t, n) {
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
}, function (e, t, n) {
    n(28), n(27), n(29), n(30), e.exports = n(5)
}, function (e, t, n) {
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
}, function (e, t, n) {
    "use strict";
    var r = n(0),
        o = n(6),
        i = n(4),
        a = n(26),
        s = n(11),
        c = n(18),
        u = "https:" === window.location.protocol ? "https:" : "http:",
        l = u + "//track.uc.cn/",
        p = l + "collect";
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
            f = "ppweb-event",
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
            e.lt_access && (u = e.lt_access, delete e.lt_access), e.lt_click && (l = e.lt_click, delete e.lt_click), e.lt_event && (f = e.lt_event, delete e.lt_event), e.lt_show && (d = e.lt_show, delete e.lt_show), r.extend(m, e)
        }, n.baseParam = function (e) {
            "object" == typeof e && r.extend(y, e)
        }, n.pageview = function (e, t) {
            m.lt = u, n.jslog(h.PAGE, e, t)
        }, n.click = function (e, t) {
            m.lt = l, n.jslog(h.CLICK, e, t)
        }, n.event = function (e, t) {
            m.lt = f, n.jslog(h.EVENT, e, t)
        }, n.show = function (e, t) {
            m.lt = d, n.jslog(h.SHOW, e, t)
        }, n.jslog = function (n, o, a) {
            var u = {},
                l = {};
            "event" === n && (u.e_c = "act", u.e_a = o), "object" != typeof a && (a = {}), t(function () {
                if (r.extend(l, m), r.extend(l, y), r.extend(l, u), r.extend(l, a), l[n] = o, m.debug) console.log(p, l);
                else {
                    var t = i.queryFormat(p, l);
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
}, function (e, t, n) {
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
}, function (e, t, n) {
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
}, function (e, t, n) {
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
}, function (e, t, n) {
    "use strict";
    n(7), n(23), n(22), n(19), n(24), n(20), n(17), n(25), n(21), e.exports = n(2)
}, function (e, t, n) {
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
                pushAppType: w,
                ab: b
            }
        }

        function n() {
            x.resType = "soft", _.resType = "soft"
        }

        function l(n, i, a, s) {
            "object" == typeof arguments[1] && (i = "", a = arguments[1], s = arguments[2]), x = e(), _ = t(), a && r.extend(x, a), s && r.extend(_, s), o.isInAndroidClient() && ("click" === y[n] ? _.ckUrl = i : _.action = i, _.type = y[n]), x.action = i, x.type = n
        }

        function p() {
            a.log(_)
        }

        function f() {
            switch (x.type) {
                case "pageview":
                    u.pageview(x.action, x), g.app_key && c.pageview(x.action, x);
                    break;
                case "click":
                    u.click(x.action, x), g.app_key && c.click(x.action, x);
                    break;
                case "download":
                    u.click(x.action, x), g.app_key && c.download(x);
                    break;
                case "event":
                    u.event(x.action, x), g.app_key && c.event(x.action, x);
                    break;
                case "show":
                    u.show(x.action, x)
            }
        }

        function d() {
            o.isInAndroidClient() && p(), f()
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
            w = i.getQueryString("pushAppType") || "",
            b = i.getQueryString("ab") || "",
            x = e(),
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
}, function (e, t, n) {
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
}, function (e, t, n) {
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
}, function (e, t, n) {
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
                p = "",
                f = "string" === t(o);
            return f && (s = o.indexOf("#"), s >= 0 && (p = o.substr(s), o = o.substr(0, s)), (c = o.indexOf("?")) >= 0 && (u = a(o.substr(c)), e = r(u, e), o = o.substr(0, c))), n(e, function (e, t) {
                l.push(encodeURIComponent(t) + "=" + encodeURIComponent(void 0 === e ? "" : e))
            }), i = l.join("&").replace(/%20/g, "+"), f ? o + "?" + i + p : i
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
                p = e.success,
                f = e.error || function () {},
                d = e.config || {},
                m = d.forbidExtendRequestParams ? e.data : r(c(), y, e.data),
                v = new XMLHttpRequest,
                w = Date.now();
            v.onreadystatechange = function () {
                var e;
                if (4 === v.readyState)
                    if (200 === v.status) {
                        try {
                            e = JSON.parse(v.responseText)
                        } catch (e) {
                            return v.customError = e, v.parseError = !0, v.xtime = Date.now() - w, v.statechange = v.status, v.errortime = o("__t", l), void f(v)
                        }
                        h && h(e), p && p(e)
                    } else v.xtime = Date.now() - w, v.statechange = v.status, v.errortime = o("__t", l), f(v)
            }, v.timeout = d.timeout || 3e4, a = "POST" === a.toUpperCase() ? "POST" : "GET";
            try {
                if ("POST" === a) {
                    if (n(m, function (e) {
                            if ("file" === t(e)) return i = new FormData, !1
                        }), l = g(l), v.open(a, l, !0), i) n(m, function (e, n) {
                        n && void 0 !== e && i.append(n, "array" === t(e) ? e.join() : e)
                    });
                    else {
                        var b;
                        d.headers && "application/json" === (b = d.headers["Content-Type"]) ? (i = JSON.stringify(m), v.setRequestHeader("Content-Type", b)) : (i = s(m), v.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"))
                    }
                    v.setRequestHeader("X-Requested-With", "XMLHttpRequest")
                } else l = g(s(m, l)), v.open(a, l, !0);
                v.customRequestUrl = l, d.headers && u(v, d.headers), v.send(i)
            } catch (e) {
                console.error("ajax error", e)
            }
        }

        function p(e) {
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

        function f(e, t) {
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
            var t, n, r, a, c, u, l, p, f, d = 0,
                h = {},
                g = {},
                m = -1 !== window.navigator.userAgent.toLowerCase().indexOf("ucnewsapp"),
                y = "UCLITE" === e.pf,
                v = "UC" === e.pf;
            if (y || m || "wp" === o("fr") || "139" === o("pf") || "140" === o("pf") || v)
                for (c = o("uc_param_str"), f = c.length - c.length % 2; d < f;) u = c.substr(d, 2), l = o(u), l.length > 0 && (h[u] = l), d += 2;
            return n = o("entry").replace(/\s/g, ""), n && (g.entry = h.entry = n), r = o("origin").replace(/\s/g, ""), r && (g.origin = h.origin = r), a = o("forcela").replace(/\s/g, ""), a && (g.forcela = h.forcela = a), t = s(h), p = s(g),
                function (e, n) {
                    return e = n ? i(e, p) : i(e, t), o("uc_param_str", e) || (e = i(e, "uc_param_str=dsdnfrpfbivessbtbmnilauputogpintnwchmtsvcppr")), e
                }
        }(), m.ping = function (e, t, n) {
            var o = new Image,
                i = r(c(), y, t);
            f(o, n), o.src = g(s(i, e))
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
        }, m.query = o, m.parseObject = a, m.parseQuery = s, m.ucParam = g, m.ajax = l, m.get = p("GET"), m.post = p("POST"), m
    })
}, function (e, t, n) {
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
    }, o.downloadApp = function (e, t, n, i, a, s, c, u, l, p, f, d, h) {
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
            key_package_name: p,
            key_app_size: f,
            key_ext_data: d || {}
        };
        "object" == typeof h && (g.key_vurl = h.vurl || "", g.key_curl = h.curl || "", g.key_durl = h.dfUrl || "", g.key_iurl = h.iurl || "", g.key_feedback_param = h.feedbackParameter || ""), o.ApiProtocol(r.methodId.APP_DOWNLOAD, g)
    }, o.updateApp = function (e, t, n, i, a, s, c, u, l, p, f, d) {
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
            key_package_name: p,
            key_app_size: f,
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
}, function (e, t, n) {
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
}, function (e, t, n) {
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
}, function (e, t, n) {
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
}, function (e, t, n) {
    "use strict";
    var r = n(1),
        o = n(2);
    o.callZFBPay = function (e, t) {
        o.ApiProtocol(r.methodId.PAY_ZFB, {
            payInfo: e.payInfo
        }, t)
    }, e.exports = o
}, function (e, t, n) {
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
}, function (e, t, n) {
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
}, function (e, t, n) {
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
}, function (e, t, n) {
    var r = n(5);
    ! function (e) {
        function t(t, n, r) {
            var o = e.Event(n);
            return e(t).trigger(o, r), !o.isDefaultPrevented()
        }

        function n(e, n, r, o) {
            if (e.global) return t(n || w, r, o)
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

        function p(e) {
            return e && (e = e.split(";", 2)[0]), e && (e == A ? "html" : e == T ? "json" : x.test(e) ? "script" : _.test(e) && "xml") || "text"
        }

        function f(e, t) {
            return "" == t ? e : (e + "&" + t).replace(/[&?]{1,2}/, "?")
        }

        function d(t) {
            t.processData && t.data && "string" != e.type(t.data) && (t.data = e.param(t.data, t.traditional)), !t.data || t.type && "GET" != t.type.toUpperCase() && "jsonp" != t.dataType || (t.url = f(t.url, t.data), t.data = void 0)
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
            w = window.document,
            b = /<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,
            x = /^(?:text|application)\/javascript/i,
            _ = /^(?:text|application)\/xml/i,
            T = "application/json",
            A = "text/html",
            k = /^\s*$/,
            S = w.createElement("a");
        S.href = window.location.href, e.active = 0, e.ajaxJSONP = function (t, n) {
            if (!("type" in t)) return e.ajax(t);
            var r, o, c = t.jsonpCallback,
                u = (e.isFunction(c) ? c() : c) || "Zepto" + v++,
                l = w.createElement("script"),
                p = window[u],
                f = function (t) {
                    e(l).triggerHandler("error", t || "abort")
                },
                d = {
                    abort: f
                };
            return n && n.promise(d), e(l).on("load error", function (i, c) {
                clearTimeout(o), e(l).off().remove(), "error" != i.type && r ? a(r[0], d, t, n) : s(null, c || "error", d, t, n), window[u] = p, r && e.isFunction(p) && p(r[0]), p = r = void 0
            }), !1 === i(d, t) ? (f("abort"), d) : (window[u] = function () {
                r = arguments
            }, l.src = t.url.replace(/\?(.+)=\?/, "?$1=" + u), w.head.appendChild(l), t.timeout > 0 && (o = setTimeout(function () {
                f("timeout")
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
            r(c), c.crossDomain || (n = w.createElement("a"), n.href = c.url, n.href = n.href, c.crossDomain = S.protocol + "//" + S.host != n.protocol + "//" + n.host), c.url || (c.url = window.location.toString()), (o = c.url.indexOf("#")) > -1 && (c.url = c.url.slice(0, o)), d(c);
            var g = c.dataType,
                v = /\?.+=\?/.test(c.url);
            if (v && (g = "jsonp"), !1 !== c.cache && (t && !0 === t.cache || "script" != g && "jsonp" != g) || (c.url = f(c.url, "_=" + Date.now())), "jsonp" == g) return v || (c.url = f(c.url, c.jsonp ? c.jsonp + "=?" : !1 === c.jsonp ? "" : "callback=?")), e.ajaxJSONP(c, h);
            var b, x = c.accepts[g],
                _ = {},
                T = function (e, t) {
                    _[e.toLowerCase()] = [e, t]
                },
                A = /^([\w-]+:)\/\//.test(c.url) ? RegExp.$1 : window.location.protocol,
                I = c.xhr(),
                C = I.setRequestHeader;
            if (h && h.promise(I), c.crossDomain || T("X-Requested-With", "XMLHttpRequest"), T("Accept", x || "*/*"), (x = c.mimeType || x) && (x.indexOf(",") > -1 && (x = x.split(",", 2)[0]), I.overrideMimeType && I.overrideMimeType(x)), (c.contentType || !1 !== c.contentType && c.data && "GET" != c.type.toUpperCase()) && T("Content-Type", c.contentType || "application/x-www-form-urlencoded"), c.headers)
                for (y in c.headers) T(y, c.headers[y]);
            if (I.setRequestHeader = T, I.onreadystatechange = function () {
                    if (4 == I.readyState) {
                        I.onreadystatechange = l, clearTimeout(b);
                        var t, n = !1;
                        if (I.status >= 200 && I.status < 300 || 304 == I.status || 0 == I.status && "file:" == A) {
                            if (g = g || p(c.mimeType || I.getResponseHeader("content-type")), "arraybuffer" == I.responseType || "blob" == I.responseType) t = I.response;
                            else {
                                t = I.responseText;
                                try {
                                    t = u(t, g, c), "script" == g ? (0, eval)(t) : "xml" == g ? t = I.responseXML : "json" == g && (t = k.test(t) ? null : e.parseJSON(t))
                                } catch (e) {
                                    n = e
                                }
                                if (n) return s(n, "parsererror", I, c, h)
                            }
                            a(t, I, c, h)
                        } else s(I.statusText || null, I.status ? "error" : "abort", I, c, h)
                    }
                }, !1 === i(I, c)) return I.abort(), s(null, "abort", I, c, h), I;
            var P = !("async" in c) || c.async;
            if (I.open(c.type, c.url, P, c.username, c.password), c.xhrFields)
                for (y in c.xhrFields) I[y] = c.xhrFields[y];
            for (y in _) C.apply(I, _[y]);
            return c.timeout > 0 && (b = setTimeout(function () {
                I.onreadystatechange = l, I.abort(), s(null, "timeout", I, c, h)
            }, c.timeout)), I.send(c.data ? c.data : null), I
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
                i.html(o ? e("<div>").html(t.replace(b, "")).find(o) : t), c && c.apply(i, arguments)
            }, e.ajax(s), this
        };
        var I = encodeURIComponent;
        e.param = function (t, n) {
            var r = [];
            return r.add = function (t, n) {
                e.isFunction(n) && (n = n()), null == n && (n = ""), this.push(I(t) + "=" + I(n))
            }, g(r, t, n), r.join("&").replace(/%20/g, "+")
        }
    }(r), e.exports = r
}, function (e, t, n) {
    var r = n(5);
    ! function (e) {
        function t(e) {
            return e._zid || (e._zid = f++)
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
            return e.del && !v && e.e in w || !!t
        }

        function a(e) {
            return b[e] || v && w[e] || e
        }

        function s(n, o, s, c, l, f, d) {
            var h = t(n),
                g = m[h] || (m[h] = []);
            o.split(/\s/).forEach(function (t) {
                if ("ready" == t) return e(document).ready(s);
                var o = r(t);
                o.fn = s, o.sel = l, o.e in b && (s = function (t) {
                    var n = t.relatedTarget;
                    if (!n || n !== this && !e.contains(this, n)) return o.fn.apply(this, arguments)
                }), o.del = f;
                var h = f || s;
                o.proxy = function (e) {
                    if (e = u(e), !e.isImmediatePropagationStopped()) {
                        e.data = c;
                        var t = h.apply(n, e._args == p ? [e] : [e].concat(e._args));
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
                        return this[r] = x, o && o.apply(n, arguments)
                    }, t[r] = _
                });
                try {
                    t.timeStamp || (t.timeStamp = Date.now())
                } catch (e) {}(n.defaultPrevented !== p ? n.defaultPrevented : "returnValue" in n ? !1 === n.returnValue : n.getPreventDefault && n.getPreventDefault()) && (t.isDefaultPrevented = x)
            }
            return t
        }

        function l(e) {
            var t, n = {
                originalEvent: e
            };
            for (t in e) T.test(t) || e[t] === p || (n[t] = e[t]);
            return u(n, e)
        }
        var p, f = 1,
            d = Array.prototype.slice,
            h = e.isFunction,
            g = function (e) {
                return "string" == typeof e
            },
            m = {},
            y = {},
            v = "onfocusin" in window,
            w = {
                focus: "focusin",
                blur: "focusout"
            },
            b = {
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
        var x = function () {
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
            var a, u, f = this;
            return t && !g(t) ? (e.each(t, function (e, t) {
                f.on(e, n, r, t, i)
            }), f) : (g(n) || h(o) || !1 === o || (o = r, r = n, n = p), o !== p && !1 !== r || (o = r, r = p), !1 === o && (o = _), f.each(function (p, f) {
                i && (a = function (e) {
                    return c(f, e.type, o), o.apply(this, arguments)
                }), n && (u = function (t) {
                    var r, i = e(t.target).closest(n, f).get(0);
                    if (i && i !== f) return r = e.extend(l(t), {
                        currentTarget: i,
                        liveFired: f
                    }), (a || o).apply(i, [r].concat(d.call(arguments, 1)))
                }), s(f, t, o, r, n, u || a)
            }))
        }, e.fn.off = function (t, n, r) {
            var o = this;
            return t && !g(t) ? (e.each(t, function (e, t) {
                o.off(e, n, t)
            }), o) : (g(n) || h(r) || !1 === r || (r = n, n = p), !1 === r && (r = _), o.each(function () {
                c(this, t, r, n)
            }))
        }, e.fn.trigger = function (t, n) {
            return t = g(t) || e.isPlainObject(t) ? e.Event(t) : u(t), t._args = n, this.each(function () {
                t.type in w && "function" == typeof this[t.type] ? this[t.type]() : "dispatchEvent" in this ? this.dispatchEvent(t) : e(this).triggerHandler(t, n)
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
}, function (e, t, n) {
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
}, function (e, t) {
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
}, function (e, t, n) {
    "use strict";
    n(9), n(32), n(33), n(35), n(12), n(6), n(4), n(34), e.exports = n(0)
}, function (e, t, n) {
    "use strict";
    var r = n(0);
    r.getdomSize = function () {
        return {
            width: document.documentElement.offsetWidth || document.body.offsetWidth,
            height: document.documentElement.offsetHeight || document.body.offsetHeight,
            scrollT: document.documentElement.scrollTop || document.body.scrollTop
        }
    }, r.getWinSize = function (e, t) {
        var n = 0,
            o = 0;
        t = isNaN(parseInt(t)) ? 10 : parseInt(t), window.innerWidth ? o = window.innerWidth : document.body && document.body.clientWidth && (o = document.body.clientWidth), window.innerHeight ? n = window.innerHeight : document.body && document.body.clientHeight && (n = document.body.clientHeight), document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth && (n = document.documentElement.clientHeight, o = document.documentElement.clientWidth), t-- > 0 && (n <= 0 || o <= 0) ? setTimeout(function () {
            r.getWinSize(e, t)
        }, 200) : e({
            height: n,
            width: o
        })
    }, e.exports = r
}, function (e, t, n) {
    "use strict";
    var r = n(0);
    r.sizeFormat = function (e) {
        try {
            var t = ["", "KB", "MB", "GB", "TB"],
                n = parseInt(e);
            if (0 === n || isNaN(n)) return "0K";
            if (n < 1024) return "小于1K";
            for (var r = 0; r < t.length - 1; r++) {
                if (n < 1024) return (n = Math.floor(100 * (n + .005)) / 100) + t[r];
                n /= 1024
            }
            return (n = Math.floor(100 * (n + .005)) / 100) + t[t.length - 1]
        } catch (e) {
            return "小于1M"
        }
    }, r.numberFormat = function (e) {
        try {
            var t = parseInt(e);
            return 0 === t || isNaN(t) ? "0" : t < 1e4 ? e + "" : (t = Math.floor(10 * (t / 1e4 + .05)) / 10) < 1e4 ? t + "万" : (t = Math.floor(10 * (t / 1e4 + .05)) / 10) + "亿"
        } catch (t) {
            return e + ""
        }
    }, r.downloadsFormat = r.numberFormat, r.moneyFormat = function (e, t) {
        var n, r, o = parseFloat(e);
        (isNaN(o) || 0 === o) && (o = 0), n = o === (o = Math.abs(o)), o = Math.floor(100 * o + .50000000001), r = o % 100, o = Math.floor(o / 100).toString(), r < 10 && (r = "0" + r);
        for (var i = 0; i < Math.floor((o.length - (1 + i)) / 3); i++) o = o.substring(0, o.length - (4 * i + 3)) + "," + o.substring(o.length - (4 * i + 3));
        return t ? (n ? "" : "-") + o + "." + r : (n ? "" : "-") + o
    }, r.stampFormat2Date = function (e, t) {
        t = t <= 9999999999 ? 1e3 * t : t;
        var n = t ? new Date(t) : new Date,
            o = function (e, t) {
                return (e += "").length < t ? new Array(++t - e.length).join("0") + e : e
            },
            i = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
            a = {
                1: "st",
                2: "nd",
                3: "rd",
                21: "st",
                22: "nd",
                23: "rd",
                31: "st"
            },
            s = ["", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
            c = {
                d: function () {
                    return o(c.j(), 2)
                },
                D: function () {
                    return c.l().substr(0, 3)
                },
                j: function () {
                    return n.getDate()
                },
                l: function () {
                    return i[c.w()]
                },
                N: function () {
                    return c.w() + 1
                },
                S: function () {
                    return a[c.j()] ? a[c.j()] : "th"
                },
                w: function () {
                    return n.getDay()
                },
                z: function () {
                    return (n - new Date(n.getFullYear() + "/1/1")) / 864e5 >> 0
                },
                W: function () {
                    var e, t = c.z(),
                        o = 364 + c.L() - t,
                        i = (7 | new Date(n.getFullYear() + "/1/1").getDay()) - 1;
                    return o <= 2 && (7 | n.getDay()) - 1 <= 2 - o ? 1 : t <= 2 && i >= 4 && t >= 6 - i ? (e = new Date(n.getFullYear() - 1 + "/12/31"), r.stampFormat2Date("W", Math.round(e.getTime() / 1e3))) : 1 + (i <= 3 ? (t + i) / 7 : (t - (7 - i)) / 7) >> 0
                },
                F: function () {
                    return s[c.n()]
                },
                m: function () {
                    return o(c.n(), 2)
                },
                M: function () {
                    return c.F().substr(0, 3)
                },
                n: function () {
                    return n.getMonth() + 1
                },
                t: function () {
                    var e;
                    return 2 === (e = n.getMonth() + 1) ? 28 + c.L() : 1 & e && e < 8 || !(1 & e) && e > 7 ? 31 : 30
                },
                L: function () {
                    var e = c.Y();
                    return e % 4 != 0 || e % 100 == 0 && e % 400 != 0 ? 0 : 1
                },
                Y: function () {
                    return n.getFullYear()
                },
                y: function () {
                    return (n.getFullYear() + "").slice(2)
                },
                a: function () {
                    return n.getHours() > 11 ? "pm" : "am"
                },
                A: function () {
                    return c.a().toUpperCase()
                },
                B: function () {
                    var e = 60 * (n.getTimezoneOffset() + 60),
                        t = 3600 * n.getHours() + 60 * n.getMinutes() + n.getSeconds() + e,
                        r = Math.floor(t / 86.4);
                    return r > 1e3 && (r -= 1e3), r < 0 && (r += 1e3), 1 === String(r).length && (r = "00" + r), 2 === String(r).length && (r = "0" + r), r
                },
                g: function () {
                    return n.getHours() % 12 || 12
                },
                G: function () {
                    return n.getHours()
                },
                h: function () {
                    return o(c.g(), 2)
                },
                H: function () {
                    return o(n.getHours(), 2)
                },
                i: function () {
                    return o(n.getMinutes(), 2)
                },
                s: function () {
                    return o(n.getSeconds(), 2)
                },
                O: function () {
                    var e = o(Math.abs(n.getTimezoneOffset() / 60 * 100), 4);
                    return e = n.getTimezoneOffset() > 0 ? "-" + e : "+" + e
                },
                P: function () {
                    var e = c.O();
                    return e.substr(0, 3) + ":" + e.substr(3, 2)
                },
                c: function () {
                    return c.Y() + "-" + c.m() + "-" + c.d() + "T" + c.h() + ":" + c.i() + ":" + c.s() + c.P()
                },
                U: function () {
                    return Math.round(n.getTime() / 1e3)
                }
            };
        return e.replace(/[\\]?([a-zA-Z])/g, function (e, t) {
            return e !== t ? t : c[t] ? c[t]() : t
        })
    }, r.iconFormat = function (e, t) {
        var n = -1,
            r = "",
            o = [50, 65, 100, 130, 195, 260];
        return t = parseInt(t || 130), e ? -1 === t ? e : (n = e.indexOf(".png")) > -1 ? (r = e.substring(0, n), function (e, t) {
            for (var n = 0; n < t.length; ++n)
                if (e === t[n]) return !0;
            return !1
        }(t, o) || (t = 130), e = r + "_" + t + "x" + t + ".png") : e : e
    }, e.exports = r
}, function (e, t, n) {
    "use strict";
    var r = n(0),
        o = n(4);
    r._webpAvailable = null, r.webpAvailable = function () {
        return null === r._webpAvailable && (r._webpAvailable = !![].map && 0 === document.createElement("canvas").toDataURL("image/webp").indexOf("data:image/webp")), r._webpAvailable
    }, r.canWebpFormat = function (e) {
        return !(!e || /webp/.test(e) || !/(serverfile.ac.uc.cn|android-imgs.25pp.com|img.ucdl.pp.uc.cn|a.img.pp.cn|android-screenimgs.25pp.com|img.25pp.com)\S+(jpg|jpeg|png)/.test(e))
    }, r.webpFormat = function (e) {
        return r.webpAvailable() && r.canWebpFormat(e) ? o.queryFormat(e, {
            "x-oss-process": "image/format,webp"
        }) : e
    }, e.exports = r
}, function (e, t, n) {
    "use strict";
    var r = n(0),
        o = n(5);
    r.loadImg = function (e, t) {
        setTimeout(function () {
            o(".img-lazy:not(.img-lazy-done)").map(function (n, r) {
                var i = new Image;
                i.src = o(r).attr("data-img"), i.onload = function () {
                    o(r).attr("src", i.src), e && "function" == typeof e && e(r)
                }, i.onerror = function () {
                    t && "function" == typeof t && t(r)
                }, o(r).addClass(".img-lazy-done")
            })
        }, 0)
    }, e.exports = r
}, function (e, t, n) {
    "use strict";
    var r = n(49),
        o = n(50),
        i = n(4),
        a = {};
    a.get = function (e, t, n, r) {
        o.ajax("GET", e, t, {
            async: !0
        }, n, r)
    }, a.post = function (e, t, n, r) {
        o.ajax("POST", e, t, {
            async: !0
        }, n, r)
    }, a.postSync = function (e, t, n, r) {
        o.ajax("POST", e, t, {
            async: !1
        }, n, r)
    }, a.uploadFile = function (e, t, n, r, i) {
        var a = new FormData;
        a.append("file", t), "object" != typeof n && (n = {});
        for (var s in n) a.append(s, n[s]);
        o.ajaxForm(e, a, {
            async: !0
        }, r, i)
    }, a.goto = function (e, t) {
        t && "object" == typeof t || (t = {}), t.uc_param_str = r.ucParamStr, location.href = i.queryFormat(e, t)
    }, a._resCode = r.resCode, a._dhost = o._dhost, window.PPProxy = a, e.exports = a
}, function (e, t, n) {
    "use strict";
    var r, o, i;
    ! function (a) {
        o = [n(3)], r = a, void 0 !== (i = "function" == typeof r ? r.apply(t, o) : r) && (e.exports = i)
    }(function (e, t) {
        function n() {}

        function r(e, t) {
            return (t._$container == f ? ("innerHeight" in p ? p.innerHeight : f.height()) + f.scrollTop() : t._$container.offset().top + t._$container.height()) <= e.offset().top - t.threshold
        }

        function o(t, n) {
            return (n._$container == f ? f.width() + (e.fn.scrollLeft ? f.scrollLeft() : p.pageXOffset) : n._$container.offset().left + n._$container.width()) <= t.offset().left - n.threshold
        }

        function i(e, t) {
            return (t._$container == f ? f.scrollTop() : t._$container.offset().top) >= e.offset().top + t.threshold + e.height()
        }

        function a(t, n) {
            return (n._$container == f ? e.fn.scrollLeft ? f.scrollLeft() : p.pageXOffset : n._$container.offset().left) >= t.offset().left + n.threshold + t.width()
        }

        function s(e, t) {
            var n = 0;
            e.each(function (s, c) {
                function u() {
                    l.trigger("_lazyload_appear"), n = 0
                }
                var l = e.eq(s);
                if (!(l.width() <= 0 && l.height() <= 0 || "none" === l.css("display")))
                    if (t.vertical_only)
                        if (i(l, t));
                        else if (r(l, t)) {
                    if (++n > t.failure_limit) return !1
                } else u();
                else if (i(l, t) || a(l, t));
                else if (r(l, t) || o(l, t)) {
                    if (++n > t.failure_limit) return !1
                } else u()
            })
        }

        function c(e) {
            return e.filter(function (t, n) {
                return !e.eq(t)._lazyload_loadStarted
            })
        }

        function u(e, t) {
            function n() {
                a = 0, s = +new Date, i = e.apply(r, o), r = null, o = null
            }
            var r, o, i, a, s = 0;
            return function () {
                r = this, o = arguments;
                var e = new Date - s;
                return a || (e >= t ? n() : a = setTimeout(n, t - e)), i
            }
        }
        var l, p = window,
            f = e(p),
            d = {
                threshold: 0,
                failure_limit: 0,
                event: "scroll",
                effect: "show",
                effect_params: null,
                container: p,
                data_attribute: "original",
                data_srcset_attribute: "original-srcset",
                skip_invisible: !0,
                appear: n,
                load: n,
                vertical_only: !1,
                check_appear_throttle_time: 300,
                url_rewriter_fn: n,
                no_fake_img_loader: !1,
                placeholder_data_img: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC",
                placeholder_real_img: "http://ditu.baidu.cn/yyfm/lazyload/0.0.1/img/placeholder.png"
            };
        l = function () {
            var e = Object.prototype.toString;
            return function (t) {
                return e.call(t).replace("[object ", "").replace("]", "")
            }
        }(), e.fn.hasOwnProperty("lazyload") || (e.fn.lazyload = function (t) {
            var r, o, i, a = this;
            return e.isPlainObject(t) || (t = {}), e.each(d, function (n, r) {
                var o = l(t[n]); - 1 != e.inArray(n, ["threshold", "failure_limit", "check_appear_throttle_time"]) ? "String" == o ? t[n] = parseInt(t[n], 10) : "Number" != o && (t[n] = r) : "container" == n ? (t.hasOwnProperty(n) ? t[n] == p || t[n] == document ? t._$container = f : t._$container = e(t[n]) : t._$container = f, delete t.container) : !d.hasOwnProperty(n) || t.hasOwnProperty(n) && o == l(d[n]) || (t[n] = r)
            }), r = "scroll" == t.event, i = 0 == t.check_appear_throttle_time ? s : u(s, t.check_appear_throttle_time), o = r || "scrollstart" == t.event || "scrollstop" == t.event, a.each(function (r, i) {
                var s = this,
                    u = a.eq(r),
                    l = u.attr("src"),
                    p = u.attr("data-" + t.data_attribute),
                    f = t.url_rewriter_fn == n ? p : t.url_rewriter_fn.call(s, u, p),
                    d = u.attr("data-" + t.data_srcset_attribute),
                    h = u.is("img");
                if (1 == u._lazyload_loadStarted || l == f) return u._lazyload_loadStarted = !0, void(a = c(a));
                u._lazyload_loadStarted = !1, h && !l && u.one("error", function () {
                    u.attr("src", t.placeholder_real_img)
                }).attr("src", t.placeholder_data_img), u.one("_lazyload_appear", function () {
                    function r() {
                        o && u.hide(), h ? (d && u.attr("srcset", d), f && u.attr("src", f)) : u.css("background-image", 'url("' + f + '")'), o && u[t.effect].apply(u, i ? t.effect_params : []), a = c(a)
                    }
                    var o, i = e.isArray(t.effect_params);
                    u._lazyload_loadStarted || (o = "show" != t.effect && e.fn[t.effect] && (!t.effect_params || i && 0 == t.effect_params.length), t.appear != n && t.appear.call(s, u, a.length, t), u._lazyload_loadStarted = !0, t.no_fake_img_loader || d ? (t.load != n && u.one("load", function () {
                        t.load.call(s, u, a.length, t)
                    }), r()) : e("<img />").one("load", function () {
                        r(), t.load != n && t.load.call(s, u, a.length, t)
                    }).attr("src", f))
                }), o || u.on(t.event, function () {
                    u._lazyload_loadStarted || u.trigger("_lazyload_appear")
                })
            }), o && t._$container.on(t.event, function () {
                i(a, t)
            }), f.on("resize load", function () {
                i(a, t)
            }), e(function () {
                i(a, t)
            }), this
        })
    })
}, , function (e, t) {
    var n;
    n = function () {
        return this
    }();
    try {
        n = n || Function("return this")() || (0, eval)("this")
    } catch (e) {
        "object" == typeof window && (n = window)
    }
    e.exports = n
}, function (e, t, n) {
    "use strict";
    var r = n(15),
        o = n(31);
    e.exports = function () {
        var e = {};
        return e.semLog = function (e) {
            var t = e,
                n = {
                    id: t.attr("data-app-id"),
                    versionId: t.attr("data-app-vid"),
                    name: t.attr("data-app-name"),
                    resourceType: t.attr("data-app-rtype")
                },
                i = t.attr("data-app-categoryid"),
                a = t.attr("data-app-subcategoryid"),
                s = o.getQueryString("utm_source") || o.cookie.get("utm_source"),
                c = (o.getQueryString("utm_source") || o.cookie.get("utm_source")) + "_" + (o.getQueryString("utm_campaign") || o.cookie.get("utm_campaign")) + "_download",
                u = o.getQueryString("utm_term") || o.cookie.get("utm_term"),
                l = $(document.body).attr("data-page"),
                p = navigator.userAgent,
                f = p.match(/AppleWebKit.*Mobile.*/);
            if (("wx_baidu" == s || "wx_sg" == s || "wx_sm" == s) && f) {
                var d = {
                    ch_src: c,
                    appId: n.id,
                    appName: n.name,
                    resourceType: n.resourceType,
                    categoryId: i,
                    subCategoryId: a,
                    packageId: n.versionId,
                    spaceName: u,
                    spaceUrl: l
                };
                r.tolog.webClickLog(c, d, {})
            }
        }, e.haimawanLog = function (e, t, n) {
            r.tolog[e](t, $.extend({
                ch: "rec_card",
                ch_src: "haimawan",
                appId: "",
                appName: "",
                resourceType: "",
                packageId: "",
                spaceId: "",
                spaceName: ""
            }, n), null)
        }, e.gaTracks = function (e) {
            if (e) {
                var t = e.split("-");
                3 == t.length && ga("send", "event", t[0], t[1], t[2])
            }
        }, e.f = {
            _key: "param-f"
        }, e.f.set = function (t) {
            $("body.log-param-f").attr(e.f._key, t)
        }, e.f.get = function () {
            return $("body.log-param-f").attr(e.f._key)
        }, e.f.setBy = function (t, n) {
            t.closest(".log-param-f").attr(e.f._key, n)
        }, e.f.getBy = function (t) {
            return t.closest(".log-param-f").attr(e.f._key)
        }, e
    }()
}, function (e, t, n) {
    "use strict";
    var r, o, i;
    ! function (a) {
        o = [n(3)], r = a, void 0 !== (i = "function" == typeof r ? r.apply(t, o) : r) && (e.exports = i)
    }(function (e) {
        e("a[data-track], div.i-source[data-track]").on("click", function () {
            var t = e(this),
                n = t.data("track");
            if (n) {
                var r = n.split("-");
                3 == r.length && ga("send", "event", r[0], r[1], r[2])
            }
        })
    })
}, function (e, t, n) {
    var r = n(8),
        o = n(74),
        i = n(9);
    e.exports = function () {
        var e = {};
        return e.getConfig = function (t, n) {
            n = n || {};
            var r = e.getStorageInfo("KEY_WEB_USER_REALNAME_CONF", n) || "",
                i = function (e) {
                    t && "function" == typeof t && t(e)
                };
            if (r) return void i(r);
            o.get("/api/proxyNew", {
                urlKey: "op.collection.getListByTimeRange",
                groupId: n.groupId,
                offset: 0,
                count: 100
            }, function (r) {
                var o = "";
                if (r && r.content && r.content.length > 0)
                    for (var a = 0; a < r.content.length; a++)
                        if ("key_web_realname" == r.content[a].name) try {
                            o = JSON.parse(r.content[a].content);
                            var s = n.confTime || 0;
                            e.setStorageInfo("KEY_WEB_USER_REALNAME_CONF", r.content[a].content, s, n), t && "function" == typeof t && i(o)
                        } catch (e) {
                            console.warn("配置项内容不符合规范！" + e)
                        }
            }, function (e) {
                console.error(e)
            })
        }, e.submitInfo = function (e, t, n) {
            var i = {
                ch_src: null,
                ch: null,
                appId: null,
                appName: null,
                resourceType: null,
                packageId: null,
                categoryId: null,
                subCategoryId: null,
                spaceType: null,
                spaceRType: null,
                spaceId: null,
                spaceName: null,
                ppz: null
            };
            r.extend(i, e), o.postSync("/log/activity", i, t, n)
        }, e.setStorageInfo = function (e, t, n, r) {
            if (r && r.isLocalStorage && localStorage && localStorage.setItem) {
                if (void 0 === t) return localStorage.removeItem(e);
                var o = new Date,
                    a = {
                        c: o.getTime(),
                        v: t,
                        e: new Date(o.getTime() + 1e3 * n).getTime()
                    };
                try {
                    localStorage.setItem(e, JSON.stringify(a))
                } catch (e) {
                    console.log("本地存储发生错误！" + e)
                }
            } else i.cookie.set(e, t, {
                seconds: n,
                domain: location.hostname,
                path: "/"
            })
        }, e.getStorageInfo = function (e, t) {
            if (t && t.isLocalStorage && localStorage && localStorage.setItem) {
                var n = null,
                    r = null;
                try {
                    n = JSON.parse(localStorage.getItem(e)) || ""
                } catch (e) {
                    console.warn(e)
                }
                if ("object" == typeof n)
                    if ((new Date).getTime() < n.e) try {
                        r = JSON.parse(n.v)
                    } catch (e) {
                        console.warn(e)
                    } else localStorage.removeItem(e);
                return r
            }
            var o = null,
                a = i.cookie.get(e);
            try {
                o = JSON.parse(a)
            } catch (e) {
                console.warn(e)
            }
            return o || a
        }, e
    }()
}, , , , , , , function (e, t, n) {
    "use strict";
    e.exports = {
        resCode: {
            OK: 2e6,
            QUOTA_FULL: 5090002,
            NOT_TAOBAO: 5050017,
            USER_UNAUTHENTICATED: 5000406,
            TIME_OUT: -1,
            PARAM_REQUIRED: -2
        },
        ucParamStr: "frvecpmintnidnut"
    }
}, function (e, t, n) {
    "use strict";
    var r = n(8),
        o = n(4),
        i = n(6),
        a = n(49),
        s = n(70);
    "object" != typeof sessionStorage && (sessionStorage = {});
    var c = function () {
        var e = {},
            t = o.getQueryString("debug"),
            n = sessionStorage.debug || "prod",
            c = i.isInUCBrowser(),
            u = {
                prod: {
                    host: "https:" === location.protocol ? "https://server-m.pp.cn" : "http://server.m.pp.cn",
                    dhost: "https://server-m.pp.cn"
                },
                dev: {
                    host: "http://androidppproxy.dev.uae.uc.cn",
                    dhost: "http://androidppproxy.dev.uae.uc.cn"
                },
                test: {
                    host: "http://androidppproxy.test2.uae.uc.cn",
                    dhost: "http://androidppproxy.test2.uae.uc.cn"
                },
                testa: {
                    host: "http://androidppproxyprea.test2.uae.uc.cn",
                    dhost: "http://androidppproxyprea.test2.uae.uc.cn"
                },
                testb: {
                    host: "http://androidppproxypreb.test2.uae.uc.cn",
                    dhost: "http://androidppproxypreb.test2.uae.uc.cn"
                },
                testc: {
                    host: "http://androidppproxyprec.test2.uae.uc.cn",
                    dhost: "http://androidppproxyprec.test2.uae.uc.cn"
                },
                local: {
                    host: "",
                    dhost: ""
                }
            },
            l = [];
        for (var p in u) u.hasOwnProperty(p) && l.push(p);
        l.indexOf(t) >= 0 ? n = sessionStorage.debug = t : "" !== t && (n = sessionStorage.debug = "prod");
        var f = u[n].host || u.prod.host,
            d = u[n].dhost || u.prod.dhost;
        return e.ajax = function (e, t, n, i, u, l) {
            if (t = f + t, "object" != typeof i && (i = {
                    async: !0
                }), n || (n = {}), "object" != typeof n) return void("function" == typeof l && l({
                data: {},
                state: {
                    code: a.resCode.PARAM_REQUIRED,
                    msg: "JSON参数错误"
                }
            }));
            c && !n.noUCParamStr && ("get" === e || "GET" === e ? n.uc_param_str = a.ucParamStr : t = o.queryFormat(t, {
                uc_param_str: a.ucParamStr
            })), s.get(function (o) {
                var s = r.extend({}, n, o);
                for (var c in s) !s.hasOwnProperty(c) || null !== s[c] && void 0 !== s[c] && "" !== s[c] || delete s[c];
                r.ajax({
                    type: e,
                    url: t,
                    async: i.async,
                    dataType: "json",
                    data: s,
                    xhrFields: {
                        withCredentials: !0
                    },
                    success: function (e) {
                        e && !e.state && e.code && (e.state = {
                            code: e.code,
                            msg: e.msg
                        }), e && e.state && e.state.code === a.resCode.OK ? "function" == typeof u && u(e.data) : "function" == typeof l && l(e)
                    },
                    error: function (n, r, o) {
                        "function" == typeof l && l({
                            data: {},
                            state: {
                                code: a.resCode.TIME_OUT,
                                msg: "[" + t + "]请求超时"
                            }
                        });
                        try {
                            window.PPTracker && window.PPTracker.log({
                                code: 2,
                                ajaxurl: t,
                                params: JSON.stringify(s),
                                msg: r + "(" + n.readyState + "):" + o,
                                c1: e,
                                c2: n.status
                            })
                        } catch (e) {}
                    }
                })
            })
        }, e.ajaxForm = function (e, t, n, i, u) {
            if (e = f + e, "object" != typeof n && (n = {
                    async: !0,
                    noUCParamStr: !1
                }), t || (t = new FormData), "object" != typeof t) return void("function" == typeof u && u({
                data: {},
                state: {
                    code: a.resCode.PARAM_REQUIRED,
                    msg: "JSON参数错误"
                }
            }));
            c && !n.noUCParamStr && (e = o.queryFormat(e, {
                uc_param_str: a.ucParamStr
            })), s.get(function (o) {
                for (var s in o) null !== o[s] && void 0 !== o[s] && "" !== o[s] && t.append(s, o[s]);
                r.ajax({
                    type: "POST",
                    url: e,
                    async: n.async,
                    contentType: !1,
                    cache: !1,
                    processData: !1,
                    data: t,
                    xhrFields: {
                        withCredentials: !0
                    },
                    success: function (e) {
                        e && !e.state && e.code && (e.state = {
                            code: e.code,
                            msg: e.msg
                        }), e && e.state && e.state.code === a.resCode.OK ? "function" == typeof i && i(e.data) : "function" == typeof u && u(e)
                    },
                    error: function (n, r, o) {
                        "function" == typeof u && u({
                            data: {},
                            state: {
                                code: a.resCode.TIME_OUT,
                                msg: "[" + e + "]请求超时"
                            }
                        });
                        try {
                            window.PPTracker && window.PPTracker.log({
                                code: 2,
                                ajaxurl: e,
                                params: JSON.stringify(t),
                                msg: r + "(" + n.readyState + "):" + o,
                                c1: "post",
                                c2: n.status
                            })
                        } catch (e) {}
                    }
                })
            })
        }, e._dhost = d, e.sendBeacon = function (e, t, n, r) {
            if (e = f + e, t || (t = {}), "object" == typeof t) {
                c && !t.noUCParamStr && (e = o.queryFormat(e, {
                    uc_param_str: a.ucParamStr
                }));
                try {
                    var i = new FormData;
                    for (var s in t) i.append(s, t[s]);
                    window.navigator.sendBeacon(e, i) ? "function" == typeof n && n() : "function" == typeof r && r()
                } catch (e) {
                    "function" == typeof r && r()
                }
            }
        }, e.UCSendBeacon = function (e, t, n, r) {
            e = f + e, t || (t = {}), "object" == typeof t && (c && !t.noUCParamStr && (e = o.queryFormat(e, {
                uc_param_str: a.ucParamStr
            })), ucapi.base.sendBeacon({
                url: e,
                data: t,
                success: function (e) {
                    n && n(e)
                },
                fail: function (e) {
                    r && r(e)
                }
            }))
        }, e
    }();
    e.exports = c
}, function (e, t, n) {
    var r = n(4),
        o = n(42);
    e.exports = function () {
        var e = {};
        return e.isPhone = function (e) {
            var e = parseInt(e) || 0;
            return /^1[3-9]\d{9}$/.test(e)
        }, e.isIdentity = function (e) {
            return /^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X|x)$/.test(e)
        }, e.isMobile = function () {
            return !!navigator.userAgent.match(/AppleWebKit.*Mobile.*/)
        }, e.isRegister = function (t) {
            var n = e.getUserInfo(t);
            return !(!n || !(n.name || n.identity || n.phone))
        }, e.getRandomOf10 = function () {
            return parseInt(10 * Math.random())
        }, e.isCheckConf = function (t) {
            if (!t) return !1;
            if (t.isOpen) {
                if (t.limitCount && e.getUserClickCount() > t.limitCount) return !1;
                if (t.ratio && e.getRandomOf10() >= 10 * t.ratio) return !1;
                var n = r.getQueryString("utm_source") || "";
                if (t.utmSource && n) {
                    for (var o = !1, i = t.utmSource.split(","), a = 0; a < i.length; a++) i[a] == n && (o = !0);
                    if (o) return !1
                }
                return !0
            }
            return !1
        }, e.getLogData = function (t, n, r) {
            return n || (n = e.getUserInfo(r)), t || (t = {}), r || (r = {}), {
                appId: t.id,
                appName: t.name,
                resourceType: t.resourceType,
                packageId: t.versionId || t.packageId,
                categoryId: t.categoryId,
                spaceType: n.identity,
                spaceId: n.phone,
                spaceName: n.name,
                ppz: r.ppz
            }
        }, e.setUserInfo = function (e, t) {
            t = t || {};
            var n = t.userTime || 3600;
            try {
                o.setStorageInfo("KEY_WEB_USER_REALNAME_INFO", JSON.stringify(e), n, t)
            } catch (e) {
                console.warn(e)
            }
        }, e.getUserInfo = function (e) {
            return o.getStorageInfo("KEY_WEB_USER_REALNAME_INFO", e) || {}
        }, e.setUserClickCount = function (t) {
            t = t || {};
            var n = e.getUserClickCount(t),
                r = t.userTime || 3600;
            try {
                o.setStorageInfo("KEY_WEB_USER_REALNAME_CLICK_COUNT", ++n, r, t)
            } catch (e) {
                console.warn(e)
            }
        }, e.getUserClickCount = function (e) {
            return parseInt(o.getStorageInfo("KEY_WEB_USER_REALNAME_CLICK_COUNT", e)) || 0
        }, e.runCallbackFunc = function (t, n, r) {
            var i = e.getUserInfo(r);
            t && "function" == typeof t && (r.isLog && (r.noLog || o.submitInfo(e.getLogData(n, i, r))), t(i))
        }, e
    }()
}, function (e, t, n) {
    "use strict";
    var r = n(78);
    r.ShowBar = function (e, t) {
        var n = {
            actionBar: {
                show: !0,
                title: e,
                rightItem: t
            }
        };
        n = r.jonsParseString(n), r.callAndroidMehod("config", n)
    }, r.copy2Clipboard = function (e) {
        var t = {
            content: e || ""
        };
        t = r.jonsParseString(t), r.callAndroidMehod("copy2Clipboard", t)
    }, r.webNavigation = function (e) {
        var t = {
            action: e || "goBack"
        };
        return t = r.jonsParseString(t), r.callAndroidMehod("webNavigation", t)
    }, r.getClientInfo = function () {
        var e = r.callAndroidMehod("getClientInfo");
        try {
            e = JSON.parse(e)
        } catch (t) {
            e = {}
        }
        return e
    }, r.showToast = function (e) {
        var t = {
            message: e || ""
        };
        t = r.jonsParseString(t), r.callAndroidMehod("showToast", t)
    }, e.exports = r
}, function (e, t) {
    var n = e.exports = {
        version: "2.5.3"
    };
    "number" == typeof __e && (__e = n)
}, function (e, t, n) {
    "use strict";
    var r, o, i, a = n(75),
        s = n(40),
        c = n(13);
    ! function (a) {
        o = [n(3)], r = a, void 0 !== (i = "function" == typeof r ? r.apply(t, o) : r) && (e.exports = i)
    }(function (e) {
        var t, n = document.referrer,
            r = "direct";
        n.match(/baidu/g) ? r = "seo_baidu" : n.match(/wandoujia/g) ? r = "inner_referral" : n.match(/google/g) ? r = "seo_google" : n.match(/bing/g) || n.match(/sogou/g) || n.match(/so/g) || n.match(/haosou/g) || n.match(/sm/g) || n.match(/yahoo/g) ? r = "seo_others" : n && (r = "referral");
        for (var o, i = e(".i-source"), u = "", l = "", p = "", f = "", d = 0; d < i.length; d++)
            if (o = e(i[d]), u = o.data("oe"), p = o.data("type"), l = o.data("feat"), f = o.attr("href"), o && u && l && p) t = u + "_" + r + "_" + l, "wdj" === p ? o.attr("href", "//ucan.25pp.com/Wandoujia_" + u + "_" + r + "_" + l + ".apk") : "bind" === p ? o.attr("href", f + "?source=" + u + "_" + r + "_" + l) : "history" === p && o.attr("href", f + "&source=" + u + "_" + r + "_" + l), n.match(/www.wandoujia.com\/liebao/g) && o.attr("href", f.replace("binding", "download"));
            else {
                var h = f.match(/source=([^&]+)/);
                t = h && h[1]
            }
        e("body").data("waLogSource", t);
        var g = {
            ppz: 5
        };
        a.init(g), i.on("click", function () {
            var t = e(this),
                n = {
                    id: t.attr("data-app-id"),
                    versionId: t.attr("data-app-vid"),
                    name: t.attr("data-app-name"),
                    packageName: t.attr("data-app-pname"),
                    versionCode: t.attr("data-app-vcode"),
                    versionName: t.attr("data-app-vname"),
                    iconUrl: t.attr("data-app-icon"),
                    resourceType: t.attr("data-app-rtype")
                };
            return a.check(n, function () {
                try {
                    var e = c.f.getBy(t),
                        r = {
                            appId: n.id,
                            appName: n.name,
                            resType: n.resourceType
                        },
                        o = {
                            appId: n.id,
                            appName: n.name,
                            resType: n.resourceType,
                            versionId: n.versionCode,
                            module: c.f.get() || ""
                        };
                    e && c.download(e, r, o)
                } catch (e) {
                    console.warn("download log error![in download_source.js]")
                }
                window.location.href = t.attr("href")
            }), !1
        }), e(".dl-btn, .install-btn, .d-btn, .app-install, .comeon-uc, .dir-install-btn, .old-version-list li a, .jr-list, .download-btn").on("click", function () {
            var t = e(this);
            s.semLog(t)
        })
    })
}, function (e, t, n) {
    "use strict";
    var r, o, i;
    ! function (a) {
        o = [n(3)], r = a, void 0 !== (i = "function" == typeof r ? r.apply(t, o) : r) && (e.exports = i)
    }(function (e, t) {
        function n() {
            var e = document;
            return window.pageYOffset || e.documentElement.scrollTop || e.body.scrollTop
        }

        function r() {
            n() > 0 ? o ? (i[0].style.display = "none", clearTimeout(window.gotopTime), window.gotopTime = setTimeout(function () {
                var e = n();
                e > 0 && (i[0].style.top = 400 + e + "px", i[0].style.display = "none")
            }, 300)) : i.fadeIn("300") : i.fadeOut("300")
        }
        var o = !window.XMLHttpRequest,
            i = e("#gotop-btn");
        o && (i[0].style.position = "absolute"), e(window).on("load", r), e(window).scroll(r), i.click(function () {
            e("html,body").animate({
                scrollTop: 0
            }, 1e3);
            var t = e("body").data("page");
            ga("send", "event", t, "go2top")
        })
    })
}, , , function (e, t) {
    function n() {
        throw new Error("setTimeout has not been defined")
    }

    function r() {
        throw new Error("clearTimeout has not been defined")
    }

    function o(e) {
        if (l === setTimeout) return setTimeout(e, 0);
        if ((l === n || !l) && setTimeout) return l = setTimeout, setTimeout(e, 0);
        try {
            return l(e, 0)
        } catch (t) {
            try {
                return l.call(null, e, 0)
            } catch (t) {
                return l.call(this, e, 0)
            }
        }
    }

    function i(e) {
        if (p === clearTimeout) return clearTimeout(e);
        if ((p === r || !p) && clearTimeout) return p = clearTimeout, clearTimeout(e);
        try {
            return p(e)
        } catch (t) {
            try {
                return p.call(null, e)
            } catch (t) {
                return p.call(this, e)
            }
        }
    }

    function a() {
        g && d && (g = !1, d.length ? h = d.concat(h) : m = -1, h.length && s())
    }

    function s() {
        if (!g) {
            var e = o(a);
            g = !0;
            for (var t = h.length; t;) {
                for (d = h, h = []; ++m < t;) d && d[m].run();
                m = -1, t = h.length
            }
            d = null, g = !1, i(e)
        }
    }

    function c(e, t) {
        this.fun = e, this.array = t
    }

    function u() {}
    var l, p, f = e.exports = {};
    ! function () {
        try {
            l = "function" == typeof setTimeout ? setTimeout : n
        } catch (e) {
            l = n
        }
        try {
            p = "function" == typeof clearTimeout ? clearTimeout : r
        } catch (e) {
            p = r
        }
    }();
    var d, h = [],
        g = !1,
        m = -1;
    f.nextTick = function (e) {
        var t = new Array(arguments.length - 1);
        if (arguments.length > 1)
            for (var n = 1; n < arguments.length; n++) t[n - 1] = arguments[n];
        h.push(new c(e, t)), 1 !== h.length || g || o(s)
    }, c.prototype.run = function () {
        this.fun.apply(null, this.array)
    }, f.title = "browser", f.browser = !0, f.env = {}, f.argv = [], f.version = "", f.versions = {}, f.on = u, f.addListener = u, f.once = u, f.off = u, f.removeListener = u, f.removeAllListeners = u, f.emit = u, f.prependListener = u, f.prependOnceListener = u, f.listeners = function (e) {
        return []
    }, f.binding = function (e) {
        throw new Error("process.binding is not supported")
    }, f.cwd = function () {
        return "/"
    }, f.chdir = function (e) {
        throw new Error("process.chdir is not supported")
    }, f.umask = function () {
        return 0
    }
}, , , , , function (e, t, n) {
    "use strict";
    var r, o, i = n(3);
    i.uaMatch = function (e) {
        e = e.toLowerCase();
        var t = /(chrome)[ \/]([\w.]+)/.exec(e) || /(webkit)[ \/]([\w.]+)/.exec(e) || /(opera)(?:.*version|)[ \/]([\w.]+)/.exec(e) || /(msie) ([\w.]+)/.exec(e) || e.indexOf("compatible") < 0 && /(mozilla)(?:.*? rv:([\w.]+)|)/.exec(e) || [];
        return {
            browser: t[1] || "",
            version: t[2] || "0"
        }
    }, i.browser || (r = i.uaMatch(navigator.userAgent), o = {}, r.browser && (o[r.browser] = !0, o.version = r.version), o.chrome ? o.webkit = !0 : o.webkit && (o.safari = !0), i.browser = o)
}, , , , , , function (e, t, n) {
    "use strict";
    var r = n(36),
        o = n(6);
    r.downloadApp = function (e, t) {
        r.goto(r._dhost + "/download/apk?appId=" + e, t)
    }, r.getAppDUrl = function (e, t, n) {
        r.get("/download/url", {
            appId: e
        }, t, n)
    }, r.getAppDUrlAndLog = function (e, t, n, o) {
        r.get("/download/url/dot?appId=" + e + "&apprd=" + e, t, n, o)
    }, r.downloadPP = function (e) {
        !e && (e = "PP_27"), r.goto(r._dhost + "/pp/apk", {
            channel: e
        })
    }, r.getPPUrl = function (e, t, n) {
        !e && (e = "PP_27"), r.get("/pp/url", {
            channel: e
        }, function (e) {
            e && e.url ? t(e.url) : n({
                state: {
                    msg: "empty"
                }
            })
        }, function (e) {
            e && e.code === r._resCode.OK && e.data ? t(e.data) : n(e)
        })
    }, r.getAppDetailAndLog = function (e, t, n, o) {
        "object" != typeof t && (t = {}), !t.ch_src && (t.ch_src = "pp"), r.get("/StoreDetailController/detail?appId=" + e, t, n, o)
    }, r.getAppScore = function (e, t, n, o) {
        r.get("/StoreDetailController/score", {
            appId: e,
            versionId: t
        }, n, o)
    }, r.getAppCommentHot = function (e, t, n, o) {
        r.get("/StoreDetailController/comment", {
            appId: e,
            page: t
        }, n, o)
    }, r.listAppRecs = function (e, t, n) {
        r.get("/StoreDetailController/recs", {
            q: e
        }, t, n)
    }, r.listAppInLabel = function (e, t, n) {
        r.get("/StoreDetailController/subcates", {
            appId: e
        }, t, n)
    }, r.listSpecialsByAppId = function (e, t, n, o) {
        r.get("/StoreDetailController/specials", {
            appId: e,
            specialNum: t
        }, n, o)
    }, r.listAppsBySpecial = function (e, t, n) {
        r.get("/api/proxyNew", {
            urlKey: "op.special.template.listApps",
            specialId: parseInt(e),
            svr: window.StatLoggerInterface ? 1 : 2
        }, t, n)
    }, r.listSpecialsAll = function (e, t, n, o) {
        e = parseInt(e) || 0, t = parseInt(t) || 15, r.get("/api/proxyNew", {
            urlKey: "op.special.template.getAllShowList",
            offset: e,
            count: t,
            svr: window.StatLoggerInterface ? 1 : 2
        }, n, o)
    }, r.getDetail = function (e, t, n) {
        var o = {
            urlKey: "resource.app.getDetail",
            appId: e
        };
        r.get("/api/proxy", o, t, n)
    }, r.listSpecialAndroid = function (e, t, n) {
        var o = {
            urlKey: "op.special.template.listApps",
            specialId: e,
            osVersion: 19
        };
        r.get("/api/proxyNew", o, t, n)
    }, r.listSpecialIOS = function (e, t, n) {
        var i = navigator.userAgent,
            a = /ipad/i.test(i) ? 2 : 1,
            s = 1;
        s = "ppzb" === o.clientType() ? 1 === a ? 2 : 8 : 1 === a ? 1 : 4;
        var c = {
            special_id: e,
            platform: s,
            device: a
        };
        r.get("/lucky/ios.special.get", c, t, n)
    }, r.listSpecialWdj = function (e, t, n) {
        var o = {
            special_id: e
        };
        r.get("/lucky/wdj.special.get", o, t, n)
    }, r.listAppFirst = function (e, t, n, o, i, a) {
        var s = {
            urlKey: "op.activiy.simpleActiviy.getList",
            type: e,
            offset: t,
            count: n,
            resourceType: o
        };
        r.post("/api/proxyNew", s, i, a)
    }, r.listMutiGameNews = function (e, t, n) {
        var o = {
            urlKey: "resource.app.getMutiGameNewsList",
            appIds: e
        };
        r.post("/api/proxyNew", o, t, n)
    }, r.listGuessLike = function (e, t, n, o) {
        var i = {
            urlKey: "op.rec.personality.listApps",
            offset: e,
            count: t
        };
        r.post("/api/proxyNew", i, n, o)
    }, r.listNewGame = function (e, t, n, o, i) {
        var a = {
            urlKey: "resource.game.getBetaList",
            dayBefore: e,
            dayAfter: t,
            count: n
        };
        r.post("/api/proxyNew", a, o, i)
    }, r.ucAppsBigData = function (e, t, n) {
        var o = {
            ch_src: e.ch_src || "pp_uc_smweb_rec",
            ch: e.ch || "default",
            arrange: e.arrange || 2,
            dataRoute: e.channel || 2,
            offset: e.offset || 0,
            count: e.count || 100
        };
        r.get("/uc/rec", o, t, n)
    }, e.exports = r
}, function (e, t, n) {
    "use strict";
    var r = n(6),
        o = n(7),
        i = n(52);
    n(85).polyfill(), e.exports = function () {
        var e = {},
            t = {},
            a = !1;
        return function () {
            if (r.isInAndroidClient() || r.isInPPPlugin()) window.StatLoggerInterface && "function" == typeof window.StatLoggerInterface.getSdkVersion ? t.osVersion = window.StatLoggerInterface.getSdkVersion() : t.osVersion = 100, o.getClientInfo("onGetClientInfoAtPPProxy"), window.onGetClientInfoAtPPProxy = function (e) {
                t.ai = e.key_data.aid, t.aid = e.key_data.aid, t.puid = e.key_data.puid, t.uuid = e.key_data.uuid, t.ut = e.key_data.utdid, t.utdid = e.key_data.utdid, t.versionCode = e.key_data.versionCode, t.uc_version_code = e.key_data.versionCode, t.ch_ver = e.key_data.client_ch || e.key_data.ch, t.productId = e.key_data.productId, a = !0
            };
            else if (r.isInIOSClient()) n.e(0).then(function () {
                n(142).getIosIdString(function (e, n) {
                    t = {}, n ? t.iosIdString = e : t.iosIdOldString = e, a = !0
                })
            }.bind(null, n)).catch(n.oe);
            else if (r.isInWdjClient()) t = {
                udid: window.campaignPlugin.getUDID(),
                wuid: window.campaignPlugin.getUID()
            }, a = !0;
            else if (i.isInShuqiClient()) {
                var e = i.getClientInfo(),
                    s = {
                        sn: e.sn,
                        userId: e.uid
                    },
                    c = "";
                try {
                    c = JSON.stringify(s)
                } catch (e) {
                    c = ""
                }
                t = {
                    shuqiStr: c,
                    imei: e.imei,
                    utdid: e.utdid
                }, a = !0
            } else t = {
                osVersion: 100
            }, a = !0
        }(), e.get = function (e) {
            var n = 20;
            if (a) e(t);
            else var r = window.setInterval(function () {
                (a || n-- < 0) && (window.clearInterval(r), e(t))
            }, 50)
        }, e
    }()
}, function (e, t, n) {
    "use strict";
    var r = n(36);
    r.getAds = function (e, t, n, o, i) {
        var a = {
            urlKey: "op.ad.getAds",
            spaceId: e,
            offset: t,
            count: n
        };
        r.post("/api/proxyNew", a, o, i)
    }, e.exports = r
}, function (e, t, n) {
    "use strict";

    function r(e, t, n, r) {
        void 0 !== window.navigator.sendBeacon ? i.sendBeacon(e, t, n, r) : a.isInUCBrowser() && "undefined" != typeof ucapi && ucapi.base && ucapi.base.sendBeacon ? i.UCSendBeacon(e, t, n, r) : o.postSync(e, t, n, r)
    }
    var o = n(36),
        i = n(50),
        a = n(6);
    o.log = {
        access: function (e, t, n) {
            o.post("/log/access", e, t, n)
        },
        click: function (e, t, n) {
            r("/log/click", e, t, n)
        },
        search: function (e, t, n) {
            r("/log/search", e, t, n)
        },
        activity: function (e, t, n) {
            o.post("/log/activity", e, t, n)
        }
    }, e.exports = o
}, function (e, t, n) {
    "use strict";
    var r = n(4),
        o = n(36),
        i = n(6),
        a = n(52),
        s = i.clientType(),
        c = r.getQueryString("p"),
        u = 1e3,
        l = "pp";
    switch (c) {
        case "p":
            l = "pp", u = 1e3;
            break;
        case "t":
            l = "tb", u = 1e3;
            break;
        case "z":
            l = "zb", u = 2e3;
            break;
        case "y":
            l = "yy", u = 2e3;
            break;
        case "w":
            l = "wdj", u = 3e3;
            break;
        case "sq":
            l = "sq", u = 4e3;
            break;
        default:
            l = "pp", u = 1e3
    }
    i.isInAndroidClient() || i.isInPPPlugin() ? (u = 1e3, l = "pp_aty_taozhushou" === r.getQueryString("ch_src") ? "tb" : "pp") : i.isInIOSClient() ? (u = 2e3, l = "ppzb" === i.clientType() ? "zb" : "yy") : i.isInWdjClient() ? (l = "wdj", u = 3e3) : a.isInShuqiClient() && (l = "sq", u = 4e3), o.Lucky = {
        _addScoreType: {
            app: 0,
            checkin: 1,
            share: 2,
            firstApp: 3
        },
        _urlParam: {
            userIdType: "ppzb" === s ? 4 : "ppyy" === s ? 2 : ""
        },
        getActivityList: function (e, t, n) {
            e.offset = e.offset || 0, e.count = e.count || 20, e.channel = l, e.source = u, o.get("/lucky/op.lucky.getActivityList", e, t, n)
        },
        activity: function (e, t, n) {
            var r = {
                activityId: e,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.activity", r, t, n)
        },
        getAppState: function (e, t, n, r) {
            var i = {
                activityId: e,
                appIds: t,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.getAppState", i, n, r)
        },
        setAppDownload: function (e, t, n, r) {
            var i = {
                activityId: e,
                appId: t,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.setAppDownload", i, n, r)
        },
        getRoll: function (e, t, n, r, i) {
            void 0 === r && (r = {}), void 0 === i && (i = !1);
            var a = {
                date: r.date || null,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            i ? a.activityIds = e : a.activityId = e, o.get("/lucky/op.lucky.roll", a, t, n)
        },
        prizeList: function (e, t, n, r, i) {
            var a = {
                userToken: t.userToken || null,
                userIdType: this._urlParam.userIdType || t.userIdType || 0,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            i ? a.activityIds = e : a.activityId = e, o.get("/lucky/op.lucky.userPrizeInfo", a, n, r)
        },
        updatePrizeInfo: function (e, t, n, r, i, a) {
            var s = {
                activityId: e,
                recordId: t,
                userData: n,
                userToken: r.userToken,
                userIdType: this._urlParam.userIdType || r.userIdType || 0,
                efUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.updatePrizeInfo", s, i, a)
        },
        getUserPrizes: function (e, t, n) {
            e.offset = e.offset || 0, e.count = e.count || 20;
            var r = {
                offset: e.offset,
                count: e.count,
                userToken: e.userToken,
                userIdType: this._urlParam.userIdType || e.userIdType || 0,
                efUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.getUserPrizes", r, t, n)
        },
        draw: function (e, t, n, r) {
            var i = {
                activityId: e,
                appId: t.appId || null,
                userToken: t.userToken || null,
                userIdType: this._urlParam.userIdType || t.userIdType || 0,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.draw", i, n, r)
        },
        drawAll: function (e, t, n, r) {
            var i = {
                activityId: e,
                userToken: t.userToken || null,
                userIdType: this._urlParam.userIdType || t.userIdType || 0,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.drawAll", i, n, r)
        },
        drawFromMulPrizes: function (e, t, n, r, i) {
            var a = {
                appId: e,
                activityId: t,
                userToken: n.userToken || null,
                userIdType: this._urlParam.userIdType || n.userIdType || 0,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.drawFromMulPrizes", a, r, i)
        },
        drawByAppId: function (e, t, n, r, i) {
            var a = {
                appId: e,
                activityId: t,
                userToken: n.userToken || null,
                userIdType: this._urlParam.userIdType || n.userIdType || 0,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.drawByAppId", a, r, i)
        },
        addScore: function (e, t, n, r, i) {
            var a = {
                activityId: e,
                type: t || 0,
                appId: n.appId || null,
                appString: n.appString || null,
                userToken: n.userToken || null,
                userIdType: this._urlParam.userIdType || n.userIdType || 0,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.addScore", a, r, i)
        },
        getUserInfo: function (e, t, n, r) {
            var i = {
                activityId: e,
                userToken: t.userToken || null,
                userIdType: this._urlParam.userIdType || t.userIdType || 0,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.userInfo", i, n, r)
        },
        getCashDetail: function (e, t, n, r) {
            var i = {
                activityId: e,
                userToken: t.userToken || null,
                userIdType: this._urlParam.userIdType || t.userIdType || 0,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.cashDetail", i, n, r)
        },
        getMoney: function (e, t, n, r, i) {
            var a = {
                activityId: e,
                userToken: t,
                userIdType: this._urlParam.userIdType || n.userIdType || 0,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.updatePrizeSendStatus", a, r, i)
        },
        reSendPrize: function (e, t, n, r) {
            var i = {
                activityId: e,
                userToken: t.userToken || null,
                userIdType: this._urlParam.userIdType || t.userIdType || 0,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/op.lucky.reSendPrize", i, n, r)
        },
        getReminderAdd: function (e, t, n, r, i) {
            var a = {
                urlKey: "behavior.reminder.add",
                objectId: e,
                objectType: t,
                remindTime: n,
                channel: l,
                source: u
            };
            o.post("/api/proxyNew", a, r, i)
        },
        isTbId: function (e, t, n) {
            var r = {
                userToken: e,
                refUrl: window.location.href,
                channel: l,
                source: u
            };
            o.get("/lucky/behavior.auth.isTbId", r, t, n)
        },
        getChannel: function () {
            return l
        },
        getSource: function () {
            return u
        }
    }, e.exports = o
}, function (e, t, n) {
    "use strict";
    n(71), n(73), n(72), n(69), e.exports = n(36)
}, function (e, t, n) {
    "use strict";
    var r = n(8),
        o = n(42),
        i = n(51),
        a = n(76),
        s = function () {
            var e = {},
                t = {
                    start: 1,
                    ppz: 0,
                    confTime: 1800,
                    userTime: 15552e3,
                    groupId: 10,
                    isLog: 1,
                    isLocalStorage: 0
                },
                n = "";
            return e.init = function (e) {
                r.extend(t, e), !i.isRegister(t) && t.start && o.getConfig(function (e) {
                    n = e
                }, t)
            }, e.check = function (e, o) {
                var s = r.extend({}, t),
                    c = 1;
                return e && e.appOpExtInfo && e.appOpExtInfo.misc && (c = 1 == e.appOpExtInfo.misc.requireID ? 1 : 0), e && 0 == e.requireId && (c = 0), t.start && e && 1 == e.resourceType && c ? i.isRegister(s) ? (i.runCallbackFunc(o, e, s), !0) : i.isCheckConf(n) ? (s.showType = n && n.showType ? 1 : 0, a.render(o, e, s), !1) : (s.noLog = 1, i.runCallbackFunc(o, e, s), !0) : (s.noLog = 1, i.runCallbackFunc(o, e, s), !0)
            }, e.getUserInfo = function () {
                return i.getUserInfo()
            }, e
        }();
    window.Realname = s, void 0 === window.realname && (window.Realname = s), e.exports = s
}, function (e, t, n) {
    n(86);
    var r = n(8),
        o = n(42),
        i = n(51),
        a = n(77);
    e.exports = function () {
        function e(e, t, a, s) {
            var c = e.find(".popup-realname-submit");
            e.on("click", function (n) {
                var n = n || window.event,
                    c = n.target || n.srcElement,
                    u = r(c);
                if (u.hasClass("popup-realname-overlay") && !u.hasClass("pc") || u.hasClass("popup-realname-close")) e.remove(), 0 == s.showType && (s.noLog = 1, i.runCallbackFunc(t, a, s));
                else if (u.hasClass("popup-realname-submit")) {
                    if (e.find(".popup-realname-pc-msg").hide(), u.hasClass("disable")) return void(s.pc && e.find(".popup-realname-pc-msg").show());
                    var l = {};
                    e.find("input").each(function () {
                        l[this.name] = this.value
                    });
                    var p = i.getLogData(a, l, s);
                    u.addClass("disable"), o.submitInfo(p, function (t) {
                        u.removeClass("disable"), e.find(".popup-realname-success").show(), i.setUserInfo(l, s)
                    }, function (e) {
                        u.removeClass("disable")
                    })
                } else u.hasClass("popup-realname-sure") && (e.remove(), s.noLog = 1, i.runCallbackFunc(t, a, s))
            });
            var u = function (t, o) {
                var a = !0,
                    s = t ? r(t).attr("data-type") : "";
                s && (r(t).siblings(n).removeClass("active"), "name" != s || t.value || (a = !1), "identity" != s || t.value && i.isIdentity(t.value) || (a = !1), "phone" != s || t.value && i.isPhone(t.value) || (a = !1), a || "blur" != o || r(t).siblings(n).addClass("active")), e.find("input").each(function () {
                    this.value || (a = !1), r(this).siblings(n + ".active").length > 0 && (a = !1)
                }), a ? c.removeClass("disable") : c.addClass("disable")
            };
            e.find("input").on({
                keyup: function () {
                    u(this, "keyup")
                },
                blur: function () {
                    u(this, "blur")
                }
            })
        }
        var t = {},
            n = ".popup-realname-msg";
        return t.render = function (t, n, o) {
            n || (n = {}), o || (o = {}), i.isMobile() || (o.pc = 1);
            var s = r(a.render(o));
            s.appendTo(r("body")), i.setUserClickCount(o), window.setTimeout(function () {
                e(s, t, n, o)
            }, 50)
        }, t
    }()
}, function (e, t) {
    e.exports = function () {
        var e = {};
        return e.render = function (e) {
            var t = "";
            return t += '<div class="popup-realname-overlay ' + (e.pc ? "pc" : "") + '"><div class="popup-realname-wrap"><div class="popup-realname-reg"><div class="popup-realname-inner"><h3 class="popup-realname-tit">用户实名注册<span class="popup-realname-close">×<span></h3><div class="popup-realname-con"><div class="popup-realname-txt"> <p>尊敬的用户：</p> <p class="popup-realname-c">根据国家规定，游戏用户需进行实名注册。信息仅用于实名注册且绝对保密。实名注册目的是为保护用户权益。</p> </div><div class="popup-realname-form"><p><label for="iptName">姓名：</label><input id="iptName" name="name" type="text" placeholder="输入姓名" data-type="name">' + (e.pc ? "" : '<span class="popup-realname-msg">请输入正确信息</span>') + '</p><p><label for="iptIdentity">身份证号：</label><input id="iptIdentity" name="identity" type="text" placeholder="输入身份证号码" data-type="identity">' + (e.pc ? "" : '<span class="popup-realname-msg">请输入正确信息</span>') + '</p><p><label for="iptPhone">手机号：</label><input id="iptPhone" name="phone" type="text" placeholder="输入手机号码" data-type="phone">' + (e.pc ? "" : '<span class="popup-realname-msg">请输入正确信息</span>') + "</p>" + (e.pc ? '<p class="popup-realname-pc-msg-wrap"><span class="popup-realname-pc-msg">您的身份证号或手机号输入错误，请重新输入再注册。</span></p>' : "") + '</div"></div></div></div><div class="popup-realname-submit disable ' + (e.pc ? "pc" : "") + '">确认提交</div></div><div class="popup-realname-success"><div class="popup-realname-inner">' + (e.pc ? '<h3 class="popup-realname-tit">用户实名注册<span class="popup-realname-close">×<span></h3>' : "") + '<div class="popup-realname-con"><div class="popup-realname-icon"><img src="//img.ucdl.pp.uc.cn/upload_files/pp_web_realname/ico_pp' + (e.pc ? "_pc" : "") + '_success.png"></div>' + (e.pc ? '<div class="popup-realname-tips">注册成功</div>' : "") + '</div></div><div class="popup-realname-sure ' + (e.pc ? "pc" : "") + '">我知道了</div></div></div></div>'
        }, e
    }()
}, function (e, t, n) {
    "use strict";
    (function (t) {
        var n = function (e) {
            var t = {},
                r = window.shuqiAppWall;
            return t.isInShuqiClient = function () {
                return void 0 !== r
            }, t.callAndroidMehod = function (e, t) {
                return r ? "string" == typeof e && r[e] ? "string" == typeof t ? r[e](t) : r[e]() : {} : void console.log("call method " + e + " but ShuqiClient not exist")
            }, t.jonsParseString = function (e) {
                try {
                    e = JSON.stringify(e)
                } catch (e) {}
                return e
            }, e.Sqca = n, void 0 === e.sqca && (e.sqca = n), t
        }("undefined" != typeof window ? window : t);
        e.exports = n
    }).call(t, n(39))
}, , , , , , , function (e, t, n) {
    (function (t, n) {
        ! function (t, n) {
            e.exports = n()
        }(0, function () {
            "use strict";

            function e(e) {
                var t = typeof e;
                return null !== e && ("object" === t || "function" === t)
            }

            function r(e) {
                return "function" == typeof e
            }

            function o(e) {
                W = e
            }

            function i(e) {
                F = e
            }

            function a() {
                return void 0 !== H ? function () {
                    H(c)
                } : s()
            }

            function s() {
                var e = setTimeout;
                return function () {
                    return e(c, 1)
                }
            }

            function c() {
                for (var e = 0; e < q; e += 2) {
                    (0, V[e])(V[e + 1]), V[e] = void 0, V[e + 1] = void 0
                }
                q = 0
            }

            function u(e, t) {
                var n = this,
                    r = new this.constructor(p);
                void 0 === r[J] && P(r);
                var o = n._state;
                if (o) {
                    var i = arguments[o - 1];
                    F(function () {
                        return S(o, r, i, n._result)
                    })
                } else T(n, r, e, t);
                return r
            }

            function l(e) {
                var t = this;
                if (e && "object" == typeof e && e.constructor === t) return e;
                var n = new t(p);
                return w(n, e), n
            }

            function p() {}

            function f() {
                return new TypeError("You cannot resolve a promise with itself")
            }

            function d() {
                return new TypeError("A promises callback cannot return that same promise.")
            }

            function h(e) {
                try {
                    return e.then
                } catch (e) {
                    return ee.error = e, ee
                }
            }

            function g(e, t, n, r) {
                try {
                    e.call(t, n, r)
                } catch (e) {
                    return e
                }
            }

            function m(e, t, n) {
                F(function (e) {
                    var r = !1,
                        o = g(n, t, function (n) {
                            r || (r = !0, t !== n ? w(e, n) : x(e, n))
                        }, function (t) {
                            r || (r = !0, _(e, t))
                        }, "Settle: " + (e._label || " unknown promise"));
                    !r && o && (r = !0, _(e, o))
                }, e)
            }

            function y(e, t) {
                t._state === Q ? x(e, t._result) : t._state === Z ? _(e, t._result) : T(t, void 0, function (t) {
                    return w(e, t)
                }, function (t) {
                    return _(e, t)
                })
            }

            function v(e, t, n) {
                t.constructor === e.constructor && n === u && t.constructor.resolve === l ? y(e, t) : n === ee ? (_(e, ee.error), ee.error = null) : void 0 === n ? x(e, t) : r(n) ? m(e, t, n) : x(e, t)
            }

            function w(t, n) {
                t === n ? _(t, f()) : e(n) ? v(t, n, h(n)) : x(t, n)
            }

            function b(e) {
                e._onerror && e._onerror(e._result), A(e)
            }

            function x(e, t) {
                e._state === X && (e._result = t, e._state = Q, 0 !== e._subscribers.length && F(A, e))
            }

            function _(e, t) {
                e._state === X && (e._state = Z, e._result = t, F(b, e))
            }

            function T(e, t, n, r) {
                var o = e._subscribers,
                    i = o.length;
                e._onerror = null, o[i] = t, o[i + Q] = n, o[i + Z] = r, 0 === i && e._state && F(A, e)
            }

            function A(e) {
                var t = e._subscribers,
                    n = e._state;
                if (0 !== t.length) {
                    for (var r = void 0, o = void 0, i = e._result, a = 0; a < t.length; a += 3) r = t[a], o = t[a + n], r ? S(n, r, o, i) : o(i);
                    e._subscribers.length = 0
                }
            }

            function k(e, t) {
                try {
                    return e(t)
                } catch (e) {
                    return ee.error = e, ee
                }
            }

            function S(e, t, n, o) {
                var i = r(n),
                    a = void 0,
                    s = void 0,
                    c = void 0,
                    u = void 0;
                if (i) {
                    if (a = k(n, o), a === ee ? (u = !0, s = a.error, a.error = null) : c = !0, t === a) return void _(t, d())
                } else a = o, c = !0;
                t._state !== X || (i && c ? w(t, a) : u ? _(t, s) : e === Q ? x(t, a) : e === Z && _(t, a))
            }

            function I(e, t) {
                try {
                    t(function (t) {
                        w(e, t)
                    }, function (t) {
                        _(e, t)
                    })
                } catch (t) {
                    _(e, t)
                }
            }

            function C() {
                return te++
            }

            function P(e) {
                e[J] = te++, e._state = void 0, e._result = void 0, e._subscribers = []
            }

            function E() {
                return new Error("Array Methods must be provided an Array")
            }

            function O(e) {
                return new ne(this, e).promise
            }

            function N(e) {
                var t = this;
                return new t(M(e) ? function (n, r) {
                    for (var o = e.length, i = 0; i < o; i++) t.resolve(e[i]).then(n, r)
                } : function (e, t) {
                    return t(new TypeError("You must pass an array to race."))
                })
            }

            function j(e) {
                var t = this,
                    n = new t(p);
                return _(n, e), n
            }

            function D() {
                throw new TypeError("You must pass a resolver function as the first argument to the promise constructor")
            }

            function L() {
                throw new TypeError("Failed to construct 'Promise': Please use the 'new' operator, this object constructor cannot be called as a function.")
            }

            function U() {
                var e = void 0;
                if (void 0 !== n) e = n;
                else if ("undefined" != typeof self) e = self;
                else try {
                    e = Function("return this")()
                } catch (e) {
                    throw new Error("polyfill failed because global object is unavailable in this environment")
                }
                var t = e.Promise;
                if (t) {
                    var r = null;
                    try {
                        r = Object.prototype.toString.call(t.resolve())
                    } catch (e) {}
                    if ("[object Promise]" === r && !t.cast) return
                }
                e.Promise = re
            }
            var R = void 0;
            R = Array.isArray ? Array.isArray : function (e) {
                return "[object Array]" === Object.prototype.toString.call(e)
            };
            var M = R,
                q = 0,
                H = void 0,
                W = void 0,
                F = function (e, t) {
                    V[q] = e, V[q + 1] = t, 2 === (q += 2) && (W ? W(c) : Y())
                },
                B = "undefined" != typeof window ? window : void 0,
                z = B || {},
                $ = z.MutationObserver || z.WebKitMutationObserver,
                G = "undefined" == typeof self && void 0 !== t && "[object process]" === {}.toString.call(t),
                K = "undefined" != typeof Uint8ClampedArray && "undefined" != typeof importScripts && "undefined" != typeof MessageChannel,
                V = new Array(1e3),
                Y = void 0;
            Y = G ? function () {
                return function () {
                    return t.nextTick(c)
                }
            }() : $ ? function () {
                var e = 0,
                    t = new $(c),
                    n = document.createTextNode("");
                return t.observe(n, {
                        characterData: !0
                    }),
                    function () {
                        n.data = e = ++e % 2
                    }
            }() : K ? function () {
                var e = new MessageChannel;
                return e.port1.onmessage = c,
                    function () {
                        return e.port2.postMessage(0)
                    }
            }() : void 0 === B ? function () {
                try {
                    var e = Function("return this")().require("vertx");
                    return H = e.runOnLoop || e.runOnContext, a()
                } catch (e) {
                    return s()
                }
            }() : s();
            var J = Math.random().toString(36).substring(2),
                X = void 0,
                Q = 1,
                Z = 2,
                ee = {
                    error: null
                },
                te = 0,
                ne = function () {
                    function e(e, t) {
                        this._instanceConstructor = e, this.promise = new e(p), this.promise[J] || P(this.promise), M(t) ? (this.length = t.length, this._remaining = t.length, this._result = new Array(this.length), 0 === this.length ? x(this.promise, this._result) : (this.length = this.length || 0, this._enumerate(t), 0 === this._remaining && x(this.promise, this._result))) : _(this.promise, E())
                    }
                    return e.prototype._enumerate = function (e) {
                        for (var t = 0; this._state === X && t < e.length; t++) this._eachEntry(e[t], t)
                    }, e.prototype._eachEntry = function (e, t) {
                        var n = this._instanceConstructor,
                            r = n.resolve;
                        if (r === l) {
                            var o = h(e);
                            if (o === u && e._state !== X) this._settledAt(e._state, t, e._result);
                            else if ("function" != typeof o) this._remaining--, this._result[t] = e;
                            else if (n === re) {
                                var i = new n(p);
                                v(i, e, o), this._willSettleAt(i, t)
                            } else this._willSettleAt(new n(function (t) {
                                return t(e)
                            }), t)
                        } else this._willSettleAt(r(e), t)
                    }, e.prototype._settledAt = function (e, t, n) {
                        var r = this.promise;
                        r._state === X && (this._remaining--, e === Z ? _(r, n) : this._result[t] = n), 0 === this._remaining && x(r, this._result)
                    }, e.prototype._willSettleAt = function (e, t) {
                        var n = this;
                        T(e, void 0, function (e) {
                            return n._settledAt(Q, t, e)
                        }, function (e) {
                            return n._settledAt(Z, t, e)
                        })
                    }, e
                }(),
                re = function () {
                    function e(t) {
                        this[J] = C(), this._result = this._state = void 0, this._subscribers = [], p !== t && ("function" != typeof t && D(), this instanceof e ? I(this, t) : L())
                    }
                    return e.prototype.catch = function (e) {
                        return this.then(null, e)
                    }, e.prototype.finally = function (e) {
                        var t = this,
                            n = t.constructor;
                        return t.then(function (t) {
                            return n.resolve(e()).then(function () {
                                return t
                            })
                        }, function (t) {
                            return n.resolve(e()).then(function () {
                                throw t
                            })
                        })
                    }, e
                }();
            return re.prototype.then = u, re.all = O, re.race = N, re.resolve = l, re.reject = j, re._setScheduler = o, re._setAsap = i, re._asap = F, re.polyfill = U, re.Promise = re, re
        })
    }).call(t, n(58), n(39))
}, function (e, t) {}, , , , , , , function (e, t, n) {
    "use strict";
    var r, o, i;
    ! function (a) {
        o = [n(3)], r = a, void 0 !== (i = "function" == typeof r ? r.apply(t, o) : r) && (e.exports = i)
    }(function (e) {
        function t(e) {
            var t = new RegExp("(^|&)" + e + "=([^&]*)(&|$)"),
                n = location.search.substr(1).match(t);
            return n ? unescape(n[2]) : null
        }
        var n, r, o = navigator.plugins && navigator.plugins["Wandoujia Plugin"] || e.cookie("last_launch"),
            i = 0,
            a = (e(".push-btn"), e(".install-btn")),
            s = e("body").data("page"),
            c = "",
            u = "",
            l = "",
            p = (e.cookie("__utmz"), ["pc_baidu", "pc_sg", "pc_adwords", "pc_tx", "pc_rr"]),
            f = "http://pro.25pp.com/download/25pp_wdjgw/8009";
        window.wdInstalled = o, l = e.cookie("utm_campaign"), u = e.cookie("utm_source"), n = t("utm_source") || u, r = t("utm_campaign") || l, e.inArray(n, p) > -1 && (c = n + "_" + r, "detail" == s && (! function (t, n) {
            e.fn.popup(), e.fn.setPopup({
                content: function () {
                    return t || e("#install-popup").val()
                },
                closeBtn: e(".popup-close"),
                maskOpacity: .6,
                popopClass: "green-popup",
                onOpen: function () {
                    "a19" === c && e("#adwords-cnt").show(), 1 == i && "detail" == s && e("#popup-install").attr("data-track", "detail-download-" + c), e("#popup-install").attr("href", f)
                }
            }), e.fn.showPopup()
        }(), e("#j-install-wdj").attr("href", f + c + ".exe").attr("data-track", "detail-download-" + r)), i = 1), window.pcSem = i, window.pcSource = c, e.cookie("wdj_auth") || (o || u && "shunwang" === u) && e.each(a, function (t, r) {
            var o = e(r),
                i = o.data("pn"),
                a = o.data("name"),
                u = s + "-wdjp-" + i,
                l = o.attr("href");
            e.inArray(n, p) > -1 && (u = s + "-wdjp-" + c), o.attr("href", "wandoujia://type=apk&wdj=1&name=" + a + "&url=" + l + "?pos=www/" + s + "==").removeAttr("download").attr("data-track", u)
        })
    })
}, function (e, t, n) {
    "use strict";
    var r, o, i, a = n(119),
        s = function (e) {
            return e && e.__esModule ? e : {
                default: e
            }
        }(a);
    ! function (a) {
        o = [n(3)], r = a, void 0 !== (i = "function" == typeof r ? r.apply(t, o) : r) && (e.exports = i)
    }(function (e) {
        function t(e) {
            return e
        }

        function n(e) {
            return decodeURIComponent(e.replace(o, " "))
        }

        function r(e) {
            0 === e.indexOf('"') && (e = e.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, "\\"));
            try {
                return i.json ? JSON.parse(e) : e
            } catch (e) {
                console.log()
            }
        }
        var o = /\+/g,
            i = e.cookie = function (o, a, c) {
                if (i.raw = !0, void 0 !== a) {
                    if (c = e.extend({}, i.defaults, c), "number" == typeof c.expires) {
                        var u = c.expires,
                            l = c.expires = new Date;
                        l.setDate(l.getDate() + u)
                    }
                    return a = i.json ? (0, s.default)(a) : String(a), document.cookie = [i.raw ? o : encodeURIComponent(o), "=", i.raw ? a : encodeURIComponent(a), c.expires ? "; expires=" + c.expires.toUTCString() : "", c.path ? "; path=" + c.path : "", c.domain ? "; domain=" + c.domain : "", c.secure ? "; secure" : ""].join("")
                }
                for (var p = i.raw ? t : n, f = document.cookie.split("; "), d = o ? void 0 : {}, h = 0, g = f.length; h < g; h++) {
                    var m = f[h].split("="),
                        y = p(m.shift()),
                        v = p(m.join("="));
                    if (o && o === y) {
                        d = r(v);
                        break
                    }
                    o || (d[y] = r(v))
                }
                return d
            };
        i.defaults = {}
    })
}, function (e, t, n) {
    "use strict";
    var r, o, i;
    ! function (a) {
        o = [n(3)], r = a, void 0 !== (i = "function" == typeof r ? r.apply(t, o) : r) && (e.exports = i)
    }(function (e) {
        e.extend(e.fn, {
            popup: function (t) {
                var n = e.extend({
                        content: function () {
                            return "popup content"
                        },
                        triggerEvent: "click",
                        showMask: 1,
                        popopClass: "",
                        opacity: .6,
                        title: "",
                        clickToHide: 1,
                        closeBtn: "",
                        delay: 400,
                        setDisabled: function () {
                            return 0
                        },
                        maskOpacity: .4
                    }, t),
                    r = e(document),
                    o = e("body"),
                    i = e(window),
                    a = this,
                    s = e.browser.msie && "6.0" == e.browser.version,
                    c = function (e) {
                        a.layer && (a.layer.css({
                            height: r.height(),
                            width: r.width(),
                            opacity: n.maskOpacity
                        }), e) || a.popupWp && a.popupWp.css({
                            top: (i.height() - a.popupWp.outerHeight()) / 2 / 1.236 + (s ? r.scrollTop() : 0),
                            left: (i.width() - a.popupWp.outerWidth()) / 2
                        })
                    },
                    u = function () {
                        n.closeAnimate ? e(".detailPop").animate({
                            height: 0
                        }, 500, "easeOutBack", function () {
                            e(".detailPop").fadeOut(), e(".popup-layer").fadeOut(), e(".detailPop").remove()
                        }) : (a.layer.fadeOut(200), a.popupWp.html("").remove()), n.onClose && n.onClose(), s && (e("body").css({
                            height: "auto"
                        }), e("html").css({
                            overflow: "auto"
                        }))
                    },
                    l = function () {
                        a.layer ? a.layer.fadeIn(n.delay) : (a.layer = e('<div id="popup-layer" class="popup-layer"></div>').hide(), c(a.layer), a.layer.css({
                            opacity: n.opacity
                        }).appendTo(o).fadeIn(n.delay)), n.clickToHide && a.layer.bind("click", function () {
                            u()
                        })
                    },
                    p = function (t) {
                        var r = '<div class="' + (n.popopClass ? n.popopClass : "popup-main ") + '">',
                            o = "";
                        n.content ? o += n.content.call(t) : o += "Put some texts here.", n.title && (r += '<h3 class="popup-title">' + n.title + "</h3>"), n.closeBtn || (r += '<a href="javascript:;" class="popop-close">&times;</a>'), r += '<div class="pop-content" id="pop-content">' + o + "</div></div>", a.popupWp = e(r).appendTo("body").css({
                            top: 0,
                            left: 0
                        }), c(), n.showAnimate ? (e(".detailPop").css({
                            opacity: 0,
                            top: e(window).scrollTop() + 45
                        }), e(".detailPop").animate({
                            opacity: 1
                        }, 100, "easeInCubic"), e(".popup-layer").fadeIn()) : a.popupWp.show(), n.onOpen && n.onOpen.call(t), a.popupWp.find(".popop-close").bind("click", u), e.browser.msie && "6.0" == e.browser.version && (a.popupWp.css({
                            position: "absolute"
                        }), e("html").css({
                            overflow: "hidden"
                        }), e("body").css({
                            height: "100%",
                            overflow: "auto"
                        }))
                    },
                    f = function (e) {
                        n.showMask ? (l(), setTimeout(function () {
                            p(e)
                        }, n.delay + 10)) : p(e)
                    };
                window.closePopup = u, e.fn.disabledPopup = function () {
                    return n.setDisabled()
                }, e.fn.setPopup = function (t) {
                    n = e.extend(n, t)
                }, e.fn.showPopup = function (t) {
                    e.fn.disabledPopup() || f(t)
                }
            }
        })
    })
}, , function (e, t, n) {
    "use strict";
    var r, o, i;
    ! function (a) {
        o = [n(3), n(31)], r = a, void 0 !== (i = "function" == typeof r ? r.apply(t, o) : r) && (e.exports = i)
    }(function (e, t) {
        e.fn.extend({
            suggestion: function (n) {
                var r, o = e.extend({
                        source: "/search/sugs",
                        formator: "",
                        container: e("body"),
                        form: ".search-form",
                        inputActivdClass: "actived-ipt"
                    }, n),
                    i = '<li><span class="word">{key}</span></li>',
                    a = e('<div class="suggestion-wp"></div>').css({
                        position: "absolute"
                    }),
                    s = e(".category-search"),
                    c = s.width() + 8,
                    u = 0,
                    l = 0,
                    p = 0,
                    f = "",
                    d = "",
                    h = -1,
                    g = 0,
                    m = 0,
                    y = null,
                    v = e.browser && e.browser.msie && "6.0" == e.browser.version && !e.support.style,
                    w = function (n) {
                        var w = function () {
                                o.container.append(a), a.html('<ul class="suggestion-list"></ul>'), r = a.find(".suggestion-list"), r.delegate("li", "hover", function () {
                                    g = 1, r.children().removeClass("current"), e(this).addClass("current")
                                }).delegate("li", "mousedown", function () {
                                    f.val(e(this).text()), f.closest(o.form).submit()
                                }).delegate("li", "click", function () {
                                    f.val(e(this).text()), f.closest(o.form).submit()
                                }).mouseout(function () {
                                    g = 0
                                })
                            },
                            b = function (e) {
                                var t = r.children().length - 1;
                                if (-1 != t) {
                                    e ? (h += 1, h = h > t ? 0 : h) : (h -= 1, h = h < 0 ? t : h), r.children().removeClass("current");
                                    var n = r.children(":eq(" + h + ")");
                                    n.addClass("current"), f.val(n.text())
                                }
                            },
                            x = function () {
                                p || (s.length ? a.width(n.outerWidth() - parseInt(a.css("border-left-width")) - parseInt(a.css("border-right-width")) - c) : a.width(n.outerWidth() - parseInt(a.css("border-left-width")) - parseInt(a.css("border-right-width"))), p = 1)
                            },
                            _ = function () {
                                !l && f && (a.css({
                                    top: f.offset().top + f.outerHeight() - parseInt(f.css("border-bottom-width")),
                                    left: f.offset().left
                                }), l = 1)
                            },
                            T = function () {
                                g || (r.empty(), a.hide(), d = "", h = -1)
                            },
                            A = function (e) {
                                if (e.length) {
                                    for (var t = "", n = 0; n < e.length; n++) t += i.replace(/{key}/, e[n].q);
                                    r.html(t)
                                }
                                a.show(), h = -1
                            },
                            k = function (e) {
                                if (m = 0, void 0 === e || !e || !e.at || u) return void T();
                                A(e.wl), x(), _()
                            },
                            S = function () {
                                var r = e.trim(n.val());
                                d == r || m || (r ? (m = 1, e.ajax({
                                    type: "GET",
                                    url: o.source,
                                    data: {
                                        key: r,
                                        ctoken: t.cookie.get("ctoken")
                                    },
                                    dataType: "json",
                                    success: function (e) {
                                        if (m = 0, !e || !e.r || e.r.length < 1 || u) return void T();
                                        A(e.r), x(), _()
                                    },
                                    error: function (e) {
                                        console.log(e)
                                    }
                                }), d = r) : T())
                            },
                            I = function (e) {
                                switch (e.keyCode) {
                                    case 13:
                                        if (-1 == h) return;
                                        u = 1;
                                        var t = f.closest(o.form);
                                        f.val(r.children(".current").text()), T(), t.submit();
                                        break;
                                    case 38:
                                        b(0);
                                        break;
                                    case 40:
                                        b(1)
                                }
                            };
                        return window.handleSugData = k, {
                            liveEvents: function () {
                                n.bind({
                                    keydown: function (e) {
                                        n.addClass(o.inputActivdClass), f = n, v || I(e)
                                    },
                                    keyup: function (e) {
                                        38 != e.keyCode && 40 != e.keyCode && (clearTimeout(y), y = setTimeout(function () {
                                            S()
                                        }, 200)), v && I(e)
                                    },
                                    focus: function () {
                                        n.addClass(o.inputActivdClass), f = n, S(), u = 0
                                    },
                                    blur: function () {
                                        n.removeClass(o.inputActivdClass), T(), u = 1, l = 0
                                    }
                                }), e(window).resize(function () {
                                    l = 0, p = 0, x(), _(), r.children().length || T()
                                })
                            },
                            prepareDom: function () {
                                w()
                            }
                        }
                    };
                return this.each(function () {
                    var t = e(this),
                        n = new w(t);
                    n.prepareDom(), n.liveEvents()
                })
            }
        })
    })
}, , , , , , , , , , , , , , , , , , , , , , function (e, t, n) {
    e.exports = {
        default: n(120),
        __esModule: !0
    }
}, function (e, t, n) {
    var r = n(53),
        o = r.JSON || (r.JSON = {
            stringify: JSON.stringify
        });
    e.exports = function (e) {
        return o.stringify.apply(o, arguments)
    }
}, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , function (e, t) {}, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , function (e, t, n) {
    "use strict";
    n(213);
    var r = n(3);
    window.jQuery = r, n(94), n(63), n(37), n(95), n(93), n(55), n(97), n(41), n(54), r(function () {
        r("#j-nav-btn").click(function () {
            r("#j-head-menu").toggle(), r("#j-mask").toggle()
        }), r("#j-mask").click(function () {
            r("#j-head-menu").toggle(), r("#j-mask").toggle()
        }), r(window).resize(function () {
            "none" !== r("#j-head-menu").css("display") && (document.body.clientWidth >= 680 ? r("#j-mask").hide() : r("#j-mask").show())
        }), r("#j-search-input").suggestion(), r(".search-ipt").suggestion(), r(".search-form").submit(function (e) {
            r.trim(r("#j-search-input").val()) || (e.preventDefault(), r("#j-search-input").focus())
        }), r(".app-tag-wrap").hover(function () {
            r(".app-popup").show()
        }, function () {
            r(".app-popup").hide()
        }), r(".game-tag-wrap").hover(function () {
            r(".game-popup").show()
        }, function () {
            r(".game-popup").hide()
        }), r("img.lazy").lazyload({
            effect: "fadeIn",
            threshold: 50
        })
    })
}], [266]);
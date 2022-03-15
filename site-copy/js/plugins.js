





/* 
 * Tipper v3.0.2 - 2014-02-12 
 * A jQuery plugin for simple tooltips. Part of the formstone library. 
 * http://formstone.it/tipper/ 
 * 
 * Copyright 2014 Ben Plum; MIT Licensed 
 */ 

!function(a){"use strict";function b(b){return h.formatter=d,a(this).not(".tipper-attached").addClass("tipper-attached").on("mouseenter.tipper",a.extend({},h,b||{}),c)}function c(b){g=a("body");var c=a(this),d=a.extend(!0,{},b.data,c.data("tipper-options")),h="";h+='<div class="tipper '+d.direction+'">',h+='<div class="tipper-content">',h+=d.formatter.apply(g,[c]),h+='<span class="tipper-caret"</span>',h+="</div>",h+="</div>",d.$target=c,d.$tipper=a(h),g.append(d.$tipper),d.$content=d.$tipper.find(".tipper-content"),d.$caret=d.$tipper.find(".tipper-caret"),d.offset=c.offset(),d.height=c.outerHeight(),d.width=c.outerWidth(),d.tipperPos={},d.caretPos={},d.contentPos={};var i=d.$caret.outerHeight(!0),j=d.$caret.outerWidth(!0),k=d.$content.outerHeight(!0),l=d.$content.outerWidth(!0)+j;"right"===d.direction||"left"===d.direction?(d.caretPos.top=(k-i)/2,d.contentPos.top=-k/2,"right"===d.direction?d.contentPos.left=j+d.margin:"left"===d.direction&&(d.contentPos.left=-(l+d.margin))):(d.caretPos.left=(l-j)/2,d.contentPos.left=-l/2,"bottom"===d.direction?d.contentPos.top=d.margin:"top"===d.direction&&(d.contentPos.top=-(k+d.margin))),d.$content.css(d.contentPos),d.$caret.css(d.caretPos),d.follow?d.$target.on("mousemove.tipper",d,e).trigger("mousemove"):("right"===d.direction||"left"===d.direction?(d.tipperPos.top=d.offset.top+d.height/2,"right"===d.direction?d.tipperPos.left=d.offset.left+d.width:"left"===d.direction&&(d.tipperPos.left=d.offset.left)):(d.tipperPos.left=d.offset.left+d.width/2,"bottom"===d.direction?d.tipperPos.top=d.offset.top+d.height:"top"===d.direction&&(d.tipperPos.top=d.offset.top)),d.$tipper.css(d.tipperPos)),d.$target.one("mouseleave.tipper",d,f)}function d(a){return a.data("title")}function e(a){var b=a.data;b.$tipper.css({left:a.pageX,top:a.pageY})}function f(a){var b=a.data;b.$tipper.remove(),b.$target.off("mousemove.tipper mouseleave.tipper")}var g,h={direction:"top",follow:!1,formatter:a.noop,margin:15},i={defaults:function(b){return h=a.extend(h,b||{}),a(this)},destroy:function(){return a(this).trigger("mouseleave.tipper").off(".tipper").removeClass("tipper-attached")}};a.fn.tipper=function(a){return i[a]?i[a].apply(this,Array.prototype.slice.call(arguments,1)):"object"!=typeof a&&a?this:b.apply(this,arguments)},a.tipper=function(a){"defaults"===a&&i.defaults.apply(this,Array.prototype.slice.call(arguments,1))}}(jQuery);





/* jquery.nicescroll
-- version 3.7.6
-- copyright 2017-07-19 InuYaksa*2017
-- licensed under the MIT
--
-- https://nicescroll.areaaperta.com/
-- https://github.com/inuyaksa/jquery.nicescroll
--
*/
/* jshint expr: true */
(function(factory) {
    if (typeof define === 'function' && define.amd) {
        // AMD. Register as anonymous module.
        define(['jquery'], factory);
    } else if (typeof exports === 'object') {
        // Node/CommonJS.
        module.exports = factory(require('jquery'));
    } else {
        // Browser globals.
        factory(jQuery);
    }
}(function(jQuery) {
    "use strict";
    // globals
    var domfocus = false,
        mousefocus = false,
        tabindexcounter = 0,
        ascrailcounter = 2000,
        globalmaxzindex = 0;
    var $ = jQuery, // sandbox
        _doc = document,
        _win = window,
        $window = $(_win);
    var delegatevents = [];
    // http://stackoverflow.com/questions/2161159/get-script-path
    function getScriptPath() {
        var scripts = _doc.currentScript || (function() {
            var s = _doc.getElementsByTagName('script');
            return (s.length) ? s[s.length - 1] : false;
        })();
        var path = scripts ? scripts.src.split('?')[0] : '';
        return (path.split('/').length > 0) ? path.split('/').slice(0, -1).join('/') + '/' : '';
    }
    // based on code by Paul Irish https://www.paulirish.com/2011/requestanimationframe-for-smart-animating/  
    var setAnimationFrame = _win.requestAnimationFrame || _win.webkitRequestAnimationFrame || _win.mozRequestAnimationFrame || false;
    var clearAnimationFrame = _win.cancelAnimationFrame || _win.webkitCancelAnimationFrame || _win.mozCancelAnimationFrame || false;
    if (!setAnimationFrame) {
        var anilasttime = 0;
        setAnimationFrame = function(callback, element) {
            var currTime = new Date().getTime();
            var timeToCall = Math.max(0, 16 - (currTime - anilasttime));
            var id = _win.setTimeout(function() {
                    callback(currTime + timeToCall);
                },
                timeToCall);
            anilasttime = currTime + timeToCall;
            return id;
        };
        clearAnimationFrame = function(id) {
            _win.clearTimeout(id);
        };
    } else {
        if (!_win.cancelAnimationFrame) clearAnimationFrame = function(id) {};
    }
    var ClsMutationObserver = _win.MutationObserver || _win.WebKitMutationObserver || false;
    var now = Date.now || function() {
        return new Date().getTime();
    };
    var _globaloptions = {
        zindex: "auto",
        cursoropacitymin: 0,
        cursoropacitymax: 1,
        cursorcolor: "#424242",
        cursorwidth: "6px",
        cursorborder: "1px solid #fff",
        cursorborderradius: "5px",
        scrollspeed: 40,
        mousescrollstep: 9 * 3,
        touchbehavior: false, // deprecated
        emulatetouch: false, // replacing touchbehavior
        hwacceleration: true,
        usetransition: true,
        boxzoom: false,
        dblclickzoom: true,
        gesturezoom: true,
        grabcursorenabled: true,
        autohidemode: true,
        background: "",
        iframeautoresize: true,
        cursorminheight: 32,
        preservenativescrolling: true,
        railoffset: false,
        railhoffset: false,
        bouncescroll: true,
        spacebarenabled: true,
        railpadding: {
            top: 0,
            right: 0,
            left: 0,
            bottom: 0
        },
        disableoutline: true,
        horizrailenabled: true,
        railalign: "right",
        railvalign: "bottom",
        enabletranslate3d: true,
        enablemousewheel: true,
        enablekeyboard: true,
        smoothscroll: true,
        sensitiverail: true,
        enablemouselockapi: true,
        //      cursormaxheight:false,
        cursorfixedheight: false,
        directionlockdeadzone: 6,
        hidecursordelay: 400,
        nativeparentscrolling: true,
        enablescrollonselection: true,
        overflowx: true,
        overflowy: true,
        cursordragspeed: 0.3,
        rtlmode: "auto",
        cursordragontouch: false,
        oneaxismousemode: "auto",
        scriptpath: getScriptPath(),
        preventmultitouchscrolling: true,
        disablemutationobserver: false,
        enableobserver: true,
        scrollbarid: false,
        scrollCLass: false
    };
    var browserdetected = false;
    var getBrowserDetection = function() {
        if (browserdetected) return browserdetected;
        var _el = _doc.createElement('DIV'),
            _style = _el.style,
            _agent = navigator.userAgent,
            _platform = navigator.platform,
            d = {};
        d.haspointerlock = "pointerLockElement" in _doc || "webkitPointerLockElement" in _doc || "mozPointerLockElement" in _doc;
        d.isopera = ("opera" in _win); // 12-
        d.isopera12 = (d.isopera && ("getUserMedia" in navigator));
        d.isoperamini = (Object.prototype.toString.call(_win.operamini) === "[object OperaMini]");
        d.isie = (("all" in _doc) && ("attachEvent" in _el) && !d.isopera); //IE10-
        d.isieold = (d.isie && !("msInterpolationMode" in _style)); // IE6 and older
        d.isie7 = d.isie && !d.isieold && (!("documentMode" in _doc) || (_doc.documentMode === 7));
        d.isie8 = d.isie && ("documentMode" in _doc) && (_doc.documentMode === 8);
        d.isie9 = d.isie && ("performance" in _win) && (_doc.documentMode === 9);
        d.isie10 = d.isie && ("performance" in _win) && (_doc.documentMode === 10);
        d.isie11 = ("msRequestFullscreen" in _el) && (_doc.documentMode >= 11); // IE11+
        d.ismsedge = ("msCredentials" in _win); // MS Edge 14+
        d.ismozilla = ("MozAppearance" in _style);
        d.iswebkit = !d.ismsedge && ("WebkitAppearance" in _style);
        d.ischrome = d.iswebkit && ("chrome" in _win);
        d.ischrome38 = (d.ischrome && ("touchAction" in _style)); // behavior changed in touch emulation    
        d.ischrome22 = (!d.ischrome38) && (d.ischrome && d.haspointerlock);
        d.ischrome26 = (!d.ischrome38) && (d.ischrome && ("transition" in _style)); // issue with transform detection (maintain prefix)
        d.cantouch = ("ontouchstart" in _doc.documentElement) || ("ontouchstart" in _win); // with detection for Chrome Touch Emulation    
        d.hasw3ctouch = (_win.PointerEvent || false) && ((navigator.maxTouchPoints > 0) || (navigator.msMaxTouchPoints > 0)); //IE11 pointer events, following W3C Pointer Events spec
        d.hasmstouch = (!d.hasw3ctouch) && (_win.MSPointerEvent || false); // IE10 pointer events
        d.ismac = /^mac$/i.test(_platform);
        d.isios = d.cantouch && /iphone|ipad|ipod/i.test(_platform);
        d.isios4 = d.isios && !("seal" in Object);
        d.isios7 = d.isios && ("webkitHidden" in _doc); //iOS 7+
        d.isios8 = d.isios && ("hidden" in _doc); //iOS 8+
        d.isios10 = d.isios && _win.Proxy; //iOS 10+
        d.isandroid = (/android/i.test(_agent));
        d.haseventlistener = ("addEventListener" in _el);
        d.trstyle = false;
        d.hastransform = false;
        d.hastranslate3d = false;
        d.transitionstyle = false;
        d.hastransition = false;
        d.transitionend = false;
        d.trstyle = "transform";
        d.hastransform = ("transform" in _style) || (function() {
            var check = ['msTransform', 'webkitTransform', 'MozTransform', 'OTransform'];
            for (var a = 0, c = check.length; a < c; a++) {
                if (_style[check[a]] !== undefined) {
                    d.trstyle = check[a];
                    break;
                }
            }
            d.hastransform = (!!d.trstyle);
        })();
        if (d.hastransform) {
            _style[d.trstyle] = "translate3d(1px,2px,3px)";
            d.hastranslate3d = /translate3d/.test(_style[d.trstyle]);
        }
        d.transitionstyle = "transition";
        d.prefixstyle = '';
        d.transitionend = "transitionend";
        d.hastransition = ("transition" in _style) || (function() {
            d.transitionend = false;
            var check = ['webkitTransition', 'msTransition', 'MozTransition', 'OTransition', 'OTransition', 'KhtmlTransition'];
            var prefix = ['-webkit-', '-ms-', '-moz-', '-o-', '-o', '-khtml-'];
            var evs = ['webkitTransitionEnd', 'msTransitionEnd', 'transitionend', 'otransitionend', 'oTransitionEnd', 'KhtmlTransitionEnd'];
            for (var a = 0, c = check.length; a < c; a++) {
                if (check[a] in _style) {
                    d.transitionstyle = check[a];
                    d.prefixstyle = prefix[a];
                    d.transitionend = evs[a];
                    break;
                }
            }
            if (d.ischrome26) d.prefixstyle = prefix[1]; // always use prefix
            d.hastransition = (d.transitionstyle);
        })();
        function detectCursorGrab() {
            var lst = ['grab', '-webkit-grab', '-moz-grab'];
            if ((d.ischrome && !d.ischrome38) || d.isie) lst = []; // force setting for IE returns false positive and chrome cursor bug
            for (var a = 0, l = lst.length; a < l; a++) {
                var p = lst[a];
                _style.cursor = p;
                if (_style.cursor == p) return p;
            }
            return 'url(../images/openhand.cur),n-resize'; // thanks to https://cdnjs.com/ for the openhand cursor!
        }
        d.cursorgrabvalue = detectCursorGrab();
        d.hasmousecapture = ("setCapture" in _el);
        d.hasMutationObserver = (ClsMutationObserver !== false);
        _el = null; //memory released
        browserdetected = d;
        return d;
    };
    var NiceScrollClass = function(myopt, me) {
        var self = this;
        this.version = '3.7.6';
        this.name = 'nicescroll';
        this.me = me;
        var $body = $("body");
        var opt = this.opt = {
            doc: $body,
            win: false
        };
        $.extend(opt, _globaloptions); // clone opts
        // Options for internal use
        opt.snapbackspeed = 80;
        if (myopt || false) {
            for (var a in opt) {
                if (myopt[a] !== undefined) opt[a] = myopt[a];
            }
        }
        if (opt.disablemutationobserver) ClsMutationObserver = false;
        this.doc = opt.doc;
        this.iddoc = (this.doc && this.doc[0]) ? this.doc[0].id || '' : '';
        this.ispage = /^BODY|HTML/.test((opt.win) ? opt.win[0].nodeName : this.doc[0].nodeName);
        this.haswrapper = (opt.win !== false);
        this.win = opt.win || (this.ispage ? $window : this.doc);
        this.docscroll = (this.ispage && !this.haswrapper) ? $window : this.win;
        this.body = $body;
        this.viewport = false;
        this.isfixed = false;
        this.iframe = false;
        this.isiframe = ((this.doc[0].nodeName == 'IFRAME') && (this.win[0].nodeName == 'IFRAME'));
        this.istextarea = (this.win[0].nodeName == 'TEXTAREA');
        this.forcescreen = false; //force to use screen position on events
        this.canshowonmouseevent = (opt.autohidemode != "scroll");
        // Events jump table    
        this.onmousedown = false;
        this.onmouseup = false;
        this.onmousemove = false;
        this.onmousewheel = false;
        this.onkeypress = false;
        this.ongesturezoom = false;
        this.onclick = false;
        // Nicescroll custom events
        this.onscrollstart = false;
        this.onscrollend = false;
        this.onscrollcancel = false;
        this.onzoomin = false;
        this.onzoomout = false;
        // Let's start!  
        this.view = false;
        this.page = false;
        this.scroll = {
            x: 0,
            y: 0
        };
        this.scrollratio = {
            x: 0,
            y: 0
        };
        this.cursorheight = 20;
        this.scrollvaluemax = 0;
        // http://dev.w3.org/csswg/css-writing-modes-3/#logical-to-physical
        // http://dev.w3.org/csswg/css-writing-modes-3/#svg-writing-mode
        if (opt.rtlmode == "auto") {
            var target = this.win[0] == _win ? this.body : this.win;
            var writingMode = target.css("writing-mode") || target.css("-webkit-writing-mode") || target.css("-ms-writing-mode") || target.css("-moz-writing-mode");
            if (writingMode == "horizontal-tb" || writingMode == "lr-tb" || writingMode === "") {
                this.isrtlmode = (target.css("direction") == "rtl");
                this.isvertical = false;
            } else {
                this.isrtlmode = (writingMode == "vertical-rl" || writingMode == "tb" || writingMode == "tb-rl" || writingMode == "rl-tb");
                this.isvertical = (writingMode == "vertical-rl" || writingMode == "tb" || writingMode == "tb-rl");
            }
        } else {
            this.isrtlmode = (opt.rtlmode === true);
            this.isvertical = false;
        }
        //    this.checkrtlmode = false;
        this.scrollrunning = false;
        this.scrollmom = false;
        this.observer = false; // observer div changes
        this.observerremover = false; // observer on parent for remove detection
        this.observerbody = false; // observer on body for position change
        if (opt.scrollbarid !== false) {
            this.id = opt.scrollbarid;
        } else {
            do {
                this.id = "ascrail" + (ascrailcounter++);
            } while (_doc.getElementById(this.id));
        }
        this.rail = false;
        this.cursor = false;
        this.cursorfreezed = false;
        this.selectiondrag = false;
        this.zoom = false;
        this.zoomactive = false;
        this.hasfocus = false;
        this.hasmousefocus = false;
        //this.visibility = true;
        this.railslocked = false; // locked by resize
        this.locked = false; // prevent lost of locked status sets by user
        this.hidden = false; // rails always hidden
        this.cursoractive = true; // user can interact with cursors
        this.wheelprevented = false; //prevent mousewheel event
        this.overflowx = opt.overflowx;
        this.overflowy = opt.overflowy;
        this.nativescrollingarea = false;
        this.checkarea = 0;
        this.events = []; // event list for unbind
        this.saved = {}; // style saved
        this.delaylist = {};
        this.synclist = {};
        this.lastdeltax = 0;
        this.lastdeltay = 0;
        this.detected = getBrowserDetection();
        var cap = $.extend({}, this.detected);
        this.canhwscroll = (cap.hastransform && opt.hwacceleration);
        this.ishwscroll = (this.canhwscroll && self.haswrapper);
        if (!this.isrtlmode) {
            this.hasreversehr = false;
        } else if (this.isvertical) { // RTL mode with reverse horizontal axis
            this.hasreversehr = !(cap.iswebkit || cap.isie || cap.isie11);
        } else {
            this.hasreversehr = !(cap.iswebkit || (cap.isie && !cap.isie10 && !cap.isie11));
        }
        this.istouchcapable = false; // desktop devices with touch screen support
        //## Check WebKit-based desktop with touch support
        //## + Firefox 18 nightly build (desktop) false positive (or desktop with touch support)
        if (!cap.cantouch && (cap.hasw3ctouch || cap.hasmstouch)) { // desktop device with multiple input
            this.istouchcapable = true;
        } else if (cap.cantouch && !cap.isios && !cap.isandroid && (cap.iswebkit || cap.ismozilla)) {
            this.istouchcapable = true;
        }
        //## disable MouseLock API on user request
        if (!opt.enablemouselockapi) {
            cap.hasmousecapture = false;
            cap.haspointerlock = false;
        }
        this.debounced = function(name, fn, tm) {
            if (!self) return;
            var dd = self.delaylist[name] || false;
            if (!dd) {
                self.delaylist[name] = {
                    h: setAnimationFrame(function() {
                        self.delaylist[name].fn.call(self);
                        self.delaylist[name] = false;
                    }, tm)
                };
                fn.call(self);
            }
            self.delaylist[name].fn = fn;
        };
        this.synched = function(name, fn) {
            if (self.synclist[name]) self.synclist[name] = fn;
            else {
                self.synclist[name] = fn;
                setAnimationFrame(function() {
                    if (!self) return;
                    self.synclist[name] && self.synclist[name].call(self);
                    self.synclist[name] = null;
                });
            }
        };
        this.unsynched = function(name) {
            if (self.synclist[name]) self.synclist[name] = false;
        };
        this.css = function(el, pars) { // save & set
            for (var n in pars) {
                self.saved.css.push([el, n, el.css(n)]);
                el.css(n, pars[n]);
            }
        };
        this.scrollTop = function(val) {
            return (val === undefined) ? self.getScrollTop() : self.setScrollTop(val);
        };
        this.scrollLeft = function(val) {
            return (val === undefined) ? self.getScrollLeft() : self.setScrollLeft(val);
        };
        // derived by by Dan Pupius www.pupius.net
        var BezierClass = function(st, ed, spd, p1, p2, p3, p4) {
            this.st = st;
            this.ed = ed;
            this.spd = spd;
            this.p1 = p1 || 0;
            this.p2 = p2 || 1;
            this.p3 = p3 || 0;
            this.p4 = p4 || 1;
            this.ts = now();
            this.df = ed - st;
        };
        BezierClass.prototype = {
            B2: function(t) {
                return 3 * (1 - t) * (1 - t) * t;
            },
            B3: function(t) {
                return 3 * (1 - t) * t * t;
            },
            B4: function(t) {
                return t * t * t;
            },
            getPos: function() {
                return (now() - this.ts) / this.spd;
            },
            getNow: function() {
                var pc = (now() - this.ts) / this.spd;
                var bz = this.B2(pc) + this.B3(pc) + this.B4(pc);
                return (pc >= 1) ? this.ed : this.st + (this.df * bz) | 0;
            },
            update: function(ed, spd) {
                this.st = this.getNow();
                this.ed = ed;
                this.spd = spd;
                this.ts = now();
                this.df = this.ed - this.st;
                return this;
            }
        };
        //derived from http://stackoverflow.com/questions/11236090/
        function getMatrixValues() {
            var tr = self.doc.css(cap.trstyle);
            if (tr && (tr.substr(0, 6) == "matrix")) {
                return tr.replace(/^.*\((.*)\)$/g, "$1").replace(/px/g, '').split(/, +/);
            }
            return false;
        }
        if (this.ishwscroll) { // hw accelerated scroll
            this.doc.translate = {
                x: 0,
                y: 0,
                tx: "0px",
                ty: "0px"
            };
            //this one can help to enable hw accel on ios6 http://indiegamr.com/ios6-html-hardware-acceleration-changes-and-how-to-fix-them/
            if (cap.hastranslate3d && cap.isios) this.doc.css("-webkit-backface-visibility", "hidden"); // prevent flickering http://stackoverflow.com/questions/3461441/      
            this.getScrollTop = function(last) {
                if (!last) {
                    var mtx = getMatrixValues();
                    if (mtx) return (mtx.length == 16) ? -mtx[13] : -mtx[5]; //matrix3d 16 on IE10
                    if (self.timerscroll && self.timerscroll.bz) return self.timerscroll.bz.getNow();
                }
                return self.doc.translate.y;
            };
            this.getScrollLeft = function(last) {
                if (!last) {
                    var mtx = getMatrixValues();
                    if (mtx) return (mtx.length == 16) ? -mtx[12] : -mtx[4]; //matrix3d 16 on IE10
                    if (self.timerscroll && self.timerscroll.bh) return self.timerscroll.bh.getNow();
                }
                return self.doc.translate.x;
            };
            this.notifyScrollEvent = function(el) {
                var e = _doc.createEvent("UIEvents");
                e.initUIEvent("scroll", false, false, _win, 1);
                e.niceevent = true;
                el.dispatchEvent(e);
            };
            var cxscrollleft = (this.isrtlmode) ? 1 : -1;
            if (cap.hastranslate3d && opt.enabletranslate3d) {
                this.setScrollTop = function(val, silent) {
                    self.doc.translate.y = val;
                    self.doc.translate.ty = (val * -1) + "px";
                    self.doc.css(cap.trstyle, "translate3d(" + self.doc.translate.tx + "," + self.doc.translate.ty + ",0)");
                    if (!silent) self.notifyScrollEvent(self.win[0]);
                };
                this.setScrollLeft = function(val, silent) {
                    self.doc.translate.x = val;
                    self.doc.translate.tx = (val * cxscrollleft) + "px";
                    self.doc.css(cap.trstyle, "translate3d(" + self.doc.translate.tx + "," + self.doc.translate.ty + ",0)");
                    if (!silent) self.notifyScrollEvent(self.win[0]);
                };
            } else {
                this.setScrollTop = function(val, silent) {
                    self.doc.translate.y = val;
                    self.doc.translate.ty = (val * -1) + "px";
                    self.doc.css(cap.trstyle, "translate(" + self.doc.translate.tx + "," + self.doc.translate.ty + ")");
                    if (!silent) self.notifyScrollEvent(self.win[0]);
                };
                this.setScrollLeft = function(val, silent) {
                    self.doc.translate.x = val;
                    self.doc.translate.tx = (val * cxscrollleft) + "px";
                    self.doc.css(cap.trstyle, "translate(" + self.doc.translate.tx + "," + self.doc.translate.ty + ")");
                    if (!silent) self.notifyScrollEvent(self.win[0]);
                };
            }
        } else { // native scroll
            this.getScrollTop = function() {
                return self.docscroll.scrollTop();
            };
            this.setScrollTop = function(val) {
                self.docscroll.scrollTop(val);
            };
            this.getScrollLeft = function() {
                var val;
                if (!self.hasreversehr) {
                    val = self.docscroll.scrollLeft();
                } else if (self.detected.ismozilla) {
                    val = self.page.maxw - Math.abs(self.docscroll.scrollLeft());
                } else {
                    val = self.page.maxw - self.docscroll.scrollLeft();
                }
                return val;
            };
            this.setScrollLeft = function(val) {
                return setTimeout(function() {
                    if (!self) return;
                    if (self.hasreversehr) {
                        if (self.detected.ismozilla) {
                            val = -(self.page.maxw - val);
                        } else {
                            val = self.page.maxw - val;
                        }
                    }
                    return self.docscroll.scrollLeft(val);
                }, 1);
            };
        }
        this.getTarget = function(e) {
            if (!e) return false;
            if (e.target) return e.target;
            if (e.srcElement) return e.srcElement;
            return false;
        };
        this.hasParent = function(e, id) {
            if (!e) return false;
            var el = e.target || e.srcElement || e || false;
            while (el && el.id != id) {
                el = el.parentNode || false;
            }
            return (el !== false);
        };
        function getZIndex() {
            var dom = self.win;
            if ("zIndex" in dom) return dom.zIndex(); // use jQuery UI method when available
            while (dom.length > 0) {
                if (dom[0].nodeType == 9) return false;
                var zi = dom.css('zIndex');
                if (!isNaN(zi) && zi !== 0) return parseInt(zi);
                dom = dom.parent();
            }
            return false;
        }
        //inspired by http://forum.jquery.com/topic/width-includes-border-width-when-set-to-thin-medium-thick-in-ie
        var _convertBorderWidth = {
            "thin": 1,
            "medium": 3,
            "thick": 5
        };
        function getWidthToPixel(dom, prop, chkheight) {
            var wd = dom.css(prop);
            var px = parseFloat(wd);
            if (isNaN(px)) {
                px = _convertBorderWidth[wd] || 0;
                var brd = (px == 3) ? ((chkheight) ? (self.win.outerHeight() - self.win.innerHeight()) : (self.win.outerWidth() - self.win.innerWidth())) : 1; //DON'T TRUST CSS
                if (self.isie8 && px) px += 1;
                return (brd) ? px : 0;
            }
            return px;
        }
        this.getDocumentScrollOffset = function() {
            return {
                top: _win.pageYOffset || _doc.documentElement.scrollTop,
                left: _win.pageXOffset || _doc.documentElement.scrollLeft
            };
        };
        this.getOffset = function() {
            if (self.isfixed) {
                var ofs = self.win.offset(); // fix Chrome auto issue (when right/bottom props only)
                var scrl = self.getDocumentScrollOffset();
                ofs.top -= scrl.top;
                ofs.left -= scrl.left;
                return ofs;
            }
            var ww = self.win.offset();
            if (!self.viewport) return ww;
            var vp = self.viewport.offset();
            return {
                top: ww.top - vp.top,
                left: ww.left - vp.left
            };
        };
        this.updateScrollBar = function(len) {
            var pos, off;
            if (self.ishwscroll) {
                self.rail.css({
                    height: self.win.innerHeight() - (opt.railpadding.top + opt.railpadding.bottom)
                });
                if (self.railh) self.railh.css({
                    width: self.win.innerWidth() - (opt.railpadding.left + opt.railpadding.right)
                });
            } else {
                var wpos = self.getOffset();
                pos = {
                    top: wpos.top,
                    left: wpos.left - (opt.railpadding.left + opt.railpadding.right)
                };
                pos.top += getWidthToPixel(self.win, 'border-top-width', true);
                pos.left += (self.rail.align) ? self.win.outerWidth() - getWidthToPixel(self.win, 'border-right-width') - self.rail.width : getWidthToPixel(self.win, 'border-left-width');
                off = opt.railoffset;
                if (off) {
                    if (off.top) pos.top += off.top;
                    if (off.left) pos.left += off.left;
                }
                if (!self.railslocked) self.rail.css({
                    top: pos.top,
                    left: pos.left,
                    height: ((len) ? len.h : self.win.innerHeight()) - (opt.railpadding.top + opt.railpadding.bottom)
                });
                if (self.zoom) {
                    self.zoom.css({
                        top: pos.top + 1,
                        left: (self.rail.align == 1) ? pos.left - 20 : pos.left + self.rail.width + 4
                    });
                }
                if (self.railh && !self.railslocked) {
                    pos = {
                        top: wpos.top,
                        left: wpos.left
                    };
                    off = opt.railhoffset;
                    if (off) {
                        if (off.top) pos.top += off.top;
                        if (off.left) pos.left += off.left;
                    }
                    var y = (self.railh.align) ? pos.top + getWidthToPixel(self.win, 'border-top-width', true) + self.win.innerHeight() - self.railh.height : pos.top + getWidthToPixel(self.win, 'border-top-width', true);
                    var x = pos.left + getWidthToPixel(self.win, 'border-left-width');
                    self.railh.css({
                        top: y - (opt.railpadding.top + opt.railpadding.bottom),
                        left: x,
                        width: self.railh.width
                    });
                }
            }
        };
        this.doRailClick = function(e, dbl, hr) {
            var fn, pg, cur, pos;
            if (self.railslocked) return;
            self.cancelEvent(e);
            if (!("pageY" in e)) {
                e.pageX = e.clientX + _doc.documentElement.scrollLeft;
                e.pageY = e.clientY + _doc.documentElement.scrollTop;
            }
            if (dbl) {
                fn = (hr) ? self.doScrollLeft : self.doScrollTop;
                cur = (hr) ? ((e.pageX - self.railh.offset().left - (self.cursorwidth / 2)) * self.scrollratio.x) : ((e.pageY - self.rail.offset().top - (self.cursorheight / 2)) * self.scrollratio.y);
                self.unsynched("relativexy");
                fn(cur | 0);
            } else {
                fn = (hr) ? self.doScrollLeftBy : self.doScrollBy;
                cur = (hr) ? self.scroll.x : self.scroll.y;
                pos = (hr) ? e.pageX - self.railh.offset().left : e.pageY - self.rail.offset().top;
                pg = (hr) ? self.view.w : self.view.h;
                fn((cur >= pos) ? pg : -pg);
            }
        };
        self.newscrolly = self.newscrollx = 0;
        self.hasanimationframe = ("requestAnimationFrame" in _win);
        self.hascancelanimationframe = ("cancelAnimationFrame" in _win);
        self.hasborderbox = false;
        this.init = function() {
            self.saved.css = [];
            if (cap.isoperamini) return true; // SORRY, DO NOT WORK!
            if (cap.isandroid && !("hidden" in _doc)) return true; // Android 3- SORRY, DO NOT WORK!
            opt.emulatetouch = opt.emulatetouch || opt.touchbehavior; // mantain compatibility with "touchbehavior"      
            self.hasborderbox = _win.getComputedStyle && (_win.getComputedStyle(_doc.body)['box-sizing'] === "border-box");
            var _scrollyhidden = {
                'overflow-y': 'hidden'
            };
            if (cap.isie11 || cap.isie10) _scrollyhidden['-ms-overflow-style'] = 'none'; // IE 10 & 11 is always a world apart!
            if (self.ishwscroll) {
                this.doc.css(cap.transitionstyle, cap.prefixstyle + 'transform 0ms ease-out');
                if (cap.transitionend) self.bind(self.doc, cap.transitionend, self.onScrollTransitionEnd, false); //I have got to do something usefull!!
            }
            self.zindex = "auto";
            if (!self.ispage && opt.zindex == "auto") {
                self.zindex = getZIndex() || "auto";
            } else {
                self.zindex = opt.zindex;
            }
            if (!self.ispage && self.zindex != "auto" && self.zindex > globalmaxzindex) {
                globalmaxzindex = self.zindex;
            }
            if (self.isie && self.zindex === 0 && opt.zindex == "auto") { // fix IE auto == 0
                self.zindex = "auto";
            }
            if (!self.ispage || !cap.isieold) {
                var cont = self.docscroll;
                if (self.ispage) cont = (self.haswrapper) ? self.win : self.doc;
                self.css(cont, _scrollyhidden);
                if (self.ispage && (cap.isie11 || cap.isie)) { // IE 7-11
                    self.css($("html"), _scrollyhidden);
                }
                if (cap.isios && !self.ispage && !self.haswrapper) self.css($body, {
                    "-webkit-overflow-scrolling": "touch"
                }); //force hw acceleration
                var cursor = $(_doc.createElement('div'));
                cursor.css({
                    position: "relative",
                    top: 0,
                    "float": "right",
                    width: opt.cursorwidth,
                    height: 0,
                    'background-color': opt.cursorcolor,
                    border: opt.cursorborder,
                    'background-clip': 'padding-box',
                    '-webkit-border-radius': opt.cursorborderradius,
                    '-moz-border-radius': opt.cursorborderradius,
                    'border-radius': opt.cursorborderradius
                });
                cursor.addClass('nicescroll-cursors');
                self.cursor = cursor;
                var rail = $(_doc.createElement('div'));
                rail.attr('id', self.id);
                rail.addClass('nicescroll-rails nicescroll-rails-vr');
                if (opt.scrollCLass) {
                    rail.addClass(opt.scrollCLass);
                }
                var v, a, kp = ["left", "right", "top", "bottom"]; //**
                for (var n in kp) {
                    a = kp[n];
                    v = opt.railpadding[a] || 0;
                    v && rail.css("padding-" + a, v + "px");
                }
                rail.append(cursor);
                rail.width = Math.max(parseFloat(opt.cursorwidth), cursor.outerWidth());
                rail.css({
                    width: rail.width + "px",
                    zIndex: self.zindex,
                    background: opt.background,
                    cursor: "default"
                });
                rail.visibility = true;
                rail.scrollable = true;
                rail.align = (opt.railalign == "left") ? 0 : 1;
                self.rail = rail;
                self.rail.drag = false;
                var zoom = false;
                if (opt.boxzoom && !self.ispage && !cap.isieold) {
                    zoom = _doc.createElement('div');
                    self.bind(zoom, "click", self.doZoom);
                    self.bind(zoom, "mouseenter", function() {
                        self.zoom.css('opacity', opt.cursoropacitymax);
                    });
                    self.bind(zoom, "mouseleave", function() {
                        self.zoom.css('opacity', opt.cursoropacitymin);
                    });
                    self.zoom = $(zoom);
                    self.zoom.css({
                        cursor: "pointer",
                        zIndex: self.zindex,
                        backgroundImage: 'url(' + opt.scriptpath + 'zoomico.png)',
                        height: 18,
                        width: 18,
                        backgroundPosition: '0 0'
                    });
                    if (opt.dblclickzoom) self.bind(self.win, "dblclick", self.doZoom);
                    if (cap.cantouch && opt.gesturezoom) {
                        self.ongesturezoom = function(e) {
                            if (e.scale > 1.5) self.doZoomIn(e);
                            if (e.scale < 0.8) self.doZoomOut(e);
                            return self.cancelEvent(e);
                        };
                        self.bind(self.win, "gestureend", self.ongesturezoom);
                    }
                }
                // init HORIZ
                self.railh = false;
                var railh;
                if (opt.horizrailenabled) {
                    self.css(cont, {
                        overflowX: 'hidden'
                    });
                    cursor = $(_doc.createElement('div'));
                    cursor.css({
                        position: "absolute",
                        top: 0,
                        height: opt.cursorwidth,
                        width: 0,
                        backgroundColor: opt.cursorcolor,
                        border: opt.cursorborder,
                        backgroundClip: 'padding-box',
                        '-webkit-border-radius': opt.cursorborderradius,
                        '-moz-border-radius': opt.cursorborderradius,
                        'border-radius': opt.cursorborderradius
                    });
                    if (cap.isieold) cursor.css('overflow', 'hidden'); //IE6 horiz scrollbar issue
                    cursor.addClass('nicescroll-cursors');
                    self.cursorh = cursor;
                    railh = $(_doc.createElement('div'));
                    railh.attr('id', self.id + '-hr');
                    railh.addClass('nicescroll-rails nicescroll-rails-hr');
                    if (opt.scrollCLass) {
                        railh.addClass(opt.scrollCLass);
                    }
                    railh.height = Math.max(parseFloat(opt.cursorwidth), cursor.outerHeight());
                    railh.css({
                        height: railh.height + "px",
                        'zIndex': self.zindex,
                        "background": opt.background
                    });
                    railh.append(cursor);
                    railh.visibility = true;
                    railh.scrollable = true;
                    railh.align = (opt.railvalign == "top") ? 0 : 1;
                    self.railh = railh;
                    self.railh.drag = false;
                }
                if (self.ispage) {
                    rail.css({
                        position: "fixed",
                        top: 0,
                        height: "100%"
                    });
                    rail.css((rail.align) ? {
                        right: 0
                    } : {
                        left: 0
                    });
                    self.body.append(rail);
                    if (self.railh) {
                        railh.css({
                            position: "fixed",
                            left: 0,
                            width: "100%"
                        });
                        railh.css((railh.align) ? {
                            bottom: 0
                        } : {
                            top: 0
                        });
                        self.body.append(railh);
                    }
                } else {
                    if (self.ishwscroll) {
                        if (self.win.css('position') == 'static') self.css(self.win, {
                            'position': 'relative'
                        });
                        var bd = (self.win[0].nodeName == 'HTML') ? self.body : self.win;
                        $(bd).scrollTop(0).scrollLeft(0); // fix rail position if content already scrolled
                        if (self.zoom) {
                            self.zoom.css({
                                position: "absolute",
                                top: 1,
                                right: 0,
                                "margin-right": rail.width + 4
                            });
                            bd.append(self.zoom);
                        }
                        rail.css({
                            position: "absolute",
                            top: 0
                        });
                        rail.css((rail.align) ? {
                            right: 0
                        } : {
                            left: 0
                        });
                        bd.append(rail);
                        if (railh) {
                            railh.css({
                                position: "absolute",
                                left: 0,
                                bottom: 0
                            });
                            railh.css((railh.align) ? {
                                bottom: 0
                            } : {
                                top: 0
                            });
                            bd.append(railh);
                        }
                    } else {
                        self.isfixed = (self.win.css("position") == "fixed");
                        var rlpos = (self.isfixed) ? "fixed" : "absolute";
                        if (!self.isfixed) self.viewport = self.getViewport(self.win[0]);
                        if (self.viewport) {
                            self.body = self.viewport;
                            if (!(/fixed|absolute/.test(self.viewport.css("position")))) self.css(self.viewport, {
                                "position": "relative"
                            });
                        }
                        rail.css({
                            position: rlpos
                        });
                        if (self.zoom) self.zoom.css({
                            position: rlpos
                        });
                        self.updateScrollBar();
                        self.body.append(rail);
                        if (self.zoom) self.body.append(self.zoom);
                        if (self.railh) {
                            railh.css({
                                position: rlpos
                            });
                            self.body.append(railh);
                        }
                    }
                    if (cap.isios) self.css(self.win, {
                        '-webkit-tap-highlight-color': 'rgba(0,0,0,0)',
                        '-webkit-touch-callout': 'none'
                    }); // prevent grey layer on click
                    if (opt.disableoutline) {
                        if (cap.isie) self.win.attr("hideFocus", "true"); // IE, prevent dotted rectangle on focused div
                        if (cap.iswebkit) self.win.css('outline', 'none'); // Webkit outline
                    }
                }
                if (opt.autohidemode === false) {
                    self.autohidedom = false;
                    self.rail.css({
                        opacity: opt.cursoropacitymax
                    });
                    if (self.railh) self.railh.css({
                        opacity: opt.cursoropacitymax
                    });
                } else if ((opt.autohidemode === true) || (opt.autohidemode === "leave")) {
                    self.autohidedom = $().add(self.rail);
                    if (cap.isie8) self.autohidedom = self.autohidedom.add(self.cursor);
                    if (self.railh) self.autohidedom = self.autohidedom.add(self.railh);
                    if (self.railh && cap.isie8) self.autohidedom = self.autohidedom.add(self.cursorh);
                } else if (opt.autohidemode == "scroll") {
                    self.autohidedom = $().add(self.rail);
                    if (self.railh) self.autohidedom = self.autohidedom.add(self.railh);
                } else if (opt.autohidemode == "cursor") {
                    self.autohidedom = $().add(self.cursor);
                    if (self.railh) self.autohidedom = self.autohidedom.add(self.cursorh);
                } else if (opt.autohidemode == "hidden") {
                    self.autohidedom = false;
                    self.hide();
                    self.railslocked = false;
                }
                if (cap.cantouch || self.istouchcapable || opt.emulatetouch || cap.hasmstouch) {
                    self.scrollmom = new ScrollMomentumClass2D(self);
                    var delayedclick = null;
                    self.ontouchstart = function(e) {
                        if (self.locked) return false;
                        //if (e.pointerType && e.pointerType != 2 && e.pointerType != "touch") return false;
                        if (e.pointerType && (e.pointerType === 'mouse' || e.pointerType === e.MSPOINTER_TYPE_MOUSE)) return false; // need test on surface!!
                        self.hasmoving = false;
                        if (self.scrollmom.timer) {
                            self.triggerScrollEnd();
                            self.scrollmom.stop();
                        }
                        if (!self.railslocked) {
                            var tg = self.getTarget(e);
                            if (tg) {
                                var skp = (/INPUT/i.test(tg.nodeName)) && (/range/i.test(tg.type));
                                if (skp) return self.stopPropagation(e);
                            }
                            var ismouse = (e.type === "mousedown");
                            if (!("clientX" in e) && ("changedTouches" in e)) {
                                e.clientX = e.changedTouches[0].clientX;
                                e.clientY = e.changedTouches[0].clientY;
                            }
                            if (self.forcescreen) {
                                var le = e;
                                e = {
                                    "original": (e.original) ? e.original : e
                                };
                                e.clientX = le.screenX;
                                e.clientY = le.screenY;
                            }
                            self.rail.drag = {
                                x: e.clientX,
                                y: e.clientY,
                                sx: self.scroll.x,
                                sy: self.scroll.y,
                                st: self.getScrollTop(),
                                sl: self.getScrollLeft(),
                                pt: 2,
                                dl: false,
                                tg: tg
                            };
                            if (self.ispage || !opt.directionlockdeadzone) {
                                self.rail.drag.dl = "f";
                            } else {
                                var view = {
                                    w: $window.width(),
                                    h: $window.height()
                                };
                                var page = self.getContentSize();
                                var maxh = page.h - view.h;
                                var maxw = page.w - view.w;
                                if (self.rail.scrollable && !self.railh.scrollable) self.rail.drag.ck = (maxh > 0) ? "v" : false;
                                else if (!self.rail.scrollable && self.railh.scrollable) self.rail.drag.ck = (maxw > 0) ? "h" : false;
                                else self.rail.drag.ck = false;
                            }
                            if (opt.emulatetouch && self.isiframe && cap.isie) {
                                var wp = self.win.position();
                                self.rail.drag.x += wp.left;
                                self.rail.drag.y += wp.top;
                            }
                            self.hasmoving = false;
                            self.lastmouseup = false;
                            self.scrollmom.reset(e.clientX, e.clientY);
                            if (tg && ismouse) {
                                var ip = /INPUT|SELECT|BUTTON|TEXTAREA/i.test(tg.nodeName);
                                if (!ip) {
                                    if (cap.hasmousecapture) tg.setCapture();
                                    if (opt.emulatetouch) {
                                        if (tg.onclick && !(tg._onclick || false)) { // intercept DOM0 onclick event
                                            tg._onclick = tg.onclick;
                                            tg.onclick = function(e) {
                                                if (self.hasmoving) return false;
                                                tg._onclick.call(this, e);
                                            };
                                        }
                                        return self.cancelEvent(e);
                                    }
                                    return self.stopPropagation(e);
                                }
                                if (/SUBMIT|CANCEL|BUTTON/i.test($(tg).attr('type'))) {
                                    self.preventclick = {
                                        "tg": tg,
                                        "click": false
                                    };
                                }
                            }
                        }
                    };
                    self.ontouchend = function(e) {
                        if (!self.rail.drag) return true;
                        if (self.rail.drag.pt == 2) {
                            //if (e.pointerType && e.pointerType != 2 && e.pointerType != "touch") return false;
                            if (e.pointerType && (e.pointerType === 'mouse' || e.pointerType === e.MSPOINTER_TYPE_MOUSE)) return false;
                            self.rail.drag = false;
                            var ismouse = (e.type === "mouseup");
                            if (self.hasmoving) {
                                self.scrollmom.doMomentum();
                                self.lastmouseup = true;
                                self.hideCursor();
                                if (cap.hasmousecapture) _doc.releaseCapture();
                                if (ismouse) return self.cancelEvent(e);
                            }
                        } else if (self.rail.drag.pt == 1) {
                            return self.onmouseup(e);
                        }
                    };
                    var moveneedoffset = (opt.emulatetouch && self.isiframe && !cap.hasmousecapture);
                    var locktollerance = opt.directionlockdeadzone * 0.3 | 0;
                    self.ontouchmove = function(e, byiframe) {
                        if (!self.rail.drag) return true;
                        if (e.targetTouches && opt.preventmultitouchscrolling) {
                            if (e.targetTouches.length > 1) return true; // multitouch
                        }
                        //if (e.pointerType && e.pointerType != 2 && e.pointerType != "touch") return false;
                        if (e.pointerType && (e.pointerType === 'mouse' || e.pointerType === e.MSPOINTER_TYPE_MOUSE)) return true;
                        if (self.rail.drag.pt == 2) {
                            if (("changedTouches" in e)) {
                                e.clientX = e.changedTouches[0].clientX;
                                e.clientY = e.changedTouches[0].clientY;
                            }
                            var ofy, ofx;
                            ofx = ofy = 0;
                            if (moveneedoffset && !byiframe) {
                                var wp = self.win.position();
                                ofx = -wp.left;
                                ofy = -wp.top;
                            }
                            var fy = e.clientY + ofy;
                            var my = (fy - self.rail.drag.y);
                            var fx = e.clientX + ofx;
                            var mx = (fx - self.rail.drag.x);
                            var ny = self.rail.drag.st - my;
                            if (self.ishwscroll && opt.bouncescroll) {
                                if (ny < 0) {
                                    ny = Math.round(ny / 2);
                                } else if (ny > self.page.maxh) {
                                    ny = self.page.maxh + Math.round((ny - self.page.maxh) / 2);
                                }
                            } else {
                                if (ny < 0) {
                                    ny = 0;
                                    fy = 0;
                                } else if (ny > self.page.maxh) {
                                    ny = self.page.maxh;
                                    fy = 0;
                                }
                                if (fy === 0 && !self.hasmoving) {
                                    if (!self.ispage) self.rail.drag = false;
                                    return true;
                                }
                            }
                            var nx = self.getScrollLeft();
                            if (self.railh && self.railh.scrollable) {
                                nx = (self.isrtlmode) ? mx - self.rail.drag.sl : self.rail.drag.sl - mx;
                                if (self.ishwscroll && opt.bouncescroll) {
                                    if (nx < 0) {
                                        nx = Math.round(nx / 2);
                                    } else if (nx > self.page.maxw) {
                                        nx = self.page.maxw + Math.round((nx - self.page.maxw) / 2);
                                    }
                                } else {
                                    if (nx < 0) {
                                        nx = 0;
                                        fx = 0;
                                    }
                                    if (nx > self.page.maxw) {
                                        nx = self.page.maxw;
                                        fx = 0;
                                    }
                                }
                            }
                            if (!self.hasmoving) {
                                if (self.rail.drag.y === e.clientY && self.rail.drag.x === e.clientX) return self.cancelEvent(e); // prevent first useless move event 
                                var ay = Math.abs(my);
                                var ax = Math.abs(mx);
                                var dz = opt.directionlockdeadzone;
                                if (!self.rail.drag.ck) {
                                    if (ay > dz && ax > dz) self.rail.drag.dl = "f";
                                    else if (ay > dz) self.rail.drag.dl = (ax > locktollerance) ? "f" : "v";
                                    else if (ax > dz) self.rail.drag.dl = (ay > locktollerance) ? "f" : "h";
                                } else if (self.rail.drag.ck == "v") {
                                    if (ax > dz && ay <= locktollerance) {
                                        self.rail.drag = false;
                                    } else if (ay > dz) self.rail.drag.dl = "v";
                                } else if (self.rail.drag.ck == "h") {
                                    if (ay > dz && ax <= locktollerance) {
                                        self.rail.drag = false;
                                    } else if (ax > dz) self.rail.drag.dl = "h";
                                }
                                if (!self.rail.drag.dl) return self.cancelEvent(e);
                                self.triggerScrollStart(e.clientX, e.clientY, 0, 0, 0);
                                self.hasmoving = true;
                            }
                            if (self.preventclick && !self.preventclick.click) {
                                self.preventclick.click = self.preventclick.tg.onclick || false;
                                self.preventclick.tg.onclick = self.onpreventclick;
                            }
                            if (self.rail.drag.dl) {
                                if (self.rail.drag.dl == "v") nx = self.rail.drag.sl;
                                else if (self.rail.drag.dl == "h") ny = self.rail.drag.st;
                            }
                            self.synched("touchmove", function() {
                                if (self.rail.drag && (self.rail.drag.pt == 2)) {
                                    if (self.prepareTransition) self.resetTransition();
                                    if (self.rail.scrollable) self.setScrollTop(ny);
                                    self.scrollmom.update(fx, fy);
                                    if (self.railh && self.railh.scrollable) {
                                        self.setScrollLeft(nx);
                                        self.showCursor(ny, nx);
                                    } else {
                                        self.showCursor(ny);
                                    }
                                    if (cap.isie10) _doc.selection.clear();
                                }
                            });
                            return self.cancelEvent(e);
                        } else if (self.rail.drag.pt == 1) { // drag on cursor
                            return self.onmousemove(e);
                        }
                    };
                    self.ontouchstartCursor = function(e, hronly) {
                        if (self.rail.drag && self.rail.drag.pt != 3) return;
                        if (self.locked) return self.cancelEvent(e);
                        self.cancelScroll();
                        self.rail.drag = {
                            x: e.touches[0].clientX,
                            y: e.touches[0].clientY,
                            sx: self.scroll.x,
                            sy: self.scroll.y,
                            pt: 3,
                            hr: (!!hronly)
                        };
                        var tg = self.getTarget(e);
                        if (!self.ispage && cap.hasmousecapture) tg.setCapture();
                        if (self.isiframe && !cap.hasmousecapture) {
                            self.saved.csspointerevents = self.doc.css("pointer-events");
                            self.css(self.doc, {
                                "pointer-events": "none"
                            });
                        }
                        return self.cancelEvent(e);
                    };
                    self.ontouchendCursor = function(e) {
                        if (self.rail.drag) {
                            if (cap.hasmousecapture) _doc.releaseCapture();
                            if (self.isiframe && !cap.hasmousecapture) self.doc.css("pointer-events", self.saved.csspointerevents);
                            if (self.rail.drag.pt != 3) return;
                            self.rail.drag = false;
                            return self.cancelEvent(e);
                        }
                    };
                    self.ontouchmoveCursor = function(e) {
                        if (self.rail.drag) {
                            if (self.rail.drag.pt != 3) return;
                            self.cursorfreezed = true;
                            if (self.rail.drag.hr) {
                                self.scroll.x = self.rail.drag.sx + (e.touches[0].clientX - self.rail.drag.x);
                                if (self.scroll.x < 0) self.scroll.x = 0;
                                var mw = self.scrollvaluemaxw;
                                if (self.scroll.x > mw) self.scroll.x = mw;
                            } else {
                                self.scroll.y = self.rail.drag.sy + (e.touches[0].clientY - self.rail.drag.y);
                                if (self.scroll.y < 0) self.scroll.y = 0;
                                var my = self.scrollvaluemax;
                                if (self.scroll.y > my) self.scroll.y = my;
                            }
                            self.synched('touchmove', function() {
                                if (self.rail.drag && (self.rail.drag.pt == 3)) {
                                    self.showCursor();
                                    if (self.rail.drag.hr) self.doScrollLeft(Math.round(self.scroll.x * self.scrollratio.x), opt.cursordragspeed);
                                    else self.doScrollTop(Math.round(self.scroll.y * self.scrollratio.y), opt.cursordragspeed);
                                }
                            });
                            return self.cancelEvent(e);
                        }
                    };
                }
                self.onmousedown = function(e, hronly) {
                    if (self.rail.drag && self.rail.drag.pt != 1) return;
                    if (self.railslocked) return self.cancelEvent(e);
                    self.cancelScroll();
                    self.rail.drag = {
                        x: e.clientX,
                        y: e.clientY,
                        sx: self.scroll.x,
                        sy: self.scroll.y,
                        pt: 1,
                        hr: hronly || false
                    };
                    var tg = self.getTarget(e);
                    if (cap.hasmousecapture) tg.setCapture();
                    if (self.isiframe && !cap.hasmousecapture) {
                        self.saved.csspointerevents = self.doc.css("pointer-events");
                        self.css(self.doc, {
                            "pointer-events": "none"
                        });
                    }
                    self.hasmoving = false;
                    return self.cancelEvent(e);
                };
                self.onmouseup = function(e) {
                    if (self.rail.drag) {
                        if (self.rail.drag.pt != 1) return true;
                        if (cap.hasmousecapture) _doc.releaseCapture();
                        if (self.isiframe && !cap.hasmousecapture) self.doc.css("pointer-events", self.saved.csspointerevents);
                        self.rail.drag = false;
                        self.cursorfreezed = false;
                        if (self.hasmoving) self.triggerScrollEnd();
                        return self.cancelEvent(e);
                    }
                };
                self.onmousemove = function(e) {
                    if (self.rail.drag) {
                        if (self.rail.drag.pt !== 1) return;
                        if (cap.ischrome && e.which === 0) return self.onmouseup(e);
                        self.cursorfreezed = true;
                        if (!self.hasmoving) self.triggerScrollStart(e.clientX, e.clientY, 0, 0, 0);
                        self.hasmoving = true;
                        if (self.rail.drag.hr) {
                            self.scroll.x = self.rail.drag.sx + (e.clientX - self.rail.drag.x);
                            if (self.scroll.x < 0) self.scroll.x = 0;
                            var mw = self.scrollvaluemaxw;
                            if (self.scroll.x > mw) self.scroll.x = mw;
                        } else {
                            self.scroll.y = self.rail.drag.sy + (e.clientY - self.rail.drag.y);
                            if (self.scroll.y < 0) self.scroll.y = 0;
                            var my = self.scrollvaluemax;
                            if (self.scroll.y > my) self.scroll.y = my;
                        }
                        self.synched('mousemove', function() {
                            if (self.cursorfreezed) {
                                self.showCursor();
                                if (self.rail.drag.hr) {
                                    self.scrollLeft(Math.round(self.scroll.x * self.scrollratio.x));
                                } else {
                                    self.scrollTop(Math.round(self.scroll.y * self.scrollratio.y));
                                }
                            }
                        });
                        return self.cancelEvent(e);
                    } else {
                        self.checkarea = 0;
                    }
                };
                if (cap.cantouch || opt.emulatetouch) {
                    self.onpreventclick = function(e) {
                        if (self.preventclick) {
                            self.preventclick.tg.onclick = self.preventclick.click;
                            self.preventclick = false;
                            return self.cancelEvent(e);
                        }
                    };
                    self.onclick = (cap.isios) ? false : function(e) { // it needs to check IE11 ???
                        if (self.lastmouseup) {
                            self.lastmouseup = false;
                            return self.cancelEvent(e);
                        } else {
                            return true;
                        }
                    };
                    if (opt.grabcursorenabled && cap.cursorgrabvalue) {
                        self.css((self.ispage) ? self.doc : self.win, {
                            'cursor': cap.cursorgrabvalue
                        });
                        self.css(self.rail, {
                            'cursor': cap.cursorgrabvalue
                        });
                    }
                } else {
                    var checkSelectionScroll = function(e) {
                        if (!self.selectiondrag) return;
                        if (e) {
                            var ww = self.win.outerHeight();
                            var df = (e.pageY - self.selectiondrag.top);
                            if (df > 0 && df < ww) df = 0;
                            if (df >= ww) df -= ww;
                            self.selectiondrag.df = df;
                        }
                        if (self.selectiondrag.df === 0) return;
                        var rt = -(self.selectiondrag.df * 2 / 6) | 0;
                        self.doScrollBy(rt);
                        self.debounced("doselectionscroll", function() {
                            checkSelectionScroll();
                        }, 50);
                    };
                    if ("getSelection" in _doc) { // A grade - Major browsers
                        self.hasTextSelected = function() {
                            return (_doc.getSelection().rangeCount > 0);
                        };
                    } else if ("selection" in _doc) { //IE9-
                        self.hasTextSelected = function() {
                            return (_doc.selection.type != "None");
                        };
                    } else {
                        self.hasTextSelected = function() { // no support
                            return false;
                        };
                    }
                    self.onselectionstart = function(e) {
                        //  More testing - severe chrome issues           
                        /* 
                                      if (!self.haswrapper&&(e.which&&e.which==2)) {  // fool browser to manage middle button scrolling
                                        self.win.css({'overflow':'auto'});
                                        setTimeout(function(){
                                          self.win.css({'overflow':'hidden'});
                                        },10);                
                                        return true;
                                      }            
                        */
                        if (self.ispage) return;
                        self.selectiondrag = self.win.offset();
                    };
                    self.onselectionend = function(e) {
                        self.selectiondrag = false;
                    };
                    self.onselectiondrag = function(e) {
                        if (!self.selectiondrag) return;
                        if (self.hasTextSelected()) self.debounced("selectionscroll", function() {
                            checkSelectionScroll(e);
                        }, 250);
                    };
                }
                if (cap.hasw3ctouch) { //IE11+
                    self.css((self.ispage) ? $("html") : self.win, {
                        'touch-action': 'none'
                    });
                    self.css(self.rail, {
                        'touch-action': 'none'
                    });
                    self.css(self.cursor, {
                        'touch-action': 'none'
                    });
                    self.bind(self.win, "pointerdown", self.ontouchstart);
                    self.bind(_doc, "pointerup", self.ontouchend);
                    self.delegate(_doc, "pointermove", self.ontouchmove);
                } else if (cap.hasmstouch) { //IE10
                    self.css((self.ispage) ? $("html") : self.win, {
                        '-ms-touch-action': 'none'
                    });
                    self.css(self.rail, {
                        '-ms-touch-action': 'none'
                    });
                    self.css(self.cursor, {
                        '-ms-touch-action': 'none'
                    });
                    self.bind(self.win, "MSPointerDown", self.ontouchstart);
                    self.bind(_doc, "MSPointerUp", self.ontouchend);
                    self.delegate(_doc, "MSPointerMove", self.ontouchmove);
                    self.bind(self.cursor, "MSGestureHold", function(e) {
                        e.preventDefault();
                    });
                    self.bind(self.cursor, "contextmenu", function(e) {
                        e.preventDefault();
                    });
                } else if (cap.cantouch) { // smartphones/touch devices
                    self.bind(self.win, "touchstart", self.ontouchstart, false, true);
                    self.bind(_doc, "touchend", self.ontouchend, false, true);
                    self.bind(_doc, "touchcancel", self.ontouchend, false, true);
                    self.delegate(_doc, "touchmove", self.ontouchmove, false, true);
                }
                if (opt.emulatetouch) {
                    self.bind(self.win, "mousedown", self.ontouchstart, false, true);
                    self.bind(_doc, "mouseup", self.ontouchend, false, true);
                    self.bind(_doc, "mousemove", self.ontouchmove, false, true);
                }
                if (opt.cursordragontouch || (!cap.cantouch && !opt.emulatetouch)) {
                    self.rail.css({
                        cursor: "default"
                    });
                    self.railh && self.railh.css({
                        cursor: "default"
                    });
                    self.jqbind(self.rail, "mouseenter", function() {
                        if (!self.ispage && !self.win.is(":visible")) return false;
                        if (self.canshowonmouseevent) self.showCursor();
                        self.rail.active = true;
                    });
                    self.jqbind(self.rail, "mouseleave", function() {
                        self.rail.active = false;
                        if (!self.rail.drag) self.hideCursor();
                    });
                    if (opt.sensitiverail) {
                        self.bind(self.rail, "click", function(e) {
                            self.doRailClick(e, false, false);
                        });
                        self.bind(self.rail, "dblclick", function(e) {
                            self.doRailClick(e, true, false);
                        });
                        self.bind(self.cursor, "click", function(e) {
                            self.cancelEvent(e);
                        });
                        self.bind(self.cursor, "dblclick", function(e) {
                            self.cancelEvent(e);
                        });
                    }
                    if (self.railh) {
                        self.jqbind(self.railh, "mouseenter", function() {
                            if (!self.ispage && !self.win.is(":visible")) return false;
                            if (self.canshowonmouseevent) self.showCursor();
                            self.rail.active = true;
                        });
                        self.jqbind(self.railh, "mouseleave", function() {
                            self.rail.active = false;
                            if (!self.rail.drag) self.hideCursor();
                        });
                        if (opt.sensitiverail) {
                            self.bind(self.railh, "click", function(e) {
                                self.doRailClick(e, false, true);
                            });
                            self.bind(self.railh, "dblclick", function(e) {
                                self.doRailClick(e, true, true);
                            });
                            self.bind(self.cursorh, "click", function(e) {
                                self.cancelEvent(e);
                            });
                            self.bind(self.cursorh, "dblclick", function(e) {
                                self.cancelEvent(e);
                            });
                        }
                    }
                }
                if (opt.cursordragontouch && (this.istouchcapable || cap.cantouch)) {
                    self.bind(self.cursor, "touchstart", self.ontouchstartCursor);
                    self.bind(self.cursor, "touchmove", self.ontouchmoveCursor);
                    self.bind(self.cursor, "touchend", self.ontouchendCursor);
                    self.cursorh && self.bind(self.cursorh, "touchstart", function(e) {
                        self.ontouchstartCursor(e, true);
                    });
                    self.cursorh && self.bind(self.cursorh, "touchmove", self.ontouchmoveCursor);
                    self.cursorh && self.bind(self.cursorh, "touchend", self.ontouchendCursor);
                }
                //        if (!cap.cantouch && !opt.emulatetouch) {
                if (!opt.emulatetouch && !cap.isandroid && !cap.isios) {
                    self.bind((cap.hasmousecapture) ? self.win : _doc, "mouseup", self.onmouseup);
                    self.bind(_doc, "mousemove", self.onmousemove);
                    if (self.onclick) self.bind(_doc, "click", self.onclick);
                    self.bind(self.cursor, "mousedown", self.onmousedown);
                    self.bind(self.cursor, "mouseup", self.onmouseup);
                    if (self.railh) {
                        self.bind(self.cursorh, "mousedown", function(e) {
                            self.onmousedown(e, true);
                        });
                        self.bind(self.cursorh, "mouseup", self.onmouseup);
                    }
                    if (!self.ispage && opt.enablescrollonselection) {
                        self.bind(self.win[0], "mousedown", self.onselectionstart);
                        self.bind(_doc, "mouseup", self.onselectionend);
                        self.bind(self.cursor, "mouseup", self.onselectionend);
                        if (self.cursorh) self.bind(self.cursorh, "mouseup", self.onselectionend);
                        self.bind(_doc, "mousemove", self.onselectiondrag);
                    }
                    if (self.zoom) {
                        self.jqbind(self.zoom, "mouseenter", function() {
                            if (self.canshowonmouseevent) self.showCursor();
                            self.rail.active = true;
                        });
                        self.jqbind(self.zoom, "mouseleave", function() {
                            self.rail.active = false;
                            if (!self.rail.drag) self.hideCursor();
                        });
                    }
                } else {
                    self.bind((cap.hasmousecapture) ? self.win : _doc, "mouseup", self.ontouchend);
                    if (self.onclick) self.bind(_doc, "click", self.onclick);
                    if (opt.cursordragontouch) {
                        self.bind(self.cursor, "mousedown", self.onmousedown);
                        self.bind(self.cursor, "mouseup", self.onmouseup);
                        self.cursorh && self.bind(self.cursorh, "mousedown", function(e) {
                            self.onmousedown(e, true);
                        });
                        self.cursorh && self.bind(self.cursorh, "mouseup", self.onmouseup);
                    } else {
                        self.bind(self.rail, "mousedown", function(e) {
                            e.preventDefault();
                        }); // prevent text selection             
                        self.railh && self.bind(self.railh, "mousedown", function(e) {
                            e.preventDefault();
                        });
                    }
                }
                if (opt.enablemousewheel) {
                    if (!self.isiframe) self.mousewheel((cap.isie && self.ispage) ? _doc : self.win, self.onmousewheel);
                    self.mousewheel(self.rail, self.onmousewheel);
                    if (self.railh) self.mousewheel(self.railh, self.onmousewheelhr);
                }
                if (!self.ispage && !cap.cantouch && !(/HTML|^BODY/.test(self.win[0].nodeName))) {
                    if (!self.win.attr("tabindex")) self.win.attr({
                        "tabindex": ++tabindexcounter
                    });
                    self.bind(self.win, "focus", function(e) { // better using native events
                        domfocus = (self.getTarget(e)).id || self.getTarget(e) || false;
                        self.hasfocus = true;
                        if (self.canshowonmouseevent) self.noticeCursor();
                    });
                    self.bind(self.win, "blur", function(e) { // *
                        domfocus = false;
                        self.hasfocus = false;
                    });
                    self.bind(self.win, "mouseenter", function(e) { // *
                        mousefocus = (self.getTarget(e)).id || self.getTarget(e) || false;
                        self.hasmousefocus = true;
                        if (self.canshowonmouseevent) self.noticeCursor();
                    });
                    self.bind(self.win, "mouseleave", function(e) { // *       
                        mousefocus = false;
                        self.hasmousefocus = false;
                        if (!self.rail.drag) self.hideCursor();
                    });
                }
                //Thanks to http://www.quirksmode.org !!
                self.onkeypress = function(e) {
                    if (self.railslocked && self.page.maxh === 0) return true;
                    e = e || _win.event;
                    var tg = self.getTarget(e);
                    if (tg && /INPUT|TEXTAREA|SELECT|OPTION/.test(tg.nodeName)) {
                        var tp = tg.getAttribute('type') || tg.type || false;
                        if ((!tp) || !(/submit|button|cancel/i.tp)) return true;
                    }
                    if ($(tg).attr('contenteditable')) return true;
                    if (self.hasfocus || (self.hasmousefocus && !domfocus) || (self.ispage && !domfocus && !mousefocus)) {
                        var key = e.keyCode;
                        if (self.railslocked && key != 27) return self.cancelEvent(e);
                        var ctrl = e.ctrlKey || false;
                        var shift = e.shiftKey || false;
                        var ret = false;
                        switch (key) {
                            case 38:
                            case 63233: //safari
                                self.doScrollBy(24 * 3);
                                ret = true;
                                break;
                            case 40:
                            case 63235: //safari
                                self.doScrollBy(-24 * 3);
                                ret = true;
                                break;
                            case 37:
                            case 63232: //safari
                                if (self.railh) {
                                    (ctrl) ? self.doScrollLeft(0): self.doScrollLeftBy(24 * 3);
                                    ret = true;
                                }
                                break;
                            case 39:
                            case 63234: //safari
                                if (self.railh) {
                                    (ctrl) ? self.doScrollLeft(self.page.maxw): self.doScrollLeftBy(-24 * 3);
                                    ret = true;
                                }
                                break;
                            case 33:
                            case 63276: // safari
                                self.doScrollBy(self.view.h);
                                ret = true;
                                break;
                            case 34:
                            case 63277: // safari
                                self.doScrollBy(-self.view.h);
                                ret = true;
                                break;
                            case 36:
                            case 63273: // safari                
                                (self.railh && ctrl) ? self.doScrollPos(0, 0): self.doScrollTo(0);
                                ret = true;
                                break;
                            case 35:
                            case 63275: // safari
                                (self.railh && ctrl) ? self.doScrollPos(self.page.maxw, self.page.maxh): self.doScrollTo(self.page.maxh);
                                ret = true;
                                break;
                            case 32:
                                if (opt.spacebarenabled) {
                                    (shift) ? self.doScrollBy(self.view.h): self.doScrollBy(-self.view.h);
                                    ret = true;
                                }
                                break;
                            case 27: // ESC
                                if (self.zoomactive) {
                                    self.doZoom();
                                    ret = true;
                                }
                                break;
                        }
                        if (ret) return self.cancelEvent(e);
                    }
                };
                if (opt.enablekeyboard) self.bind(_doc, (cap.isopera && !cap.isopera12) ? "keypress" : "keydown", self.onkeypress);
                self.bind(_doc, "keydown", function(e) {
                    var ctrl = e.ctrlKey || false;
                    if (ctrl) self.wheelprevented = true;
                });
                self.bind(_doc, "keyup", function(e) {
                    var ctrl = e.ctrlKey || false;
                    if (!ctrl) self.wheelprevented = false;
                });
                self.bind(_win, "blur", function(e) {
                    self.wheelprevented = false;
                });
                self.bind(_win, 'resize', self.onscreenresize);
                self.bind(_win, 'orientationchange', self.onscreenresize);
                self.bind(_win, "load", self.lazyResize);
                if (cap.ischrome && !self.ispage && !self.haswrapper) { //chrome void scrollbar bug - it persists in version 26
                    var tmp = self.win.attr("style");
                    var ww = parseFloat(self.win.css("width")) + 1;
                    self.win.css('width', ww);
                    self.synched("chromefix", function() {
                        self.win.attr("style", tmp);
                    });
                }
                // Trying a cross-browser implementation - good luck!
                self.onAttributeChange = function(e) {
                    self.lazyResize(self.isieold ? 250 : 30);
                };
                if (opt.enableobserver) {
                    if ((!self.isie11) && (ClsMutationObserver !== false)) { // IE11 crashes  #568
                        self.observerbody = new ClsMutationObserver(function(mutations) {
                            mutations.forEach(function(mut) {
                                if (mut.type == "attributes") {
                                    return ($body.hasClass("modal-open") && $body.hasClass("modal-dialog") && !$.contains($('.modal-dialog')[0], self.doc[0])) ? self.hide() : self.show(); // Support for Bootstrap modal; Added check if the nice scroll element is inside a modal
                                }
                            });
                            if (self.me.clientWidth != self.page.width || self.me.clientHeight != self.page.height) return self.lazyResize(30);
                        });
                        self.observerbody.observe(_doc.body, {
                            childList: true,
                            subtree: true,
                            characterData: false,
                            attributes: true,
                            attributeFilter: ['class']
                        });
                    }
                    if (!self.ispage && !self.haswrapper) {
                        var _dom = self.win[0];
                        // redesigned MutationObserver for Chrome18+/Firefox14+/iOS6+ with support for: remove div, add/remove content
                        if (ClsMutationObserver !== false) {
                            self.observer = new ClsMutationObserver(function(mutations) {
                                mutations.forEach(self.onAttributeChange);
                            });
                            self.observer.observe(_dom, {
                                childList: true,
                                characterData: false,
                                attributes: true,
                                subtree: false
                            });
                            self.observerremover = new ClsMutationObserver(function(mutations) {
                                mutations.forEach(function(mo) {
                                    if (mo.removedNodes.length > 0) {
                                        for (var dd in mo.removedNodes) {
                                            if (!!self && (mo.removedNodes[dd] === _dom)) return self.remove();
                                        }
                                    }
                                });
                            });
                            self.observerremover.observe(_dom.parentNode, {
                                childList: true,
                                characterData: false,
                                attributes: false,
                                subtree: false
                            });
                        } else {
                            self.bind(_dom, (cap.isie && !cap.isie9) ? "propertychange" : "DOMAttrModified", self.onAttributeChange);
                            if (cap.isie9) _dom.attachEvent("onpropertychange", self.onAttributeChange); //IE9 DOMAttrModified bug
                            self.bind(_dom, "DOMNodeRemoved", function(e) {
                                if (e.target === _dom) self.remove();
                            });
                        }
                    }
                }
                //
                if (!self.ispage && opt.boxzoom) self.bind(_win, "resize", self.resizeZoom);
                if (self.istextarea) {
                    self.bind(self.win, "keydown", self.lazyResize);
                    self.bind(self.win, "mouseup", self.lazyResize);
                }
                self.lazyResize(30);
            }
            if (this.doc[0].nodeName == 'IFRAME') {
                var oniframeload = function() {
                    self.iframexd = false;
                    var doc;
                    try {
                        doc = 'contentDocument' in this ? this.contentDocument : this.contentWindow._doc;
                        var a = doc.domain;
                    } catch (e) {
                        self.iframexd = true;
                        doc = false;
                    }
                    if (self.iframexd) {
                        if ("console" in _win) console.log('NiceScroll error: policy restriced iframe');
                        return true; //cross-domain - I can't manage this        
                    }
                    self.forcescreen = true;
                    if (self.isiframe) {
                        self.iframe = {
                            "doc": $(doc),
                            "html": self.doc.contents().find('html')[0],
                            "body": self.doc.contents().find('body')[0]
                        };
                        self.getContentSize = function() {
                            return {
                                w: Math.max(self.iframe.html.scrollWidth, self.iframe.body.scrollWidth),
                                h: Math.max(self.iframe.html.scrollHeight, self.iframe.body.scrollHeight)
                            };
                        };
                        self.docscroll = $(self.iframe.body);
                    }
                    if (!cap.isios && opt.iframeautoresize && !self.isiframe) {
                        self.win.scrollTop(0); // reset position
                        self.doc.height(""); //reset height to fix browser bug
                        var hh = Math.max(doc.getElementsByTagName('html')[0].scrollHeight, doc.body.scrollHeight);
                        self.doc.height(hh);
                    }
                    self.lazyResize(30);
                    self.css($(self.iframe.body), _scrollyhidden);
                    if (cap.isios && self.haswrapper) {
                        self.css($(doc.body), {
                            '-webkit-transform': 'translate3d(0,0,0)'
                        }); // avoid iFrame content clipping - thanks to http://blog.derraab.com/2012/04/02/avoid-iframe-content-clipping-with-css-transform-on-ios/
                    }
                    if ('contentWindow' in this) {
                        self.bind(this.contentWindow, "scroll", self.onscroll); //IE8 & minor
                    } else {
                        self.bind(doc, "scroll", self.onscroll);
                    }
                    if (opt.enablemousewheel) {
                        self.mousewheel(doc, self.onmousewheel);
                    }
                    if (opt.enablekeyboard) self.bind(doc, (cap.isopera) ? "keypress" : "keydown", self.onkeypress);
                    if (cap.cantouch) {
                        self.bind(doc, "touchstart", self.ontouchstart);
                        self.bind(doc, "touchmove", self.ontouchmove);
                    } else if (opt.emulatetouch) {
                        self.bind(doc, "mousedown", self.ontouchstart);
                        self.bind(doc, "mousemove", function(e) {
                            return self.ontouchmove(e, true);
                        });
                        if (opt.grabcursorenabled && cap.cursorgrabvalue) self.css($(doc.body), {
                            'cursor': cap.cursorgrabvalue
                        });
                    }
                    self.bind(doc, "mouseup", self.ontouchend);
                    if (self.zoom) {
                        if (opt.dblclickzoom) self.bind(doc, 'dblclick', self.doZoom);
                        if (self.ongesturezoom) self.bind(doc, "gestureend", self.ongesturezoom);
                    }
                };
                if (this.doc[0].readyState && this.doc[0].readyState === "complete") {
                    setTimeout(function() {
                        oniframeload.call(self.doc[0], false);
                    }, 500);
                }
                self.bind(this.doc, "load", oniframeload);
            }
        };
        this.showCursor = function(py, px) {
            if (self.cursortimeout) {
                clearTimeout(self.cursortimeout);
                self.cursortimeout = 0;
            }
            if (!self.rail) return;
            if (self.autohidedom) {
                self.autohidedom.stop().css({
                    opacity: opt.cursoropacitymax
                });
                self.cursoractive = true;
            }
            if (!self.rail.drag || self.rail.drag.pt != 1) {
                if (py !== undefined && py !== false) {
                    self.scroll.y = (py / self.scrollratio.y) | 0;
                }
                if (px !== undefined) {
                    self.scroll.x = (px / self.scrollratio.x) | 0;
                }
            }
            self.cursor.css({
                height: self.cursorheight,
                top: self.scroll.y
            });
            if (self.cursorh) {
                var lx = (self.hasreversehr) ? self.scrollvaluemaxw - self.scroll.x : self.scroll.x;
                self.cursorh.css({
                    width: self.cursorwidth,
                    left: (!self.rail.align && self.rail.visibility) ? lx + self.rail.width : lx
                });
                self.cursoractive = true;
            }
            if (self.zoom) self.zoom.stop().css({
                opacity: opt.cursoropacitymax
            });
        };
        this.hideCursor = function(tm) {
            if (self.cursortimeout) return;
            if (!self.rail) return;
            if (!self.autohidedom) return;
            if (self.hasmousefocus && opt.autohidemode === "leave") return;
            self.cursortimeout = setTimeout(function() {
                if (!self.rail.active || !self.showonmouseevent) {
                    self.autohidedom.stop().animate({
                        opacity: opt.cursoropacitymin
                    });
                    if (self.zoom) self.zoom.stop().animate({
                        opacity: opt.cursoropacitymin
                    });
                    self.cursoractive = false;
                }
                self.cursortimeout = 0;
            }, tm || opt.hidecursordelay);
        };
        this.noticeCursor = function(tm, py, px) {
            self.showCursor(py, px);
            if (!self.rail.active) self.hideCursor(tm);
        };
        this.getContentSize =
            (self.ispage) ?
            function() {
                return {
                    w: Math.max(_doc.body.scrollWidth, _doc.documentElement.scrollWidth),
                    h: Math.max(_doc.body.scrollHeight, _doc.documentElement.scrollHeight)
                };
            } : (self.haswrapper) ?
            function() {
                return {
                    w: self.doc[0].offsetWidth,
                    h: self.doc[0].offsetHeight
                };
            } : function() {
                return {
                    w: self.docscroll[0].scrollWidth,
                    h: self.docscroll[0].scrollHeight
                };
            };
        this.onResize = function(e, page) {
            if (!self || !self.win) return false;
            var premaxh = self.page.maxh,
                premaxw = self.page.maxw,
                previewh = self.view.h,
                previeww = self.view.w;
            self.view = {
                w: (self.ispage) ? self.win.width() : self.win[0].clientWidth,
                h: (self.ispage) ? self.win.height() : self.win[0].clientHeight
            };
            self.page = (page) ? page : self.getContentSize();
            self.page.maxh = Math.max(0, self.page.h - self.view.h);
            self.page.maxw = Math.max(0, self.page.w - self.view.w);
            if ((self.page.maxh == premaxh) && (self.page.maxw == premaxw) && (self.view.w == previeww) && (self.view.h == previewh)) {
                // test position        
                if (!self.ispage) {
                    var pos = self.win.offset();
                    if (self.lastposition) {
                        var lst = self.lastposition;
                        if ((lst.top == pos.top) && (lst.left == pos.left)) return self; //nothing to do            
                    }
                    self.lastposition = pos;
                } else {
                    return self; //nothing to do
                }
            }
            if (self.page.maxh === 0) {
                self.hideRail();
                self.scrollvaluemax = 0;
                self.scroll.y = 0;
                self.scrollratio.y = 0;
                self.cursorheight = 0;
                self.setScrollTop(0);
                if (self.rail) self.rail.scrollable = false;
            } else {
                self.page.maxh -= (opt.railpadding.top + opt.railpadding.bottom);
                self.rail.scrollable = true;
            }
            if (self.page.maxw === 0) {
                self.hideRailHr();
                self.scrollvaluemaxw = 0;
                self.scroll.x = 0;
                self.scrollratio.x = 0;
                self.cursorwidth = 0;
                self.setScrollLeft(0);
                if (self.railh) {
                    self.railh.scrollable = false;
                }
            } else {
                self.page.maxw -= (opt.railpadding.left + opt.railpadding.right);
                if (self.railh) self.railh.scrollable = (opt.horizrailenabled);
            }
            self.railslocked = (self.locked) || ((self.page.maxh === 0) && (self.page.maxw === 0));
            if (self.railslocked) {
                if (!self.ispage) self.updateScrollBar(self.view);
                return false;
            }
            if (!self.hidden) {
                if (!self.rail.visibility) self.showRail();
                if (self.railh && !self.railh.visibility) self.showRailHr();
            }
            if (self.istextarea && self.win.css('resize') && self.win.css('resize') != 'none') self.view.h -= 20;
            self.cursorheight = Math.min(self.view.h, Math.round(self.view.h * (self.view.h / self.page.h)));
            self.cursorheight = (opt.cursorfixedheight) ? opt.cursorfixedheight : Math.max(opt.cursorminheight, self.cursorheight);
            self.cursorwidth = Math.min(self.view.w, Math.round(self.view.w * (self.view.w / self.page.w)));
            self.cursorwidth = (opt.cursorfixedheight) ? opt.cursorfixedheight : Math.max(opt.cursorminheight, self.cursorwidth);
            self.scrollvaluemax = self.view.h - self.cursorheight - (opt.railpadding.top + opt.railpadding.bottom);
            if (!self.hasborderbox) self.scrollvaluemax -= self.cursor[0].offsetHeight - self.cursor[0].clientHeight;
            if (self.railh) {
                self.railh.width = (self.page.maxh > 0) ? (self.view.w - self.rail.width) : self.view.w;
                self.scrollvaluemaxw = self.railh.width - self.cursorwidth - (opt.railpadding.left + opt.railpadding.right);
            }
            if (!self.ispage) self.updateScrollBar(self.view);
            self.scrollratio = {
                x: (self.page.maxw / self.scrollvaluemaxw),
                y: (self.page.maxh / self.scrollvaluemax)
            };
            var sy = self.getScrollTop();
            if (sy > self.page.maxh) {
                self.doScrollTop(self.page.maxh);
            } else {
                self.scroll.y = (self.getScrollTop() / self.scrollratio.y) | 0;
                self.scroll.x = (self.getScrollLeft() / self.scrollratio.x) | 0;
                if (self.cursoractive) self.noticeCursor();
            }
            if (self.scroll.y && (self.getScrollTop() === 0)) self.doScrollTo((self.scroll.y * self.scrollratio.y) | 0);
            return self;
        };
        this.resize = self.onResize;
        var hlazyresize = 0;
        this.onscreenresize = function(e) {
            clearTimeout(hlazyresize);
            var hiderails = (!self.ispage && !self.haswrapper);
            if (hiderails) self.hideRails();
            hlazyresize = setTimeout(function() {
                if (self) {
                    if (hiderails) self.showRails();
                    self.resize();
                }
                hlazyresize = 0;
            }, 120);
        };
        this.lazyResize = function(tm) { // event debounce
            clearTimeout(hlazyresize);
            tm = isNaN(tm) ? 240 : tm;
            hlazyresize = setTimeout(function() {
                self && self.resize();
                hlazyresize = 0;
            }, tm);
            return self;
        };
        // derived by MDN https://developer.mozilla.org/en-US/docs/DOM/Mozilla_event_reference/wheel
        function _modernWheelEvent(dom, name, fn, bubble) {
            self._bind(dom, name, function(e) {
                e = e || _win.event;
                var event = {
                    original: e,
                    target: e.target || e.srcElement,
                    type: "wheel",
                    deltaMode: e.type == "MozMousePixelScroll" ? 0 : 1,
                    deltaX: 0,
                    deltaZ: 0,
                    preventDefault: function() {
                        e.preventDefault ? e.preventDefault() : e.returnValue = false;
                        return false;
                    },
                    stopImmediatePropagation: function() {
                        (e.stopImmediatePropagation) ? e.stopImmediatePropagation(): e.cancelBubble = true;
                    }
                };
                if (name == "mousewheel") {
                    e.wheelDeltaX && (event.deltaX = -1 / 40 * e.wheelDeltaX);
                    e.wheelDeltaY && (event.deltaY = -1 / 40 * e.wheelDeltaY);
                    !event.deltaY && !event.deltaX && (event.deltaY = -1 / 40 * e.wheelDelta);
                } else {
                    event.deltaY = e.detail;
                }
                return fn.call(dom, event);
            }, bubble);
        }
        this.jqbind = function(dom, name, fn) { // use jquery bind for non-native events (mouseenter/mouseleave)
            self.events.push({
                e: dom,
                n: name,
                f: fn,
                q: true
            });
            $(dom).on(name, fn);
        };
        this.mousewheel = function(dom, fn, bubble) { // bind mousewheel
            var el = ("jquery" in dom) ? dom[0] : dom;
            if ("onwheel" in _doc.createElement("div")) { // Modern browsers support "wheel"
                self._bind(el, "wheel", fn, bubble || false);
            } else {
                var wname = (_doc.onmousewheel !== undefined) ? "mousewheel" : "DOMMouseScroll"; // older Webkit+IE support or older Firefox          
                _modernWheelEvent(el, wname, fn, bubble || false);
                if (wname == "DOMMouseScroll") _modernWheelEvent(el, "MozMousePixelScroll", fn, bubble || false); // Firefox legacy
            }
        };
        var passiveSupported = false;
        if (cap.haseventlistener) { // W3C standard event model
            // thanks to https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener
            try {
                var options = Object.defineProperty({}, "passive", {
                    get: function() {
                        passiveSupported = !0;
                    }
                });
                _win.addEventListener("test", null, options);
            } catch (err) {}
            this.stopPropagation = function(e) {
                if (!e) return false;
                e = (e.original) ? e.original : e;
                e.stopPropagation();
                return false;
            };
            this.cancelEvent = function(e) {
                if (e.cancelable) e.preventDefault();
                e.stopImmediatePropagation();
                if (e.preventManipulation) e.preventManipulation(); // IE10+
                return false;
            };
        } else {
            // inspired from https://gist.github.com/jonathantneal/2415137      
            Event.prototype.preventDefault = function() {
                this.returnValue = false;
            };
            Event.prototype.stopPropagation = function() {
                this.cancelBubble = true;
            };
            _win.constructor.prototype.addEventListener = _doc.constructor.prototype.addEventListener = Element.prototype.addEventListener = function(type, listener, useCapture) {
                this.attachEvent("on" + type, listener);
            };
            _win.constructor.prototype.removeEventListener = _doc.constructor.prototype.removeEventListener = Element.prototype.removeEventListener = function(type, listener, useCapture) {
                this.detachEvent("on" + type, listener);
            };
            // Thanks to http://www.switchonthecode.com !!
            this.cancelEvent = function(e) {
                e = e || _win.event;
                if (e) {
                    e.cancelBubble = true;
                    e.cancel = true;
                    e.returnValue = false;
                }
                return false;
            };
            this.stopPropagation = function(e) {
                e = e || _win.event;
                if (e) e.cancelBubble = true;
                return false;
            };
        }
        this.delegate = function(dom, name, fn, bubble, active) {
            var de = delegatevents[name] || false;
            if (!de) {
                de = {
                    a: [],
                    l: [],
                    f: function(e) {
                        var lst = de.l,
                            l = lst.length - 1;
                        var r = false;
                        for (var a = l; a >= 0; a--) {
                            r = lst[a].call(e.target, e);
                            if (r === false) return false;
                        }
                        return r;
                    }
                };
                self.bind(dom, name, de.f, bubble, active);
                delegatevents[name] = de;
            }
            if (self.ispage) {
                de.a = [self.id].concat(de.a);
                de.l = [fn].concat(de.l);
            } else {
                de.a.push(self.id);
                de.l.push(fn);
            }
        };
        this.undelegate = function(dom, name, fn, bubble, active) {
            var de = delegatevents[name] || false;
            if (de && de.l) { // quick fix #683
                for (var a = 0, l = de.l.length; a < l; a++) {
                    if (de.a[a] === self.id) {
                        de.a.splice(a);
                        de.l.splice(a);
                        if (de.a.length === 0) {
                            self._unbind(dom, name, de.l.f);
                            delegatevents[name] = null;
                        }
                    }
                }
            }
        };
        this.bind = function(dom, name, fn, bubble, active) {
            var el = ("jquery" in dom) ? dom[0] : dom;
            self._bind(el, name, fn, bubble || false, active || false);
        };
        this._bind = function(el, name, fn, bubble, active) { // primitive bind
            self.events.push({
                e: el,
                n: name,
                f: fn,
                b: bubble,
                q: false
            });
            (passiveSupported && (active || el == window.document || el == window.document.body || el == window)) ? el.addEventListener(name, fn, { passive: false, capture: bubble }) : el.addEventListener(name, fn, bubble || false);
        };
        this._unbind = function(el, name, fn, bub) { // primitive unbind
            if (delegatevents[name]) self.undelegate(el, name, fn, bub);
            else el.removeEventListener(name, fn, bub);
        };
        this.unbindAll = function() {
            for (var a = 0; a < self.events.length; a++) {
                var r = self.events[a];
                (r.q) ? r.e.unbind(r.n, r.f): self._unbind(r.e, r.n, r.f, r.b);
            }
        };
        this.showRails = function() {
            return self.showRail().showRailHr();
        };
        this.showRail = function() {
            if ((self.page.maxh !== 0) && (self.ispage || self.win.css('display') != 'none')) {
                //self.visibility = true;
                self.rail.visibility = true;
                self.rail.css('display', 'block');
            }
            return self;
        };
        this.showRailHr = function() {
            if (self.railh) {
                if ((self.page.maxw !== 0) && (self.ispage || self.win.css('display') != 'none')) {
                    self.railh.visibility = true;
                    self.railh.css('display', 'block');
                }
            }
            return self;
        };
        this.hideRails = function() {
            return self.hideRail().hideRailHr();
        };
        this.hideRail = function() {
            //self.visibility = false;
            self.rail.visibility = false;
            self.rail.css('display', 'none');
            return self;
        };
        this.hideRailHr = function() {
            if (self.railh) {
                self.railh.visibility = false;
                self.railh.css('display', 'none');
            }
            return self;
        };
        this.show = function() {
            self.hidden = false;
            self.railslocked = false;
            return self.showRails();
        };
        this.hide = function() {
            self.hidden = true;
            self.railslocked = true;
            return self.hideRails();
        };
        this.toggle = function() {
            return (self.hidden) ? self.show() : self.hide();
        };
        this.remove = function() {
            self.stop();
            if (self.cursortimeout) clearTimeout(self.cursortimeout);
            for (var n in self.delaylist)
                if (self.delaylist[n]) clearAnimationFrame(self.delaylist[n].h);
            self.doZoomOut();
            self.unbindAll();
            if (cap.isie9) self.win[0].detachEvent("onpropertychange", self.onAttributeChange); //IE9 DOMAttrModified bug
            if (self.observer !== false) self.observer.disconnect();
            if (self.observerremover !== false) self.observerremover.disconnect();
            if (self.observerbody !== false) self.observerbody.disconnect();
            self.events = null;
            if (self.cursor) {
                self.cursor.remove();
            }
            if (self.cursorh) {
                self.cursorh.remove();
            }
            if (self.rail) {
                self.rail.remove();
            }
            if (self.railh) {
                self.railh.remove();
            }
            if (self.zoom) {
                self.zoom.remove();
            }
            for (var a = 0; a < self.saved.css.length; a++) {
                var d = self.saved.css[a];
                d[0].css(d[1], (d[2] === undefined) ? '' : d[2]);
            }
            self.saved = false;
            self.me.data('__nicescroll', ''); //erase all traces
            // memory leak fixed by GianlucaGuarini - thanks a lot!
            // remove the current nicescroll from the $.nicescroll array & normalize array
            var lst = $.nicescroll;
            lst.each(function(i) {
                if (!this) return;
                if (this.id === self.id) {
                    delete lst[i];
                    for (var b = ++i; b < lst.length; b++, i++) lst[i] = lst[b];
                    lst.length--;
                    if (lst.length) delete lst[lst.length];
                }
            });
            for (var i in self) {
                self[i] = null;
                delete self[i];
            }
            self = null;
        };
        this.scrollstart = function(fn) {
            this.onscrollstart = fn;
            return self;
        };
        this.scrollend = function(fn) {
            this.onscrollend = fn;
            return self;
        };
        this.scrollcancel = function(fn) {
            this.onscrollcancel = fn;
            return self;
        };
        this.zoomin = function(fn) {
            this.onzoomin = fn;
            return self;
        };
        this.zoomout = function(fn) {
            this.onzoomout = fn;
            return self;
        };
        this.isScrollable = function(e) {
            var dom = (e.target) ? e.target : e;
            if (dom.nodeName == 'OPTION') return true;
            while (dom && (dom.nodeType == 1) && (dom !== this.me[0]) && !(/^BODY|HTML/.test(dom.nodeName))) {
                var dd = $(dom);
                var ov = dd.css('overflowY') || dd.css('overflowX') || dd.css('overflow') || '';
                if (/scroll|auto/.test(ov)) return (dom.clientHeight != dom.scrollHeight);
                dom = (dom.parentNode) ? dom.parentNode : false;
            }
            return false;
        };
        this.getViewport = function(me) {
            var dom = (me && me.parentNode) ? me.parentNode : false;
            while (dom && (dom.nodeType == 1) && !(/^BODY|HTML/.test(dom.nodeName))) {
                var dd = $(dom);
                if (/fixed|absolute/.test(dd.css("position"))) return dd;
                var ov = dd.css('overflowY') || dd.css('overflowX') || dd.css('overflow') || '';
                if ((/scroll|auto/.test(ov)) && (dom.clientHeight != dom.scrollHeight)) return dd;
                if (dd.getNiceScroll().length > 0) return dd;
                dom = (dom.parentNode) ? dom.parentNode : false;
            }
            return false;
        };
        this.triggerScrollStart = function(cx, cy, rx, ry, ms) {
            if (self.onscrollstart) {
                var info = {
                    type: "scrollstart",
                    current: {
                        x: cx,
                        y: cy
                    },
                    request: {
                        x: rx,
                        y: ry
                    },
                    end: {
                        x: self.newscrollx,
                        y: self.newscrolly
                    },
                    speed: ms
                };
                self.onscrollstart.call(self, info);
            }
        };
        this.triggerScrollEnd = function() {
            if (self.onscrollend) {
                var px = self.getScrollLeft();
                var py = self.getScrollTop();
                var info = {
                    type: "scrollend",
                    current: {
                        x: px,
                        y: py
                    },
                    end: {
                        x: px,
                        y: py
                    }
                };
                self.onscrollend.call(self, info);
            }
        };
        var scrolldiry = 0,
            scrolldirx = 0,
            scrolltmr = 0,
            scrollspd = 1;
        function doScrollRelative(px, py, chkscroll, iswheel) {
            if (!self.scrollrunning) {
                self.newscrolly = self.getScrollTop();
                self.newscrollx = self.getScrollLeft();
                scrolltmr = now();
            }
            var gap = (now() - scrolltmr);
            scrolltmr = now();
            if (gap > 350) {
                scrollspd = 1;
            } else {
                scrollspd += (2 - scrollspd) / 10;
            }
            px = px * scrollspd | 0;
            py = py * scrollspd | 0;
            if (px) {
                if (iswheel) { // mouse-only
                    if (px < 0) { // fix apple magic mouse swipe back/forward
                        if (self.getScrollLeft() >= self.page.maxw) return true;
                    } else {
                        if (self.getScrollLeft() <= 0) return true;
                    }
                }
                var dx = px > 0 ? 1 : -1;
                if (scrolldirx !== dx) {
                    if (self.scrollmom) self.scrollmom.stop();
                    self.newscrollx = self.getScrollLeft();
                    scrolldirx = dx;
                }
                self.lastdeltax -= px;
            }
            if (py) {
                var chk = (function() {
                    var top = self.getScrollTop();
                    if (py < 0) {
                        if (top >= self.page.maxh) return true;
                    } else {
                        if (top <= 0) return true;
                    }
                })();
                if (chk) {
                    if (opt.nativeparentscrolling && chkscroll && !self.ispage && !self.zoomactive) return true;
                    var ny = self.view.h >> 1;
                    if (self.newscrolly < -ny) {
                        self.newscrolly = -ny;
                        py = -1;
                    } else if (self.newscrolly > self.page.maxh + ny) {
                        self.newscrolly = self.page.maxh + ny;
                        py = 1;
                    } else py = 0;
                }
                var dy = py > 0 ? 1 : -1;
                if (scrolldiry !== dy) {
                    if (self.scrollmom) self.scrollmom.stop();
                    self.newscrolly = self.getScrollTop();
                    scrolldiry = dy;
                }
                self.lastdeltay -= py;
            }
            if (py || px) {
                self.synched("relativexy", function() {
                    var dty = self.lastdeltay + self.newscrolly;
                    self.lastdeltay = 0;
                    var dtx = self.lastdeltax + self.newscrollx;
                    self.lastdeltax = 0;
                    if (!self.rail.drag) self.doScrollPos(dtx, dty);
                });
            }
        }
        var hasparentscrollingphase = false;
        function execScrollWheel(e, hr, chkscroll) {
            var px, py;
            if (!chkscroll && hasparentscrollingphase) return true;
            if (e.deltaMode === 0) { // PIXEL
                px = -(e.deltaX * (opt.mousescrollstep / (18 * 3))) | 0;
                py = -(e.deltaY * (opt.mousescrollstep / (18 * 3))) | 0;
            } else if (e.deltaMode === 1) { // LINE
                px = -(e.deltaX * opt.mousescrollstep * 50 / 80) | 0;
                py = -(e.deltaY * opt.mousescrollstep * 50 / 80) | 0;
            }
            if (hr && opt.oneaxismousemode && (px === 0) && py) { // classic vertical-only mousewheel + browser with x/y support 
                px = py;
                py = 0;
                if (chkscroll) {
                    var hrend = (px < 0) ? (self.getScrollLeft() >= self.page.maxw) : (self.getScrollLeft() <= 0);
                    if (hrend) { // preserve vertical scrolling
                        py = px;
                        px = 0;
                    }
                }
            }
            // invert horizontal direction for rtl mode
            if (self.isrtlmode) px = -px;
            var chk = doScrollRelative(px, py, chkscroll, true);
            if (chk) {
                if (chkscroll) hasparentscrollingphase = true;
            } else {
                hasparentscrollingphase = false;
                e.stopImmediatePropagation();
                return e.preventDefault();
            }
        }
        this.onmousewheel = function(e) {
            if (self.wheelprevented || self.locked) return false;
            if (self.railslocked) {
                self.debounced("checkunlock", self.resize, 250);
                return false;
            }
            if (self.rail.drag) return self.cancelEvent(e);
            if (opt.oneaxismousemode === "auto" && e.deltaX !== 0) opt.oneaxismousemode = false; // check two-axis mouse support (not very elegant)
            if (opt.oneaxismousemode && e.deltaX === 0) {
                if (!self.rail.scrollable) {
                    if (self.railh && self.railh.scrollable) {
                        return self.onmousewheelhr(e);
                    } else {
                        return true;
                    }
                }
            }
            var nw = now();
            var chk = false;
            if (opt.preservenativescrolling && ((self.checkarea + 600) < nw)) {
                self.nativescrollingarea = self.isScrollable(e);
                chk = true;
            }
            self.checkarea = nw;
            if (self.nativescrollingarea) return true; // this isn't my business
            var ret = execScrollWheel(e, false, chk);
            if (ret) self.checkarea = 0;
            return ret;
        };
        this.onmousewheelhr = function(e) {
            if (self.wheelprevented) return;
            if (self.railslocked || !self.railh.scrollable) return true;
            if (self.rail.drag) return self.cancelEvent(e);
            var nw = now();
            var chk = false;
            if (opt.preservenativescrolling && ((self.checkarea + 600) < nw)) {
                self.nativescrollingarea = self.isScrollable(e);
                chk = true;
            }
            self.checkarea = nw;
            if (self.nativescrollingarea) return true; // this is not my business
            if (self.railslocked) return self.cancelEvent(e);
            return execScrollWheel(e, true, chk);
        };
        this.stop = function() {
            self.cancelScroll();
            if (self.scrollmon) self.scrollmon.stop();
            self.cursorfreezed = false;
            self.scroll.y = Math.round(self.getScrollTop() * (1 / self.scrollratio.y));
            self.noticeCursor();
            return self;
        };
        this.getTransitionSpeed = function(dif) {
            return 80 + (dif / 72) * opt.scrollspeed | 0;
        };
        if (!opt.smoothscroll) {
            this.doScrollLeft = function(x, spd) { //direct
                var y = self.getScrollTop();
                self.doScrollPos(x, y, spd);
            };
            this.doScrollTop = function(y, spd) { //direct
                var x = self.getScrollLeft();
                self.doScrollPos(x, y, spd);
            };
            this.doScrollPos = function(x, y, spd) { //direct
                var nx = (x > self.page.maxw) ? self.page.maxw : x;
                if (nx < 0) nx = 0;
                var ny = (y > self.page.maxh) ? self.page.maxh : y;
                if (ny < 0) ny = 0;
                self.synched('scroll', function() {
                    self.setScrollTop(ny);
                    self.setScrollLeft(nx);
                });
            };
            this.cancelScroll = function() {}; // direct
        } else if (self.ishwscroll && cap.hastransition && opt.usetransition && !!opt.smoothscroll) {
            var lasttransitionstyle = '';
            this.resetTransition = function() {
                lasttransitionstyle = '';
                self.doc.css(cap.prefixstyle + 'transition-duration', '0ms');
            };
            this.prepareTransition = function(dif, istime) {
                var ex = (istime) ? dif : self.getTransitionSpeed(dif);
                var trans = ex + 'ms';
                if (lasttransitionstyle !== trans) {
                    lasttransitionstyle = trans;
                    self.doc.css(cap.prefixstyle + 'transition-duration', trans);
                }
                return ex;
            };
            this.doScrollLeft = function(x, spd) { //trans
                var y = (self.scrollrunning) ? self.newscrolly : self.getScrollTop();
                self.doScrollPos(x, y, spd);
            };
            this.doScrollTop = function(y, spd) { //trans
                var x = (self.scrollrunning) ? self.newscrollx : self.getScrollLeft();
                self.doScrollPos(x, y, spd);
            };
            this.cursorupdate = {
                running: false,
                start: function() {
                    var m = this;
                    if (m.running) return;
                    m.running = true;
                    var loop = function() {
                        if (m.running) setAnimationFrame(loop);
                        self.showCursor(self.getScrollTop(), self.getScrollLeft());
                        self.notifyScrollEvent(self.win[0]);
                    };
                    setAnimationFrame(loop);
                },
                stop: function() {
                    this.running = false;
                }
            };
            this.doScrollPos = function(x, y, spd) { //trans
                var py = self.getScrollTop();
                var px = self.getScrollLeft();
                if (((self.newscrolly - py) * (y - py) < 0) || ((self.newscrollx - px) * (x - px) < 0)) self.cancelScroll(); //inverted movement detection      
                if (!opt.bouncescroll) {
                    if (y < 0) y = 0;
                    else if (y > self.page.maxh) y = self.page.maxh;
                    if (x < 0) x = 0;
                    else if (x > self.page.maxw) x = self.page.maxw;
                } else {
                    if (y < 0) y = y / 2 | 0;
                    else if (y > self.page.maxh) y = self.page.maxh + (y - self.page.maxh) / 2 | 0;
                    if (x < 0) x = x / 2 | 0;
                    else if (x > self.page.maxw) x = self.page.maxw + (x - self.page.maxw) / 2 | 0;
                }
                if (self.scrollrunning && x == self.newscrollx && y == self.newscrolly) return false;
                self.newscrolly = y;
                self.newscrollx = x;
                var top = self.getScrollTop();
                var lft = self.getScrollLeft();
                var dst = {};
                dst.x = x - lft;
                dst.y = y - top;
                var dd = Math.sqrt((dst.x * dst.x) + (dst.y * dst.y)) | 0;
                var ms = self.prepareTransition(dd);
                if (!self.scrollrunning) {
                    self.scrollrunning = true;
                    self.triggerScrollStart(lft, top, x, y, ms);
                    self.cursorupdate.start();
                }
                self.scrollendtrapped = true;
                if (!cap.transitionend) {
                    if (self.scrollendtrapped) clearTimeout(self.scrollendtrapped);
                    self.scrollendtrapped = setTimeout(self.onScrollTransitionEnd, ms); // simulate transitionend event
                }
                self.setScrollTop(self.newscrolly);
                self.setScrollLeft(self.newscrollx);
            };
            this.cancelScroll = function() {
                if (!self.scrollendtrapped) return true;
                var py = self.getScrollTop();
                var px = self.getScrollLeft();
                self.scrollrunning = false;
                if (!cap.transitionend) clearTimeout(cap.transitionend);
                self.scrollendtrapped = false;
                self.resetTransition();
                self.setScrollTop(py); // fire event onscroll
                if (self.railh) self.setScrollLeft(px);
                if (self.timerscroll && self.timerscroll.tm) clearInterval(self.timerscroll.tm);
                self.timerscroll = false;
                self.cursorfreezed = false;
                self.cursorupdate.stop();
                self.showCursor(py, px);
                return self;
            };
            this.onScrollTransitionEnd = function() {
                if (!self.scrollendtrapped) return;
                var py = self.getScrollTop();
                var px = self.getScrollLeft();
                if (py < 0) py = 0;
                else if (py > self.page.maxh) py = self.page.maxh;
                if (px < 0) px = 0;
                else if (px > self.page.maxw) px = self.page.maxw;
                if ((py != self.newscrolly) || (px != self.newscrollx)) return self.doScrollPos(px, py, opt.snapbackspeed);
                if (self.scrollrunning) self.triggerScrollEnd();
                self.scrollrunning = false;
                self.scrollendtrapped = false;
                self.resetTransition();
                self.timerscroll = false;
                self.setScrollTop(py); // fire event onscroll        
                if (self.railh) self.setScrollLeft(px); // fire event onscroll left
                self.cursorupdate.stop();
                self.noticeCursor(false, py, px);
                self.cursorfreezed = false;
            };
        } else {
            this.doScrollLeft = function(x, spd) { //no-trans
                var y = (self.scrollrunning) ? self.newscrolly : self.getScrollTop();
                self.doScrollPos(x, y, spd);
            };
            this.doScrollTop = function(y, spd) { //no-trans
                var x = (self.scrollrunning) ? self.newscrollx : self.getScrollLeft();
                self.doScrollPos(x, y, spd);
            };
            this.doScrollPos = function(x, y, spd) { //no-trans
                var py = self.getScrollTop();
                var px = self.getScrollLeft();
                if (((self.newscrolly - py) * (y - py) < 0) || ((self.newscrollx - px) * (x - px) < 0)) self.cancelScroll(); //inverted movement detection
                var clipped = false;
                if (!self.bouncescroll || !self.rail.visibility) {
                    if (y < 0) {
                        y = 0;
                        clipped = true;
                    } else if (y > self.page.maxh) {
                        y = self.page.maxh;
                        clipped = true;
                    }
                }
                if (!self.bouncescroll || !self.railh.visibility) {
                    if (x < 0) {
                        x = 0;
                        clipped = true;
                    } else if (x > self.page.maxw) {
                        x = self.page.maxw;
                        clipped = true;
                    }
                }
                if (self.scrollrunning && (self.newscrolly === y) && (self.newscrollx === x)) return true;
                self.newscrolly = y;
                self.newscrollx = x;
                self.dst = {};
                self.dst.x = x - px;
                self.dst.y = y - py;
                self.dst.px = px;
                self.dst.py = py;
                var dd = Math.sqrt((self.dst.x * self.dst.x) + (self.dst.y * self.dst.y)) | 0;
                var ms = self.getTransitionSpeed(dd);
                self.bzscroll = {};
                var p3 = (clipped) ? 1 : 0.58;
                self.bzscroll.x = new BezierClass(px, self.newscrollx, ms, 0, 0, p3, 1);
                self.bzscroll.y = new BezierClass(py, self.newscrolly, ms, 0, 0, p3, 1);
                var loopid = now();
                var loop = function() {
                    if (!self.scrollrunning) return;
                    var x = self.bzscroll.y.getPos();
                    self.setScrollLeft(self.bzscroll.x.getNow());
                    self.setScrollTop(self.bzscroll.y.getNow());
                    if (x <= 1) {
                        self.timer = setAnimationFrame(loop);
                    } else {
                        self.scrollrunning = false;
                        self.timer = 0;
                        self.triggerScrollEnd();
                    }
                };
                if (!self.scrollrunning) {
                    self.triggerScrollStart(px, py, x, y, ms);
                    self.scrollrunning = true;
                    self.timer = setAnimationFrame(loop);
                }
            };
            this.cancelScroll = function() {
                if (self.timer) clearAnimationFrame(self.timer);
                self.timer = 0;
                self.bzscroll = false;
                self.scrollrunning = false;
                return self;
            };
        }
        this.doScrollBy = function(stp, relative) {
            doScrollRelative(0, stp);
        };
        this.doScrollLeftBy = function(stp, relative) {
            doScrollRelative(stp, 0);
        };
        this.doScrollTo = function(pos, relative) {
            var ny = (relative) ? Math.round(pos * self.scrollratio.y) : pos;
            if (ny < 0) ny = 0;
            else if (ny > self.page.maxh) ny = self.page.maxh;
            self.cursorfreezed = false;
            self.doScrollTop(pos);
        };
        this.checkContentSize = function() {
            var pg = self.getContentSize();
            if ((pg.h != self.page.h) || (pg.w != self.page.w)) self.resize(false, pg);
        };
        self.onscroll = function(e) {
            if (self.rail.drag) return;
            if (!self.cursorfreezed) {
                self.synched('scroll', function() {
                    self.scroll.y = Math.round(self.getScrollTop() / self.scrollratio.y);
                    if (self.railh) self.scroll.x = Math.round(self.getScrollLeft() / self.scrollratio.x);
                    self.noticeCursor();
                });
            }
        };
        self.bind(self.docscroll, "scroll", self.onscroll);
        this.doZoomIn = function(e) {
            if (self.zoomactive) return;
            self.zoomactive = true;
            self.zoomrestore = {
                style: {}
            };
            var lst = ['position', 'top', 'left', 'zIndex', 'backgroundColor', 'marginTop', 'marginBottom', 'marginLeft', 'marginRight'];
            var win = self.win[0].style;
            for (var a in lst) {
                var pp = lst[a];
                self.zoomrestore.style[pp] = (win[pp] !== undefined) ? win[pp] : '';
            }
            self.zoomrestore.style.width = self.win.css('width');
            self.zoomrestore.style.height = self.win.css('height');
            self.zoomrestore.padding = {
                w: self.win.outerWidth() - self.win.width(),
                h: self.win.outerHeight() - self.win.height()
            };
            if (cap.isios4) {
                self.zoomrestore.scrollTop = $window.scrollTop();
                $window.scrollTop(0);
            }
            self.win.css({
                position: (cap.isios4) ? "absolute" : "fixed",
                top: 0,
                left: 0,
                zIndex: globalmaxzindex + 100,
                margin: 0
            });
            var bkg = self.win.css("backgroundColor");
            if ("" === bkg || /transparent|rgba\(0, 0, 0, 0\)|rgba\(0,0,0,0\)/.test(bkg)) self.win.css("backgroundColor", "#fff");
            self.rail.css({
                zIndex: globalmaxzindex + 101
            });
            self.zoom.css({
                zIndex: globalmaxzindex + 102
            });
            self.zoom.css('backgroundPosition', '0 -18px');
            self.resizeZoom();
            if (self.onzoomin) self.onzoomin.call(self);
            return self.cancelEvent(e);
        };
        this.doZoomOut = function(e) {
            if (!self.zoomactive) return;
            self.zoomactive = false;
            self.win.css("margin", "");
            self.win.css(self.zoomrestore.style);
            if (cap.isios4) {
                $window.scrollTop(self.zoomrestore.scrollTop);
            }
            self.rail.css({
                "z-index": self.zindex
            });
            self.zoom.css({
                "z-index": self.zindex
            });
            self.zoomrestore = false;
            self.zoom.css('backgroundPosition', '0 0');
            self.onResize();
            if (self.onzoomout) self.onzoomout.call(self);
            return self.cancelEvent(e);
        };
        this.doZoom = function(e) {
            return (self.zoomactive) ? self.doZoomOut(e) : self.doZoomIn(e);
        };
        this.resizeZoom = function() {
            if (!self.zoomactive) return;
            var py = self.getScrollTop(); //preserve scrolling position
            self.win.css({
                width: $window.width() - self.zoomrestore.padding.w + "px",
                height: $window.height() - self.zoomrestore.padding.h + "px"
            });
            self.onResize();
            self.setScrollTop(Math.min(self.page.maxh, py));
        };
        this.init();
        $.nicescroll.push(this);
    };
    // Inspired by the work of Kin Blas
    // http://webpro.host.adobe.com/people/jblas/momentum/includes/jquery.momentum.0.7.js  
    var ScrollMomentumClass2D = function(nc) {
        var self = this;
        this.nc = nc;
        this.lastx = 0;
        this.lasty = 0;
        this.speedx = 0;
        this.speedy = 0;
        this.lasttime = 0;
        this.steptime = 0;
        this.snapx = false;
        this.snapy = false;
        this.demulx = 0;
        this.demuly = 0;
        this.lastscrollx = -1;
        this.lastscrolly = -1;
        this.chkx = 0;
        this.chky = 0;
        this.timer = 0;
        this.reset = function(px, py) {
            self.stop();
            self.steptime = 0;
            self.lasttime = now();
            self.speedx = 0;
            self.speedy = 0;
            self.lastx = px;
            self.lasty = py;
            self.lastscrollx = -1;
            self.lastscrolly = -1;
        };
        this.update = function(px, py) {
            var tm = now();
            self.steptime = tm - self.lasttime;
            self.lasttime = tm;
            var dy = py - self.lasty;
            var dx = px - self.lastx;
            var sy = self.nc.getScrollTop();
            var sx = self.nc.getScrollLeft();
            var newy = sy + dy;
            var newx = sx + dx;
            self.snapx = (newx < 0) || (newx > self.nc.page.maxw);
            self.snapy = (newy < 0) || (newy > self.nc.page.maxh);
            self.speedx = dx;
            self.speedy = dy;
            self.lastx = px;
            self.lasty = py;
        };
        this.stop = function() {
            self.nc.unsynched("domomentum2d");
            if (self.timer) clearTimeout(self.timer);
            self.timer = 0;
            self.lastscrollx = -1;
            self.lastscrolly = -1;
        };
        this.doSnapy = function(nx, ny) {
            var snap = false;
            if (ny < 0) {
                ny = 0;
                snap = true;
            } else if (ny > self.nc.page.maxh) {
                ny = self.nc.page.maxh;
                snap = true;
            }
            if (nx < 0) {
                nx = 0;
                snap = true;
            } else if (nx > self.nc.page.maxw) {
                nx = self.nc.page.maxw;
                snap = true;
            }
            (snap) ? self.nc.doScrollPos(nx, ny, self.nc.opt.snapbackspeed): self.nc.triggerScrollEnd();
        };
        this.doMomentum = function(gp) {
            var t = now();
            var l = (gp) ? t + gp : self.lasttime;
            var sl = self.nc.getScrollLeft();
            var st = self.nc.getScrollTop();
            var pageh = self.nc.page.maxh;
            var pagew = self.nc.page.maxw;
            self.speedx = (pagew > 0) ? Math.min(60, self.speedx) : 0;
            self.speedy = (pageh > 0) ? Math.min(60, self.speedy) : 0;
            var chk = l && (t - l) <= 60;
            if ((st < 0) || (st > pageh) || (sl < 0) || (sl > pagew)) chk = false;
            var sy = (self.speedy && chk) ? self.speedy : false;
            var sx = (self.speedx && chk) ? self.speedx : false;
            if (sy || sx) {
                var tm = Math.max(16, self.steptime); //timeout granularity
                if (tm > 50) { // do smooth
                    var xm = tm / 50;
                    self.speedx *= xm;
                    self.speedy *= xm;
                    tm = 50;
                }
                self.demulxy = 0;
                self.lastscrollx = self.nc.getScrollLeft();
                self.chkx = self.lastscrollx;
                self.lastscrolly = self.nc.getScrollTop();
                self.chky = self.lastscrolly;
                var nx = self.lastscrollx;
                var ny = self.lastscrolly;
                var onscroll = function() {
                    var df = ((now() - t) > 600) ? 0.04 : 0.02;
                    if (self.speedx) {
                        nx = Math.floor(self.lastscrollx - (self.speedx * (1 - self.demulxy)));
                        self.lastscrollx = nx;
                        if ((nx < 0) || (nx > pagew)) df = 0.10;
                    }
                    if (self.speedy) {
                        ny = Math.floor(self.lastscrolly - (self.speedy * (1 - self.demulxy)));
                        self.lastscrolly = ny;
                        if ((ny < 0) || (ny > pageh)) df = 0.10;
                    }
                    self.demulxy = Math.min(1, self.demulxy + df);
                    self.nc.synched("domomentum2d", function() {
                        if (self.speedx) {
                            var scx = self.nc.getScrollLeft();
                            //              if (scx != self.chkx) self.stop();
                            self.chkx = nx;
                            self.nc.setScrollLeft(nx);
                        }
                        if (self.speedy) {
                            var scy = self.nc.getScrollTop();
                            //              if (scy != self.chky) self.stop();
                            self.chky = ny;
                            self.nc.setScrollTop(ny);
                        }
                        if (!self.timer) {
                            self.nc.hideCursor();
                            self.doSnapy(nx, ny);
                        }
                    });
                    if (self.demulxy < 1) {
                        self.timer = setTimeout(onscroll, tm);
                    } else {
                        self.stop();
                        self.nc.hideCursor();
                        self.doSnapy(nx, ny);
                    }
                };
                onscroll();
            } else {
                self.doSnapy(self.nc.getScrollLeft(), self.nc.getScrollTop());
            }
        };
    };
    // override jQuery scrollTop
    var _scrollTop = jQuery.fn.scrollTop; // preserve original function
    jQuery.cssHooks.pageYOffset = {
        get: function(elem, computed, extra) {
            var nice = $.data(elem, '__nicescroll') || false;
            return (nice && nice.ishwscroll) ? nice.getScrollTop() : _scrollTop.call(elem);
        },
        set: function(elem, value) {
            var nice = $.data(elem, '__nicescroll') || false;
            (nice && nice.ishwscroll) ? nice.setScrollTop(parseInt(value)): _scrollTop.call(elem, value);
            return this;
        }
    };
    jQuery.fn.scrollTop = function(value) {
        if (value === undefined) {
            var nice = (this[0]) ? $.data(this[0], '__nicescroll') || false : false;
            return (nice && nice.ishwscroll) ? nice.getScrollTop() : _scrollTop.call(this);
        } else {
            return this.each(function() {
                var nice = $.data(this, '__nicescroll') || false;
                (nice && nice.ishwscroll) ? nice.setScrollTop(parseInt(value)): _scrollTop.call($(this), value);
            });
        }
    };
    // override jQuery scrollLeft
    var _scrollLeft = jQuery.fn.scrollLeft; // preserve original function
    $.cssHooks.pageXOffset = {
        get: function(elem, computed, extra) {
            var nice = $.data(elem, '__nicescroll') || false;
            return (nice && nice.ishwscroll) ? nice.getScrollLeft() : _scrollLeft.call(elem);
        },
        set: function(elem, value) {
            var nice = $.data(elem, '__nicescroll') || false;
            (nice && nice.ishwscroll) ? nice.setScrollLeft(parseInt(value)): _scrollLeft.call(elem, value);
            return this;
        }
    };
    jQuery.fn.scrollLeft = function(value) {
        if (value === undefined) {
            var nice = (this[0]) ? $.data(this[0], '__nicescroll') || false : false;
            return (nice && nice.ishwscroll) ? nice.getScrollLeft() : _scrollLeft.call(this);
        } else {
            return this.each(function() {
                var nice = $.data(this, '__nicescroll') || false;
                (nice && nice.ishwscroll) ? nice.setScrollLeft(parseInt(value)): _scrollLeft.call($(this), value);
            });
        }
    };
    var NiceScrollArray = function(doms) {
        var self = this;
        this.length = 0;
        this.name = "nicescrollarray";
        this.each = function(fn) {
            $.each(self, fn);
            return self;
        };
        this.push = function(nice) {
            self[self.length] = nice;
            self.length++;
        };
        this.eq = function(idx) {
            return self[idx];
        };
        if (doms) {
            for (var a = 0; a < doms.length; a++) {
                var nice = $.data(doms[a], '__nicescroll') || false;
                if (nice) {
                    this[this.length] = nice;
                    this.length++;
                }
            }
        }
        return this;
    };
    function mplex(el, lst, fn) {
        for (var a = 0, l = lst.length; a < l; a++) fn(el, lst[a]);
    }
    mplex(
        NiceScrollArray.prototype, ['show', 'hide', 'toggle', 'onResize', 'resize', 'remove', 'stop', 'doScrollPos'],
        function(e, n) {
            e[n] = function() {
                var args = arguments;
                return this.each(function() {
                    this[n].apply(this, args);
                });
            };
        }
    );
    jQuery.fn.getNiceScroll = function(index) {
        if (index === undefined) {
            return new NiceScrollArray(this);
        } else {
            return this[index] && $.data(this[index], '__nicescroll') || false;
        }
    };
    var pseudos = jQuery.expr.pseudos || jQuery.expr[':']; // jQuery 3 migration
    pseudos.nicescroll = function(a) {
        return $.data(a, '__nicescroll') !== undefined;
    };
    $.fn.niceScroll = function(wrapper, _opt) {
        if (_opt === undefined && typeof wrapper == "object" && !("jquery" in wrapper)) {
            _opt = wrapper;
            wrapper = false;
        }
        var ret = new NiceScrollArray();
        this.each(function() {
            var $this = $(this);
            var opt = $.extend({}, _opt); // cloning
            if (wrapper || false) {
                var wrp = $(wrapper);
                opt.doc = (wrp.length > 1) ? $(wrapper, $this) : wrp;
                opt.win = $this;
            }
            var docundef = !("doc" in opt);
            if (!docundef && !("win" in opt)) opt.win = $this;
            var nice = $this.data('__nicescroll') || false;
            if (!nice) {
                opt.doc = opt.doc || $this;
                nice = new NiceScrollClass(opt, $this);
                $this.data('__nicescroll', nice);
            }
            ret.push(nice);
        });
        return (ret.length === 1) ? ret[0] : ret;
    };
    _win.NiceScroll = {
        getjQuery: function() {
            return jQuery;
        }
    };
    if (!$.nicescroll) {
        $.nicescroll = new NiceScrollArray();
        $.nicescroll.options = _globaloptions;
    }
}));






/**
 * jquery.slimmenu.js
 * http://adnantopal.github.io/slimmenu/
 * Author: @adnantopal
 * Copyright 2013, Adnan Topal (atopal.com)
 * Licensed under the MIT license.
 */
;(function($,window,document,undefined){var pluginName="slimmenu",defaults={resizeWidth:'768',collapserTitle:'Main Menu',animSpeed:'medium',easingEffect:null,indentChildren:false,childrenIndenter:'&nbsp;&nbsp;'};function Plugin(element,options){this.element=element;this.$elem=$(this.element);this.options=$.extend({},defaults,options);this.init()}Plugin.prototype={init:function(){var $options=this.options,$menu=this.$elem,$collapser='<div class="menu-collapser">'+$options.collapserTitle+'<div class="collapse-button"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></div></div>',$menu_collapser;$menu.before($collapser);$menu_collapser=$menu.prev('.menu-collapser');$menu.on('click','.sub-collapser',function(e){e.preventDefault();e.stopPropagation();var $parent_li=$(this).closest('li');if($(this).hasClass('expanded')){$(this).removeClass('expanded');$(this).find('i').html('&#9660;');$parent_li.find('>ul').slideUp($options.animSpeed,$options.easingEffect)}else{$(this).addClass('expanded');$(this).find('i').html('&#9650;');$parent_li.find('>ul').slideDown($options.animSpeed,$options.easingEffect)}});$menu_collapser.on('click','.collapse-button',function(e){e.preventDefault();$menu.slideToggle($options.animSpeed,$options.easingEffect)});this.resizeMenu({data:{el:this.element,options:this.options}});$(window).on('resize',{el:this.element,options:this.options},this.resizeMenu)},resizeMenu:function(event){var $window=$(window),$options=event.data.options,$menu=$(event.data.el),$menu_collapser=$('body').find('.menu-collapser');$menu.find('li').each(function(){if($(this).has('ul').length){if($(this).has('.sub-collapser').length){$(this).children('.sub-collapser i').html('&#9660;')}else{$(this).append('<span class="sub-collapser"><i>&#9660;</i></span>')}}$(this).children('ul').hide();$(this).find('.sub-collapser').removeClass('expanded').children('i').html('&#9660;')});if($options.resizeWidth>=$window.width()){if($options.indentChildren){$menu.find('ul').each(function(){var $depth=$(this).parents('ul').length;if(!$(this).children('li').children('a').has('i').length){$(this).children('li').children('a').prepend(Plugin.prototype.indent($depth,$options))}})}$menu.find('li').has('ul').off('mouseenter mouseleave');$menu.addClass('collapsed').hide();$menu_collapser.show()}else{$menu.find('li').has('ul').on('mouseenter',function(){$(this).find('>ul').stop().slideDown($options.animSpeed,$options.easingEffect)}).on('mouseleave',function(){$(this).find('>ul').stop().slideUp($options.animSpeed,$options.easingEffect)});$menu.find('li > a > i').remove();$menu.removeClass('collapsed').show();$menu_collapser.hide()}},indent:function(num,options){var $indent='';for(var i=0;i<num;i++){$indent+=options.childrenIndenter}return'<i>'+$indent+'</i>'}};$.fn[pluginName]=function(options){return this.each(function(){if(!$.data(this,"plugin_"+pluginName)){$.data(this,"plugin_"+pluginName,new Plugin(this,options))}})}})(jQuery,window,document);





/**
 * Isotope v1.5.25
 * An exquisite jQuery plugin for magical layouts
 * http://isotope.metafizzy.co
 *
 * Commercial use requires one-time license fee
 * http://metafizzy.co/#licenses
 *
 * Copyright 2012 David DeSandro / Metafizzy
 */
(function(a,b,c){"use strict";var d=a.document,e=a.Modernizr,f=function(a){return a.charAt(0).toUpperCase()+a.slice(1)},g="Moz Webkit O Ms".split(" "),h=function(a){var b=d.documentElement.style,c;if(typeof b[a]=="string")return a;a=f(a);for(var e=0,h=g.length;e<h;e++){c=g[e]+a;if(typeof b[c]=="string")return c}},i=h("transform"),j=h("transitionProperty"),k={csstransforms:function(){return!!i},csstransforms3d:function(){var a=!!h("perspective");if(a){var c=" -o- -moz- -ms- -webkit- -khtml- ".split(" "),d="@media ("+c.join("transform-3d),(")+"modernizr)",e=b("<style>"+d+"{#modernizr{height:3px}}"+"</style>").appendTo("head"),f=b('<div id="modernizr" />').appendTo("html");a=f.height()===3,f.remove(),e.remove()}return a},csstransitions:function(){return!!j}},l;if(e)for(l in k)e.hasOwnProperty(l)||e.addTest(l,k[l]);else{e=a.Modernizr={_version:"1.6ish: miniModernizr for Isotope"};var m=" ",n;for(l in k)n=k[l](),e[l]=n,m+=" "+(n?"":"no-")+l;b("html").addClass(m)}if(e.csstransforms){var o=e.csstransforms3d?{translate:function(a){return"translate3d("+a[0]+"px, "+a[1]+"px, 0) "},scale:function(a){return"scale3d("+a+", "+a+", 1) "}}:{translate:function(a){return"translate("+a[0]+"px, "+a[1]+"px) "},scale:function(a){return"scale("+a+") "}},p=function(a,c,d){var e=b.data(a,"isoTransform")||{},f={},g,h={},j;f[c]=d,b.extend(e,f);for(g in e)j=e[g],h[g]=o[g](j);var k=h.translate||"",l=h.scale||"",m=k+l;b.data(a,"isoTransform",e),a.style[i]=m};b.cssNumber.scale=!0,b.cssHooks.scale={set:function(a,b){p(a,"scale",b)},get:function(a,c){var d=b.data(a,"isoTransform");return d&&d.scale?d.scale:1}},b.fx.step.scale=function(a){b.cssHooks.scale.set(a.elem,a.now+a.unit)},b.cssNumber.translate=!0,b.cssHooks.translate={set:function(a,b){p(a,"translate",b)},get:function(a,c){var d=b.data(a,"isoTransform");return d&&d.translate?d.translate:[0,0]}}}var q,r;e.csstransitions&&(q={WebkitTransitionProperty:"webkitTransitionEnd",MozTransitionProperty:"transitionend",OTransitionProperty:"oTransitionEnd otransitionend",transitionProperty:"transitionend"}[j],r=h("transitionDuration"));var s=b.event,t=b.event.handle?"handle":"dispatch",u;s.special.smartresize={setup:function(){b(this).bind("resize",s.special.smartresize.handler)},teardown:function(){b(this).unbind("resize",s.special.smartresize.handler)},handler:function(a,b){var c=this,d=arguments;a.type="smartresize",u&&clearTimeout(u),u=setTimeout(function(){s[t].apply(c,d)},b==="execAsap"?0:100)}},b.fn.smartresize=function(a){return a?this.bind("smartresize",a):this.trigger("smartresize",["execAsap"])},b.Isotope=function(a,c,d){this.element=b(c),this._create(a),this._init(d)};var v=["width","height"],w=b(a);b.Isotope.settings={resizable:!0,layoutMode:"masonry",containerClass:"isotope",itemClass:"isotope-item",hiddenClass:"isotope-hidden",hiddenStyle:{opacity:0,scale:.001},visibleStyle:{opacity:1,scale:1},containerStyle:{position:"relative",overflow:"hidden"},animationEngine:"best-available",animationOptions:{queue:!1,duration:800},sortBy:"original-order",sortAscending:!0,resizesContainer:!0,transformsEnabled:!0,itemPositionDataEnabled:!1},b.Isotope.prototype={_create:function(a){this.options=b.extend({},b.Isotope.settings,a),this.styleQueue=[],this.elemCount=0;var c=this.element[0].style;this.originalStyle={};var d=v.slice(0);for(var e in this.options.containerStyle)d.push(e);for(var f=0,g=d.length;f<g;f++)e=d[f],this.originalStyle[e]=c[e]||"";this.element.css(this.options.containerStyle),this._updateAnimationEngine(),this._updateUsingTransforms();var h={"original-order":function(a,b){return b.elemCount++,b.elemCount},random:function(){return Math.random()}};this.options.getSortData=b.extend(this.options.getSortData,h),this.reloadItems(),this.offset={left:parseInt(this.element.css("padding-left")||0,10),top:parseInt(this.element.css("padding-top")||0,10)};var i=this;setTimeout(function(){i.element.addClass(i.options.containerClass)},0),this.options.resizable&&w.bind("smartresize.isotope",function(){i.resize()}),this.element.delegate("."+this.options.hiddenClass,"click",function(){return!1})},_getAtoms:function(a){var b=this.options.itemSelector,c=b?a.filter(b).add(a.find(b)):a,d={position:"absolute"};return c=c.filter(function(a,b){return b.nodeType===1}),this.usingTransforms&&(d.left=0,d.top=0),c.css(d).addClass(this.options.itemClass),this.updateSortData(c,!0),c},_init:function(a){this.$filteredAtoms=this._filter(this.$allAtoms),this._sort(),this.reLayout(a)},option:function(a){if(b.isPlainObject(a)){this.options=b.extend(!0,this.options,a);var c;for(var d in a)c="_update"+f(d),this[c]&&this[c]()}},_updateAnimationEngine:function(){var a=this.options.animationEngine.toLowerCase().replace(/[ _\-]/g,""),b;switch(a){case"css":case"none":b=!1;break;case"jquery":b=!0;break;default:b=!e.csstransitions}this.isUsingJQueryAnimation=b,this._updateUsingTransforms()},_updateTransformsEnabled:function(){this._updateUsingTransforms()},_updateUsingTransforms:function(){var a=this.usingTransforms=this.options.transformsEnabled&&e.csstransforms&&e.csstransitions&&!this.isUsingJQueryAnimation;a||(delete this.options.hiddenStyle.scale,delete this.options.visibleStyle.scale),this.getPositionStyles=a?this._translate:this._positionAbs},_filter:function(a){var b=this.options.filter===""?"*":this.options.filter;if(!b)return a;var c=this.options.hiddenClass,d="."+c,e=a.filter(d),f=e;if(b!=="*"){f=e.filter(b);var g=a.not(d).not(b).addClass(c);this.styleQueue.push({$el:g,style:this.options.hiddenStyle})}return this.styleQueue.push({$el:f,style:this.options.visibleStyle}),f.removeClass(c),a.filter(b)},updateSortData:function(a,c){var d=this,e=this.options.getSortData,f,g;a.each(function(){f=b(this),g={};for(var a in e)!c&&a==="original-order"?g[a]=b.data(this,"isotope-sort-data")[a]:g[a]=e[a](f,d);b.data(this,"isotope-sort-data",g)})},_sort:function(){var a=this.options.sortBy,b=this._getSorter,c=this.options.sortAscending?1:-1,d=function(d,e){var f=b(d,a),g=b(e,a);return f===g&&a!=="original-order"&&(f=b(d,"original-order"),g=b(e,"original-order")),(f>g?1:f<g?-1:0)*c};this.$filteredAtoms.sort(d)},_getSorter:function(a,c){return b.data(a,"isotope-sort-data")[c]},_translate:function(a,b){return{translate:[a,b]}},_positionAbs:function(a,b){return{left:a,top:b}},_pushPosition:function(a,b,c){b=Math.round(b+this.offset.left),c=Math.round(c+this.offset.top);var d=this.getPositionStyles(b,c);this.styleQueue.push({$el:a,style:d}),this.options.itemPositionDataEnabled&&a.data("isotope-item-position",{x:b,y:c})},layout:function(a,b){var c=this.options.layoutMode;this["_"+c+"Layout"](a);if(this.options.resizesContainer){var d=this["_"+c+"GetContainerSize"]();this.styleQueue.push({$el:this.element,style:d})}this._processStyleQueue(a,b),this.isLaidOut=!0},_processStyleQueue:function(a,c){var d=this.isLaidOut?this.isUsingJQueryAnimation?"animate":"css":"css",f=this.options.animationOptions,g=this.options.onLayout,h,i,j,k;i=function(a,b){b.$el[d](b.style,f)};if(this._isInserting&&this.isUsingJQueryAnimation)i=function(a,b){h=b.$el.hasClass("no-transition")?"css":d,b.$el[h](b.style,f)};else if(c||g||f.complete){var l=!1,m=[c,g,f.complete],n=this;j=!0,k=function(){if(l)return;var b;for(var c=0,d=m.length;c<d;c++)b=m[c],typeof b=="function"&&b.call(n.element,a,n);l=!0};if(this.isUsingJQueryAnimation&&d==="animate")f.complete=k,j=!1;else if(e.csstransitions){var o=0,p=this.styleQueue[0],s=p&&p.$el,t;while(!s||!s.length){t=this.styleQueue[o++];if(!t)return;s=t.$el}var u=parseFloat(getComputedStyle(s[0])[r]);u>0&&(i=function(a,b){b.$el[d](b.style,f).one(q,k)},j=!1)}}b.each(this.styleQueue,i),j&&k(),this.styleQueue=[]},resize:function(){this["_"+this.options.layoutMode+"ResizeChanged"]()&&this.reLayout()},reLayout:function(a){this["_"+this.options.layoutMode+"Reset"](),this.layout(this.$filteredAtoms,a)},addItems:function(a,b){var c=this._getAtoms(a);this.$allAtoms=this.$allAtoms.add(c),b&&b(c)},insert:function(a,b){this.element.append(a);var c=this;this.addItems(a,function(a){var d=c._filter(a);c._addHideAppended(d),c._sort(),c.reLayout(),c._revealAppended(d,b)})},appended:function(a,b){var c=this;this.addItems(a,function(a){c._addHideAppended(a),c.layout(a),c._revealAppended(a,b)})},_addHideAppended:function(a){this.$filteredAtoms=this.$filteredAtoms.add(a),a.addClass("no-transition"),this._isInserting=!0,this.styleQueue.push({$el:a,style:this.options.hiddenStyle})},_revealAppended:function(a,b){var c=this;setTimeout(function(){a.removeClass("no-transition"),c.styleQueue.push({$el:a,style:c.options.visibleStyle}),c._isInserting=!1,c._processStyleQueue(a,b)},10)},reloadItems:function(){this.$allAtoms=this._getAtoms(this.element.children())},remove:function(a,b){this.$allAtoms=this.$allAtoms.not(a),this.$filteredAtoms=this.$filteredAtoms.not(a);var c=this,d=function(){a.remove(),b&&b.call(c.element)};a.filter(":not(."+this.options.hiddenClass+")").length?(this.styleQueue.push({$el:a,style:this.options.hiddenStyle}),this._sort(),this.reLayout(d)):d()},shuffle:function(a){this.updateSortData(this.$allAtoms),this.options.sortBy="random",this._sort(),this.reLayout(a)},destroy:function(){var a=this.usingTransforms,b=this.options;this.$allAtoms.removeClass(b.hiddenClass+" "+b.itemClass).each(function(){var b=this.style;b.position="",b.top="",b.left="",b.opacity="",a&&(b[i]="")});var c=this.element[0].style;for(var d in this.originalStyle)c[d]=this.originalStyle[d];this.element.unbind(".isotope").undelegate("."+b.hiddenClass,"click").removeClass(b.containerClass).removeData("isotope"),w.unbind(".isotope")},_getSegments:function(a){var b=this.options.layoutMode,c=a?"rowHeight":"columnWidth",d=a?"height":"width",e=a?"rows":"cols",g=this.element[d](),h,i=this.options[b]&&this.options[b][c]||this.$filteredAtoms["outer"+f(d)](!0)||g;h=Math.floor(g/i),h=Math.max(h,1),this[b][e]=h,this[b][c]=i},_checkIfSegmentsChanged:function(a){var b=this.options.layoutMode,c=a?"rows":"cols",d=this[b][c];return this._getSegments(a),this[b][c]!==d},_masonryReset:function(){this.masonry={},this._getSegments();var a=this.masonry.cols;this.masonry.colYs=[];while(a--)this.masonry.colYs.push(0)},_masonryLayout:function(a){var c=this,d=c.masonry;a.each(function(){var a=b(this),e=Math.ceil(a.outerWidth(!0)/d.columnWidth);e=Math.min(e,d.cols);if(e===1)c._masonryPlaceBrick(a,d.colYs);else{var f=d.cols+1-e,g=[],h,i;for(i=0;i<f;i++)h=d.colYs.slice(i,i+e),g[i]=Math.max.apply(Math,h);c._masonryPlaceBrick(a,g)}})},_masonryPlaceBrick:function(a,b){var c=Math.min.apply(Math,b),d=0;for(var e=0,f=b.length;e<f;e++)if(b[e]===c){d=e;break}var g=this.masonry.columnWidth*d,h=c;this._pushPosition(a,g,h);var i=c+a.outerHeight(!0),j=this.masonry.cols+1-f;for(e=0;e<j;e++)this.masonry.colYs[d+e]=i},_masonryGetContainerSize:function(){var a=Math.max.apply(Math,this.masonry.colYs);return{height:a}},_masonryResizeChanged:function(){return this._checkIfSegmentsChanged()},_fitRowsReset:function(){this.fitRows={x:0,y:0,height:0}},_fitRowsLayout:function(a){var c=this,d=this.element.width(),e=this.fitRows;a.each(function(){var a=b(this),f=a.outerWidth(!0),g=a.outerHeight(!0);e.x!==0&&f+e.x>d&&(e.x=0,e.y=e.height),c._pushPosition(a,e.x,e.y),e.height=Math.max(e.y+g,e.height),e.x+=f})},_fitRowsGetContainerSize:function(){return{height:this.fitRows.height}},_fitRowsResizeChanged:function(){return!0},_cellsByRowReset:function(){this.cellsByRow={index:0},this._getSegments(),this._getSegments(!0)},_cellsByRowLayout:function(a){var c=this,d=this.cellsByRow;a.each(function(){var a=b(this),e=d.index%d.cols,f=Math.floor(d.index/d.cols),g=(e+.5)*d.columnWidth-a.outerWidth(!0)/2,h=(f+.5)*d.rowHeight-a.outerHeight(!0)/2;c._pushPosition(a,g,h),d.index++})},_cellsByRowGetContainerSize:function(){return{height:Math.ceil(this.$filteredAtoms.length/this.cellsByRow.cols)*this.cellsByRow.rowHeight+this.offset.top}},_cellsByRowResizeChanged:function(){return this._checkIfSegmentsChanged()},_straightDownReset:function(){this.straightDown={y:0}},_straightDownLayout:function(a){var c=this;a.each(function(a){var d=b(this);c._pushPosition(d,0,c.straightDown.y),c.straightDown.y+=d.outerHeight(!0)})},_straightDownGetContainerSize:function(){return{height:this.straightDown.y}},_straightDownResizeChanged:function(){return!0},_masonryHorizontalReset:function(){this.masonryHorizontal={},this._getSegments(!0);var a=this.masonryHorizontal.rows;this.masonryHorizontal.rowXs=[];while(a--)this.masonryHorizontal.rowXs.push(0)},_masonryHorizontalLayout:function(a){var c=this,d=c.masonryHorizontal;a.each(function(){var a=b(this),e=Math.ceil(a.outerHeight(!0)/d.rowHeight);e=Math.min(e,d.rows);if(e===1)c._masonryHorizontalPlaceBrick(a,d.rowXs);else{var f=d.rows+1-e,g=[],h,i;for(i=0;i<f;i++)h=d.rowXs.slice(i,i+e),g[i]=Math.max.apply(Math,h);c._masonryHorizontalPlaceBrick(a,g)}})},_masonryHorizontalPlaceBrick:function(a,b){var c=Math.min.apply(Math,b),d=0;for(var e=0,f=b.length;e<f;e++)if(b[e]===c){d=e;break}var g=c,h=this.masonryHorizontal.rowHeight*d;this._pushPosition(a,g,h);var i=c+a.outerWidth(!0),j=this.masonryHorizontal.rows+1-f;for(e=0;e<j;e++)this.masonryHorizontal.rowXs[d+e]=i},_masonryHorizontalGetContainerSize:function(){var a=Math.max.apply(Math,this.masonryHorizontal.rowXs);return{width:a}},_masonryHorizontalResizeChanged:function(){return this._checkIfSegmentsChanged(!0)},_fitColumnsReset:function(){this.fitColumns={x:0,y:0,width:0}},_fitColumnsLayout:function(a){var c=this,d=this.element.height(),e=this.fitColumns;a.each(function(){var a=b(this),f=a.outerWidth(!0),g=a.outerHeight(!0);e.y!==0&&g+e.y>d&&(e.x=e.width,e.y=0),c._pushPosition(a,e.x,e.y),e.width=Math.max(e.x+f,e.width),e.y+=g})},_fitColumnsGetContainerSize:function(){return{width:this.fitColumns.width}},_fitColumnsResizeChanged:function(){return!0},_cellsByColumnReset:function(){this.cellsByColumn={index:0},this._getSegments(),this._getSegments(!0)},_cellsByColumnLayout:function(a){var c=this,d=this.cellsByColumn;a.each(function(){var a=b(this),e=Math.floor(d.index/d.rows),f=d.index%d.rows,g=(e+.5)*d.columnWidth-a.outerWidth(!0)/2,h=(f+.5)*d.rowHeight-a.outerHeight(!0)/2;c._pushPosition(a,g,h),d.index++})},_cellsByColumnGetContainerSize:function(){return{width:Math.ceil(this.$filteredAtoms.length/this.cellsByColumn.rows)*this.cellsByColumn.columnWidth}},_cellsByColumnResizeChanged:function(){return this._checkIfSegmentsChanged(!0)},_straightAcrossReset:function(){this.straightAcross={x:0}},_straightAcrossLayout:function(a){var c=this;a.each(function(a){var d=b(this);c._pushPosition(d,c.straightAcross.x,0),c.straightAcross.x+=d.outerWidth(!0)})},_straightAcrossGetContainerSize:function(){return{width:this.straightAcross.x}},_straightAcrossResizeChanged:function(){return!0}},b.fn.imagesLoaded=function(a){function h(){a.call(c,d)}function i(a){var c=a.target;c.src!==f&&b.inArray(c,g)===-1&&(g.push(c),--e<=0&&(setTimeout(h),d.unbind(".imagesLoaded",i)))}var c=this,d=c.find("img").add(c.filter("img")),e=d.length,f="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==",g=[];return e||h(),d.bind("load.imagesLoaded error.imagesLoaded",i).each(function(){var a=this.src;this.src=f,this.src=a}),c};var x=function(b){a.console&&a.console.error(b)};b.fn.isotope=function(a,c){if(typeof a=="string"){var d=Array.prototype.slice.call(arguments,1);this.each(function(){var c=b.data(this,"isotope");if(!c){x("cannot call methods on isotope prior to initialization; attempted to call method '"+a+"'");return}if(!b.isFunction(c[a])||a.charAt(0)==="_"){x("no such method '"+a+"' for isotope instance");return}c[a].apply(c,d)})}else this.each(function(){var d=b.data(this,"isotope");d?(d.option(a),d._init(c)):b.data(this,"isotope",new b.Isotope(a,this,c))});return this}})(window,jQuery);





/*
                       _ _ _____                      _   _
                      | | |  __ \                    | | (_)
    ___  ___ _ __ ___ | | | |__) |_____   _____  __ _| |  _ ___
   / __|/ __| '__/ _ \| | |  _  // _ \ \ / / _ \/ _` | | | / __|
   \__ \ (__| | | (_) | | | | \ \  __/\ V /  __/ (_| | |_| \__ \
   |___/\___|_|  \___/|_|_|_|  \_\___| \_/ \___|\__,_|_(_) |___/
                                                        _/ |
                                                       |__/

    "Declarative on-scroll reveal animations."

/*=============================================================================

    scrollReveal.js is inspired by cbpScroller.js, © 2014, Codrops.

    Licensed under the MIT license.
    http://www.opensource.org/licenses/mit-license.php

    scrollReveal.js, © 2014 https://twitter.com/julianlloyd

=============================================================================*/

;(function(window){'use strict';var docElem=window.document.documentElement;function getViewportH(){var client=docElem['clientHeight'],inner=window['innerHeight'];return(client<inner)?inner:client}function getOffset(el){var offsetTop=0,offsetLeft=0;do{if(!isNaN(el.offsetTop)){offsetTop+=el.offsetTop}if(!isNaN(el.offsetLeft)){offsetLeft+=el.offsetLeft}}while(el=el.offsetParent)return{top:offsetTop,left:offsetLeft}}function isElementInViewport(el,h){var scrolled=window.pageYOffset,viewed=scrolled+getViewportH(),elH=el.offsetHeight,elTop=getOffset(el).top,elBottom=elTop+elH,h=h||0;return(elTop+elH*h)<=viewed&&(elBottom)>=scrolled}function extend(a,b){for(var key in b){if(b.hasOwnProperty(key)){a[key]=b[key]}}return a}function scrollReveal(options){this.options=extend(this.defaults,options);this._init()}scrollReveal.prototype={defaults:{axis:'y',distance:'25px',duration:'0.66s',delay:'0s',viewportFactor:0.33},_init:function(){var self=this;this.elems=Array.prototype.slice.call(docElem.querySelectorAll('[data-scrollReveal]'));this.scrolled=false;this.elems.forEach(function(el,i){self.animate(el)});var scrollHandler=function(){if(!self.scrolled){self.scrolled=true;setTimeout(function(){self._scrollPage()},60)}};var resizeHandler=function(){function delayed(){self._scrollPage();self.resizeTimeout=null}if(self.resizeTimeout){clearTimeout(self.resizeTimeout)}self.resizeTimeout=setTimeout(delayed,200)};window.addEventListener('scroll',scrollHandler,false);window.addEventListener('resize',resizeHandler,false)},_scrollPage:function(){var self=this;this.elems.forEach(function(el,i){if(isElementInViewport(el,self.options.viewportFactor)){self.animate(el)}});this.scrolled=false},parseLanguage:function(el){var words=el.getAttribute('data-scrollreveal').split(/[, ]+/),enterFrom,parsed={};function filter(words){var ret=[],blacklist=["from","the","and","then","but"];words.forEach(function(word,i){if(blacklist.indexOf(word)>-1){return}ret.push(word)});return ret}words=filter(words);words.forEach(function(word,i){switch(word){case"enter":enterFrom=words[i+1];if(enterFrom=="top"||enterFrom=="bottom"){parsed.axis="y"}if(enterFrom=="left"||enterFrom=="right"){parsed.axis="x"}return;case"after":parsed.delay=words[i+1];return;case"wait":parsed.delay=words[i+1];return;case"move":parsed.distance=words[i+1];return;case"over":parsed.duration=words[i+1];return;case"trigger":parsed.eventName=words[i+1];return;default:return}});if(enterFrom=="top"||enterFrom=="left"){if(!typeof parsed.distance=="undefined"){parsed.distance="-"+parsed.distance}else{parsed.distance="-"+this.options.distance}}return parsed},genCSS:function(el,axis){var parsed=this.parseLanguage(el);var dist=parsed.distance||this.options.distance,dur=parsed.duration||this.options.duration,delay=parsed.delay||this.options.delay,axis=parsed.axis||this.options.axis;var transition="-webkit-transition: all "+dur+" ease "+delay+";"+"-moz-transition: all "+dur+" ease "+delay+";"+"-o-transition: all "+dur+" ease "+delay+";"+"transition: all "+dur+" ease "+delay+";";var initial="-webkit-transform: translate"+axis+"("+dist+");"+"-moz-transform: translate"+axis+"("+dist+");"+"transform: translate"+axis+"("+dist+");"+"opacity: 0;";var target="-webkit-transform: translate"+axis+"(0);"+"-moz-transform: translate"+axis+"(0);"+"transform: translate"+axis+"(0);"+"opacity: 1;";return{transition:transition,initial:initial,target:target,totalDuration:((parseFloat(dur)+parseFloat(delay))*1000)}},animate:function(el){var css=this.genCSS(el);if(!el.getAttribute('data-sr-init')){el.setAttribute('style',css.initial);el.setAttribute('data-sr-init',true)}if(el.getAttribute('data-sr-complete')){return}if(isElementInViewport(el,this.options.viewportFactor)){el.setAttribute('style',css.target+css.transition);setTimeout(function(){el.removeAttribute('style');el.setAttribute('data-sr-complete',true)},css.totalDuration)}}};document.addEventListener("DOMContentLoaded",function(evt){window.scrollReveal=new scrollReveal()})})(window);





/*!
* jquery.counterup.js 1.0
*
* Copyright 2013, Benjamin Intal http://gambit.ph @bfintal
* Released under the GPL v2 License
*
* Date: Nov 26, 2013
*/(function(e){"use strict";e.fn.counterUp=function(t){var n=e.extend({time:400,delay:10},t);return this.each(function(){var t=e(this),r=n,i=function(){var e=[],n=r.time/r.delay,i=t.text(),s=/[0-9]+,[0-9]+/.test(i);i=i.replace(/,/g,"");var o=/^[0-9]+$/.test(i),u=/^[0-9]+\.[0-9]+$/.test(i),a=u?(i.split(".")[1]||[]).length:0;for(var f=n;f>=1;f--){var l=parseInt(i/n*f);u&&(l=parseFloat(i/n*f).toFixed(a));if(s)while(/(\d+)(\d{3})/.test(l.toString()))l=l.toString().replace(/(\d+)(\d{3})/,"$1,$2");e.unshift(l)}t.data("counterup-nums",e);t.text("0");var c=function(){t.text(t.data("counterup-nums").shift());if(t.data("counterup-nums").length)setTimeout(t.data("counterup-func"),r.delay);else{delete t.data("counterup-nums");t.data("counterup-nums",null);t.data("counterup-func",null)}};t.data("counterup-func",c);setTimeout(t.data("counterup-func"),r.delay)};t.waypoint(i,{offset:"100%",triggerOnce:!0})})}})(jQuery);





// Generated by CoffeeScript 1.6.2
/*
jQuery Waypoints - v2.0.3
Copyright (c) 2011-2013 Caleb Troughton
Dual licensed under the MIT license and GPL license.
https://github.com/imakewebthings/jquery-waypoints/blob/master/licenses.txt
*/
(function(){var t=[].indexOf||function(t){for(var e=0,n=this.length;e<n;e++){if(e in this&&this[e]===t)return e}return-1},e=[].slice;(function(t,e){if(typeof define==="function"&&define.amd){return define("waypoints",["jquery"],function(n){return e(n,t)})}else{return e(t.jQuery,t)}})(this,function(n,r){var i,o,l,s,f,u,a,c,h,d,p,y,v,w,g,m;i=n(r);c=t.call(r,"ontouchstart")>=0;s={horizontal:{},vertical:{}};f=1;a={};u="waypoints-context-id";p="resize.waypoints";y="scroll.waypoints";v=1;w="waypoints-waypoint-ids";g="waypoint";m="waypoints";o=function(){function t(t){var e=this;this.$element=t;this.element=t[0];this.didResize=false;this.didScroll=false;this.id="context"+f++;this.oldScroll={x:t.scrollLeft(),y:t.scrollTop()};this.waypoints={horizontal:{},vertical:{}};t.data(u,this.id);a[this.id]=this;t.bind(y,function(){var t;if(!(e.didScroll||c)){e.didScroll=true;t=function(){e.doScroll();return e.didScroll=false};return r.setTimeout(t,n[m].settings.scrollThrottle)}});t.bind(p,function(){var t;if(!e.didResize){e.didResize=true;t=function(){n[m]("refresh");return e.didResize=false};return r.setTimeout(t,n[m].settings.resizeThrottle)}})}t.prototype.doScroll=function(){var t,e=this;t={horizontal:{newScroll:this.$element.scrollLeft(),oldScroll:this.oldScroll.x,forward:"right",backward:"left"},vertical:{newScroll:this.$element.scrollTop(),oldScroll:this.oldScroll.y,forward:"down",backward:"up"}};if(c&&(!t.vertical.oldScroll||!t.vertical.newScroll)){n[m]("refresh")}n.each(t,function(t,r){var i,o,l;l=[];o=r.newScroll>r.oldScroll;i=o?r.forward:r.backward;n.each(e.waypoints[t],function(t,e){var n,i;if(r.oldScroll<(n=e.offset)&&n<=r.newScroll){return l.push(e)}else if(r.newScroll<(i=e.offset)&&i<=r.oldScroll){return l.push(e)}});l.sort(function(t,e){return t.offset-e.offset});if(!o){l.reverse()}return n.each(l,function(t,e){if(e.options.continuous||t===l.length-1){return e.trigger([i])}})});return this.oldScroll={x:t.horizontal.newScroll,y:t.vertical.newScroll}};t.prototype.refresh=function(){var t,e,r,i=this;r=n.isWindow(this.element);e=this.$element.offset();this.doScroll();t={horizontal:{contextOffset:r?0:e.left,contextScroll:r?0:this.oldScroll.x,contextDimension:this.$element.width(),oldScroll:this.oldScroll.x,forward:"right",backward:"left",offsetProp:"left"},vertical:{contextOffset:r?0:e.top,contextScroll:r?0:this.oldScroll.y,contextDimension:r?n[m]("viewportHeight"):this.$element.height(),oldScroll:this.oldScroll.y,forward:"down",backward:"up",offsetProp:"top"}};return n.each(t,function(t,e){return n.each(i.waypoints[t],function(t,r){var i,o,l,s,f;i=r.options.offset;l=r.offset;o=n.isWindow(r.element)?0:r.$element.offset()[e.offsetProp];if(n.isFunction(i)){i=i.apply(r.element)}else if(typeof i==="string"){i=parseFloat(i);if(r.options.offset.indexOf("%")>-1){i=Math.ceil(e.contextDimension*i/100)}}r.offset=o-e.contextOffset+e.contextScroll-i;if(r.options.onlyOnScroll&&l!=null||!r.enabled){return}if(l!==null&&l<(s=e.oldScroll)&&s<=r.offset){return r.trigger([e.backward])}else if(l!==null&&l>(f=e.oldScroll)&&f>=r.offset){return r.trigger([e.forward])}else if(l===null&&e.oldScroll>=r.offset){return r.trigger([e.forward])}})})};t.prototype.checkEmpty=function(){if(n.isEmptyObject(this.waypoints.horizontal)&&n.isEmptyObject(this.waypoints.vertical)){this.$element.unbind([p,y].join(" "));return delete a[this.id]}};return t}();l=function(){function t(t,e,r){var i,o;r=n.extend({},n.fn[g].defaults,r);if(r.offset==="bottom-in-view"){r.offset=function(){var t;t=n[m]("viewportHeight");if(!n.isWindow(e.element)){t=e.$element.height()}return t-n(this).outerHeight()}}this.$element=t;this.element=t[0];this.axis=r.horizontal?"horizontal":"vertical";this.callback=r.handler;this.context=e;this.enabled=r.enabled;this.id="waypoints"+v++;this.offset=null;this.options=r;e.waypoints[this.axis][this.id]=this;s[this.axis][this.id]=this;i=(o=t.data(w))!=null?o:[];i.push(this.id);t.data(w,i)}t.prototype.trigger=function(t){if(!this.enabled){return}if(this.callback!=null){this.callback.apply(this.element,t)}if(this.options.triggerOnce){return this.destroy()}};t.prototype.disable=function(){return this.enabled=false};t.prototype.enable=function(){this.context.refresh();return this.enabled=true};t.prototype.destroy=function(){delete s[this.axis][this.id];delete this.context.waypoints[this.axis][this.id];return this.context.checkEmpty()};t.getWaypointsByElement=function(t){var e,r;r=n(t).data(w);if(!r){return[]}e=n.extend({},s.horizontal,s.vertical);return n.map(r,function(t){return e[t]})};return t}();d={init:function(t,e){var r;if(e==null){e={}}if((r=e.handler)==null){e.handler=t}this.each(function(){var t,r,i,s;t=n(this);i=(s=e.context)!=null?s:n.fn[g].defaults.context;if(!n.isWindow(i)){i=t.closest(i)}i=n(i);r=a[i.data(u)];if(!r){r=new o(i)}return new l(t,r,e)});n[m]("refresh");return this},disable:function(){return d._invoke(this,"disable")},enable:function(){return d._invoke(this,"enable")},destroy:function(){return d._invoke(this,"destroy")},prev:function(t,e){return d._traverse.call(this,t,e,function(t,e,n){if(e>0){return t.push(n[e-1])}})},next:function(t,e){return d._traverse.call(this,t,e,function(t,e,n){if(e<n.length-1){return t.push(n[e+1])}})},_traverse:function(t,e,i){var o,l;if(t==null){t="vertical"}if(e==null){e=r}l=h.aggregate(e);o=[];this.each(function(){var e;e=n.inArray(this,l[t]);return i(o,e,l[t])});return this.pushStack(o)},_invoke:function(t,e){t.each(function(){var t;t=l.getWaypointsByElement(this);return n.each(t,function(t,n){n[e]();return true})});return this}};n.fn[g]=function(){var t,r;r=arguments[0],t=2<=arguments.length?e.call(arguments,1):[];if(d[r]){return d[r].apply(this,t)}else if(n.isFunction(r)){return d.init.apply(this,arguments)}else if(n.isPlainObject(r)){return d.init.apply(this,[null,r])}else if(!r){return n.error("jQuery Waypoints needs a callback function or handler option.")}else{return n.error("The "+r+" method does not exist in jQuery Waypoints.")}};n.fn[g].defaults={context:r,continuous:true,enabled:true,horizontal:false,offset:0,triggerOnce:false};h={refresh:function(){return n.each(a,function(t,e){return e.refresh()})},viewportHeight:function(){var t;return(t=r.innerHeight)!=null?t:i.height()},aggregate:function(t){var e,r,i;e=s;if(t){e=(i=a[n(t).data(u)])!=null?i.waypoints:void 0}if(!e){return[]}r={horizontal:[],vertical:[]};n.each(r,function(t,i){n.each(e[t],function(t,e){return i.push(e)});i.sort(function(t,e){return t.offset-e.offset});r[t]=n.map(i,function(t){return t.element});return r[t]=n.unique(r[t])});return r},above:function(t){if(t==null){t=r}return h._filter(t,"vertical",function(t,e){return e.offset<=t.oldScroll.y})},below:function(t){if(t==null){t=r}return h._filter(t,"vertical",function(t,e){return e.offset>t.oldScroll.y})},left:function(t){if(t==null){t=r}return h._filter(t,"horizontal",function(t,e){return e.offset<=t.oldScroll.x})},right:function(t){if(t==null){t=r}return h._filter(t,"horizontal",function(t,e){return e.offset>t.oldScroll.x})},enable:function(){return h._invoke("enable")},disable:function(){return h._invoke("disable")},destroy:function(){return h._invoke("destroy")},extendFn:function(t,e){return d[t]=e},_invoke:function(t){var e;e=n.extend({},s.vertical,s.horizontal);return n.each(e,function(e,n){n[t]();return true})},_filter:function(t,e,r){var i,o;i=a[n(t).data(u)];if(!i){return[]}o=[];n.each(i.waypoints[e],function(t,e){if(r(i,e)){return o.push(e)}});o.sort(function(t,e){return t.offset-e.offset});return n.map(o,function(t){return t.element})}};n[m]=function(){var t,n;n=arguments[0],t=2<=arguments.length?e.call(arguments,1):[];if(h[n]){return h[n].apply(null,t)}else{return h.aggregate.call(null,n)}};n[m].settings={resizeThrottle:100,scrollThrottle:30};return i.load(function(){return n[m]("refresh")})})}).call(this);





/*
 * jQuery FlexSlider v2.2.0
 * Copyright 2012 WooThemes
 * Contributing Author: Tyler Smith
 */
 (function(e){if(typeof define==="function"&&define.amd){define(["jquery"],e)}else{e(jQuery)}})(function(e){e.flexslider=function(t,n){var r=e(t);r.vars=e.extend({},e.flexslider.defaults,n);var i=r.vars.namespace,s=("ontouchstart"in window||window.DocumentTouch&&document instanceof DocumentTouch)&&r.vars.touch,o="click touchend",u="",a,f=r.vars.direction==="vertical",l=r.vars.reverse,c=r.vars.itemWidth>0,h=r.vars.animation==="fade",p=r.vars.asNavFor!=="",d={};focused=true;e.data(t,"flexslider",r);d={init:function(){r.animating=false;r.currentSlide=r.vars.startAt;r.animatingTo=r.currentSlide;r.atEnd=r.currentSlide===0||r.currentSlide===r.last;r.containerSelector=r.vars.selector.substr(0,r.vars.selector.search(" "));r.slides=e(r.vars.selector,r);r.container=e(r.containerSelector,r);r.count=r.slides.length;r.syncExists=e(r.vars.sync).length>0;if(r.vars.animation==="slide")r.vars.animation="swing";r.prop=f?"top":"marginLeft";r.args={};r.manualPause=false;r.stopped=false;r.transitions=!r.vars.video&&!h&&r.vars.useCSS&&function(){var e=document.createElement("div"),t=["perspectiveProperty","WebkitPerspective","MozPerspective","OPerspective","msPerspective"];for(var n in t){if(e.style[t[n]]!==undefined){r.pfx=t[n].replace("Perspective","").toLowerCase();r.prop="-"+r.pfx+"-transform";return true}}return false}();if(r.vars.controlsContainer!=="")r.controlsContainer=e(r.vars.controlsContainer).length>0&&e(r.vars.controlsContainer);if(r.vars.manualControls!=="")r.manualControls=e(r.vars.manualControls).length>0&&e(r.vars.manualControls);if(r.vars.randomize){r.slides.sort(function(){return Math.round(Math.random())-.5});r.container.empty().append(r.slides)}r.doMath();if(p)d.asNav.setup();r.setup("init");if(r.vars.controlNav)d.controlNav.setup();if(r.vars.directionNav)d.directionNav.setup();if(r.vars.keyboard&&(e(r.containerSelector).length===1||r.vars.multipleKeyboard)){e(document).bind("keyup",function(e){var t=e.keyCode;if(!r.animating&&(t===39||t===37)){var n=t===39?r.getTarget("next"):t===37?r.getTarget("prev"):false;r.flexAnimate(n,r.vars.pauseOnAction)}})}if(r.vars.mousewheel){r.bind("mousewheel",function(e,t,n,i){e.preventDefault();var s=t<0?r.getTarget("next"):r.getTarget("prev");r.flexAnimate(s,r.vars.pauseOnAction)})}if(r.vars.pausePlay)d.pausePlay.setup();if(r.vars.slideshow){if(r.vars.pauseOnHover){r.hover(function(){if(!r.manualPlay&&!r.manualPause)r.pause()},function(){if(!r.manualPause&&!r.manualPlay&&!r.stopped)r.play()})}r.vars.initDelay>0?setTimeout(r.play,r.vars.initDelay):r.play()}if(s&&r.vars.touch)d.touch();if(!h||h&&r.vars.smoothHeight)e(window).bind("resize focus",d.resize);setTimeout(function(){r.vars.start(r)},200)},asNav:{setup:function(){r.asNav=true;r.animatingTo=Math.floor(r.currentSlide/r.move);r.currentItem=r.currentSlide;r.slides.removeClass(i+"active-slide").eq(r.currentItem).addClass(i+"active-slide");r.slides.click(function(t){t.preventDefault();var n=e(this),s=n.index();var o=n.offset().left-e(r).scrollLeft();if(o<=0&&n.hasClass(i+"active-slide")){r.flexAnimate(r.getTarget("prev"),true)}else if(!e(r.vars.asNavFor).data("flexslider").animating&&!n.hasClass(i+"active-slide")){r.direction=r.currentItem<s?"next":"prev";r.flexAnimate(s,r.vars.pauseOnAction,false,true,true)}})}},controlNav:{setup:function(){if(!r.manualControls){d.controlNav.setupPaging()}else{d.controlNav.setupManual()}},setupPaging:function(){var t=r.vars.controlNav==="thumbnails"?"control-thumbs":"control-paging",n=1,s;r.controlNavScaffold=e('<ol class="'+i+"control-nav "+i+t+'"></ol>');if(r.pagingCount>1){for(var a=0;a<r.pagingCount;a++){s=r.vars.controlNav==="thumbnails"?'<img src="'+r.slides.eq(a).attr("data-thumb")+'"/>':"<a>"+n+"</a>";r.controlNavScaffold.append("<li>"+s+"</li>");n++}}r.controlsContainer?e(r.controlsContainer).append(r.controlNavScaffold):r.append(r.controlNavScaffold);d.controlNav.set();d.controlNav.active();r.controlNavScaffold.delegate("a, img",o,function(t){t.preventDefault();if(u===""||u===t.type){var n=e(this),s=r.controlNav.index(n);if(!n.hasClass(i+"active")){r.direction=s>r.currentSlide?"next":"prev";r.flexAnimate(s,r.vars.pauseOnAction)}}if(u===""){u=t.type}d.setToClearWatchedEvent()})},setupManual:function(){r.controlNav=r.manualControls;d.controlNav.active();r.controlNav.bind(o,function(t){t.preventDefault();if(u===""||u===t.type){var n=e(this),s=r.controlNav.index(n);if(!n.hasClass(i+"active")){s>r.currentSlide?r.direction="next":r.direction="prev";r.flexAnimate(s,r.vars.pauseOnAction)}}if(u===""){u=t.type}d.setToClearWatchedEvent()})},set:function(){var t=r.vars.controlNav==="thumbnails"?"img":"a";r.controlNav=e("."+i+"control-nav li "+t,r.controlsContainer?r.controlsContainer:r)},active:function(){r.controlNav.removeClass(i+"active").eq(r.animatingTo).addClass(i+"active")},update:function(t,n){if(r.pagingCount>1&&t==="add"){r.controlNavScaffold.append(e("<li><a>"+r.count+"</a></li>"))}else if(r.pagingCount===1){r.controlNavScaffold.find("li").remove()}else{r.controlNav.eq(n).closest("li").remove()}d.controlNav.set();r.pagingCount>1&&r.pagingCount!==r.controlNav.length?r.update(n,t):d.controlNav.active()}},directionNav:{setup:function(){var t=e('<ul class="'+i+'direction-nav"><li><a class="'+i+'prev" href="#">'+r.vars.prevText+'</a></li><li><a class="'+i+'next" href="#">'+r.vars.nextText+"</a></li></ul>");if(r.controlsContainer){e(r.controlsContainer).append(t);r.directionNav=e("."+i+"direction-nav li a",r.controlsContainer)}else{r.append(t);r.directionNav=e("."+i+"direction-nav li a",r)}d.directionNav.update();r.directionNav.bind(o,function(t){t.preventDefault();var n;if(u===""||u===t.type){n=e(this).hasClass(i+"next")?r.getTarget("next"):r.getTarget("prev");r.flexAnimate(n,r.vars.pauseOnAction)}if(u===""){u=t.type}d.setToClearWatchedEvent()})},update:function(){var e=i+"disabled";if(r.pagingCount===1){r.directionNav.addClass(e).attr("tabindex","-1")}else if(!r.vars.animationLoop){if(r.animatingTo===0){r.directionNav.removeClass(e).filter("."+i+"prev").addClass(e).attr("tabindex","-1")}else if(r.animatingTo===r.last){r.directionNav.removeClass(e).filter("."+i+"next").addClass(e).attr("tabindex","-1")}else{r.directionNav.removeClass(e).removeAttr("tabindex")}}else{r.directionNav.removeClass(e).removeAttr("tabindex")}}},pausePlay:{setup:function(){var t=e('<div class="'+i+'pauseplay"><a></a></div>');if(r.controlsContainer){r.controlsContainer.append(t);r.pausePlay=e("."+i+"pauseplay a",r.controlsContainer)}else{r.append(t);r.pausePlay=e("."+i+"pauseplay a",r)}d.pausePlay.update(r.vars.slideshow?i+"pause":i+"play");r.pausePlay.bind(o,function(t){t.preventDefault();if(u===""||u===t.type){if(e(this).hasClass(i+"pause")){r.manualPause=true;r.manualPlay=false;r.pause()}else{r.manualPause=false;r.manualPlay=true;r.play()}}if(u===""){u=t.type}d.setToClearWatchedEvent()})},update:function(e){e==="play"?r.pausePlay.removeClass(i+"pause").addClass(i+"play").text(r.vars.playText):r.pausePlay.removeClass(i+"play").addClass(i+"pause").text(r.vars.pauseText)}},touch:function(){function p(o){if(r.animating){o.preventDefault()}else if(o.touches.length===1){r.pause();s=f?r.h:r.w;u=Number(new Date);i=c&&l&&r.animatingTo===r.last?0:c&&l?r.limit-(r.itemW+r.vars.itemMargin)*r.move*r.animatingTo:c&&r.currentSlide===r.last?r.limit:c?(r.itemW+r.vars.itemMargin)*r.move*r.currentSlide:l?(r.last-r.currentSlide+r.cloneOffset)*s:(r.currentSlide+r.cloneOffset)*s;e=f?o.touches[0].pageY:o.touches[0].pageX;n=f?o.touches[0].pageX:o.touches[0].pageY;t.addEventListener("touchmove",d,false);t.addEventListener("touchend",v,false)}}function d(t){o=f?e-t.touches[0].pageY:e-t.touches[0].pageX;a=f?Math.abs(o)<Math.abs(t.touches[0].pageX-n):Math.abs(o)<Math.abs(t.touches[0].pageY-n);if(!a||Number(new Date)-u>500){t.preventDefault();if(!h&&r.transitions){if(!r.vars.animationLoop){o=o/(r.currentSlide===0&&o<0||r.currentSlide===r.last&&o>0?Math.abs(o)/s+2:1)}r.setProps(i+o,"setTouch")}}}function v(f){t.removeEventListener("touchmove",d,false);if(r.animatingTo===r.currentSlide&&!a&&!(o===null)){var c=l?-o:o,p=c>0?r.getTarget("next"):r.getTarget("prev");if(r.canAdvance(p)&&(Number(new Date)-u<550&&Math.abs(c)>50||Math.abs(c)>s/2)){r.flexAnimate(p,r.vars.pauseOnAction)}else{if(!h)r.flexAnimate(r.currentSlide,r.vars.pauseOnAction,true)}}t.removeEventListener("touchend",v,false);e=null;n=null;o=null;i=null}var e,n,i,s,o,u,a=false;t.addEventListener("touchstart",p,false)},resize:function(){if(!r.animating&&r.is(":visible")){if(!c)r.doMath();if(h){d.smoothHeight()}else if(c){r.slides.width(r.computedW);r.update(r.pagingCount);r.setProps()}else if(f){r.viewport.height(r.h);r.setProps(r.h,"setTotal")}else{if(r.vars.smoothHeight)d.smoothHeight();r.newSlides.width(r.computedW);r.setProps(r.computedW,"setTotal")}}},smoothHeight:function(e){if(!f||h){var t=h?r:r.viewport;e?t.animate({height:r.slides.eq(r.animatingTo).height()},e):t.height(r.slides.eq(r.animatingTo).height())}},sync:function(t){var n=e(r.vars.sync).data("flexslider"),i=r.animatingTo;switch(t){case"animate":n.flexAnimate(i,r.vars.pauseOnAction,false,true);break;case"play":if(!n.playing&&!n.asNav){n.play()}break;case"pause":n.pause();break}},setToClearWatchedEvent:function(){clearTimeout(a);a=setTimeout(function(){u=""},3e3)}};r.flexAnimate=function(t,n,o,u,a){if(p&&r.pagingCount===1)r.direction=r.currentItem<t?"next":"prev";if(!r.animating&&(r.canAdvance(t,a)||o)&&r.is(":visible")){if(p&&u){var v=e(r.vars.asNavFor).data("flexslider");r.atEnd=t===0||t===r.count-1;v.flexAnimate(t,true,false,true,a);r.direction=r.currentItem<t?"next":"prev";v.direction=r.direction;if(Math.ceil((t+1)/r.visible)-1!==r.currentSlide&&t!==0){r.currentItem=t;r.slides.removeClass(i+"active-slide").eq(t).addClass(i+"active-slide");t=Math.floor(t/r.visible)}else{r.currentItem=t;r.slides.removeClass(i+"active-slide").eq(t).addClass(i+"active-slide");return false}}r.animating=true;r.animatingTo=t;r.vars.before(r);if(n)r.pause();if(r.syncExists&&!a)d.sync("animate");if(r.vars.controlNav)d.controlNav.active();if(!c)r.slides.removeClass(i+"active-slide").eq(t).addClass(i+"active-slide");r.atEnd=t===0||t===r.last;if(r.vars.directionNav)d.directionNav.update();if(t===r.last){r.vars.end(r);if(!r.vars.animationLoop)r.pause()}if(!h){var m=f?r.slides.filter(":first").height():r.computedW,g,y,b;if(c){g=r.vars.itemMargin;b=(r.itemW+g)*r.move*r.animatingTo;y=b>r.limit&&r.visible!==1?r.limit:b}else if(r.currentSlide===0&&t===r.count-1&&r.vars.animationLoop&&r.direction!=="next"){y=l?(r.count+r.cloneOffset)*m:0}else if(r.currentSlide===r.last&&t===0&&r.vars.animationLoop&&r.direction!=="prev"){y=l?0:(r.count+1)*m}else{y=l?(r.count-1-t+r.cloneOffset)*m:(t+r.cloneOffset)*m}r.setProps(y,"",r.vars.animationSpeed);if(r.transitions){if(!r.vars.animationLoop||!r.atEnd){r.animating=false;r.currentSlide=r.animatingTo}r.container.unbind("webkitTransitionEnd transitionend");r.container.bind("webkitTransitionEnd transitionend",function(){r.wrapup(m)})}else{r.container.animate(r.args,r.vars.animationSpeed,r.vars.easing,function(){r.wrapup(m)})}}else{if(!s){r.slides.eq(r.currentSlide).css({zIndex:1}).animate({opacity:0},r.vars.animationSpeed,r.vars.easing);r.slides.eq(t).css({zIndex:2}).animate({opacity:1},r.vars.animationSpeed,r.vars.easing,r.wrapup)}else{r.slides.eq(r.currentSlide).css({opacity:0,zIndex:1});r.slides.eq(t).css({opacity:1,zIndex:2});r.animating=false;r.currentSlide=r.animatingTo}}if(r.vars.smoothHeight)d.smoothHeight(r.vars.animationSpeed)}};r.wrapup=function(e){if(!h&&!c){if(r.currentSlide===0&&r.animatingTo===r.last&&r.vars.animationLoop){r.setProps(e,"jumpEnd")}else if(r.currentSlide===r.last&&r.animatingTo===0&&r.vars.animationLoop){r.setProps(e,"jumpStart")}}r.animating=false;r.currentSlide=r.animatingTo;r.vars.after(r)};r.animateSlides=function(){if(!r.animating&&focused)r.flexAnimate(r.getTarget("next"))};r.pause=function(){clearInterval(r.animatedSlides);r.animatedSlides=null;r.playing=false;if(r.vars.pausePlay)d.pausePlay.update("play");if(r.syncExists)d.sync("pause")};r.play=function(){r.animatedSlides=r.animatedSlides||setInterval(r.animateSlides,r.vars.slideshowSpeed);r.playing=true;if(r.vars.pausePlay)d.pausePlay.update("pause");if(r.syncExists)d.sync("play")};r.stop=function(){r.pause();r.stopped=true};r.canAdvance=function(e,t){var n=p?r.pagingCount-1:r.last;return t?true:p&&r.currentItem===r.count-1&&e===0&&r.direction==="prev"?true:p&&r.currentItem===0&&e===r.pagingCount-1&&r.direction!=="next"?false:e===r.currentSlide&&!p?false:r.vars.animationLoop?true:r.atEnd&&r.currentSlide===0&&e===n&&r.direction!=="next"?false:r.atEnd&&r.currentSlide===n&&e===0&&r.direction==="next"?false:true};r.getTarget=function(e){r.direction=e;if(e==="next"){return r.currentSlide===r.last?0:r.currentSlide+1}else{return r.currentSlide===0?r.last:r.currentSlide-1}};r.setProps=function(e,t,n){var i=function(){var n=e?e:(r.itemW+r.vars.itemMargin)*r.move*r.animatingTo,i=function(){if(c){return t==="setTouch"?e:l&&r.animatingTo===r.last?0:l?r.limit-(r.itemW+r.vars.itemMargin)*r.move*r.animatingTo:r.animatingTo===r.last?r.limit:n}else{switch(t){case"setTotal":return l?(r.count-1-r.currentSlide+r.cloneOffset)*e:(r.currentSlide+r.cloneOffset)*e;case"setTouch":return l?e:e;case"jumpEnd":return l?e:r.count*e;case"jumpStart":return l?r.count*e:e;default:return e}}}();return i*-1+"px"}();if(r.transitions){i=f?"translate3d(0,"+i+",0)":"translate3d("+i+",0,0)";n=n!==undefined?n/1e3+"s":"0s";r.container.css("-"+r.pfx+"-transition-duration",n)}r.args[r.prop]=i;if(r.transitions||n===undefined)r.container.css(r.args)};r.setup=function(t){if(!h){var n,o;if(t==="init"){r.viewport=e('<div class="'+i+'viewport"></div>').css({overflow:"hidden",position:"relative"}).appendTo(r).append(r.container);r.cloneCount=0;r.cloneOffset=0;if(l){o=e.makeArray(r.slides).reverse();r.slides=e(o);r.container.empty().append(r.slides)}}if(r.vars.animationLoop&&!c){r.cloneCount=2;r.cloneOffset=1;if(t!=="init")r.container.find(".clone").remove();r.container.append(r.slides.first().clone().addClass("clone").attr("aria-hidden","true")).prepend(r.slides.last().clone().addClass("clone").attr("aria-hidden","true"))}r.newSlides=e(r.vars.selector,r);n=l?r.count-1-r.currentSlide+r.cloneOffset:r.currentSlide+r.cloneOffset;if(f&&!c){r.container.height((r.count+r.cloneCount)*200+"%").css("position","absolute").width("100%");setTimeout(function(){r.newSlides.css({display:"block"});r.doMath();r.viewport.height(r.h);r.setProps(n*r.h,"init")},t==="init"?100:0)}else{r.container.width((r.count+r.cloneCount)*200+"%");r.setProps(n*r.computedW,"init");setTimeout(function(){r.doMath();r.newSlides.css({width:r.computedW,"float":"left",display:"block"});if(r.vars.smoothHeight)d.smoothHeight()},t==="init"?100:0)}}else{r.slides.css({width:"100%","float":"left",marginRight:"-100%",position:"relative"});if(t==="init"){if(!s){r.slides.css({opacity:0,display:"block",zIndex:1}).eq(r.currentSlide).css({zIndex:2}).animate({opacity:1},r.vars.animationSpeed,r.vars.easing)}else{r.slides.css({opacity:0,display:"block",webkitTransition:"opacity "+r.vars.animationSpeed/1e3+"s ease",zIndex:1}).eq(r.currentSlide).css({opacity:1,zIndex:2})}}if(r.vars.smoothHeight)d.smoothHeight()}if(!c)r.slides.removeClass(i+"active-slide").eq(r.currentSlide).addClass(i+"active-slide")};r.doMath=function(){var e=r.slides.first(),t=r.vars.itemMargin,n=r.vars.minItems,i=r.vars.maxItems;r.w=r.width();r.h=e.height();r.boxPadding=e.outerWidth()-e.width();if(c){r.itemT=r.vars.itemWidth+t;r.minW=n?n*r.itemT:r.w;r.maxW=i?i*r.itemT-t:r.w;r.itemW=r.minW>r.w?(r.w-t*(n-1))/n:r.maxW<r.w?(r.w-t*(i-1))/i:r.vars.itemWidth>r.w?r.w:r.vars.itemWidth;r.visible=Math.floor(r.w/r.itemW);r.move=r.vars.move>0&&r.vars.move<r.visible?r.vars.move:r.visible;r.pagingCount=Math.ceil((r.count-r.visible)/r.move+1);r.last=r.pagingCount-1;r.limit=r.pagingCount===1?0:r.vars.itemWidth>r.w?r.itemW*(r.count-1)+t*(r.count-1):(r.itemW+t)*r.count-r.w-t}else{r.itemW=r.w;r.pagingCount=r.count;r.last=r.count-1}r.computedW=r.itemW-r.boxPadding};r.update=function(e,t){r.doMath();if(!c){if(e<r.currentSlide){r.currentSlide+=1}else if(e<=r.currentSlide&&e!==0){r.currentSlide-=1}r.animatingTo=r.currentSlide}if(r.vars.controlNav&&!r.manualControls){if(t==="add"&&!c||r.pagingCount>r.controlNav.length){d.controlNav.update("add")}else if(t==="remove"&&!c||r.pagingCount<r.controlNav.length){if(c&&r.currentSlide>r.last){r.currentSlide-=1;r.animatingTo-=1}d.controlNav.update("remove",r.last)}}if(r.vars.directionNav)d.directionNav.update()};r.addSlide=function(t,n){var i=e(t);r.count+=1;r.last=r.count-1;if(f&&l){n!==undefined?r.slides.eq(r.count-n).after(i):r.container.prepend(i)}else{n!==undefined?r.slides.eq(n).before(i):r.container.append(i)}r.update(n,"add");r.slides=e(r.vars.selector+":not(.clone)",r);r.setup();r.vars.added(r)};r.removeSlide=function(t){var n=isNaN(t)?r.slides.index(e(t)):t;r.count-=1;r.last=r.count-1;if(isNaN(t)){e(t,r.slides).remove()}else{f&&l?r.slides.eq(r.last).remove():r.slides.eq(t).remove()}r.doMath();r.update(n,"remove");r.slides=e(r.vars.selector+":not(.clone)",r);r.setup();r.vars.removed(r)};d.init()};e(window).blur(function(e){focused=false}).focus(function(e){focused=true});e.flexslider.defaults={namespace:"flex-",selector:".slides > li",animation:"fade",easing:"swing",direction:"horizontal",reverse:false,animationLoop:true,smoothHeight:false,startAt:0,slideshow:true,slideshowSpeed:7e3,animationSpeed:600,initDelay:0,randomize:false,pauseOnAction:true,pauseOnHover:false,useCSS:true,touch:true,video:false,controlNav:true,directionNav:true,prevText:"Previous",nextText:"Next",keyboard:true,multipleKeyboard:false,mousewheel:false,pausePlay:false,pauseText:"Pause",playText:"Play",controlsContainer:"",manualControls:"",sync:"",asNavFor:"",itemWidth:0,itemMargin:0,minItems:0,maxItems:0,move:0,start:function(){},before:function(){},after:function(){},end:function(){},added:function(){},removed:function(){}};e.fn.flexslider=function(t){if(t===undefined)t={};if(typeof t==="object"){return this.each(function(){var n=e(this),r=t.selector?t.selector:".slides > li",i=n.find(r);if(i.length===1){i.fadeIn(400);if(t.start)t.start(n)}else if(n.data("flexslider")===undefined){new e.flexslider(this,t)}})}else{var n=e(this).data("flexslider");switch(t){case"play":n.play();break;case"pause":n.pause();break;case"stop":n.stop();break;case"next":n.flexAnimate(n.getTarget("next"),true);break;case"prev":case"previous":n.flexAnimate(n.getTarget("prev"),true);break;default:if(typeof t==="number")n.flexAnimate(t,true)}}}});


























<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
#msg_zzjs
{
width: 300px;
height: 186px; *height:186px;_height:170px;margin:10pxauto0;zoom:1;overflow:hidden;font-size:12px;line-height:20px;margin-bottom:4px;background:#ffffff;}
#msg_zzjs a
{
margin-right: 6px;
color: #003C71;
text-decoration: none;
}
#msg_zzjs a:hover
{
color: #c00;
text-decoration: underline;
}
#msg_zzjs img
{
margin-top: 2px;
}
#msg_zzjs span
{
color: #888;
}
#msg_zzjs div
{
padding: 8px 0 11px 0;
overflow: hidden;
zoom: 1;
}
#msg_zzjs span a
{
display: block;
}
#msg_zzjs img
{
float: left;
width: 50px;
height: 50px;
padding: 2px;
border: #D6D6D6 1px solid;
}
#msg_zzjs p
{
float: left;
width: 295px;
padding-left: 5px;
}
</style>
</head>
<body>
<div>
<table width="320" cellpadding="0" cellspacing="0" align="left" style="border-collapse: collapse; border: 1px solid #f90;">
    <tr>
        <td valign="top">
<div class="Contentnr auto">
    <div id="msg_zzjs">
        <div class="con">
<p><a href="#" target="_blank">新闻资讯一</a>，灰太狠抓住美羊羊，并把美羊羊的肚子搞大。</p>
        </div>
        <div class="con">
<p><a href="#" target="_blank">新闻资讯二</a>，红太狼得知后特别生气，用平底锅狠狠的拍灰太狠。</p>
        </div>
        <div class="con">
<p><a href="#" target="_blank">新闻资讯三</a>，灰太狠委屈的说：“老婆，其实我只是想要你多吃到一只小羊而已。”</p>
        </div>
        <div class="con">
<p><a href="#" target="_blank">新闻资讯四</a>，一只乌鸦不小心将大便排在了狐狸身上，</p>
        </div>
        <div class="con">
<p><a href="#" target="_blank">新闻资讯五</a>，狐狸大怒：这么多年了骗你块肉，你还记仇呀。</p>
        </div>
        <div class="con">
<p><a href="#" target="_blank">新闻资讯六</a>，乌鸦说道：你不说我还真忘记了，</p>
        </div>
        <div class="con">
<p><a href="#" target="_blank">新闻资讯七</a>，现在物价都涨这么高，你应该还我头猪。</p>
        </div>
        <div class="con">
<p><a href="#" target="_blank">新闻资讯八</a>，一日，一只麻雀不小心飞进燕子窝，正巧雄燕子在窝里。</p>
        </div>
        <div class="con">
<p><a href="#" target="_blank">新闻资讯九</a>，雄燕子吼道：“你是何方妖孽？”麻雀吃了一惊，马上说：“老公，是我啊，刚整完容。”</p>
        </div>
    </div>
    </div>
  </td>
 </tr>
 </table>
<script language="javascript">
var $ = function(d) {
    typeof d == "string" && (d = document.getElementById(d));
    return $.fn.call(d);
};
$.fn = function() {
    this.addEvent = function(sEventType, fnHandler) {
if (this.addEventListener) { this.addEventListener(sEventType, fnHandler, false); }
else if (this.attachEvent) { this.attachEvent("on" + sEventType, fnHandler); }
else { this["on" + sEventType] = fnHandler; }
}
    this.removeEvent = function(sEventType, fnHandler) {
if (this.removeEventListener) { this.removeEventListener(sEventType, fnHandler, false); }
else if (this.detachEvent) { this.detachEvent("on" + sEventType, fnHandler); }
else { this["on" + sEventType] = null; }
    }
    return this;
};
var Class = { create: function() { return function() { this.initialize.apply(this, arguments); } } };
var Bind = function(obj, fun, arr) { return function() { return fun.apply(obj, arr); } }
var Marquee = Class.create();
Marquee.prototype = {
    initialize: function(id, name, out, speed) {
this.name = name;
this.box = $(id);
this.out = 3;
this.speed = speed;
this.d = 1;
this.box.style.position = "relative";
this.box.scrollTop = 0;
var _li = this.box.firstChild;
while (typeof (_li.tagName) == "undefined") _li = _li.nextSibling;
this.lis = this.box.getElementsByTagName(_li.tagName);
this.len = this.lis.length;
for (var i = 0; i < this.lis.length; i++) {
    var __li = document.createElement(_li.tagName);
    __li.innerHTML = this.lis[i].innerHTML;
    this.box.appendChild(__li);
    if (this.lis[i].offsetTop >= this.box.offsetHeight) break;
}
this.Start();
this.box.addEvent("mouseover", Bind(this, function() { clearTimeout(this.timeout); }, []));
this.box.addEvent("mouseout", Bind(this, this.Start, []));
    },
    Start: function() {
clearTimeout(this.timeout);
this.timeout = setTimeout(this.name + ".Up()", this.out * 1000)
    },
    Up: function() {
clearInterval(this.interval);
this.interval = setInterval(this.name + ".Fun()", 10);
    },
    Fun: function() {
this.box.scrollTop += this.speed;
if (this.lis[this.d].offsetTop <= this.box.scrollTop) {
    clearInterval(this.interval);
    this.box.scrollTop = this.lis[this.d].offsetTop;
    this.Start();
    this.d++;
}
if (this.d >= this.len + 1) {
    this.d = 1;
    this.box.scrollTop = 0;
}
    }
};
$(window).addEvent("load", function() {
    marquee = new Marquee("msg_zzjs", "marquee", 1, 2);
});
    </script>
    </div>
</body>
</html>
/*
	Script Document for htmlLayer; for layer.css
*/
var langText = ['关闭'];

var layer = {
	name : 'HTMLLayer',
	version : '1.0.0',
	author : 'Song.LXS',
	createDate : '2010-05-12',
	isMask : true,
	zIndex : 100,
	Width : 400,
	Height : 200,
	ID : '',
	
	init:function(id, width, height, title){
		if($(id))	return;
		this.ID = id;
		//Create Mask Layer
		var maskDiv = document.createElement('div');
		maskDiv.id = 'layerMask';
		maskDiv.style.display = 'none';
		document.body.appendChild(maskDiv);
		//Create Main Div
		var mainDiv = document.createElement('div');
		document.body.appendChild(mainDiv);
		mainDiv.className = 'layerMDiv';
		mainDiv.id = this.ID;
		mainDiv.style.zIndex = this.zIndex + 2;
		width = width ? width : this.Width;
		height = height ? height : this.Height;
		mainDiv.style.width = width + 'px';
		//mainDiv.style.height = height + 'px';
		var mWidth = (this.getLength('Width') - width) / 2;
		mainDiv.style.left = mWidth + 'px';
		var mHeight = dtoTop = 60;
		if(height < (this.getLength('Height') - dtoTop))
			mHeight = (this.getLength('Height') - dtoTop - height)/2;
		mainDiv.style.top = mHeight + 'px';
		if(title) {
			var ltopDiv = document.createElement('div');
			ltopDiv.className = 'layerTop';
			mainDiv.appendChild(ltopDiv);
			var closeDiv = document.createElement('div');
			closeDiv.className = 'Close';
			closeDiv.title = langText[0];
			var o = this;
			closeDiv.onclick = function(){ o.hide() };
			ltopDiv.appendChild(closeDiv);
			var titleDiv = document.createElement('div');
			titleDiv.className = 'Title';
			titleDiv.id = id + 'Title';
			titleDiv.onmousedown = function(){
				var evt = arguments[0] || window.event;
				new Drag($(id), evt);
			}
			ltopDiv.appendChild(titleDiv);
			$(this.ID + 'Title').innerHTML = title;
		}
		var contentDiv = document.createElement('div');
		contentDiv.className = 'Main';
		contentDiv.id = id + 'Main';
		mainDiv.appendChild(contentDiv);
		mainDiv.style.display = 'none';
	},
	
	show:function(c, t, w, h){
		this.init('Test', w, h, t);
		$(this.ID).style.display = 'block';
		$(this.ID + 'Main').innerHTML = c;
		$(this.ID).style.width = w + 'px';
		//$(this.ID + 'Main').style.height = h - 50 + 'px';
	},
	
	hide:function(){
		$(this.ID + 'Main').innerHTML = '';
		$(this.ID + 'Main').style.height = '';
		$(this.ID).style.display = 'none';
	},
	
	mask:function(){
		var maskDiv = $('layerMask');
		var mH = this.getLength('Height');
		var mW = this.getLength('Width');
		maskDiv.style.height = ((document.body.scrollHeight > mH)?document.body.scrollHeight : mH) + 'px';
		maskDiv.style.width = ((document.body.scrollWidth > mW)?document.body.scrollWidth : mW) + 'px';
		maskDiv.style.zIndex = this.zIndex;
	},
	
	unmask:function(){
		this.isMask = false;
	},
	
	getLength: function(arg){
		var l = 0;
		if(self.innerWidth)
			l = eval('self.inner' + arg);
		else if(document.documentElement && document.documentElement.clientWidth)
			l = eval('document.documentElement.client' + arg);
		else if(document.body)
			l = eval('document.body.client' + arg);
		else
			l = 0;
		return l;
	},
	
	findPos: function(obj){
		var curtop = 0;
		var curleft = 0;
		var parentObj = obj;
	
		if (obj.offsetParent)
		{
			while (obj.offsetParent)
			{
				curtop += obj.offsetTop;
				curleft += obj.offsetLeft;
				obj = obj.offsetParent;
			}
		}
		else if (obj.y) {
			curtop += obj.y;
			curleft += obj.x;
		}
		
		var deltaTop = 0;
		var deltaLeft = 0;
		curtop-=deltaTop;
		curleft-=deltaLeft;
		return Array(curleft, curtop);
	}
}

function Drag(elementToDrag, evt) {
	var lt = 0, lr = layer.getLength('Width'), lb = layer.getLength('Height'), ll = 0;
	var x = parseInt(elementToDrag.style.left);
	var y = parseInt(elementToDrag.style.top);
	var deltaX = evt.clientX - x;
	var deltaY = evt.clientY - y;
	var left = x;
	var top = y;
	addEvent(document, 'mousemove', moveHandle);
	addEvent(document, 'mouseup', upHandle);
	function moveHandle(evt) {
		left = parseInt(evt.clientX - deltaX);
		top = parseInt(evt.clientY - deltaY);
		var boundaryLeft = lr - elementToDrag.offsetWidth;
		//var boundaryTop = lb - elementToDrag.offsetHeight;
		if(top <= lt)
			top = lt;
		if(left <= ll)
			left = ll;
		/*if(top >= boundaryTop)
			top = parseInt(boundaryTop);*/
		if(left >= boundaryLeft)
			left = parseInt(boundaryLeft);
		elementToDrag.style.left = left + "px";
		elementToDrag.style.top = top + "px";
	}
	function upHandle(evt) {
		removeEvent(document, 'mouseup', upHandle);
		removeEvent(document, 'mousemove', moveHandle);
	}
}

if(typeof addEvent == 'undefined')
	addEvent = function(o, evType, f, capture) {
		if(o == null) { return false; }
		if(o.addEventListener) {
			o.addEventListener(evType, f, capture);
			return true;
		} else if(o.attachEvent) {
			var r = o.attachEvent('on' + evType, f);
			return r;
		} else {
			try {o['on' + evType] = f;} catch(e){}
		}
	};
	
if(typeof removeEvent == 'undefined')
	removeEvent = function(o, evType, f, capture) {
		if(o == null) { return false; }
		if(o.removeEventListener) {
			o.removeEventListener(evType, f, capture);
			return true;
		} else if (o.detachEvent) {
			o.detachEvent('on' + evType, f);
		} else {
			try{ o['on' + evType] = function(){}; }catch(e){}
		}
	};
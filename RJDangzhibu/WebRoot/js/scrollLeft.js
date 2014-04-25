//调用向左滚动 
/*function $(id){return document.getElementById(id)} */
//向左滚动函数，demo包含demo1与demo2,speed是滚动速度，flag一个网页内有多个时设置为不同的任意字符。 
function toleft(demo,demo1,demo2,speed,flag){
	demo = $(demo);demo1 = $(demo1);demo2 = $(demo2);
	demo2.innerHTML = demo1.innerHTML;
	function Marquee(){ 
		if(demo2.offsetWidth-demo.scrollLeft<=0){ 
			demo.scrollLeft -= demo1.offsetWidth;
		} 
		else{ 
			demo.scrollLeft++;
		} 
	} 
	flag = setInterval(Marquee,speed) 
	demo.onmouseover = function(){clearInterval(flag);} 
	demo.onmouseout = function(){flag=setInterval(Marquee,speed);} 
}

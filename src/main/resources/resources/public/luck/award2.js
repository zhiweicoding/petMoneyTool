// JavaScript Document




function drawRouletteWheel2() {
  var canvas2 = document.getElementById("wheelcanvas2");
  if (canvas2.getContext) {
	  //根据奖品个数计算圆周角度
	  var arc2 = Math.PI / (turnplate2.restaraunts.length/2);
	  var ctx2 = canvas2.getContext("2d");
	  //在给定矩形内清空一个矩形
	  ctx2.clearRect(0,0,516,516);
	  //strokeStyle 属性设置或返回用于笔触的颜色、渐变或模式  
	  ctx2.strokeStyle = "#FFBE04";
	  //font 属性设置或返回画布上文本内容的当前字体属性
	  ctx2.font = 'bold 22px Microsoft YaHei';
	  for(var i = 0; i < turnplate2.restaraunts.length; i++) {
		  var angle = turnplate2.startAngle + i * arc2;
		  ctx2.fillStyle = turnplate2.colors[i];
		  ctx2.beginPath();
		  //arc2(x,y,r,起始角,结束角,绘制方向) 方法创建弧/曲线（用于创建圆或部分圆）
		  ctx2.arc(258, 258, turnplate2.outsideRadius, angle, angle + arc2, false);
		  ctx2.arc(258, 258, turnplate2.insideRadius, angle + arc2, angle, true);
		  ctx2.stroke();
		  ctx2.fill();
		  //锁画布(为了保存之前的画布状态)
		  ctx2.save();
		  
		  //----绘制奖品开始----
		  ctx2.fillStyle = "#E83800";
		  //ctx2.fillStyle = turnplate2.fontcolors[i];
		  var text = turnplate2.restaraunts[i];
		  var line_height = 30;
		  //translate方法重新映射画布上的 (0,0) 位置
		  ctx2.translate(258 + Math.cos(angle + arc2 / 2) * turnplate2.textRadius, 258 + Math.sin(angle + arc2 / 2) * turnplate2.textRadius);
		  
		  //rotate方法旋转当前的绘图
		  ctx2.rotate(angle + arc2 / 2 + Math.PI / 2);
		  
		  /** 下面代码根据奖品类型、奖品名称长度渲染不同效果，如字体、颜色、图片效果。(具体根据实际情况改变) **/
		  if(text.indexOf("\n")>0){//换行
			  var texts = text.split("\n");
			  for(var j = 0; j<texts.length; j++){
				  ctx2.font = j == 0?'22px Microsoft YaHei':'22px Microsoft YaHei';
				  //ctx2.fillStyle = j == 0?'#FFFFFF':'#FFFFFF';
				  if(j == 0){
					  //ctx2.fillText(texts[j]+"M", -ctx2.measureText(texts[j]+"M").width / 2, j * line_height);
					  ctx2.fillText(texts[j], -ctx2.measureText(texts[j]).width / 2, j * line_height);
				  }else{
					  ctx2.fillText(texts[j], -ctx2.measureText(texts[j]).width / 2, j * line_height);
				  }
			  }
		  }else if(text.indexOf("\n") == -1 && text.length>6){//奖品名称长度超过一定范围 
			  text = text.substring(0,6)+"||"+text.substring(6);
			  var texts = text.split("||");
			  for(var j = 0; j<texts.length; j++){
				  ctx2.fillText(texts[j], -ctx2.measureText(texts[j]).width / 2, j * line_height);
			  }
		  }else{

			  //在画布上绘制填色的文本。文本的默认颜色是黑色
			  //measureText()方法返回包含一个对象，该对象包含以像素计的指定字体宽度
			  ctx2.fillText(text, -ctx2.measureText(text).width / 2, 0);
		  }
		  
		  //把当前画布返回（调整）到上一个save()状态之前 
		  ctx2.restore();
		  //----绘制奖品结束----
	  }     
  } 
  

    // 对浏览器的UserAgent进行正则匹配，不含有微信独有标识的则为其他浏览器
    /*var useragent = navigator.userAgent;
    if (useragent.match(/MicroMessenger/i) != 'MicroMessenger') {
        // 这里警告框会阻塞当前页面继续加载
        alert('已禁止本次访问：您必须使用微信内置浏览器访问本页面！');
        // 以下代码是用javascript强行关闭当前页面
        var opened = window.open('about:blank', '_self');
        opened.opener = null;
        opened.close();
    }*/


}

//缓存函数
function save2() {
	localStorage.end=theEnd2();
	localStorage.gifts=$(".cjjg").text();
}

//提示抽奖结束
function theEnd2() {
	$('#tupBtn2').unbind('click');//提交成功解除点击事件。
	return 2;
}


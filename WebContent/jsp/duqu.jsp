<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>获取内容</title>
</head>
<body>
	<div id="div1" style="height:100%;">
    	<p>欢迎使用 wangEditor 编辑器</p>
    	<img src="${pageContext.request.contextPath}/static/img/bg.jpg">
	</div>
	<button id="btn1">获取html</button>
	<button id="btn2">获取text</button>
	
	<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
	<script type="text/javascript">
	    var E = window.wangEditor
	    var editor = new E('#div1')
	    editor.create()
	//点击btn1的时候(addEventListener?JS的方法，用于给元素添加事件，
	//第一个参数就是事件，第二个是事件触发后执行的方法)
	    document.getElementById('btn1').addEventListener('click', function () {
	        // 读取 html(获取所有内容，包含标签)
	        var x=editor.txt.html();
	        alert(x);
	    }, false)
	//点击btn2的时候
	    document.getElementById('btn2').addEventListener('click', function () {
	        // 读取 text(只能获取文本内容)
	        alert(editor.txt.text())
	    }, false)
	
	</script>
</body>
</html>
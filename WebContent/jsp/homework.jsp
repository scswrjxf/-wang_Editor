<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>练习</title>
<style type="text/css">
a{
border: 1px solid #ccc;
margin-left: 240px;
}
</style>
</head>
<body>
	<div style="border: 1px solid #ccc;height: 40px;
	width:100%;margin-bottom: 10px;">
		<p>
			<a>新闻</a><a>运动</a><a>游戏</a><a>教育</a>
		</p>
	</div>
	<div style="float:left;border: 1px solid #ccc;
	height: 500px;width:10%;">
		<p>国内新闻</p>
		<p>国际新闻</p>
		<p>热点新闻 </p>
	</div>
	<div style="float:right;border: 1px solid #ccc;height: 200px;
	width:85%;padding-top: 20px;margin-bottom: 10px;">
		<p>今天天气真的开始回温了</p>
	</div>
	<div style="float:right;width:85%;border: 1px solid #ccc;height: 270px;">
		<div id="div1" class="toolbar" style="width:100%;border: 1px solid #ccc;">
    	</div>
    	<!--可使用 min-height 实现编辑区域自动增加高度-->
	    <div id="div2" class="text"> 
	        <p>请输入内容</p>
	    </div>
	</div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
    <script type="text/javascript">
        var E = window.wangEditor
      //把值赋给变量editor1
        var editor1 = new E('#div1', '#div2')  
     // 两个参数也可以传入 elem 对象，class 选择器
        //使用create创建富文本框
     	editor1.create() 
	</script>
</body>
</html>
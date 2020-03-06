<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>配置颜色(字体颜色、背景色)</title>
</head>
<body>
	<div id="div1">
    	 
	</div>

<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#div1')
    //  自定义配置颜色(字体颜色、背景色)
    editor.customConfig.colors=[
    	'rgba(0,0,0,0.4)',
    	'blue',
    	'red',
    	'yellow',
    	'#ccc'
    ];
    editor.create()//创建富文本框
</script>
</body>
</html>  

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>初始化内容(html)</title>
</head>
<body>
	<div id="editor">  
	</div> 
	<!-- z注意，只需要引进JS，无需要引用任何CSS -->
	<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
	<script>
	//把window.wangEditor的值赋值给变量E
 		var E=window.wangEditor;
 	//把 new E('#editor')的值赋给变量editor
 		var editor=new E('#editor');
		//或者如下
//		var editor = new E( document.getElementById('editor') )
	//此处使用create创建富文本框
        editor.create();
        //JS设置内容
        var str='';
		str+='<p>用 JS 设置的内容</p>';
		str+='<img src="${pageContext.request.contextPath}/static/img/bg.jpg">';
        editor.txt.html(str);//设置富文本框中的内容（注意：设置所有的内容）
        editor.txt.append('<p>追加的东西</p>');
        //editor.txt.clear();//清空内容
	</script>
</body>
</html>
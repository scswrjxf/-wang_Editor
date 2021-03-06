<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>wangEditor 菜单和编辑器区域分离</title>
    <style type="text/css">
        .toolbar {
            border: 1px solid #ccc;
        }
        .text {
            border: 1px solid #ccc;
            height: 200px;
        }
    </style>
</head>
<body>
    <div id="div1" class="toolbar">
    </div>
    <div style="padding: 5px 0; color: #ccc">
    	<p>中间隔离带</p>
    	<p>隔离带+1</p>
    </div>
    <!--可使用 min-height 实现编辑区域自动增加高度-->
    <div id="div2" class="text"> 
        <p>请输入内容</p>
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
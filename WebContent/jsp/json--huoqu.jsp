<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>获取内容</title>
</head>
<body>
	<div id="div1">
    <p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
    <img src="https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo_top_ca79a146.png" style="max-width:100%;"/>
</div>
<button id="btn1">getJSON</button>

<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#div1')
    editor.create()

    document.getElementById('btn1').addEventListener('click', function () {
        var json = editor.txt.getJSON()  // 获取 JSON 格式的内容
        var jsonStr = JSON.stringify(json)//把json对象转换为字符串
        alert(jsonStr);//弹出字符内容 
    })
</script>
</body>
</html>
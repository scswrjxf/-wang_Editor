<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>粘贴文本</title>
</head>
<body>
	<div id="div1">
    	 
	</div>

<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#div1')
    // 关闭掉粘贴样式(true是过滤样式，false是原来样式) 
    editor.customConfig.pasteFilterStyle = false;
    //忽略粘贴内容中的图片(true只粘贴文字不粘贴图片)
    editor.customConfig.pasteIgnoreImg = true;
    //自定义处理粘贴的文本内容(content就是用户粘贴的内容)
    editor.customConfig.pasteTextHandle=function (content) {
        // content 即粘贴过来的内容（html 或 纯文本），可进行自定义处理然后返回
        //返回的就是最后粘贴到输入框中的内容
        return content + '<p>在粘贴内容后面追加一行</p>'
    }
    editor.create()//创建富文本框
</script>
</body>
</html>  

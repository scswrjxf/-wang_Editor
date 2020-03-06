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
    	<p>欢迎使用 wangEditor 富文本编辑器</p>
	</div>

<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#div1')
    // 自定义菜单配置
    editor.customConfig.menus = [
        'head',//标题
        'bold',//粗体
        'fontName',//字体
        'italic',//倾斜
        'foreColor',//文字颜色
        'emoticon'//表情
    ]
    editor.create()
</script>
</body>
</html>
<!--				编辑默认的菜单配置编辑默认的菜单配置
	'head',  // 标题 		'bold',  // 粗体
    'fontSize',  // 字号 			'fontName',  // 字体
	'italic',  // 斜体  			'underline',  // 下划线
    'strikeThrough',  // 删除线 	'foreColor',  // 文字颜色
    'backColor',  // 背景颜色 		'link',  // 插入链接
    'list',  // 列表 				'justify',  // 对齐方式
    'quote',  // 引用 			'emoticon',  // 表情
    'image',  // 插入图片 			'table',  // 表格
    'video',  // 插入视频 			'code',  // 插入代码
	'undo',  // 撤销 				'redo'  // 重复
 -->





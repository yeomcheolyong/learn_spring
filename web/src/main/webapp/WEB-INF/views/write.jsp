<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Write</title>
<script type="text/javascript">
	$(document).ready(function(){
		var title = $("#title").val();
		var content = $("#content").val();
		var writer = $("#writer").val();
		if(title == ""){
			alert("タイトルを入力してください");
			document.form1.title.focus();
			return;
		}
		if(content == ""){
			alert("内容を入力してください");
			document.form1.content.focus();
			return;
		}
		if(writer == ""){
			alert("名前を入力してください");
			document.form1.writer.focus();
			return;
		}
		document.form1.submit();
	}
</script>
</head>
<body>
<h2>writer</h2>
</body>
</html>
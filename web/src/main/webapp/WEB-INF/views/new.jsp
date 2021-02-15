<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewWrite</title>
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
<form name="form1" method="post">
	<div>
		作成日時:<fmt'formatDate value="${dto.regdate}" pattern="yyyy-mm-dd hh:mm:ss"/>
	</div>
	<div>
		タイトル
		<input name="title" id="title" size="80" value="${dto.title}" placeholder="タイトルを入力してください">
	</div>
	<div>
		内容
		<textarea name="content" id="content" row="4" col="80"  placeholder="内容を入力してください">${dto.content}</textarea>
	</div>
	<div>
		名前
		<input name="writer" id="writer" value="${dto.writer}"   placeholder="名前を入力してください">
	</div>
	<div style="width:650px; text-align:center;">
		<input type="hidden" name="bno" value="${dto.bno}">
		<button type="button" id=btnInput>登録</button>
		<button type="reset" >取消</button>
	</div>
</form>
</body>
</html>
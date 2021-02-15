<%@ page language="java" contentType="text/html; charset=UTF－8"
    pageEncoding="UTF－8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>目録</title>
</head>
<body>
<h2>list</h2>
<button type="button" id="btnWrite">Write</button>
<table border="1" width="600px">
	<tr>
		<th>NUM</th>
		<th>title</th>
		<th>name</th>
		<th>day</th>
	</tr>
	<c:forEach var="row" items="${list}">
	<tr>
		<td>${row.bno}</td>
		<td><a href="${path}/board/view.do?bno=${row.title}">${row.title}</a></td>
		<td>${row.writer}</td>
		<td>
			<fmt:formatData value="${row.regdate}"pattern="yyyy-mm-dd hh:mm:ss"/>
		</td>
	</tr>
	</c:forEach>

</table>

</body>
</html>
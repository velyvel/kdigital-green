<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홀/짝 게임</title>
</head>
<body>
	<table border="1" style="width:500px;margin:0 auto">
		<tr>
			<th>사용자</th>
			<th>컴퓨터</th>
			<th>결과</th>
		</tr>
		<tr>
			<th><%= (int)request.getAttribute("userValue") == 1 ? "홀" : "짝"  %></th>
			<th><%= (int)request.getAttribute("comValue") == 1 ? "홀" : "짝"  %></th>
			<th><%= request.getAttribute("result") %></th>
		</tr>
	</table>
</body>
</html>






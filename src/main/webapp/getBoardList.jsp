<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>�Խñ� ���</h1>
	<hr />
	<h3>${user.name}��
		ȯ���մϴ�. <a href="logout.do">logout</a>
	</h3>
	<table border="1">
		<tr>
			<td>No.</td>
			<td>TITLE</td>
			<td>WRITER</td>
			<td>date</td>
			<td>Hit</td>
		</tr>
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.seq}</td>
				<td><a href="getBoard.do?seq=${board.seq}">${board.title}</a></td>
				<td>${board.writer}</td>
				<td>${board.regDate}</td>
				<td>${board.hit}</td>
			</tr>
		</c:forEach>
	</table>
	<hr />
	<br />
	<form action="searchBoard.do" method="post">
		<table>
			<tr>
				<td><input type="text" name="writer" /></td>
				<td><input type="submit" value="�˻�" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
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
	<h1>�� �󼼺���</h1>
	<hr />
	<form action="updateBoard.do" method="post">
		<input name="seq" type="hidden" value="${board.seq}" />
		<table border="1">
			<tr>
				<td>����</td>
				<td><input type="text" name="title" value="${board.title}" /></td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td>${board.writer}</td>
			</tr>
			<tr>
				<td>�� ����</td>
				<td><textarea name="content" cols="40" rows="10">
		${board.content}
		</textarea></td>
			</tr>
			<tr>
				<td>�ۼ�����</td>
				<td>${board.regDate}</td>
			</tr>
			<tr>
				<td>��ȸ��</td>
				<td><input type="text" name="hit" value="${board.hit}" disabled/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="����" /></td>
			</tr>
		</table>
		<br />
		<c:if test="${user.role == 'Admin'}">
			<a href="deleteBoard.do?seq=${board.seq}">delete</a>
		</c:if>
		<a href="getBoardList.do">list</a>
	</form>
</body>
</html>
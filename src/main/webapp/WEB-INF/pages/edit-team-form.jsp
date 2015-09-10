<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>수정 페이지</title>
</head>
<body>
<h1>인원 정보 수정</h1>
<p>인원의 정보를 수정해 주세요</p>
<p>${message}</p>
<form:form method="POST" commandName="team" action="${pageContext.request.contextPath}/team/edit/${team.id}.html">
<table>
<tbody>
	<tr>
		<td>아이디:</td>
		<td><form:input path="uid" /></td>
	</tr>
	<tr>
		<td>비밀번호:</td>
		<td><form:input path="password" /></td>
	</tr>
    <tr>
        <td>성별:</td>
        <td><form:input path="sex" /></td>
    </tr>
    <tr>
        <td>이름:</td>
        <td><form:input path="name" /></td>
    </tr>
    <tr>
        <td>이메일:</td>
        <td><form:input path="email" /></td>
    </tr>
	<tr>
		<td><input type="submit" value="Edit" /></td>
		<td></td>
	</tr>
</tbody>
</table>
</form:form>

<p><a href="${pageContext.request.contextPath}/index.html">홈으로</a></p>
</body>
</html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>팀원 목록</title>
</head>
<body>
<h1>팀원 목록</h1>
<p>팀원 목록 입니다. 정보를 수정하거나 삭제 가능 합니다.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="15%">id</th><th width="15%">password</th><th width="15%">sex</th><th width="15%">name</th><th width="15%">email</th>
</tr>
</thead>
<tbody>
<c:forEach var="team" items="${teams}">
<tr>
	<td>${team.id}</td>
	<td>${team.password}</td>
	<td>${team.sex}</td>
    <td>${team.name}</td>
    <td>${team.email}</td>
	<td>
	<a href="${pageContext.request.contextPath}/team/edit/${team.id}.html">Edit</a><br/>
	<a href="${pageContext.request.contextPath}/team/delete/${team.id}.html">Delete</a><br/>
	</td>
</tr>
</c:forEach>
</tbody>
</table>

<p><a href="${pageContext.request.contextPath}/index.html">홈으로</a></p>

</body>
</html>
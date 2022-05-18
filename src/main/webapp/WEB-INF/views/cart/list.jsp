<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cart List page</h1>

	<c:forEach items="${vo}" var="list">
		${member.id}
		${list.productNum}
		${list.amount}
		${list.regDate}////
	</c:forEach>


</body>
</html>
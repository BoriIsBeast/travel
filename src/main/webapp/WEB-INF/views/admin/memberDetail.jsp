<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>detail</h1>
	
						${list.id}
						${list.name}
						<fmt:formatDate pattern="yyyy년MM월dd일" value="${list.regDate}" />
						${list.birth}
						${list.phone}
						${list.email}
						${list.TPoint}
						${list.zipCode}
						${list.address}
	
</body>
</html>
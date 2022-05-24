<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>멤바관리ㅣㅣㅣㅣㅣㅣㅣㅣ</h1>


	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>이 름</th>
				<th>가입일</th>
				<th>생 일</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>포인트</th>
				<th>우편번호</th>
				<th>고객주소</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<c:forEach items="${vo}" var="list">
					<tr>
						<td>${list.id}</td>
						<td><a href="./memberDetail?id=${list.id}">${list.name}</a></td>
						<td><fmt:formatDate pattern="yyyy년MM월dd일" value="${list.regDate}" />
						<td>${list.birth}</td>
						<td>${list.phone}</td>
						<td>${list.email}</td>
						<td>${list.TPoint}</td>
						<td>${list.zipCode}</td>
						<td>${list.address}</td>
					</tr>
				</c:forEach>
			</tr>
		</tbody>

	</table>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>
</head>
<body>	
	<c:if test="${member.getTType() == 1}">
	<h1>셀러 페이지</h1>
	<div>
	<a href="../product/list">상품 리스트</a>
	</div>
	
	<div>
	<a href="./festivalList">여행지관리</a>
	</div>
	</c:if>
	<c:if test="${member.getTType() == 2}">
	   <h1> 총 관리자 페이지</h1>
            <div>
       			<a href="./productList">관리자 상품관리</a>
       	    </div>
       	    <div>
       	    <a href="./festivalList">여행지관리</a>
       		</div>
       		<div>
       			<a href="./memberList">회원관리</a>
       		</div>
       <div><a href="#">매출</a></div> 
    </c:if>
	
</body>
</html>
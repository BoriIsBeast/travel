<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>코스 상세정보</h1>
	
	태그 : ${vo.category}
	<hr>
	상세 정보 : ${vo.detail}
	<hr>
	지도 빡
	<hr>
	
		<div>
		<input type="hidden" name="num" value="${vo.num}" id="num">
		아이디 : <input type="text" readonly="readonly" name="id" value="${member.id}" id="id">
		내용 : <textarea rows="" cols="50" name="contents" id="contents"></textarea>
		<button type="button" id="reply" class="btn btn-outline-warning">댓글추가</button>
	</div>
<hr>

<!-- 	<table id="replyResult">
	</table> -->

<a href="./delete?num=${vo.num}"><button type="button" class="btn btn-outline-danger">삭제</button></a>
<a href="./update?num=${vo.num}"><button type="button" class="btn btn-outline-danger">수정</button></a>	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
<script src="../resources/js/best.js"></script>
</body>
</html>
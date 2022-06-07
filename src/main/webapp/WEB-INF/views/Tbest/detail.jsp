<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<meta charset="UTF-8">
	<c:import url="../temp/header_script.jsp"></c:import>
	<c:import url="../temp/header_css.jsp"></c:import>
	<c:import url="../temp/header.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	&nbsp;
	<div class="container">

	<h5>태그 : ${vo.category}</h5>
	<hr>
	${vo.detail}
	<hr>

	<div>
		<input type="hidden" name="num" value="${vo.num}" id="num">
		아이디 : <input type="text" readonly="readonly" name="id" value="${member.id}" id="id">
		내용 : <input type="text" name="contents" id="contents">
		<button type="button" id="reply" class="btn btn-outline-warning">댓글</button>
	</div>
	&nbsp;

	<table id="replyResult">
	</table>

	<!-- <div class="col-2 d-flex"> -->

		<a href="./list" role="button" class="btn btn-outline-danger">목록</a>
		 
<c:if test="${member.getTType() == 1 || member.getTType() == 2}">
			<!-- add 버튼 -->
			<div class="row mt-4">
				<a href="./delete?num=${vo.num}"><button type="button" class="btn btn-outline-danger">삭제</button></a>
				<a href="./update?num=${vo.num}"><button type="button" class="btn btn-outline-danger">수정</button></a>	
			</div>
		</c:if>
</div>
	
		<script type="text/javascript" src="../resources/js/TbestReply.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
<script src="../resources/js/best.js"></script>

</body>
</html>
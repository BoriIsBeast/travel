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

		<div class="alert alert-primary" role="alert"
			style="background-color: #0F172B !important;">
			<h4 class="text-center"
				style="text-transform: uppercase; color: #FEA116 !important;">${vo.category}</h4>
		</div>
		${vo.detail}
		
		<div class="card mb-2">
				<div class="card-header bg-light">
					<i class="fa fa-comment fa"></i>댓글
				</div>
				<div class="card-body">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<div class="form-inline mb-2">
								<input type="hidden" name="num" value="${vo.num}" id="num">
								<label for="replyId"><i	class="fa fa-user-circle-o fa-2x"></i></label> 
								<input type="text" class="form-control ml-2" name="id" id="id"	value="${member.id}" readonly>
							</div> 
							<textarea placeholder="댓글을 남겨주세요." name="contents"class="form-control" id="contents" rows="3"></textarea>
							<button type="button" id="reply" class="btn btn-dark mt-3"	onClick="javascript:addReply();">댓글 등록</button>
						</li>
					</ul>
				</div>
			</div>
		<table id="replyResult" class="col-sm-6">


		</table>

		</div>

		<table id="replyResult">
		</table>
		&nbsp;
		<div style="display: block;">

			<div class="container my-4">
				<div class="col-2 d-flex">
					<a href="./list" role="button" class="btn btn-success mx-1">목록</a>
					<c:if test="${member.id eq vo.id}">
						<a href="./update?num=${vo.num}" role="button"
							class="btn btn-outline-danger">수정</a>
						<a href="./delete?num=${vo.num}"><button type="button"
								class="btn btn-outline-danger">삭제</button></a>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="../resources/js/TbestReply.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="../resources/js/best.js"></script>

</body>
</html>
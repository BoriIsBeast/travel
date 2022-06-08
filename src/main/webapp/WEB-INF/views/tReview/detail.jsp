<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>
</head>
<body>

	<div class="container">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">리
					뷰</h4>

		<div class="row">
			<div class="card btnRe" data-num="${vo.num}">
				<ul class="list-group list-group-flush">
					<input class="list-group-item" id="num" type="text" hidden="hidden"
						value="${vo.num}">
					<li class="list-group-item">제 목: ${vo.title}</li>
					<li class="list-group-item">작 성 자 : ${vo.id}</li>
				</ul>

				<div class="card-body">${vo.contents}</div>

				<div class="container my-4">
					<div class="col-2 d-flex">
						<a href="./list" role="button" class="btn btn-success mx-1">목록</a>
						<c:if test="${member.id eq vo.id}">
							<a href="update?num=${vo.num}" role="button"
								class="btn btn-success mx-1">수정</a>
							<td><button type="button" class="btn btn-danger mx-1"
									id="deleteBtn${vo.num}">삭제</button></td>
						</c:if>
					</div>



				</div>

			</div>

			<%-- 	<div class="comment">
			<input type="hidden" name="num" value="${vo.num}" id="num"> 
			<input	type="text" class="nick" name="id" id="id2" value="${member.id}" readonly>
			<input type="text" placeholder="댓글을 남겨보세요." name="contents" id="contents2" class="contents">
					
			<button type="button" id="reply" class="btn btn-success mx-1">댓글 등록</button>

		</div> --%>
			<div class="card mb-2">
				<div class="card-header bg-light">
					<i class="fa fa-comment fa"></i>댓글
				</div>
				<div class="card-body">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<div class="form-inline mb-2">
								<label for="replyId"><i	class="fa fa-user-circle-o fa-2x"></i></label> 
								<input type="text" class="form-control ml-2" name="id" id="id2"	value="${member.id}" readonly>
							</div> 
							<textarea placeholder="댓글을 남겨보세요." name="contents"class="form-control" id="contents2" rows="3"></textarea>
							<button type="button" id="reply" class="btn btn-dark mt-3"	onClick="javascript:addReply();">댓글 등록</button>
						</li>
					</ul>
				</div>
			</div>
		<table id="replyResult" class="col-sm-6">


		</table>

		</div>



	</div>

</div>
	<script type="text/javascript" src="../resources/js/review.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="../resources/js/reviewReply.js"></script>

</body>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="card mb-2">

	<div class="card-header bg-light">
	<i class="fa fa-comment fa"></i>댓글 리스트
	</div>
	<div class="card-body">
		<c:forEach items="${list}" var="vo" varStatus="i">
				<ul class="list-group list-group-flush">
				<li class="list-group-item">
				<div class="form-inline mb-2">
					<label for="replyId"><i	class="fa fa-user-circle-o fa-2x"></i></label> 
					<span class="form-control ml-2">
						${vo.id}
						(${vo.regDate})			
					</span>
					
					<p class="form-control" rows="3" id="up${vo.replyNum}">${vo.contents}</p>
					
					<c:if test="${member.id eq vo.id}">
						<button class="update btn-success mx-1" type="button"data-index="${vo.replyNum}">수정</button>
						<button class="del btn-danger mx-1" type="button"data-num="${vo.replyNum}">삭제</button>
					</c:if>
					</div>
				</li>
				</ul>
				</c:forEach>			

			
			
			
		
</div>
</div>
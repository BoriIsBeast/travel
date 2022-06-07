<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container mt-4">
	
<div class="row mt-4">
<table class="table table-hover">
				<thead>
					<tr>													
						<th>작 성 자</th>
						<th>댓글 내용</th>				
						<th>날 짜</th>						
					</tr>
				</thead>
<tbody>
<c:forEach items="${list}" var="vo" varStatus="i">	
	<tr>		
		<td>${replyNum}</td>
		<td>${vo.id}</td>
		<td id="up${vo.replyNum}">${vo.contents}</td>
		<td>${vo.regDate}</td>
		<td>
		<c:if test="${member.id eq vo.id}">
			<button class="update btn-success mx-1" type="button" data-index="${vo.replyNum}">수정</button>
            <button class="del btn-danger mx-1" type="button" data-num="${vo.replyNum}">삭제</button>
		</c:if>
		</td>
	</tr>
	</div>
</c:forEach>
</tbody>
</table>
</div>
</div>
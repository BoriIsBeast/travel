<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${list}" var="vo">
		<tr class="bg">
			<td id="up${vo.replyNum}">${vo.contents}</td>
			<td>${vo.id}</td>

		<td>
			<c:if test="${member.id eq vo.id}">
				<button class="update" type="button" data-index="${vo.replyNum}">수정</button>
				<button class="del" type="button" data-num="${vo.replyNum}">삭제</button>
		</c:if>
		</td>
		</tr>
	</c:forEach>
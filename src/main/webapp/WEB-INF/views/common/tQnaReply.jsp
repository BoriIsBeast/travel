<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${list}" var="vo">
	<tr class="bgg">
		<td id="up${vo.replyNum}">
			<div style="font-size: medium; white-space:pre-wrap"><c:out value="${vo.contents}" /></div>
		</td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${vo.id}</td>

        <td>
            <c:if test="${member.id eq vo.id}">

                <button class="update site-btn" type="button" data-index="${vo.replyNum}">UPDATE</button>
                <button class="del site-btn" type="button" data-num="${vo.replyNum}">DELETE</button>
            </c:if>

        </td>
	</tr>
</c:forEach>
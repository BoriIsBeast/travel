<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<h1>회원가입 페이지</h1>

	<form:form method="POST" modelAttribute="memberVO">

		<div>
			아이디
			<form:input path="id" />
		</div>

		<div>
			비밀번호
			<form:password path="pw" />
		</div>

		<%-- 비밀번호확인<form:password path="pwCheck"/> --%>

		<div>
			이름
			<form:input path="name" />
		</div>

		<div>
			생년월일 
			<select id="year" class="form-control"></select>년 
			<select id="month" class="form-control"></select>월 
			<select id="day" class="form-control"></select>일
			
			<div>
				<form:input path="birth" id="birth" readonly="readonly"/>
				<!-- <input type="text" id="birth" name="birth" readonly="readonly"> -->
			</div>
		</div>

		<div>
			<table border="1">
		        <tr>
		            <td width="200">우편번호</td>
		            <td><form:input path="zipCode" id="zipCode" size="7" readonly="readonly"/>
		            
		            
		                <input type="button" value="우편번호찾기" id="post">
		            </td>
		        </tr>
		        <tr>
		            <td>주소</td>
		            <td><input type="text"  id="mainAddress" size="70" readonly></td>
		           
		        </tr>
		        <tr>
		        	<td>상세주소</td>
		        	<td><input type="text"  id="detailAddress" size="70"></td>
		        </tr>
		        
		        	
		        
        	</table>
		        	<form:hidden path="address" id="address"/>
		        	
    	</div>

		<div>
			전화번호
			<form:input path="phone" placeholder="ex)010-0000-0000"/>
		</div>
		
		<div>
			이메일<form:input path="email" placeholer="ex)travel@naver.com"/>
		</div>

		<button type="submit">회원가입</button>

	</form:form>
	<script type="text/javascript" src="../resources/js/join.js"></script>
</body>
</html>
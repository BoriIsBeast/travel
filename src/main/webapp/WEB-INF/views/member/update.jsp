<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<div class="container">
	<div class="row mt-4">
			<div class="alert alert-primary" role="alert" style="background-color: #0F172B !important;">
				<h4 class="text-center" style="text-transform: uppercase;color: #FEA116 !important;">회원 정보수정</h4>
			</div>
		</div>
	<div style="width:70%;margin: auto;">
	<form:form modelAttribute="memberVO" method="POST">

	<div>
	이름<form:input path="name" value="${vo.name}" class="form-control mb-2"/>
	</div>
	
		 <div class="form-outline mb-2">
              	<label class="form-label" for="form3Example4">생년월일</label>
              	<div class="d-flex form-outline mb-2">
					<select id="year" class="form-control" style ="width:20%;" ></select>년 
					<select id="month" class="form-control" style ="width:20%; margin-left:20px" ></select>월 
					<select id="day" class="form-control" style ="width:20%; margin-left:20px" ></select>일
				</div>
				
			
				<form:input path="birth" id="birth" readonly="readonly" value="${vo.birth}" class="form-control mt-3 mb-2"/>
				<div>
			<form:errors path="birth"></form:errors>
		</div>
		</div>

			<div class="form-outline mb-2">
			<div >
			<label class="form-label" for="form3Example4" >우편번호</label>
			<div class="d-flex col-6 mb-2">
		            <form:input path="zipCode" id="zipCode" size="7" readonly="readonly" class="form-control"/>
		            <input type="button" value="우편번호찾기" class="form-control" id="post" >
		     </div>
		     </div>
		          <label class="form-label" for="form3Example4">주소</label>
		            <input type="text"  id="mainAddress" class="form-control mb-2" size="70" readonly>
		           
		    <label class="form-label" for="form3Example4">상세주소</label>
		        	<input type="text"  id="detailAddress" class="form-control" size="70">
        	</div>
		       <form:hidden path="address" id="address"/>
		       		<label class="form-label" for="form3Example4">현재주소</label>
		        	<input size="70" class="form-control" value="${vo.address}" readonly="readonly" />
		       
		 
		    		    <label class="form-label" for="form3Example4">변경 후 주소</label>
		        	<form:input path="address" id="address" class="form-control" size="70" value="${vo.address}" readonly="readonly" />
		   
		        
		       <div>
			<form:errors path="address"></form:errors>
			</div>
			
		<%-- <div>
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
		        <tr>
		        	<td>현재주소</td>
		        	<td><input size="70" value="${vo.address}" readonly="readonly" /></td>
		        </tr>
		        <tr>
		        	<td>변경후주소</td>
		        	<td><form:input path="address" id="address" size="70" value="${vo.address}" readonly="readonly" /></td>
		        </tr>
		        
		        	
		        
        	</table>
		        	
		        	
    	</div>
	// --%>
	<div class="mt-2">
	전화번호<form:input path="phone" value="${vo.phone}" class="form-control mb-2"/>
	</div>	
	
	<div>
	이메일<form:input path="email" value="${vo.email}" class="form-control mb-2"/>
	</div>	
	
	
	<button type="submit" class="col-3 btn-primary btn ">정보 수정</button>
	</form:form>
	</div>
	</div>
	<script type="text/javascript" src="../resources/js/join.js"></script>

</body>
</html>
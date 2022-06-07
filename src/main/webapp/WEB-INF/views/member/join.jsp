<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header.jsp"></c:import>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<div class="container">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">Join</h4>
			</div>
		</div>

		<!-- ///////////////////////////////////////// -->


		<!-- Section: Design Block -->
		<section class="">
			<!-- Jumbotron -->
			<div class="px-4 py-5 px-md-5 text-center text-lg-start">
				<div class="container">
					<div class="row gx-lg-5 align-items-center">

						<div class="col-lg-6 mb-5 mb-lg-0">
							<img src="../resources/img/111.jpg" class="img-fluid mb-3">
							<h1 class="my-5 display-3 fw-bold ls-tight">
								TRAVELER<br /> 대한민국 <span class="text-primary">구석구석</span>
							</h1>

						</div>

						<div class="col-lg-6 mb-5 mb-lg-0">
							<div class="card">
								<div class="card-body py-5 px-md-5">
									<form:form method="POST" modelAttribute="memberVO">

										<!-- id -->
										<div class="form-outline mb-2">
											<label class="form-label" for="form3Example1">Id</label>
											<form:input path="id" id="id" class="form-control" />
											<div>
												<form:errors path="id"></form:errors>
											</div>
										</div>
										<!-- pw -->
										<div class="form-outline mb-2">
											<label class="form-label" for="form3Example2">Password</label>
											<form:password path="pw" id="pw" class="form-control" />
											<div>
												<form:errors path="pw"></form:errors>
											</div>
										</div>
										<!-- pw check -->
										<%-- <div class="form-outline mb-2">
                      <label class="form-label" for="form3Example2">Password 확인</label>
						<form:password path="pwCheck" class="form-control"/>
						 <div>
							<form:errors path="pwCheck"></form:errors>
						</div> 
				</div>--%>

										<!-- name -->
										<div class="form-outline mb-2">
											<label class="form-label" for="form3Example4">Name</label>

											<form:input path="name" id="name" class="form-control" />
											<div>
												<form:errors path="name"></form:errors>
											</div>
										</div>

										<!-- Email input -->
										<div class="form-outline mb-2">
											<label class="form-label" for="form3Example3">Email
												address</label>
											<form:input path="email" id="email" class="form-control" />
											<div>
												<form:errors path="email"></form:errors>
											</div>
										</div>

										<!-- Password input -->
										<div class="form-outline mb-2">
											<label class="form-label" for="form3Example4">Phone</label>
											<form:input path="phone" id="phone" class="form-control" />
											<div>
												<form:errors path="phone"></form:errors>
											</div>
										</div>

										<div class="form-outline mb-2">
											<label class="form-label" for="form3Example4">생년월일</label>
											<div class="d-flex form-outline mb-2">
												<select id="year" class="form-control" style="width: 20%;"></select>년
												<select id="month" class="form-control"
													style="width: 20%; margin-left: 20px"></select>월 <select
													id="day" class="form-control"
													style="width: 20%; margin-left: 20px"></select>일
											</div>


											<form:input path="birth" id="birth" readonly="readonly"
												class="form-control mt-3 mb-2" />
											<div>
												<form:errors path="birth"></form:errors>
											</div>
										</div>


										<div class="form-outline mb-2">
											<div>
												<label class="form-label" for="form3Example4">우편번호</label>
												<div class="d-flex col-6 mb-2">
													<form:input path="zipCode" id="zipCode" size="7"
														readonly="readonly" class="form-control" />
													<input type="button" value="우편번호찾기" class="form-control"
														id="post">
												</div>
											</div>
											<label class="form-label" for="form3Example4">주소</label> <input
												type="text" id="mainAddress" class="form-control mb-2"
												size="70" readonly> <label class="form-label"
												for="form3Example4">상세주소</label> <input type="text"
												id="detailAddress" class="form-control" size="70">
										</div>
										<form:hidden path="address" id="address" />
										<div>
											<form:errors path="address"></form:errors>
										</div>



										<!-- Submit button -->
										<button type="submit"
											class="btn btn-primary btn-block mb-4 mt-4 col-4"
											style="margin-left: 150px;">Sign up</button>

										<!-- 
                <div class="text-center">
                  <p>or sign up with:</p>
                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-facebook-f"></i>
                  </button>

                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-google"></i>
                  </button>

                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-twitter"></i>
                  </button>

                  <button type="button" class="btn btn-link btn-floating mx-1">
                    <i class="fab fa-github"></i>
                  </button>
                </div> -->
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Jumbotron -->
		</section>

		<!-- Section: Design Block -->
		<!-- //////////////////////////////////////// -->


		<!--<form:form method="POST" modelAttribute="memberVO">

		<div>
			아이디
			<form:input path="id" id="id" />
			<div>
			<form:errors path="id"></form:errors>
			</div>
		</div>
		

		<div>
			비밀번호
			<form:password path="pw" id="pw" />
			<div>
			<form:errors path="pw"></form:errors>
		</div>
		</div>

		<%-- 비밀번호확인<form:password path="pwCheck"/> --%>

		<div>
			이름
			<form:input path="name" id="name" />
			<div>
			<form:errors path="name"></form:errors>
		</div>
		</div>

		<div>
			생년월일 
			<select id="year" class="form-control"></select>년 
			<select id="month" class="form-control"></select>월 
			<select id="day" class="form-control"></select>일
			
			<div>
				<form:input path="birth" id="birth" readonly="readonly"/>
				<div>
			<form:errors path="birth"></form:errors>
		</div>
				<----밑에 한줄 원래 주석이었음>
				<input type="text" id="birth" name="birth" readonly="readonly"> 
				
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
		        	<div>
			<form:errors path="address"></form:errors>
		</div>
		        	
    	</div>

		<div>
			전화번호
			<form:input path="phone" placeholder="ex)010-0000-0000" id="phone"/>
			<div>
			<form:errors path="phone"></form:errors>
		</div>
		</div>
		
		<div>
			이메일<form:input path="email" placeholer="ex)travel@naver.com" id="email"/>
			<div>
			<form:errors path="email"></form:errors>
		</div>
		</div>

		<button type="submit">회원가입</button>

	</form:form> -->
	</div>
	<script type="text/javascript" src="../resources/js/join.js"></script>
</body>
</html>
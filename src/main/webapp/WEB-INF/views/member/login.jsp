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
</head>
<body>
	<div class="container text-center">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">Login</h4>
			</div>
		</div>
		<div>
			<!-- ////////////////////////////////////////////////////// -->
			<form:form method="POST" modelAttribute="memberVO">
				<section class="vh-100">
					<div class="container-fluid h-custom">
						<div
							class="row d-flex justify-content-center align-items-center h-100">
							<div class="col-md-9 col-lg-6 col-xl-5">

								<img src="../resources/img/111.jpg" class="img-fluid mb-3">
							</div>
							<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
								<form>


									<!-- id input -->
									<div class="form-outline mb-4">
										<label class="form-label" style="margin-left: -25.5rem"
											for="form3Example3">ID</label>
										<!--    <input type="text" name="id" id="form3Example3" class="form-control form-control-lg"
              placeholder="Enter id" /> -->
										<form:input path="id" class="form-control"
											placeholder="Enter id" />
									</div>

									<!-- Password input -->
									<div class="form-outline mb-3">
										<label class="form-label" style="margin-left: -22.5rem"
											for="form3Example4">Password</label>
										<form:password path="pw" class="form-control"
											placeholder="Enter password" />
									</div>

									<div class="d-flex justify-content-center">
										<a href="./findId" class="text-body">ID 찾기/</a> <a
											href="./findPw" class="text-body">password 찾기</a>
									</div>

									<div class="text-center text-lg-start mt-4 pt-2 ">
										<!-- <button type="button" class="btn btn-primary btn-lg"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button> -->
										<button type="submit"
											style="margin-bottom: 20px; margin-left: 150px;"
											class="col-4 btn btn-primary">Login</button>
										<!--  <p><a href="#!" class="link-danger">Join</a></p> -->
									</div>

								</form>
							</div>
						</div>
					</div>
					<div
						class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
						<!-- Copyright -->
						<div class="text-white mb-3 mb-md-0">Copyright © 2020. All
							rights reserved.</div>
						<!-- Copyright -->

						<!-- Right -->
						<div>
							<a href="#!" class="text-white me-4"> <i
								class="fab fa-facebook-f"></i>
							</a> <a href="#!" class="text-white me-4"> <i
								class="fab fa-twitter"></i>
							</a> <a href="#!" class="text-white me-4"> <i
								class="fab fa-google"></i>
							</a> <a href="#!" class="text-white"> <i
								class="fab fa-linkedin-in"></i>
							</a>
						</div>
						<!-- Right -->
					</div>
				</section>
			</form:form>
			<!-- ///////////////////////////////////////////////////// -->

			<!-- <form:form method="POST" modelAttribute="memberVO">
				<div>
				ID<form:input path="id"/>
				</div>
				PASSWORD<form:password path="pw"/>
				<div>
				<a href="./findId">ID 찾기</a>
				<a href="./findPw">PASSWORD 찾기</a>
				</div>
				
				
				
				
				<button type="submit" class="col-1 btn btn-primary ">로그인</button>
			</form:form>-->
		</div>
	</div>
</body>
</html>
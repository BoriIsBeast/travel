<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <meta charset="utf-8">
    <title>Traveler - 국내 여행의 시작</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="../resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">  

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="../resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../resources/css/style.css" rel="stylesheet">

	<div class="container-xxl bg-white p-0">
<!-- Header Start -->
        <div class="container-fluid bg-dark px-0">
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-none d-lg-block">
                    <a href="../" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <h1 class="m-0 text-primary text-uppercase">Traveler</h1>
                    </a>
                </div>
                <div class="col-lg-9">
                    <div class="row gx-0 bg-white d-none d-lg-flex">
                        <div class="col-lg-7 px-5 text-start">
                            <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                                <i class="fa text-primary me-2"></i>
                                <c:if test="${not empty member}">
	                                <p class="mb-0">${member.name}님 반갑습니다</p>
	                            </c:if>
                                
                            </div>
                            
                        </div>
                        <div class="col-lg-5 px-5 text-end">
                            <div class="d-inline-flex align-items-center py-2">
                                <c:choose >
                                    <c:when test="${not empty member}">
                                        <a class="me-3" href="../member/mypage?id=${member.id}">Mypage<i class="fab"></i></a>
                                        <a class="me-3" href="../member/logout">Logout<i class="fab"></i></a>
                                    </c:when>
                                    <c:otherwise>
                                        <a class="me-3" href="../member/join">Join<i class="fab"></i></a>
                                        <a class="me-3" href="../member/login">Login<i class="fab"></i></a>
                                    </c:otherwise>
                                </c:choose>
                                
                                
                                <a class="me-3" href=""><i class="fab fa-linkedin-in"></i></a>
                                <a class="me-3" href=""><i class="fab fa-instagram"></i></a>
                                <a class="" href=""><i class="fab fa-youtube"></i></a>
                            </div>
                        </div>
                    </div>
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0">
                        <a href="index.html" class="navbar-brand d-block d-lg-none">
                            <h1 class="m-0 text-primary text-uppercase">Traveler</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="../" class="nav-item nav-link active">Home</a>

                                <a href="../tReview/list" class="nav-item nav-link">REVIEW</a>
                                <a href="../tQna/list" class="nav-item nav-link">Q&A</a>
                                <a href="../tNotice/list" class="nav-item nav-link">공지사항</a>
                                <a href="../product/list" class="nav-item nav-link">여 행 지</a>
								<a href="../Tbest/list" class="nav-item nav-link">BEST COURSE</a>
                                <a href="../Tfestival/list" class="nav-item nav-link">FESTIVAL</a>

                                <!-- <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="../booking" class="dropdown-item">Booking</a>
                                        <a href="../team" class="dropdown-item">Our Team</a>
                                        <a href="../testimonial" class="dropdown-item">Testimonial</a>
                                    </div>
                                </div> -->
                                
                            </div>
                            
                            <c:if test="${member.getTType() == 1 || member.getTType() == 2}">
                            	<a href="../admin/adminPage" class="btn btn-primary rounded-0 py-4 px-md-5 d-none d-lg-block">관리자<i class="fa fa-arrow-right ms-3"></i></a>
                            </c:if>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Header End -->
        
        </div>
    



        
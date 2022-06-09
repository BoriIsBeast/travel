<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/listCategory.css" rel="stylesheet">
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>

<style type="text/css">
.card-img-top {
   height: 30rem;
   object-fit: cover;
}

.submenu {
   list-style: none;
}
</style>
</head>
<body>

<div class="container">
      <div class="row mt-4">
         <div class="alert alert-primary" role="alert"
            style="background-color: #0F172B !important;">
            <h4 class="text-center"
               style="text-transform: uppercase; color: #FEA116 !important;">${member.id} 여행지
               목록</h4>
               </div>
               </div>
               
               

      <div>
      
         <h5>총 ${count}건</h5>
      </div>
      <!-- card list -->
      <div class="row row-cols-5 row-cols-md-5 g-4">
         <c:forEach items="${vo}" var="list">
            <div class="col">
               <div class="card listDetail" data-num="${list.productNum}">
                  <img src="/resources/upload/product/${list.filesVOs[0].fileName}"
                     class="card-img-top" alt="...">
                  <div class="card-body">
                     <h5 class="card-title">${list.name}</h5>
                     <p class="card-text">${list.address}</p>
                     <fmt:formatNumber type="currency" value="${list.price}" />
                     원
                  </div>
               </div>
            </div>
         </c:forEach>
      </div>

      <!-- pager -->
      <div class="col-4 mt-3">
         <nav aria-label="Page navigation example">
            <ul class="pagination align-self-center">
               <li class="page-item"><a class="page-link"
                  href="./productList?pn=${pager.pre?pager.startNum-1:1}&kind=${pager.kind}&search=${pager.search}"
                  aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
               </a></li>

               <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                  <li class="page-item"><a class="page-link"
                     href="./productList?pn=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
               </c:forEach>

               <li class="page-item"><a class="page-link"
                  href="./productList?pn=${pager.next?pager.lastNum+1:pager.lastNum}&kind=${pager.kind}&search=${pager.search}"
                  aria-label="Next"> <span aria-hidden="true">&raquo;</span>
               </a></li>
            </ul>
         </nav>
      </div>

      <!-- add 버튼 -->
      <div class="row mt-4">
         <a href="/product/add">Add</a>
      </div>

   </div>


   <script type="text/javascript">
      $(".listDetail").click(function() {
         let productNum = $(this).attr("data-num");
         location.href = href = "../product/detail?productNum=" + productNum;
      })
   </script>
</body>
</html>

   
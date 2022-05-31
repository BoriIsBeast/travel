<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
 	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	 <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

	<c:import url="../temp/header_script.jsp"></c:import>
 
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
	
	<title>Insert title here</title>
	<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>
</head>
<body>


<div class="container mt-4">
	<div class="row mt-4">
		<div class="alert alert-light" role="alert">
	  		<h4 style="text-transform: uppercase;">${board} Write</h4>
		</div>
	</div>
	
	<!-- <div class="row" id="list">
		리뷰 ajax, 제목, 작성자, 내용, 여행지 이름
	</div>
	 -->
	
	<div class="row mt-4">
		<form action="add" method="post" enctype="multipart/form-data">
		  <div class="row mb-3">
		    <label for="title" class="col-sm-2 col-form-label">제 목</label>
		    <div class="col-sm-10">
		      <input type="text" name="title" class="form-control" id="title">
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="id" class="col-sm-2 col-form-label">작성자</label>
		    <div class="col-sm-10">
		      <input type="text" name="id" value="${member.id}" readonly class="form-control" id="id">
		    </div>
		  </div>	
		  <div class="row mb-3">
		    <label for="productNum" class="col-sm-2 col-form-label">여행지 이름</label>
		    <div class="col-sm-10">
		      <input type="hidden" name="productNum" value="${vo.productNum}" readonly class="form-control" id="productNum">
		      <input type="text" readonly value="${vo.name}" name="name">
		    </div>
		  </div>			  		  
		 <div class="row mb-3">
		    <label for="contents" class="col-sm-2 col-form-label">내 용</label>
		    <div class="col-sm-10">
		      <textarea name="contents" class="form-control" id="contents"></textarea>
		    </div>
		  </div>
		  
		
	
		  
		
		 
		  <button type="submit" class="btn btn-primary">Write</button>
		</form>
	
	</div>
	
	
</div>	

<script type="text/javascript" src="../resources/js/fileAdd.js"></script>
<script type="text/javascript" src="../js/summernote.js"></script>

<script type="text/javascript">
summernoteInit("contents","");

$("#list").on("click",".pager",function(){
	let checkPn=$(this).attr("data-pn");
	if(checkPn >0){
		getList(checkPn);
	}else{
		alert("마지막 입니다")
	}
});
getList(1);
function getList(pn){
	console.log("start");
	$.ajax({
		type : "GET",
		url : "./ajaxList",
		data:{
			pn:pn
			
		},
		success:function(data){
			$("#list").html(data.trim());
		}
	});
} 
</script>
</body>
</html>
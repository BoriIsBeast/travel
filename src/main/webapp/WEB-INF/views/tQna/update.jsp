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
<c:import url="../temp/header.jsp"></c:import>

</head>
<body>
<div class="container mt-4">
		<div class="row mt-4">
			<div class="alert alert-primary" role="alert"
				style="background-color: #0F172B !important;">
				<h4 class="text-center"
					style="text-transform: uppercase; color: #FEA116 !important;">Q&A 수정</h4>
	</div>
	
	
	<div class="row mt-4">
		<form action="update" method="post" enctype="multipart/form-data">
		<input type="hidden" name="num" value="${vo.num}">
		  <div class="row mb-3">
		    <label for="title" class="col-sm-2 col-form-label">Title</label>
		    <div class="col-sm-10">
		      <input type="text" value="${vo.title}" name="title" class="form-control" id="title">
		    </div>
		  </div>
		  <div class="row mb-3">
		    <label for="id" class="col-sm-2 col-form-label">작성자</label>
		    <div class="col-sm-10">
		      <input type="text" value="${vo.id}" name="id" class="form-control" id="id">
		    </div>
		  </div>
		<div class="row mb-3">
		    <label for="contents" class="col-sm-2 col-form-label">내 용</label>
		    <div class="col-sm-10">
		      <textarea name="contents" class="form-control" id="contents"></textarea>
		    </div>
		  </div>
		  
	
		  
		  
		  
		 
		  <button type="submit" class="btn btn-primary">Update</button>
		</form>
	
	</div>
	
	
</div>	



<script type="text/javascript" src="../resources/js/fileAdd.js"></script>
<script type="text/javascript" src="../js/summernote.js"></script>
<script type="text/javascript">
summernoteInit("contents","");
</script>
</body>
</html>
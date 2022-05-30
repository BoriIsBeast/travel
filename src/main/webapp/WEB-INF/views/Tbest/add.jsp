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
	
	<title>코스 추천 등록</title>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>

<form action="./add" method="post" enctype="multipart/form-data">
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">아이디</label>
<input class="form-control" name="id" type="text" id="id" value="${member.id}" readonly="readonly" aria-label="default input example">

<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">카테고리</label>
  <input class="form-control" name="category" id="category" type="text" aria-label="default input example">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">코스명</label>
  <input class="form-control" name="title" id="title" type="text" aria-label="default input example">
</div>
 <div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">상세정보</label>
<input class="form-control" name="detail" id="detail" type="text" aria-label="default input example">
</div>	

<button type="submit" class="btn btn-outline-secondary">등록</button>
</form>

<script type="text/javascript" src="../resources/js/fileAdd.js"></script>
<script type="text/javascript" src="../js/summernote.js"></script>	

<script type="text/javascript">
summernoteInit("detail","");
</script>
</body>
</html>
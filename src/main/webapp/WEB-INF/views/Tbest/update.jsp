<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header_script.jsp"></c:import>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="alert alert-success" role="alert">
 	<h1>코스 추천 업데이트</h1>
</div>

<form action="./update" method="post" enctype="multipart/form-data">
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
<div class="mb-3">
  <label for="files" class="form-label">파일 추가</label>
  <input class="form-control" type="file" id="files" name="files">
</div>	

<button type="submit" class="btn btn-outline-secondary">등록</button>
	
</form>
<script type="text/javascript" src="../js/summernote.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	

<script type="text/javascript">
$('#detail').summernote();
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>코스 상세정보</h1>
	
	태그 : ${vo.category}
	<hr>
	상세 정보 : ${vo.detail}
	<hr>
	지도 빡
	<hr>
	사진 빡
	<hr>
	댓글 빡
	<hr>

<a href="./delete?num=${vo.num}"><button type="button" class="btn btn-outline-danger">삭제</button></a>
<a href="./update?num=${vo.num}"><button type="button" class="btn btn-outline-danger">수정</button></a>	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>
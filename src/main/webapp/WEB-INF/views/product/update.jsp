<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩  -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>

	<form action="./update" method="post" enctype="multipart/form-data">
		<div class="container">
			<div class="container mt-4">
				<div class="mb-3">
					<input type="hidden" class="form-control" id="productNum" name="productNum" value="${vo.productNum}">
					<label for="exampleInputPassword1" class="form-label">Name</label>
					<input type="text" class="form-control" id="name" name="name" value="${vo.name}">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Price</label>
					<input type="text" class="form-control" id="price" name="price" value="${vo.price}">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Contents</label>
					<input type="text" class="form-control" id="contents" name="contents" value="${vo.contents}">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Homepage</label>
					<input type="text" class="form-control" id="homePage" name="homePage" value="${vo.homePage}">
				</div>
				
				<div>
					<c:forEach items="${vo.filesVOs}" var="fileVO">
						<h4>${fileVO.oriName}<button type="button" class="btn btn-primary del"  data-num="${fileVO.fileNum}">X</button></h4>
					</c:forEach>
				</div>
				<div id="fileResult">
					
				</div>
				
				<div>
					<button type="button" id="fileAddBtn" class="btn btn-primary ">FileAdd</button>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</div>
	</form>

	<script type="text/javascript" src="../resources/js/fileAdd.js"></script>
	<script type="text/javascript">
		fileAdd(${vo.filesVOs.size()});
		fileDelete();
	</script>
</body>
</html>
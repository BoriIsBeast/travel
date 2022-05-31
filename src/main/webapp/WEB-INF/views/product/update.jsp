<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/summernote.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>

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
			
			<input type="text" class="form-control" name="price" id="price"  value="${vo.price}">
				
				</div>
			
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">!!!가격 변동!!!</label>
				<input type="checkbox" id ="changePrice" data-maxCount="${vo.maxCount}"/>
			</div>
		<div id="selectBox">
		
		
		</div>
		
			
		<div id="changePriceResult">
		
		
		</div>
		
			<c:if test="${vo.maxCount ne null }">
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">판매 수량</label>
					<input type="text" class="form-control" id="maxCount" name="maxCount" value="${vo.maxCount}">
				</div>
				</c:if>
				
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Contents</label>
					<textarea class="form-control" id="contents" name="contents"> ${vo.contents}</textarea>
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
					<button type="button" id="fileAddBtn" class="btn btn-primary mt-3">FileAdd</button>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			
		</div>
		</div>
	</form>

	<script type="text/javascript" src="../resources/js/fileAdd.js"></script>
	<script type="text/javascript" src="../resources/js/summernote.js"></script>
	<script type="text/javascript" src="../resources/js/product.js"></script>
	

	<script type="text/javascript">
		fileAdd(${vo.filesVOs.size()});
		fileDelete();
		summernote("contents","");
		
	</script>
</body>
</html>
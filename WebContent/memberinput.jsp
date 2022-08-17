<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.time.*" %>
<%@ page import="java.util.*" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>






<!-- 표현문 사용  -->

<div class="alert alert-secondary" role="alert">
	<div class="container">
		<h1 class="display-3">
		member
		</h1>
	</div>
</div>


<div class="container">
<form action="membercheck.jsp" method="post">



<div class="form-group row">
	<label class="col-sm-2">멤버이름</label>
	<div class="col-sm-3">
	<input name="mname" type ="text" class="form-control" placeholder = "제목을 입력하세요">
	</div>
	</div>


<div class="form-group row">
	<label class="col-sm-2">전화번호</label>
	<div class="col-sm-3">
	<input name="mtel" type ="text" class="form-control" placeholder = "제목을 입력하세요">
	</div>
	</div>

	

<div class="form-group row">
	<div class="col-sm-offset-2 col-sm-10">
	<input type="submit" class="btn btn-primary" value="등록">
	<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">
	
	</div>
	</div>
	

</form>

</div>






 </body>
</html>
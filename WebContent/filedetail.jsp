
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String no = request.getParameter("no");;

	DTOmember file = DAOmember.fileDetail(no);
	
	String img = file.getIname();
	String imgstr = "";
	if(img !=null) {
		imgstr = "images/" + img;
	}
%>
<img src = "<%=imgstr %>">
	

	
</body>
</html>

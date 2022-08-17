<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import ="db.*" %>


    
<%request.setCharacterEncoding("utf-8"); %>
    
<%

	String mname = request.getParameter("mname");
	String mtel = request.getParameter("mtel");


	DAOmember m = new DAOmember();
	
	m.join(mname,mtel);
	
	
	//DAOmember.java 의 class에 static을 걸면 객체 생성없이 사용 가능
	/* DAOmember.join(mname, mtel); 클래스.매서드 */
	
	
	
	
	
%>
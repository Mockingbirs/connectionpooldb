<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
    
<%@ page import ="db.*" %>
<%@ page import ="util.*" %> 

<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>



    <%
    
    String title = null;
    String content = null;
    String iname = null;
    byte[] ifile = null;  // 파일은  String이 아니라 byte의 배열로 뽑는다.
    
    ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
    
    List items = sfu.parseRequest(request); //items 라는 List를 생성한다. 순서는 정해져 있지 않다.
    
    Iterator iter = items.iterator();  //순서를 부여해 준다. => while문을 사용 하기 위해서
    
    while(iter.hasNext()) {
    	FileItem item = (FileItem) iter.next();
    	String name = item.getFieldName(); //키 값 즉, 이름을 추출
    	
    	
    	
    	if(item.isFormField()){//제목, 내용 등 사진을 제외한 나머지 항목들을 차례대로 추출
			String value = item.getString("utf-8"); //utf-8 은 문자 전체를 호출한다.
    		if(name.equals("title")) {
    			title = value;
    		}else if(name.equals("content")){
    			content = value;
    		}
    		
    	} else{  //사진에 관련된 즉 사진이름과 사진파일  추출
    		if(name.equals("image")){
    			iname = item.getName();
    			ifile = item.get();
    			
 	 		String root = application.getRealPath(java.io.File.separator);
    		FileUtil.saveImage(root, iname, ifile);  
    		}
    	}
    }
    
    
    %>
    
 제목 : <%= title %><br>
 내용 : <%= content %><br>
 파일명 : <%= iname %><br>
 파일내용 : <%= ifile %><br>
 

   
 <%

	
	DAOmember.boardinsert(title, content, iname);
			
%>  
    
    

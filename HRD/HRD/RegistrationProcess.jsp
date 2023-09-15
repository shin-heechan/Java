<%@page import="project01.JSFunction"%>
<%@page import="Dao.HSPDao"%>
<%@page import="DTO.HSP"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	int custno = Integer.valueOf(request.getParameter("custno"));
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String tmp = request.getParameter("joindate");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	Date joindate = sdf.parse(tmp);
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	
	HSP h = new HSP(custno, custname, phone, address, joindate, grade, city);
	HSPDao dao = new HSPDao(application);
	
	int result = dao.InsertUser(h);
	if(result == 1){
		
		
		JSFunction.alertLocation("정상적으로 회원가입 처리가 되었습니다.","Registration.jsp", out);
		//<script>location.href = "".jsp</script>
		
	}else{
		
		JSFunction.alertBack("다시 한번 시도해주세요",out);
	} 
	
%>
</body>
</html>
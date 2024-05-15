<%@page import="kr.co.sist.member.MemJoinVO"%>
<%@page import="kr.co.sist.inquiry.InquiryDAO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="글 쓰기 DB 추가 페이지"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ empty sessionScope.loginData }">
	<c:redirect url="http://192.168.10.213/jsp_prj/index.jsp"/>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--<link rel="icon" href="http://192.168.10.210/jsp_prj/common/favicon.ico"/>-->
<!--bootstrap 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--bootstrap 끝-->
<link rel="stylesheet" href="http://192.168.10.213/jsp_prj/common/css/main.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://192.168.10.213/jsp_prj/common/css/board.css" type="text/css" media="all" />
<!--jquery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!--jquery CDN 끝-->

<style type="text/css">
	
</style>
<% request.setCharacterEncoding("UTF-8"); %>
<!--  parameter 받기 -->
<jsp:useBean id="idVO" class="kr.co.sist.inquiry.InquirydetailVO" scope="page"/>
<jsp:setProperty property="*" name="idVO"/>
<script type="text/javascript">
	
	<%
	try{
		//아이디는 세션에 저장된 값을 받아서 설정.( 외부에서 조작 불가 )
	idVO.setMemid(((MemJoinVO)session.getAttribute("loginData")).getId());	
		
	InquiryDAO iDAO=InquiryDAO.getInstance();
	iDAO.insertInquiry(idVO);
	%>
	alert("글을 작성하였습니다.");
	location.href="http://192.168.10.213/restarea_prj/inquiry/inquiry_list.jsp";
	<%
	
	}catch(SQLException se){
		se.printStackTrace();
		%>
		location.href="http://192.168.10.213/restarea_prj/error/err_500.html";
		<%
	}//end catch
	
	%>
	
	$(function(){
	
	});//ready
</script>
</head>
<body>
<div>

</div>
</body>
</html>
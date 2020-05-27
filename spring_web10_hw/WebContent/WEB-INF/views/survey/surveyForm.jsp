<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">

	$(function () {
		$("#btn").click(function() {
			
			document.frm.action = '<c:url value="/survey/survey.ok" />';
			document.frm.method = 'get';
			document.frm.submit();
		});
	});
	
	

</script>

</head>
<body>
	<h2>surveyForm.jsp</h2>
	
	<form name = "frm">
	
		<img src="<c:url value='/images/iu.jpg' />" alt="iu" />		
		<input type="radio" name="img" id="img" value="iu" />IU님
		
		<br />
		
		<img src="<c:url value='/images/gd.jpg' />" alt="park" />
		<input type="radio" name="img" id="img" value="gd"/>GD님
		
		<br />
		
		<input type="button" value="전송" id="btn"/>
		
	</form>
	
	
</body>
</html>
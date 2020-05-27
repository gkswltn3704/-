<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>surveyForm.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			document.frm.action = "<c:url value='/survey/survey.ok' />";
			document.frm.submit();
			
			
		});
	});


</script>

</head>
<body>
	
	<h2>surveyForm.jsp</h2>
	<h2>좋아하는 사진은?</h2>
	
	<form action="#" name="frm">
		<div>
			<input type="checkbox" name="ck" id="" value="iu" />
			<img src="<c:url value='/resources/iu.jpg' />" alt="아이유" />
		</div>
		<div>
			<input type="checkbox" name="ck" id="" value="gd" />
			<img src="<c:url value='/resources/gd.jpg' />" alt="지디" />
		</div>
		
		&nbsp;&nbsp;&nbsp;
		
		<input type="button" value="선택" id="btn" />
		
	</form>
	
</body>
</html>
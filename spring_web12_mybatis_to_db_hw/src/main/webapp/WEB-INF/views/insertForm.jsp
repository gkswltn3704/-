<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertForm.jsp</title>
</head>
<body>
	
	<h2>emp insertForm.jsp</h2>
	
	<form action="insertOk">
		<table>
			<tr>
				<th>empno</th>
				<td><input type="text" name="empno" id="" /></td>
			</tr>
			<tr>
				<th>ename</th>
				<td><input type="text" name="ename" id="" /></td>
			</tr>
			<tr>
				<th>sal</th>
				<td><input type="text" name="sal" id="" /></td>
			</tr>
			<tr>
				<th>deptno</th>
				<td><input type="text" name="deptno" id="" /></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="submit" value="등록하기" />
					<input type="reset" value="reset" />	
				</td>
			</tr>
			
		</table>	
	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<div id=div_01>

 <table width="707px" cellspacing="0" cellpadding="0" border="0" align="center" style="margin-top: 30px;" >

  <tr>

   <td>메뉴 또는 탭 1</td>

   <td><a href="javascript:show_layer('2');">메뉴 또는 탭 2</a></td>

   <td><a href="javascript:show_layer('3');">메뉴 또는 탭 3</a></td>

   <td><a href="javascript:show_layer('4');">메뉴 또는 탭 4</a></td>    

  </tr>

  <tr><td  colspan=4 align=center style='padding-top:20px;'>내용1</td></tr>

</table>

</div>



<!---------------------------------------------------------------------------------------------------------->

<div id=div_02 style="DISPLAY: none">

 <table width="707px" cellspacing="0" cellpadding="0" border="0" align="center" style="margin-top: 30px;" >

  <tr>

   <td><a href="javascript:show_layer('1');">메뉴 또는 탭 1</a></td>

   <td>메뉴 또는 탭2</td>

   <td><a href="javascript:show_layer('3');">메뉴 또는 탭3</a></td>

   <td><a href="javascript:show_layer('4');">메뉴 또는 탭4</a></td>    

  </tr>

  <tr><td  colspan=4 align=center style='padding-top:20px;'>내용2</td></tr>

</table>

</div>



<!----------------------------------------------------------------------------------------------->

<div id=div_03 style="DISPLAY: none">



 <table width="707px" cellspacing="0" cellpadding="0" border="0" align="center" style="margin-top: 30px;" >

  <tr>

   <td><a href="javascript:show_layer('1');">메뉴 또는 탭1</a></td>

   <td><a href="javascript:show_layer('2');">메뉴 또는 탭2</a></td>

   <td>메뉴 또는 탭3</td>

   <td><a href="javascript:show_layer('4');">메뉴 또는 탭4</a></td>    

  </tr>

  <tr><td  colspan=4 align=center style='padding-top:20px;'>내용3</td></tr>

</table>

</div>



<!-------------------------------------------------------------------------------------------->

<div id=div_04 style="DISPLAY: none">



 <table width="707px" cellspacing="0" cellpadding="0" border="0" align="center" style="margin-top: 30px;" >

  <tr>

   <td><a href="javascript:show_layer('1');">메뉴 또는 탭1</a></td>

   <td><a href="javascript:show_layer('2');">메뉴 또는 탭2</a></td>

   <td><a href="javascript:show_layer('3');">메뉴 또는 탭3</a></td>

   <td>메뉴 또는 탭4</td>    

  </tr>

  <tr><td  colspan=4 align=center style='padding-top:20px;'>내용4</td></tr>

</table>

</div>
	
	
	
	
	<!-- 멘션 클릭 시 조건에 맞게 보이는 js  -->
<script type="text/javascript">

function show_layer(div_name){

	document.all.div_01.style.display="none";
	document.all.div_02.style.display="none";
	document.all.div_03.style.display="none";
	document.all.div_04.style.display="none"; // 메뉴 숫자에 따라 늘려주세요

	switch(div_name)
	
	{

	  case '1':
	  document.all.div_01.style.display="";
	  break;
	  
	  case '2':
	  document.all.div_02.style.display="";
	  break;
	
	  case '3':
	  document.all.div_03.style.display="";
	  break;
	
	  case '4':
	  document.all.div_04.style.display="";
	  break;
	  
	}

}

</script>
	
	
	
	
</body>
</html>
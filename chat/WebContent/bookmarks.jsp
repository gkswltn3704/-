<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" type="text/css" href="mylist.css">  	<!-- css 파일 경로  -->

<meta charset="UTF-8">

<title>북마크.div</title>


</head>
<body>
	
	
	<section class="bookmarks-page">
		<header class="page-header bookmarks-page__header">
		
			<h2 class="page-header__title">
				<span>북마크</span>											<!-- div 제목  -->
				<span class="page-header__total-count"></span>				<!-- 게시물보이는 갯수 -->
			</h2>
			
			<div class="page-header__info">
			
				<div class="page__options bookmarks-page__options">
					
					<div class="page__options mentions-page__options">
						<button class="option-button1" autofocus="autofocus">북마크순</button>
						<button class="option-button2">글 작성일 순</button>
					</div>

				</div>
				

				<form class="search-field bookmarks-page__search" id="bookmark_search">
					<fieldset>
						<legend class="screen-out">북마크 검색</legend>
						<input type="text" class="search-field__input" autocomplete="off" autocapitalize="off" name="q" title="검색어 입력" placeholder="북마크 검색" value="">
						
						<button class="search-field__search-button" type="submit">
							<i class="ico ico-search" aria-hidden="true">
								<svg width="16px" height="16px" viewBox="0 0 15 14" version="1.1">
									<g id="search" stroke="none" fill="#565A5F" fill-rule="evenodd">
										<path d="M9.9603736,10.3329493 C8.91643607,11.0870077 7.60676898,11.5357143 6.18487913,11.5357143 C2.77379116,11.5357143 0.00855799453,8.95335668 0.00855799453,5.76785714 C0.00855799453,2.5823576 2.77379116,0 6.18487913,0 C9.5959671,0 12.3612003,2.5823576 12.3612003,5.76785714 C12.3612003,7.09571193 11.8807175,8.31876567 11.0732587,9.29366358 L15,12.9607143 L13.8871149,14 L9.9603736,10.3329493 Z M6.18487913,10.3214286 C8.87784331,10.3214286 11.0609221,8.2827252 11.0609221,5.76785714 C11.0609221,3.25298909 8.87784331,1.21428571 6.18487913,1.21428571 C3.49191494,1.21428571 1.30883613,3.25298909 1.30883613,5.76785714 C1.30883613,8.2827252 3.49191494,10.3214286 6.18487913,10.3214286 Z"></path>
									</g>
								</svg>
							</i>
<!-- 						<span class="ir-pm">검색</span> -->
						</button>
						
					</fieldset>
				</form>
				
			</div>
		</header>
		
		
		<div class="scroll-container scroll-container--window undefined" tabindex="-1" id="div1">
			<div class="bookmarks-page__list-wrap">
				
				<div>
					<h2>북마크 순 게시물~~</h2>				
				</div>
				
				<!-- div자체로 게시물들이 출력되야 함  -->
				
			</div>
		</div>
		
		<div class="paginated-list-footer">
			<div class="no-content-placeholder no-content-placeholder--visible" id="contents">
				
				<i class="ico ico-blank" aria-hidden="true">
					<svg width="120px" height="120px" viewBox="0 0 120 120" version="1.1">
						<g id="blank" stroke="none" stroke-width="1" fill="#F5F5F5" fill-rule="evenodd">
						</g>
					</svg>
				</i>
				
				<p class="no-content-placeholder__message" id="nocontent">북마크한 글이 없습니다.</p>
				

				<!-- 게시물이 생기면 이걸로 바꾸기~~ css 바꾸기~~  -->
				<div class="paginated-list-footer__no-more-label">
					<span>더 이상 없음</span>
				</div>
				
			</div>
		</div>
		
	</section>
	
	
	
	
<!-- js -->

<!-- div 바꾸기   -->
<script type="text/javascript">
	
  	$('.option-button1').click(function(){
/*         console.log(this.value); */
		window.location.href="bookmarks.jsp?sort=";				//다시 원래 페이지로 돌아오기
	});  
  	
    $('.option-button2').click(function(){
/*         console.log(this.value); */
    	$('#div1').load('sort1.jsp?sort='+this.value);
    });
	

</script>

<!-- div에 게시물이 생기면 footer div 바꾸기~ -->
<script type="text/javascript">
	
	
	

</script>
	
	
	
</body>
</html>
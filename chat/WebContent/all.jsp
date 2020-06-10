<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<meta charset="UTF-8">

<title>mention.div</title>

<style type="text/css">
	
	
	 header {
	 	background: white;
	 }

	 .paginated-list-footer {
	 	background: white;
	 }
	 
	 
	 /* 위는 구분을 위한 색[임시]  */
	 

	 
	 header {
	 	display: block;
	 	height: 100px;
	 }
	 
	 body {
	 	font-size: 14px;
	 	line-height: 1.5;
	 	font-family: "Apple SD Gothic Neo", "Helvetica Neue", "Malgun Gothic", Helvetica, Arial, sans-serif;
	 	color: #222;
	 	background: #F5F5F5;
	 }
	 
	 h2 {
	 	font-family: inherit;
	 	margin: 0;
	 	padding: 0;
	 	display: block;
	    margin-block-start: 0.83em;
	    margin-block-end: 0.83em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	 	
	 }
	 
	 div {
	 	padding: 0;
	 	display: block;
	 }
	 
	 
	.bookmarks-page .bookmarks-page__header {
		min-height: 30px;
    	margin-bottom: 12px;
    	position: relative;
    }
	
	.page-header .page-header__title {
	    font-weight: 200;
	    font-size: 24px;
	    line-height: 32px;
	    color: #333;
	    margin: 0;
    }
    
	.page-header .page-header__title .page-header__total-count:last-child {
    	padding-left: 7px;
    }
	 
	.page-header .page-header__info {
	    position: relative;
	    margin: 10px 0 20px;
	    padding-top: 15px;
	    border-top: 2px solid #6c6c6c;
	    font-size: 14px;
	    line-height: 1.2;
	    color: #777;
	 }
	 
	.page__options {
    	float: left;
    }
    
    .page-header .page-header__info .Select {
	    float: left;
	    margin-right: 10px;
	}
	
	.Select.Select--default {
    	min-width: 106px;
	}
	
	.Select {
	    display: inline-block;
	    vertical-align: top;
	    width: auto;
	}
	
	.Select {
    	position: relative;
	}
	
	.Select, .Select div, .Select input, .Select span {
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	    box-sizing: border-box;
	}
	
	.Select.Select--default .Select-control .Select-value, .Select.Select--default .Select-control .Select-placeholder {
	    height: 32px;
	    margin-right: 17px;
	    line-height: 33px;
	    color: #565556;
	}
	
	.Select .Select-control .Select-value, .Select .Select-control .Select-placeholder {
	    position: relative;
	    z-index: 1;
	    margin-right: 25px;
	    cursor: pointer;
	}
	
	.Select-placeholder, .Select--single > .Select-control .Select-value {
	    bottom: 0;
	    color: #aaa;
	    left: 0;
	    line-height: 34px;
	    padding-left: 10px;
	    padding-right: 10px;
	    position: absolute;
	    right: 0;
	    top: 0;
	    max-width: 100%;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	}
	
	
	 element.style {
	    border: 0px;
	    width: 1px;
	    display: inline-block;
	}

	
	fieldset {
	    border: 0 none;
	}
	
	.screen-out {
	    overflow: hidden;
	    position: absolute;
	    width: 0;
	    height: 0;
	    line-height: 0;
	    text-indent: -9999px;

	}
	
	legend {
	    display: block;
	    padding-inline-start: 2px;
	    padding-inline-end: 2px;
	    border-width: initial;
	    border-style: none;
	    border-color: initial;
	    border-image: initial;
	    
	    margin: 0;
	    padding: 0;
	    
	}
	
	.search-field .search-field__input {
	    width: 191px;
	    height: 32px;
	    padding: 6px 37px 7px 11px;
	    border: 1px solid #e3e3e4;
	    border-radius: 32px;
	    font-size: 13px;
	    line-height: 17px;
	    background-color: #fff;
	    outline: none;
	}
	
	.search-field .search-field__search-button {
	    overflow: hidden;
	    position: absolute;
	    top: 0;
	    right: 0;
	    width: 37px;
	    height: 32px;
	    border: 1px solid lightgray;
	    background-color: #fff;
	    border-radius: 32px;
	    padding: 0;
	    
	}
	
	input {
		vertical-align: middle;
		margin: 0;
		-webkit-writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    letter-spacing: normal;
	    word-spacing: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    display: inline-block;
	    text-align: start;
	    -webkit-appearance: textfield;
	    -webkit-rtl-ordering: logical;
	    cursor: text;
	    font: 400 13.3333px Arial;
	}
	
	
	button {
	    border: 0 none;
	    border-radius: 0;
	    background-color: transparent;
	    cursor: pointer;
	    outline: none;
	    margin: 0;
	    font-family: inherit;
	    font-size: inherit;
	    line-height: inherit;
	}
	
	.bookmarks-page .bookmarks-page__search {
	    position: absolute;
	    top: 16px;
	    right: 0;
	}
	 
	.scroll-container.scroll-container--window {
    	overflow: visible;
	}
	
	.scroll-container {
	    overflow-x: visible;
	    overflow-y: auto;
	    outline: none;
	}
	
	.scroll-container::-webkit-scrollbar {
	    width: 7px;
	    background-color: transparent;
	}
	
	.wall__wall-thread {
	    margin-bottom: 15px;
	    border: 1px solid #dcdfe4;
	    border-radius: 3px;
	    background-color: #fff;
	    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
	    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
	    outline: none;
	}	
	
	
	.paginated-list-footer {
	    position: relative;
	    width: 100%;
	    color: #313131;
	    text-align: center;
	    clear: both;
	    border: 1px solid lightgray;
	}
		
	.paginated-list-footer .paginated-list-footer__no-more-label {
	    text-align: center;
	}
	.paginated-list-footer > div {
	    padding: 40px 0 80px;
	}
	
	.paginated-list-footer .paginated-list-footer__no-more-label span {
	    display: inline-block;
	    position: relative;
	}
	.paginated-list-footer .paginated-list-footer__no-more-label {
	    text-align: center;
	}
	

	
	#contents {
		padding: 140px 0 80px;
	}

	
	
	option {
		text-align: center;
		outline: none;
	}
	

	
	/* 구분  */
	/* 멘션 */
	
	.page__options {
    	float: left;
	}
	
	.page__options .option-button {
	    float: left;
	    margin-right: 10px;
	}
	
	.option-button {
	    border-color: #525f78;
	    background: #525f78;
	    color: #fff;
	}
	
	.option-button {
	    display: inline-block;
	    min-width: 80px;
	    height: 34px;
	    padding: 10px 14px 9px;
	    border: 1px solid #ddd;
	    border-radius: 3px;
	    background: #fff;
	    line-height: 1;
	    color: #565556;
	    text-align: center;
	    letter-spacing: -0.025em;
	    -webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;
	    box-sizing: border-box;
	    text-decoration: none;
	}
	
	.option-button:focus {
		outline: none;
		background: #3C5087;
		color: white;
	}
	
	
</style>


</head>
<body>
	
	
	<section class="bookmarks-page">
		
		<div class="scroll-container scroll-container--window undefined" tabindex="-1">
			<div class="bookmarks-page__list-wrap">
			
				<h2>게시물 all</h2>
				
			</div>
		</div>
		
	</section>
	
	
	
	
<!-- js -->



	
	
	
</body>
</html>
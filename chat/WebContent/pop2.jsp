<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style type="text/css">
	.col-md-2, .col-md-10{
	    padding:0;
	}
	.panel{
	    margin-bottom: 0px;
	}
	.chat-window{
	    bottom:0;
		right:0;
	    position:fixed;
	    float:right;
	
	}
	.chat-window > div > .panel{
	    border-radius: 5px 5px 0 0;
	}
	.icon_minim{
	    padding:2px 10px;
	}
	.msg_container_base{
	  background: #e5e5e5;
	  margin: 0;
	  padding: 0 10px 10px;
	  max-height:300px;
	  overflow-x:hidden;
	}
	.top-bar {
	  background: #666;
	  color: white;
	  padding: 10px;
	  position: relative;
	  overflow: hidden;
	}
	.msg_receive{
	    padding-left:0;
	    margin-left:0;
	}
	.msg_sent{
	    padding-bottom:20px !important;
	    margin-right:0;
	}
	.messages {
	  background: white;
	  padding: 10px;
	  border-radius: 2px;
	  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
	  max-width:100%;
	}
	.messages > p {
	    font-size: 13px;
	    margin: 0 0 0.2rem 0;
	  }
	.messages > time {
	    font-size: 11px;
	    color: #ccc;
	}
	.msg_container {
	    padding: 10px;
	    overflow: hidden;
	    display: flex;
	}
	.chatimg {
	    display: block;
	    width: 100%;
	}
	.avatar {
	    position: relative;
	}
	.base_receive > .avatar:after {
	    content: "";
	    position: absolute;
	    top: 0;
	    right: 0;
	    width: 0;
	    height: 0;
	    border: 5px solid #FFF;
	    border-left-color: rgba(0, 0, 0, 0);
	    border-bottom-color: rgba(0, 0, 0, 0);
	}
	
	.base_sent {
	  justify-content: flex-end;
	  align-items: flex-end;
	}
	.base_sent > .avatar:after {
	    content: "";
	    position: absolute;
	    bottom: 0;
	    left: 0;
	    width: 0;
	    height: 0;
	    border: 5px solid white;
	    border-right-color: transparent;
	    border-top-color: transparent;
	    box-shadow: 1px 1px 2px rgba(black, 0.2); // not quite perfect but close
	}
	
	.msg_sent > time{
	    float: right;
	}
	
	
	
	.msg_container_base::-webkit-scrollbar-track
	{
	    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	    background-color: #F5F5F5;
	}
	
	.msg_container_base::-webkit-scrollbar
	{
	    width: 12px;
	    background-color: #F5F5F5;
	}
	
	.msg_container_base::-webkit-scrollbar-thumb
	{
	    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
	    background-color: #555;
	}
	
	.btn-group.dropup{
	    position:fixed;
	    left:0px;
	    bottom:0;
	}
	
	.panel-footer {
	    padding: 10px 15px;
	    background-color: lightgrey;
	    border-top: 1px solid #ddd;
	    border-bottom-right-radius: 3px;
	    border-bottom-left-radius: 3px;


</style>

</head>
<body>
	

<div class="mini-chat__pane" id="plusForm">
	<div class="mini-chat-titlebar">
		<span class="mini-chat-titlebar__title">새로운 대화</span>
		<div class="mini-chat-titlebar__controls">
			<button type="button" class="icon-button mini-chat-titlebar__button mini-chat-titlebar__close" aria-label="대화창 닫기">
				<i class="ico ico-x" aria-hidden="true">
					<svg width="10px" height="10px" viewBox="0 0 10 10" version="1.1">
						<g id="x" stroke="none" stroke-width="1" fill="#FAFBFC" fill-rule="evenodd"></g>
					</svg
				></i>
			</button>
		</div>
	</div>
	
	<div class="mini-chat__empty-body">
		<div class="mini-chat__invite-form-wrapper">
			<div class="mini-chat-invite-form">
				<input type="text" class="mini-chat-invite-form__input" placeholder="이름 또는 아지트 아이디를 입력하세요" value="">
				<div class="mention-autocomplete mention-autocomplete--empty" style="left: -1px; top: 33px; display: block;">
					<ul class="mention-autocomplete__list"></ul>
				</div>
			</div>
		</div>
		
		<button class="mini-chat__create-chat-button" disabled="">대화시작하기</button>
	</div>
</div>

	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style type="text/css">
	/* 채팅 목록 CSS  */	
	
	#all{
	    width: 750px;
	    height: 1020px;
	    background: #e5e5e5;
	    margin:0 auto;
	    font-size: 0;
	    border-radius: 5px;
	    overflow: hidden;
	   	position: fixed;
	  	bottom: 0;
	  	right: 28px;
	  	width: 280px;
	}
	
	#list{
	    width:750px;
	    height: 998px;
	    background: #e5e5e5;
	    margin:0 auto;
	    font-size: 0;
	    border-radius: 5px;
	    overflow: hidden;
	   	position: fixed;
	  	bottom: 0;
	  	right: 28px;
	  	width: 280px;
	}
	
	#list_header {
		width: 750px;
	    height: 21px;
	    background: #e5e5e5;
	    margin:0 auto;
	    font-size: 0;
	    border-radius: 5px;
	    overflow: hidden;
	   	position: fixed;
	  	right: 28px;
	  	width: 280px;
	}
	
	#head_font{
		font-size: 16px;
		color: black;
		font-weight: normal;
	}
	
	.plus{ 
		font-size: 10px;
		float: right;	
	}
	
	aside{
	    width: 280px;
	    height: 100%;
	    background-color: #e5e5e5;
	    display: inline-block;
	    font-size: 15px;
	    vertical-align: top;
	}

	aside footer{
	    padding:30px 20px;
	}
	
	aside input{						/* 검색기능 CSS  */
	    width: 100%;
	    height: 50px;
	    line-height:50px;
	    padding:0 50px 0 20px;
	    background-color: lightgray;
	    outline: 0;
	    border: none;
	    border-radius: 3px;
	    background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_search.png);
	    background-repeat: no-repeat;
	    background-position: 170px;
	    background-size: 40px;
	}
	
	aside input::placeholder{
	    color: black;
	}
	
	aside ul{						/* 채팅 목록의 스크롤  */
	    padding-left: 0;
	    margin: 0;
	    list-style-type: none;
	    overflow-y: scroll;
	    height: 100%;
	}
	
	aside li{
	    padding: 10px 0;
	}
	
	aside li:hover{
	    background-color: #5e616a;
	}
	
	h2, h3{
	    margin: 0;
	}
	
	aside li img{
	    border-radius: 50%;
	    margin-left: 20px;
	    margin-right: 8px;
	}
	
	aside li div{
	    display: inline-block;
	    vertical-align: top;
	    margin-top: 12px;
	}
	
	aside li h2{				/* 접속자 리스트 이름  */
	    font-size: 14px;
	    color: black;
	    font-weight: normal;
	    margin-bottom: 5px;
	}
	
	aside li h3{				/* 멤버들 접속현황 (그린/레드로 구분)  */
	    font-size: 12px;
	    color: red;
	    font-weight: normal;
	}
	
</style>


<style type="text/css">
	.col-md-2, .col-md-10{
	    padding: 0;
	}
	
	.col-xs-9{
		padding: 0;
	}
	
	
	.panel{
	    margin-bottom: 0px;
	}
	
	.chat-window{
	    bottom: 0;
		right: 300px;
	    position: fixed;
	    float: right;
	}
	
	.chat-window > div > .panel{
	    border-radius: 5px 5px 0 0;
	}
	
	.icon_arrow-down{
	    padding: 2px 4px;
	}
	
	.icon_plus{
	    padding: 2px 4px;
	}
	
	.icon_close_chat{
	    padding: 2px 4px;
	}
	
	.msg_container_base{
	  background: #e5e5e5;
	  margin: 0;
	  padding: 0 10px 10px;
	  max-height: 300px;
	  overflow-x: hidden;
	}
	
	.top-bar {
	  background: #666;
	  color: white;
	  padding: 6px;
	  position: relative;
	  overflow: hidden;
	}
	
	.msg_receive{
	    padding-left: 0;
	    margin-left: 0;
	}
	
	.msg_sent{
	    padding-bottom: 20px !important;
	    margin-right: 0;
	}
	.messages {
	  background: white;
	  padding: 10px;
	  border-radius: 2px;
	  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
	  max-width: 100%;
	}
	
	.messages > p {
	    font-size: 13px;
	    margin: 0 0 0.2rem 0;
	}
	
	.messages > time {
	    font-size: 11px;
	    color: #ccc;
	}
	
	.msg
	_container {
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
	
	.msg_sent > time{
	    float: right;
	}
	
	.msg_container_base:: -webkit-scrollbar-track
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
	
	.panel-footer {
	    padding: 10px 15px;
	    background-color: lightgrey;
	    border-top: 1px solid #ddd;
	    border-bottom-right-radius: 3px;
	    border-bottom-left-radius: 3px;
	
</style>


<style type="text/css">

	.pluschat-window{
	    bottom: 0;
		right: 725px;
		width: 330px;
	    position: fixed;
	    float: right;
	}
	
	.pluschat-window > div > .panel{
	    border-radius: 5px 5px 0 0;
	}
	
	#listbody {
		width: 100%;
		height: 250px;
	}
	
	.new-chat {								/* 새로운 채팅 시작하기 버튼  */
		color: white;
		font-size: 13px;
        line-height: 3px;
		width: 100%;
		height: 45px;
	    padding: 10px 20px;
	    background-color: lightgrey;
	   	border-top: 1px solid #d8d8d8;
	    border-bottom-right-radius: 3px;
	    border-bottom-left-radius: 3px;
	    border: 0;
	    outline: 0;
	}
	
	#search input {						/* 사용자 찾기 위한 검색창  */
		display: block;
	    width: 100%;
	    box-sizing: border-box;
	    height: 36px;
	    border: 0;
	    outline: 0;
	    border-bottom: 1px solid #d8d8d8;
	    padding: 0 8px;
	    font-size: 12px;
	    line-height: 34px;
	    color: #3d3c40;
	}


</style>



</head>
<body>

<div id ="all">

	<div id="list_header">
		<span id="head_font">대화</span>
		<button type="button" class="plus" id="plus" onclick="newopenForm()">+</button>
	</div>
	
	<div id="list">
		<aside>
	        <ul>
	        	<li onclick="openForm()">
	        		<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_01.jpg" alt="이미지">
	        		<div>
	        			<h2>한지수</h2>
	        			<h3>
	        				<span class="status orange"></span>
	        				offline
	        			</h3>
	        		</div>
				</li>
	            
	            <li onclick="openForm()">
	                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_02.jpg" alt="">
	                <div>
	                    <h2>이윤수</h2>
	                    <h3>
	                        <span class="status green"></span>
	                        online
	                    </h3>
	                </div>
	            </li>
	            
	            <li onclick="openForm()">
	                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_03.jpg" alt="">
	                <div>
	                    <h2>이로운</h2>
	                    <h3>
	                        <span class="status orange"></span>
	                        offline
	                    </h3>
	                </div>
	            </li>
	            
	            <li onclick="openForm()">
	                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_04.jpg" alt="">
	                <div>
	                    <h2>신한</h2>
	                    <h3>
	                        <span class="status green"></span>
	                        online
	                    </h3>
	                </div>
	            </li>
	            
	            <li onclick="openForm()">
	                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_05.jpg" alt="">
	                <div>
	                    <h2>Prénom Nom</h2>
	                    <h3>
	                        <span class="status orange"></span>
	                        offline
	                    </h3>
	                </div>
	            </li>
	            
	            <li onclick="openForm()">
	                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_06.jpg" alt="">
	                <div>
	                    <h2>안녕</h2>
	                    <h3>
	                        <span class="status green"></span>
	                        online
	                    </h3>
	                </div>
	            </li>
	            
	            <li onclick="openForm()">
	                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_07.jpg" alt="">
	                <div>
	                    <h2>실험</h2>
	                    <h3>
	                        <span class="status green"></span>
	                        online
	                    </h3>
	                </div>
	            </li>
	            
	            <li onclick="openForm()">
	                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_08.jpg" alt="">
	                <div>
	                    <h2>접속자</h2>
	                    <h3>
	                        <span class="status green"></span>
	                        online
	                    </h3>
	                </div>
	            </li>
	            
	            <li onclick="openForm()">
	                <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_09.jpg" alt="">
	                <div>
	                    <h2>어렵다</h2>
	                    <h3>
	                        <span class="status green"></span>
	                        online
	                    </h3>
	                </div>
	            </li>

	            <!-- <li></li>이 DB에서 접속사용자 가져오게...  -->
	            
	            
	            <footer>
	    			<input type="text" placeholder="search">
	    		</footer>
	    		
	        </ul>
    	</aside>
	</div>
	
    
</div>
<!-- 채팅 목록 리스트 end  -->


<!-- 채팅 화면 div -->
<div class="show1" id="chatbox">
    <div class="row chat-window col-xs-5 col-md-3 pull-right" id="chat_window_1">
        <div class="col-xs-12 col-md-12">
        
          <div class="panel panel-default">
          
                <div class="panel-heading top-bar">
                
                    <div class="col-md-8 col-xs-8">
                        <h3 class="panel-title"><span class="glyphicon glyphicon-comment"></span>사용자ID(사용자이름)</h3>
                    </div>
                    
                    <div class="col-md-4 col-xs-9" style="text-align: right;">
                        <a href="#"><span id="minim_chat_window" class="glyphicon glyphicon-arrow-down icon_arrow-down"></span></a>
                        <a href="#"><span id="plus_chat_window" class="glyphicon glyphicon-plus icon_plus" onclick="newopenForm()"></span></a>
                        <a href="#"><span class="glyphicon glyphicon-remove icon_close_chat" data-id="chat_window_1"></span></a>
                    </div>
                    
                </div>
                
                <div id="messagebody" class="panel-body msg_container_base">
                   
                    <div class="row msg_container base_sent">
                        <div class="col-md-10 col-xs-10">
                            <div class="messages msg_sent">
                                <p>Hi</p>
                                <time datetime="2009-11-13T20:00">Admininstrator • Yesterday 10:05:22</time>
                            </div>
                        </div>
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="https://cheme.mit.edu/wp-content/uploads/2017/01/stephanopoulosgeorge-431x400.jpg" class="chatimg img-responsive ">
                        </div>
                    </div>
                    
                    <div class="row msg_container base_receive">
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Rajesh_Gopinathan.jpg/220px-Rajesh_Gopinathan.jpg" class="chatimg img-responsive ">
                        </div>
                        <div class="col-md-10 col-xs-10">
                            <div class="messages msg_receive">
                                <p>Hi sir,</p>
                                <time datetime="2009-11-13T20:00">Rajesh M • Yesterday 10:05:28</time>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row msg_container base_receive">
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Rajesh_Gopinathan.jpg/220px-Rajesh_Gopinathan.jpg" class="chatimg img-responsive ">
                        </div>
                        <div class="col-xs-10 col-md-10">
                            <div class="messages msg_receive">
                                <p>How are you?</p>
                                <time datetime="2009-11-13T20:00">Rajesh M • Yesterday 10:05:33</time>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row msg_container base_sent">
                        <div class="col-xs-10 col-md-10">
                            <div class="messages msg_sent">
                                <p>I am Fine. Hw about u?</p>
                                <time datetime="2009-11-13T20:00">Administrator • Yesterday 10:05:38</time>
                            </div>
                        </div>
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="https://cheme.mit.edu/wp-content/uploads/2017/01/stephanopoulosgeorge-431x400.jpg" class="chatimg img-responsive ">
                        </div>
                    </div>
                    
                    <div class="row msg_container base_receive">
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Rajesh_Gopinathan.jpg/220px-Rajesh_Gopinathan.jpg" class="chatimg img-responsive ">
                        </div>
                        <div class="col-xs-10 col-md-10">
                            <div class="messages msg_receive">
                                <p>I am also doing fine. See you later sir.</p>
                                <time datetime="2009-11-13T20:00">Rajesh M • Yesterday 10:05:41</time>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row msg_container base_sent">
                        <div class="col-md-10 col-xs-10 ">
                            <div class="messages msg_sent">
                                <p>Good, Have a nice day.</p>
                                <time datetime="2009-11-13T20:00">Administrator • Yesterday 10:05:45</time>
                            </div>
                        </div>
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="https://cheme.mit.edu/wp-content/uploads/2017/01/stephanopoulosgeorge-431x400.jpg" class="chatimg img-responsive ">
                        </div>
                    </div>
                </div>
                
             </div>
             
             <div class="panel-footer">
             	<div class="input-group">
             		<input id="btn-input" type="text" class="form-control input-sm chat_input" placeholder="메세지를 입력해주세요..." required="required" />
                    <span class="input-group-btn">
                    	<button class="btn btn-primary btn-sm" id="btn-chat">보내기</button>
                    </span>
                </div>
             </div>
             
        </div>
    </div> 
</div>

<!-- 채팅화면 div end  -->



<!-- 새로운 채팅 div  -->

<!-- 새로운 채팅 추가 div -->
<div class="show2" id="pluschatbox">
    <div class="row pluschat-window col-xs-5 col-md-3 pull-right" id="pluschat_window">
        <div class="col-xs-12 col-md-12">
          <div class="panel panel-default">
          
                <div class="panel-heading top-bar">
                
                    <div class="col-md-8 col-xs-8">
                        <span class="comment">새로운대화</span>
                    </div>
                    
                    <div class="col-md-4 col-xs-4" style="text-align: right;">
                        <a href="#"><span class="glyphicon glyphicon-remove icon_close_new" data-id="pluschat_window"></span></a>
                    </div>
                    
                </div> <!-- 새로운대화 상단바  -->
                
                <div id="search">
	    			<input type="text" placeholder="이름을 입력하세요">
	    		</div>
                
                
                <div id="listbody" class="panel-body msg_container_base">
                    <div class="row msg_container base_sent">
                        <div class="col-md-10 col-xs-10">
                        	<span class="user-display-name__id">(userID)</span>
							<span class="user-display-name__nickname"> (userName)</span>
                        </div>
                    </div>
                </div>
           </div>
   			
           <button class="new-chat" id="new-chat">대화시작하기</button>
    
        </div>
    </div>
</div>

<!-- 새로운 채팅 추가 end  -->



<!-- js -->
<script type="text/javascript">
	
	function openForm() {
	  document.getElementById("chatbox").style.display = "block";
	}

	function closeForm() {
	  document.getElementById("chatbox").style.display = "none";
	}
	
	$(document).on('click', '.panel-heading span.icon_arrow-down', function (e) {
	    var $this = $(this);
	    
	    if (!$this.hasClass('panel-collapsed')) {
	        $this.parents('.panel').find('.panel-body').slideUp();
	        $this.addClass('panel-collapsed');
	        $this.removeClass('glyphicon-arrow-down').addClass('glyphicon-arrow-up');
	    } else {
	        $this.parents('.panel').find('.panel-body').slideDown();
	        $this.removeClass('panel-collapsed');
	        $this.removeClass('glyphicon-arrow-up').addClass('glyphicon-arrow-down');
	    }
	});
	
	$(document).on('focus', '.panel-footer input.chat_input', function (e) {
	    var $this = $(this);
	    if ($('#minim_chat_window').hasClass('panel-collapsed')) {
	        $this.parents('.panel').find('.panel-body').slideDown();
	        $('#minim_chat_window').removeClass('panel-collapsed');
	        $('#minim_chat_window').removeClass('glyphicon-arrow-up').addClass('glyphicon-arrow-down');
	    }
	});
	
	$(document).on('click', '#newchat', function (e) {
	    var size = $( ".chat-window:last-child" ).css("margin-left");
	    size_total = parseInt(size) + 400;
	    alert(size_total);
	    var clone = $( "#newchat_window" ).clone().appendTo( ".container" );
	    clone.css("margin-left", size_total);
	});
	
	$(document).on('click', '.icon_close_chat', function (e) {
	    //$(this).parent().parent().parent().parent().remove();
	    $( "#chatbox" ).hide();
	});
	
	// send function start

	function send(){
		var chat = $("#btn-input").val(); 
		var dt = new Date();
		var time = dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();
	
		if (chat =="") {
	    	alert('Enter Message');
		} else {
			var body =      '<div class="row msg_container base_sent">' +
							'<div class="col-md-10 col-xs-10 ">' +
	                        '<div class="messages msg_sent">' +
	                        '<p>'+ chat + '</p>'+
	                        ' <time datetime="2009-11-13T20:00">Administrator • Today '+time+'</time>'+
	                        '</div>' +
	                        '</div>' +
	                        '<div class="col-md-2 col-xs-2 avatar">' +
	                        '<img class="chatimg" src="https://cheme.mit.edu/wp-content/uploads/2017/01/stephanopoulosgeorge-431x400.jpg" class=" img-responsive ">' +
	                        '</div>' +
						    '</div>';
	}
		
	$(body).appendTo("#messagebody");
	
	$('#btn-input').val('');
	
	$("#messagebody").animate({ scrollTop: $("#messagebody")[0].scrollHeight}, 'slow');
	}
	// send function end

	$( "#btn-chat" ).click(function() {
		send()
	});
	
	$('#btn-input').keypress(function (e) {
	  if (e.which == 13) {
	    send()
	  }
	});
</script>



<script type="text/javascript">
	
	function newopenForm() {
	  document.getElementById("pluschatbox").style.display = "block";
	}

	function newcloseForm() {
	  document.getElementById("pluschatbox").style.display = "none";
	}
	
	$(document).on('click', '#pluschat', function (e) {
	    var size = $( ".pluschat-window:last-child" ).css("margin-left");
	     size_total = parseInt(size) + 400;
	    alert(size_total);
	    var clone = $( "#pluschat-window" ).clone().appendTo( ".container" );
	    clone.css("margin-left", size_total);
	});
	
	$(document).on('click', '.icon_close_new', function (e) {
	    //$(this).parent().parent().parent().parent().remove();
	    $( "#pluschatbox" ).hide();
	});
	
	
		
	/* refresh에 리스트만 나오게 하기  */
	
	$(document).ready(function() {
		$('.show1').hide(); 			//페이지를 로드할 때 표시할 요소
		$('.show2').hide(); 			//페이지를 로드할 때 숨길 요소
	});

</script>



</body>
</html>
</html>
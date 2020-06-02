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

</head>

<style type="text/css">
	.col-md-2, .col-md-10{
	    padding:0;
	}
	
	.panel{
	    margin-bottom: 0px;
	}
	
	.newchat-window{
	    bottom: 0;
		right: 600px;
	    position: fixed;
	    float: right;
	}
	
	.newchat-window > div > .panel{
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
	    box-shadow: 1px 1px 2px rgba(black, 0.2); 		// not quite perfect but close
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
	    position: fixed;
	    left: 0px;
	    bottom: 0;
	}
	
	.new-chat {								/* 새로운 채팅 시작하기 버튼  */
		color: #497bd8;
		font-size: 13px;
        line-height: 3px;
		width: 100%;
		height: 36px;
	    padding: 10px 20px;
	    background-color: lightgrey;
	   	border-top: 1px solid #d8d8d8;
	    border-bottom-right-radius: 3px;
	    border-bottom-left-radius: 3px;
	    border: 0;
	}
	
	#search input {						/* 사용자 찾기 위한 검색창  */
		display: block;
	    width: 100%;
	    box-sizing: border-box;
	    height: 34px;
	    border: 0;
	    outline: 0;
	    border-bottom: 1px solid #d8d8d8;
	    padding: 0 8px;
	    font-size: 12px;
	    line-height: 34px;
	    color: #3d3c40;
	}
	
	
</style>

<body>

<!-- 새로운 채팅 추가 div -->
<div class="pull-right" id="newchatbox">
    <div class="row newchat-window col-xs-5 col-md-3 pull-right" id="new_chat_window">
        <div class="col-xs-12 col-md-12">
        
          <div class="panel panel-default">
          
                <div class="panel-heading top-bar">
                
                    <div class="col-md-8 col-xs-8">
                        <span class="comment">새로운대화</span>
                    </div>
                    
                    <div class="col-md-4 col-xs-4" style="text-align: right;">
                        <a href="#"><span class="glyphicon glyphicon-remove icon_close" data-id="new_chat_window"></span></a>
                    </div>
                    
                </div> <!-- 새로운대화 상단바  -->
                
                <div id="search">
	    			<input type="text" placeholder="이름을 입력하세요">
	    		</div>
                
                <div id="messagebody" class="panel-body msg_container_base">

                    <div class="row msg_container base_sent">
                        <div class="col-md-10 col-xs-10">
                            <div class="messages msg_sent">
                                <p>여기에 검색된 리스트 출력</p>
                            </div>
                        </div>
                    </div>
                    
                </div>
                
           </div>
   
             <button class="new-chat" id="new-chat">대화시작하기</button>
    
        </div>
    </div>

    
</div>
<!-- 새로운 채팅 추가 end  -->


<!-- 새로운 채팅 축js -->
<script type="text/javascript">
	
	function newopenForm() {
	  document.getElementById("newchatbox").style.display = "block";
	}

	function newcloseForm() {
	  document.getElementById("newchatbox").style.display = "none";
	}
	
	
	$(document).on('focus', '.new-chat input.chat_input', function (e) {
	    var $this = $(this);
	    if ($('#minim_chat_window').hasClass('panel-collapsed')) {
	        $this.parents('.panel').find('.panel-body').slideDown();
	        $('#minim_chat_window').removeClass('panel-collapsed');
	        $('#minim_chat_window').removeClass('glyphicon-plus').addClass('glyphicon-minus');
	    }
	});
	
	$(document).on('click', '#new_chat', function (e) {
	    var size = $( ".newchat-window:last-child" ).css("margin-left");
	     size_total = parseInt(size) + 400;
	    alert(size_total);
	    var clone = $( "#new_chat_window" ).clone().appendTo( ".container" );
	    clone.css("margin-left", size_total);
	});
	
	$(document).on('click', '.icon_close', function (e) {
	    //$(this).parent().parent().parent().parent().remove();
	    $( "#newchatbox" ).hide();
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


$( "#new-chat" ).click(function() {
	send()
});


$('#btn-input').keypress(function (e) {
  if (e.which == 13) {
    send()
  }
});
</script>
	
	
</body>
</html>
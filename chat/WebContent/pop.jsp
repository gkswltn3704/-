<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 만든 채팅 (not controller)</title>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="chat_css.css">  	<!-- css 파일 경로  -->

</head>
<body>

<div class="all"> 							<!-- 사용자 리스트 출력 div  -->

	<div id="list_header">					<!-- 대화 리스트 헤더  -->
		<span id="head_font">대화</span>
		<a href="#" id="plus" class="plus">
			<span id="plus_chat_window" class="glyphicon glyphicon-plus icon_plus" onclick="newopenForm()"></span>        <!-- puls 이모티콘 추가-->
		</a>
	</div>
	
	<div id="list">							<!-- 사용자 리스트 body  -->		
		<aside>
	        <ul id="alllist">
	        	
	        	<li onclick="openForm()"> 												
		        	<span class="dot" id="dot" ></span>								<!-- dot = 로그인/비로그인 으로 색 구분  -->
		        	<div>
		        		<h2><a>사용자</a></h2>				<!-- 사용자 id와 이름 가져오기 -->
		        	</div>															<!-- javascript:void(0); = a태그 이동 x -->
				</li>
	            
	            <li onclick="openForm()">
	            	<span class="dot" id="dot"></span>
	            	<div>
	            		<h2><a>이윤수</a></h2>				<!-- a태그 이유는 검색을 위해서... -->	
		            </div>
	            </li>
	            
	            <li onclick="openForm()">
	            	<span class="dot" id="dot"></span>
	            	<div>
	            		<h2><a>이로운</a></h2>
	            	</div>
	            </li>
	            
	            <li onclick="openForm()">
	            	<span class="dot" id="dot"></span>				
		            <div>
		                <h2><a>신한</a></h2>
		            </div>
	            </li>
	            
	            <li onclick="openForm()">
	            		<span class="dot" id="dot"></span>
		                <div>
		                    <h2><a>한지수</a></h2>
		                </div>
	            </li>
	            
	            <li onclick="openForm()">
	            		<span class="dot" id="dot"></span>
		                <div>
		                    <h2><a>백진우</a></h2>
		                </div>
	            </li>
	            
	            <li onclick="openForm()">
	            		<span class="dot" id="dot"></span>
		                <div>
		                    <h2><a>주정은</a></h2>
		                </div>
	            </li>
	            
	            <li onclick="openForm()">
	            		<span class="dot" id="dot"></span>
		                <div>
		                    <h2><a>박채은</a></h2>
		                </div>
	            </li>
	            
	            <li onclick="openForm()">
	            		<span class="dot" id="dot"></span>
		                <div>
		                    <h2><a>하지말자</a></h2>
		                </div>
	            </li>
	            
	            <li onclick="openForm()">
		            	<span class="dot" id="dot"></span>					<!-- id="dot" =>> js를 위한 id  -->
		            	<div>
		                    <h2><a>강사님</a></h2>
		            	</div>

	            </li>

	            <!-- <li></li>이 DB에서 접속사용자 가져오게...  -->
	          
	        </ul>

	    	
    	</aside>
	</div>
	
	<div id="list_footer">
	    <!-- 검색하기 기능  -->
	    <footer class="footer">
	    	<input type="text" id="listsearch" onkeyup="list_search()" placeholder="이름 또는 아지트 아이디 검색">
	    </footer>	        
	
	</div>
    
</div>
<!-- 채팅 목록 리스트 end  -->


<!-- 채팅 화면 div -->
<div class="show1" id="chatbox">
    <div class="row chat-window col-xs-5 col-md-3 pull-right" id="chat_window_1">
        <div class="col-xs-12 col-md-12">
        
          <div class="panel panel-default">
          
                <div class="panel-heading top-bar">									 <!-- 채팅화면 상단바   -->
                
                    <div class="col-md-7 col-xs-8" id="paneltit">
                        <span id="panel-title"><span class="dot" id="dot"></span>사용자ID(사용자이름)</span>			<!-- 채팅방 이름 [제목]  -->
                    </div>
                    
                    <div class="col-md-5 col-xs-5" style="text-align: right;" id="iconchat">			
                        <a href="#"><span id="minim_chat_window" class="glyphicon glyphicon-arrow-down icon_arrow-down"></span></a>
                        <a href="#"><span id="plus_chat_window" class="glyphicon glyphicon-plus icon_plus" onclick="newopenForm()"></span></a>
                        <a href="#"><span class="glyphicon glyphicon-remove icon_close_chat" data-id="chat_window_1"></span></a>
                    </div>
                    
                </div>
                <!-- 채팅화면 상단바 end -->

                
                <div id="messagebody" class="panel-body msg_container_base">   			<!-- 채팅화면 body  -->
                   
                    <div class="row msg_container base_sent">
                        <div class="col-xs-10 col-md-10" id="sent">
                            <div class="messages msg_sent" id="msgsent">
                                <p>I kill chatting view and js</p>						<!-- chat data  -->
                                <time datetime="2009-11-13T20:00">사용자 id 또는 이름 • Yesterday 10:05:38</time>		<!-- 사용자 id와 이름 날짜  -->
                            </div>
                        </div>
                    </div>
                    
                    <div class="row msg_container base_receive">
                        <div class="col-md-10 col-xs-10">
                            <div class="messages msg_receive">
                                <p>Hi sir,</p>
                                <time datetime="2009-11-13T20:00">Rajesh M • Yesterday 10:05:28</time>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row msg_container base_receive">
                        <div class="col-xs-10 col-md-10">
                            <div class="messages msg_receive">
                                <p>How are you?</p>
                                <time datetime="2009-11-13T20:00">Rajesh M • Yesterday 10:05:33</time>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row msg_container base_sent">
                        <div class="col-xs-10 col-md-10" id="sent">
                            <div class="messages msg_sent" id="msgsent">
                                <p>I am Fine. Hw about u?</p>
                                <time datetime="2009-11-13T20:00">Administrator • Yesterday 10:05:38</time>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row msg_container base_receive">
                        <div class="col-xs-10 col-md-10">
                            <div class="messages msg_receive">
                                <p>I am also doing fine. See you later sir.</p>
                                <time datetime="2009-11-13T20:00">Rajesh M • Yesterday 10:05:41</time>
                            </div>
                        </div>
                    </div>
                    
 					<div class="row msg_container base_sent">
                        <div class="col-xs-10 col-md-10" id="sent">
                            <div class="messages msg_sent" id="msgsent">
                                <p>fuck css and js</p>
                                <time datetime="2009-11-13T20:00">Administrator • Yesterday 10:05:38</time>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 메세지 대화 send 와 receive로 폼 주고 받기~~ -->
                    
                    
                </div>
             </div>
             <!-- 채팅화면 대화~~ end  -->
             
             <div class="panel-footer">
             	<div class="input-group">
             		<input id="btn-input" type="text" class="form-control input-sm chat_input" placeholder="메세지를 입력해주세요..." required="required" />
                    <span class="input-group-btn">
                    	<button class="btn btn-primary btn-sm" id="btn-chat">보내기</button>
                    </span>
                </div>
             </div>
             
             <!-- 채팅화면 글쓰기 폼 end  -->
             
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
                
                    <div class="col-md-10 col-xs-8" id="comment" >
                        <span class="comment">새로운대화</span>
                    </div>
                    
                    <div class="col-md-4 col-xs-5" style="text-align: right;" id="iconclose">
                        <a href="#"><span class="glyphicon glyphicon-remove icon_close_new" data-id="pluschat_window"></span></a>
                    </div>
                    
                </div> <!-- 새로운대화 상단바  -->
                
                
                <div id="myDropdown" class="dropdown-content">
                	<input type="text" placeholder="이름 또는 아지트 아이디를 입력하세요" id="myInput" onkeyup="filterFunction()">
                	
                	<div id="member">
	                	<a href="#(userID)(userName)" onclick="startchat()">
	                		<span>(userID)3704(userName)지수</span>
	                		<span class="glyphicon glyphicon-remove icon_close_member" data-id="member"></span>
	                	</a>                 	
                	</div>
                	<div>
                		<a href="#(userID)(userName)" onclick="startchat()">
                			<span>(userID)한이(userName)신한</span>
                			<span class="glyphicon glyphicon-remove icon_close_member" data-id="member"></span>
                		</a>                 	
                	</div>
                	<div>
	                	<a href="#(userID)(userName)" onclick="startchat()">
	                		<span>(userID)윤수(userName)이윤수</span>
	                		<span class="glyphicon glyphicon-remove icon_close_member" data-id="member"></span>
	                	</a>                 	
                	</div>
                	<div>
	                	<a href="#(userID)(userName)" onclick="startchat()">
	                		<span>(userID)진우(userName)백진우</span>
	                		<span class="glyphicon glyphicon-remove icon_close_member" data-id="member"></span>
	                	</a>                 	
                	</div>

					<!-- div가 리스트로 출력되어야 함! == db에서 사용자 리스트 가져오기  -->
					
					
                </div>

           <button class="new-chat" id="new-chat">대화시작하기</button>
           </div>
    
        </div>
    </div>
</div>

<!-- 새로운 채팅 추가 end  -->












<!-- js -->

<script type="text/javascript">
	$(document).ready(function() {
		$('.show1').hide(); 			//페이지를 로드할 때 숨길 요소 [채팅창화면]
		$('.show2').hide(); 			//페이지를 로드할 때 숨길 요소 [새로운채팅화면]
	});

</script>

<!-- 채팅 화면  js  -->
<script type="text/javascript">

	function openForm() {
	  document.getElementById("chatbox").style.display = "block";			/* 사용자명을 클릭하면 보이게  */
	}

	function closeForm() {
	  document.getElementById("chatbox").style.display = "none";			/* x버튼 클릭하면 창 닫힘 */
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
	    var clone = $( "#chat_window" ).clone().appendTo( ".container" );
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
							'<div class="col-md-10 col-xs-10 " id="sent">' +
	                        '<div class="messages msg_sent" id="msgsent">' +
	                        '<p>'+ chat + '</p>'+
	                        ' <time datetime="2009-11-13T20:00">사용자id • Today '+time+'</time>'+
	                        '</div>' +
	                        '</div>' +
						    '</div>';
	}
		
	$(body).appendTo("#messagebody");							/* 대화 부분에 새로운 대화 전송을 추가한다  */
	
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



<!-- 새로운 채팅 추가 js  -->
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
	
	
</script>



<!-- 새로운 채팅 = 검색기능 js  -->
<script type="text/javascript">
	
	function myFunction() {
		document.getElementById("myDropdown").classList.toggle("plusshow");

	}
	
	function filterFunction() {
	  var input, filter, ul, li, a, i;
	  
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  div = document.getElementById("myDropdown");
	  a = div.getElementsByTagName("a");
	  
	  for (i=0; i<a.length; i++) {
	    txtValue = a[i].textContent || a[i].innerText;
	    if (txtValue.toUpperCase().indexOf(filter) > -1) {
	      a[i].style.display = "block";								/* 검색을 하면 리스트 보이게  */
	    } else {
	      a[i].style.display = "none";
	    }
	  }
	}
</script>



<!-- 채팅목록에서 검색 js  -->
<script type="text/javascript">

	function list_search() {
		
	    var input, filter, ul, li, a, i, txtValue;
	    input = document.getElementById("listsearch");				/* text에서 값을 받아와서  */
	    filter = input.value.toUpperCase();
	    ul = document.getElementById("alllist");					/* db에서 나온 리스트 목록  */
	    li = ul.getElementsByTagName("li");
	    
	    for (i = 0; i < li.length; i++) {
	        a = li[i].getElementsByTagName("a")[0];
	        txtValue = a.textContent || a.innerText;
	        if (txtValue.toUpperCase().indexOf(filter) > -1) {
	            li[i].style.display = "";
	        } else {
	            li[i].style.display = "none";
	        }
	    }
	}

	function startchat() {
		
		var clickmem = document.getElementById("new-chat"); 
		
		clickmem.style.color = "#497BD9";						//검색해서 나온 이용자를 클릭 하면 버튼 활성화!
		/* color: #497BD9; 버튼이 파란색으로 바뀐다..... */
		
	}

</script>



<!-- 세션값으로  사용자 로그인 접속 여부 만들기 [초록과 그레이로 구분] -->
<script type="text/javascript">

	function getParameter(name) {
	    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	        results = regex.exec(location.search);
	    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));			
	}
	//파라미터 값을 받기 위한 기능
	
	
	var memids = getParameter('memid');						//세션값으로?[id&name]	//파라미터 값으로 사용자 id와 이름 가져오기						
 	//console.log(memids);
 	
	
	var str = "";											//배열을 선언해서 여기에 리스트 담기
	 
    for (var i = 0; i < $('h2').find('a').length; i++) {	//리스트에 나온 사용자 [이름]을 배열로 선언
        str += $('h2').find('a').eq(i).text() + ',';		//배열에서 이름 구분을 위한 
    }
	
    var arr = str.split(",");								//구분자를 제외해서 이름별 인덱스번호 지정

    //console.log(arr[3]);
	
    var samename = str.includes(memids);					//str이라는 배열 리스트에 이름이 존재한다면 true, 아니면 false
    console.log(samename);
    
    var indexnum = arr.indexOf(memids);						//배열의 인덱스번호값
    console.log(indexnum);
    
    $(function() {
    	
	    if(samename == true ) {								//리스트에 존재하는 이름과 같다면 색 변경
	    	document.getElementsByClassName("dot")[indexnum].style.background = "#2ecc71";		//온라인
	    } else if(samename == false) {	
	    	document.getElementsByClassName("dot")[indexnum].style.background = "#bbb";			//오프라인
	    }

    });
    

    
</script>




</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정화령 블로그</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link href="../css/album.css" rel="stylesheet">
<link rel="stylesheet" href="../css/newcss.css">
</head>
<body>
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand">정화령 블로그</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#introduce">자기소개</a></li>
				<li class="nav-item"><a class="nav-link" href="#favorite">좋아하는
						것</a></li>
				<li class="nav-item"><a class="nav-link" href="#goal">인생의
						목표</a></li>
				<li class="nav-item"><a class="nav-link" href="#bonus">
				기타</a></li>
			</ul>
				    <%-- 세션이 없는 경우 --%>
    <%
    	UserVO user = (UserVO)session.getAttribute("user");
    	if(user==null){
    %>
			<form class="form-inline my-2 my-lg-0" id="loginForm"
				style="color: white">
				<input class="form-control mr-sm-2" type="text" placeholder="ID"
					aria-label="ID" id="id" required> <input
					class="form-control mr-sm-2" type="password" placeholder="PWD"
					aria-label="PWD" id="pwd" required>

				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    <%
    	}else{
    %>
    <%-- 세션이 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%=user.getName()%>님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      <form id="form">
	      	<button type="submit" class="dropdown-item">Sign out</button>
	      </form>
	       	<div class="dropdown-divider"></div>
	        <button type="button" class="dropdown-item">Action1</button>
	        <button type="button" class="dropdown-item">Action2</button>
	      </div>
	    </li>
	    </ul>
    <%
    	}
    %>
			</form>
		</div>
	</nav>
	<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">로그인 결과</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal" id="myModal2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">회원가입</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<div class="container" id="divcontainer" style="margin-bottom: 200px">
		<div id="div">
			<div class="col-md-6 mb-3" style="margin-top: 90px">
				<div style="margin-bottom: 30px">
					<h1 class="display-3">Sign up</h1>
				</div>
			</div>
			<form class="form" id="form">
				<div class="col-md-6 mb-2">
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="inlineRadioOptions"
							id="inlineRadio1" value="option1" required> 1학년
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="inlineRadioOptions"
							id="inlineRadio2" value="option2" checked="checked"> 2학년
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="inlineRadioOptions"
							id="inlineRadio3" value="option3"> 3학년
						</label>
					</div>
				</div>
				<div class="col-md-3 mb-3">
					<select name='classnum' class="custom-select" required>
						<option value='' selected>반</option>
						<option value='1'>1반</option>
						<option value='2'>2반</option>
						<option value='3'>3반</option>
						<option value='4'>4반</option>
						<option value='5'>5반</option>
						<option value='6'>6반</option>
					</select>

				</div>
				<div class="col-md-2 mb-3">
					<input class="form-control" type="text" placeholder="번호"
						aria-label="번호" id="num" required>
				</div>
				<div class="col-md-2 mb-3">
					<input class="form-control" type="text" placeholder="이름"
						aria-label="이름" id="name" required>
				</div>
				<div class="col-md-3 mb-3">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Sign
						up</button>
				</div>
			</form>
		</div>
	</div>
	<div class="container-fluid" id="introduce"
		style="background-color: #fafafa">

		<div class="container"
			style="padding-top: 60px; padding-bottom: 150px; line-height: 2em">
			<h1 style="margin-bottom: 20px" class="display-3">How am I</h1>
			이름: 정화령<br> 나이: 18살<br> 생년월일: 2000년 9월 29일<br> 주소: 경기도
			시흥시 능곡동 신일해피트리아파트<br> 가족: 아버지, 어머니, 형<br> 직업: 학생<br>
			학교: 한국디지털미디어고등학교<br> 학년/반: 2학년 4반<br> 동아리: #implude<br>
			키: 173cm<br> 몸무게: 60kg<br>
		</div>
	</div>
	<div class="album" id="favorite">
		<div class="container">
			<h1 style="margin-top: 15px; margin-bottom: 35px" class="display-3">What
				I like</h1>
			<div class="row">
				<div class="card" style="background-color: #e0e0e0">
					<img src="/WebClass/jsp/image1.jpg" style="width: 100%; height: auto"
						alt="No image">
					<p class="card-text">TWICE</p>
				</div>
				<div class="card" style="background-color: #e0e0e0">
					<img src="/WebClass/jsp/image1.jpg" style="width: 100%; height: auto"
						alt="No image">
					<p class="card-text">전자기기</p>
				</div>
				<div class="card" style="background-color: #e0e0e0">
					<img src="/WebClass/jsp/image1.jpg" style="width: 100%; height: auto"
						alt="No image">
					<p class="card-text">노래감상</p>
				</div>
				<div style="line-height: 2em; margin-bottom: 100px">
					좋아하는 여자아이돌은 트와이스이다.<br> pc나 모바일 기기등 전자기기에 관심이 많다.<br> 노래를
					많이 자주 듣는다.<br>
				</div>
			</div>
		</div>
		<div class="container"></div>
	</div>
	<div class="container-fluid" style="background-color: #f0f0f0">
		<div class="container"
			style="padding-top: 60px; padding-bottom: 550px" id="goal">
			<h1 style="margin-bottom: 20px" class="display-3">Goal</h1>
			<div style="line-height: 2em">
				한양대 전자전기공학부 입학<br> 반도체를 전공<br> 석사 혹은 박사 학위 취득<br>
				연산장치를 만드는 기업에서 연구개발직으로 근무<br> 인공지능 등에 사용되는 하드웨어 발전에 기여<br>
			</div>
		</div>
	</div>
	<div class="container-fluid" style="background-color: #e0e0e0">
		<div class="container"
			style="padding-top: 60px; padding-bottom: 550px"  id="bonus">
			<h1 style="margin-bottom: 30px" class="display-3">Bonus</h1>
			<img src="/WebClass/jsp/image1.jpg" alt="No image" style="width: 70%; height: auto; margin-bottom: 40px">
			<img src="/WebClass/jsp/image1.jpg" alt="No image" style="width: 70%; height: auto; margin-bottom: 40px">
			<img src="/WebClass/jsp/image1.jpg" alt="No image" style="width: 70%; height: auto; margin-bottom: 40px">
			<img src="/WebClass/jsp/image1.jpg" alt="No image" style="width: 70%; height: auto">
		
	</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.4/holder.js"></script>
	<script>
		$(document).ready(function() {
			$('#loginForm').submit(function(event) {
				event.preventDefault();

				var id = $('#id').val();
				var pwd = $('#pwd').val();

				$.post("/WebClass/bloglogin", {
					id : id,
					pwd : pwd
				}, function(data) {
					if('error' == data.msg){
						var myModal = $('#myModal');
						myModal.find('.modal-title').text('ERROR');
						myModal.find('.modal-body').text('Wrong ID');
						myModal.modal();
						$('#pwd').val('');
						
					}else if('success'==data.msg){
						location.href="NewFile.jsp";
					}
				});
			});
		});
		$(document).ready(function() {
			$('#form').submit(function(event) {
				$.post("/WebClass/bloglogout", {
				}, function(data) {
					location.href="NewFile.jsp";
					}
				);
				
			});
		});
	
	</script>
		
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- CSS -->
<link rel="stylesheet" href="/CSS/login.css">
<!-- 경로 수정 고려 -->

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<!-- Bootstrap ver 5.1  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>


<title>우리술夜</title>
</head>

<body>
	<div class="container m-auto">
			<header class="mb-5 pt-3">
			<nav class="navbar navbar-expand-lg navbar-light bg-white">
				<div class="container-fluid">
					<div class="navbar-header mx-2">
						<a class="navbar-brand" href="/index.jsp"> <img alt=""
							src="/img/logo2.jpg" id="logo"> <!-- 경로 수정 고려 -->
						</a>
					</div>

					<!-- <a class="navbar-brand" href="#">
          <img src="/img/logo2.jpg" id="logo">
        </a> -->

					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle mx-0 mx-md-0 mx-lg-3" href="#"
								id="navbarDropdown" role="button" href=""
								data-bs-toggle="dropdown" aria-expanded="false"> 우리술 정보 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#">막걸리</a></li>
									<li><a class="dropdown-item" href="#">전통 소주</a></li>
									<li><a class="dropdown-item" href="#">약주</a></li>
									<li><a class="dropdown-item" href="#">과실주</a></li>
									<li><a class="dropdown-item" href="#">리큐르</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item" href="#">전체보기</a></li>
								</ul></li>

							<li class="nav-item"><a href="/Search/search.jsp"
								class="nav-link mx-0 mx-0 mx-md-0 mx-lg-3">우리 술 검색</a></li>


							<li class="nav-item"><a
								class="nav-link mx-0 mx-md-0 mx-lg-3" href="/boardList.board"
								id="board">술꾼 술꾼</a></li>
							<c:choose>
								<c:when test="${loginID != null}">

									<li class="nav-item d-lg-none"><a
										class="nav-link mx-0 mx-md-0 mx-lg-3" href="/mypage.member"
										id="board">내 정보</a></li>

									<li class="nav-item d-lg-none"><a
										class="nav-link mx-0 mx-md-0 mx-lg-3" href="/logout.member"
										id="board">로그아웃</a></li>

								</c:when>

								<c:otherwise>

									<li class="nav-item d-lg-none"><a
										class="nav-link mx-0 mx-md-0 mx-lg-3"
										href="/Member/loginView.jsp" id="board">로그인</a></li>

									<li class="nav-item d-lg-none"><a
										class="nav-link mx-0 mx-md-0 mx-lg-3"
										href="/Member/joinView.jsp" id="board">회원가입</a></li>

								</c:otherwise>
							</c:choose>

<<<<<<< HEAD
						<c:choose>
							<c:when test="${loginID eq 'admin'}">
							<li class="nav-item">
								<a class="nav-link mx-0 mx-md-2 mx-xl-5" href="/Manager/manager.jsp" id="board">관리자 페이지</a>
							</li>
							</c:when>
							
							<c:otherwise>
							
							</c:otherwise>
						</c:choose>
=======
							<c:choose>
								<c:when test="${loginID eq 'admin'}">
									<li class="nav-item"><a
										class="nav-link mx-0 mx-0 mx-md-0 mx-lg-3"
										href="/Manager/manager.jsp" id="board">관리자 페이지</a></li>
								</c:when>

								<c:otherwise>

								</c:otherwise>
							</c:choose>

>>>>>>> db0489e9aa2479a1af9839616e872d328624e4dc
						</ul>
						<form action="/mini.search" class="d-flex">
							<input id="search_input" class="form-control mx-1" type="search"
								placeholder="Search" aria-label="Search" name="search_text"
								required>
							<button class="btn btn-outline-success me-1" type="submit"
								id="search_btn">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
									<path
										d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
								</svg>
							</button>
						</form>

						<c:choose>
							<c:when test="${loginID != null}">
<<<<<<< HEAD
								<div class="btn-group">
=======
								<div class="d-none d-lg-inline btn-group">
>>>>>>> db0489e9aa2479a1af9839616e872d328624e4dc
									<button type="button" class="btn btn-warning dropdown-toggle"
										data-bs-toggle="dropdown" aria-expanded="false">
										${loginID }</button>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="/mypage.member">마이페이지</a></li>
										<li><a class="dropdown-item" href="/logout.member">로그아웃</a></li>
									</ul>
								</div>
<<<<<<< HEAD
=======

>>>>>>> db0489e9aa2479a1af9839616e872d328624e4dc
							</c:when>

							<c:when test="${kakaoemail !=null}">
								<div id="test"></div>
									<div class="btn-group">
										<button type="button" class="btn btn-warning dropdown-toggle"
											data-bs-toggle="dropdown" aria-expanded="false">
											${kakaoemail }</button>
										<ul class="dropdown-menu">
											<li><a class="dropdown-item" href="/mypage.member">마이페이지</a></li>
											<li><a class="dropdown-item" href="/logout.member">로그아웃</a></li>
										</ul>
									</div>
							</c:when>
											
							<c:otherwise>
<<<<<<< HEAD
								<button id="loginBtn" type="button" class="mx-1 btn btn-warning navbar-btn">로그인</button>
								<button id="joinBtn" type="button" class="mx-1 btn btn-dark navbar-btn">회원가입</button>
								
								<script>
									$("#loginBtn").on("click",function(){
										location.href="/Member/loginView.jsp";
									})
									$("#joinBtn").on("click",function(){
										location.href="/Member/joinView.jsp";
									})
								</script>
=======
								<button id=login type="button"
									class="d-none d-lg-inline btn btn-warning navbar-btn">로그인</button>
								<button id=join type="button"
									class="d-none d-lg-inline btn btn-dark navbar-btn">회원가입</button>
>>>>>>> db0489e9aa2479a1af9839616e872d328624e4dc
							</c:otherwise>
						</c:choose>

					</div>
				</div>
			</nav>
		</header>

<<<<<<< HEAD
=======
		<script>
			$("#join").on("click", function() {
				location.href = "/Member/joinView.jsp";
			})
			$("#login").on("click", function() {
				location.href = "/Member/loginView.jsp"
			})
		</script>

>>>>>>> db0489e9aa2479a1af9839616e872d328624e4dc

		<!----------------------------------- Content ----------------------------------->

		<div class="container" style="width: 360px;">
			<div style="text-align: center;">
				<h3>비밀번호 재설정</h3>
			</div>
			<div class="idline">
				<div>
					<input type="text" class="textBox" id="id" name="id" placeholder="아이디">
					<input type="text" class="textBox" id="name" name="name" placeholder="이름">
					<input type="text" class="textBox" id="phone" name="phone" placeholder="핸드폰번호">
				</div>
			</div>
			
		<form action="/updatePw.member" method="post">
			<div id="changetext" style="display:none;">변경하실 비밀번호를 입력하세요.</div>
            <input type="password" class="pwBox" id="pw" name="pw" placeholder="비밀번호 재설정" style="display:none;">
            <div id="pwinfo"></div>
            <input type="password" class="pwBox" id="pwcheck" name="pwcheck" placeholder="비밀번호 재설정 확인" style="display:none;">
            <div id="pwcheckinfo"></div>
            <input type="button" class="btn btn-outline-secondary" id="next" value="다음">
            <input type="button" class="btn btn-outline-secondary" id="change" value="변경" style="display:none;">
		</form>
    	</div>
    
 		<script>
 		//다음 버튼 누르면 비번 설정창 뜨게하기
 			$("#next").on("click",function(){
				$.ajax({
					url:"/searchPw.member",
					data:{id:$("#id").val(), name:$("#name").val(), phone:$("#phone").val()} 
				}).done(function(resp){ 
					let result = JSON.parse(resp);
					//console.log(result);
					if(result == null){
						alert("해당하는 정보가 없습니다. 입력된 정보를 다시 확인해주세요.");
					}else{
						$("#changetext").show();
						$("#change").show();
						$(".textBox").css("display","none");
						$(".pwBox").show();
					}
				});
 			$("#change").on("click", function(){
 				$.ajax({
 					url:"/updatePw.member",
 					data:{pw:$("#pw").val()}
 				}).done(function(resp){
 					let result = JSON.parse(resp);
 					//console.log(result);
 					alert("변경이 완료됐습니다.");
 					location.href = "/Member/loginView.jsp";
 				})
 			})
 			})
 			//비번 유효성
 			$("#pw").on("keyup",function(){
				let pw = $("#pw").val();
				let pwRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,16}$/;
				let pwResult = pwRegex.test(pw);
				
				if(!pwResult){
					$("#pwinfo").css("color", "red");
					$("#pwinfo").css("font-size", "10.5pt");
					$("#pwinfo").text("영문, 숫자를 하나 이상 포함한 8~16자");
				} else{
					$("#pwinfo").text("");
				}
			})
			//비번재확인 유효성
			$("#pwcheck").on("keyup",function(){
				let pw = $("#pw").val();
				let pwcheck = $("#pwcheck").val();
				let pwcheckRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,16}$/;
				let pwcheckResult = pwcheckRegex.test(pwcheck);
				
				if(!pwcheckResult){
					$("#pwcheckinfo").css("color", "red");
					$("#pwcheckinfo").css("font-size", "10.5pt");
					$("#pwcheckinfo").text("영문, 숫자를 하나 이상 포함한 8~16자");
				} else if(pw == pwcheck){
					$("#pwcheckinfo").css("color", "dodgerblue");
					$("#pwcheckinfo").css("font-size", "10.5pt");
					$("#pwcheckinfo").text("비밀번호가 일치합니다.");
				} else {
					$("#pwcheckinfo").css("color", "red");
					$("#pwcheckinfo").css("font-size", "10.5pt");
					$("#pwcheckinfo").text("비밀번호가 일치하지 않습니다.");
				}
			})
 		</script>

		<!----------------------------------- footer ----------------------------------->


		<hr>
		<footer class="site-footer">

			<div class="container">
				<div class="row">
					<div class="d-none d-lg-block col-md-8 col-sm-6 col-xs-12">
						<p class="copyright-text">
							Copyright &copy; 2022 All Rights Reserved by <a href="#"
								style="text-decoration: none;">아이코올</a>.
						</p>
					</div>

					<div class="d-lg-none col-md-8 col-sm-6 col-xs-12">
						<p class="copyright-text">Copyright &copy;</p>
						<p class="copyright-text">
							2022 All Rights Reserved by <a href="#"
								style="text-decoration: none;">아이코올</a>.
						</p>
					</div>

					<div class="col-md-4 col-sm-6 col-xs-12">
						<ul class="social-icons">
							<li><a class="facebook" href="#"><i
									class="fa fa-facebook"></i></a></li>
							<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a class="dribbble" href="#"><i
									class="fa fa-dribbble"></i></a></li>
							<li><a class="linkedin" href="#"><i
									class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	</div>

</body>

</html>
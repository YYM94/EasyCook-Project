<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EasyCook! 로그인</title>

<link rel="stylesheet" type="text/css" href="./css/login.css" />
<script src="./js/jquery.js"></script>
<script>

/* 아이디 찾기  클릭시 아이디찾기 화면 띄우기 */
	function LoginFindID() {
/* 			var up;
			up=$('#login_find_id');
			up.offset().top; */ /*아이디 찾기 클릭시 로그인영역 페이지 상단으로 위치 옮기기.. 예정..*/
		$('#login_find_id_text').off('click').click(function() {
  			$('#login_find_pwd').hide();
			$('#login_find_id').fadeToggle();
 			$('#login_find_id_q_a').focus(); 
		});
	}
	
	
/* 비밀번호 찾기  클릭시 비밀번호찾기 화면 띄우기 */
	function LoginFindPWD(){
		$('#login_find_pwd_text').off('click').click(function(){
			$('#login_find_id').hide();
			$('#login_find_pwd').fadeToggle();
			$('#login_find_pwd_id_text').focus();
		});
	}

/* 아이디 찾기 영역에서 버튼 클릭시 하단에 아이디 보여주기   // 가입시 입력한 질문과 전화번호가 일치해야 됨.(추가해야함..) // 입력한 값이 맞지않을때 나오는 영역 추가해야함..*/
	function FindViewID(){
		$('#login_find_button_id').click(function(){			
			$('#login_find_id_real').show();
		});
	}

/* 비밀번호 재설정 영역에서 비밀번호 재설정 버튼 클릭시 알림창 띄우기 */
	function RePWD(){ /*아이디와 질문 답 맞는지 확인후 맞다면 알림창 띄우고 로그인페이지로 이동하는 함수 추가해야함 */
		alert('비밀번호 재설정이 완료되었습니다. \n로그인 페이지로 이동합니다.');
		location.href='login.jsp';
}


</script>
</head>
<body id="login_body" onLoad="$('#login_id_box').focus();">
	<div id="container_login">
		<div id="panel_login">
			<!-- 로그인폼 전체 판 껍데기 -->
			<div id="panle_body_login">
				<!-- 로그인폼 전체 판 -->
				<form action="login_ok.jsp" method="post" name="login_form">
					<!-- 로그인 폼  -->
					<div id="panel_header_login">
						<!-- 로그인폼 타이틀 -->
						<a href="./index.jsp"><span>EasyCook!</span></a><span
							id="login_header_title"> 로그인</span>
					</div>
					<div id="panel_table_login">
						<!-- 로그인폼 입력 판 -->
						<div id="login_id" class="login_title">
							<!-- 로그인 폼 아이디 입력 라인 -->
							<strong><label for="login_id_box">아이디</label></strong> 
							<input name="login_id_box" id="login_id_box" class="login_control"
								maxlength="14" placeholder="아이디를 입력하세요." />
						</div>

						<div id="login_pwd" class="login_title">
							<!-- 로그인 폼 비밀번호 입력 라인 -->
							<strong><label for="login_pwd_box">비밀번호</label></strong> 
							<input name="login_pwd_box" id="login_pwd_box" class="login_control"
								maxlength="20" placeholder="비밀번호를 입력하세요." />
						</div>

						<div id="login_footer">
							<!-- 로그인폼 하단 로그인/회원가입 버튼 영역 -->
							<input type="submit" value="로그인" id="login_button" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="회원가입" id="join_button_login" onclick="location='join.jsp';" />
						</div>

					</div>
				</form>
				<div id="login_find">
					<a id="login_find_id_text">
						<b onclick="LoginFindID()">아이디 찾기</b>
					</a>
				
					<a id="login_find_pwd_text">
						<b onclick="LoginFindPWD()">비밀번호 재설정</b>
					</a>
				</div>
			</div>
			
			<div id="clear"></div>
			<!-- 아이디 찾기 영역 -->
			<div id="login_find_id">
				<div id="login_find_id_header">
					<a href="./index.jsp"><span>EasyCook!</span></a><span
							id="login_find_id_title"> 아이디 찾기</span>
				</div>	
					
				<div id="login_find_id_table">	
					<div id="login_find_id_q">
						<b id="find_q"><label for="login_find_id_q_a">가입시 선택한 질문</label></b>
						<input type="text" name="login_find_id_q_a" id="login_find_id_q_a" class="login_control" />
					</div>
					
					<div id="login_find_id_tel">
						<b id="find_tel"><label for="login_find_id_tel_box">전화번호</label></b>
						<input type="text" name="login_find_id_tel" id="login_find_id_tel_box" class="login_control" />
					</div>
					
				<div id="login_find_button">
					<div id="login_find_button_id">
						<button onclick="FindViewID()" id="login_find_button_id_title">아이디 찾기</button>
					</div>
					
					<div id="login_find_button_back">
						<button onclick="location='login.jsp'" id="login_find_button_login_title">로그인</button>
					</div>
				</div>
				
					<div id="login_find_id_real">
						아이디는 ***** 입니다.
					</div>
				</div>
			</div>

			<div id="clear"></div>

			<!-- 비밀번호 찾기 영역 -->
			<div id="login_find_pwd">

				<div id="login_find_pwd_header">
					<a href="./index.jsp"><span>EasyCook!</span></a><span
						id="login_find_pwd_title"> 비밀번호 재설정</span>
				</div>

				<div id="login_find_pwd_table">
					<div id="login_find_pwd_id">
						<b id="find_pwd_id_title"><label for="login_find_pwd_id_text">아이디</label></b> 
						<input type="text" name="login_find_pwd_id_text"
							id="login_find_pwd_id_text" class="login_control" />
					</div>

					<div id="login_find_pwd_tel">
						<b id="find_tel_pwd"><label for="login_find_pwd_tel_box">가입시 선택한 질문</label></b>
						<input type="text" name="login_find_pwd_tel"
							id="login_find_pwd_tel_box" class="login_control" />
					</div>

					<div id="login_find_pwd_tel">
						<b id="find_tel_pwd"><label for="login_find_pwd_tel_box">새로운 비밀번호</label></b>
						<input type="text" name="login_find_pwd_tel"
							id="login_find_pwd_tel_box" class="login_control" />
					</div>
					
					<div id="login_find_pwd_tel">
						<b id="find_tel_pwd"><label for="login_find_pwd_tel_box">비밀번호 확인</label></b>
						<input type="text" name="login_find_pwd_tel"
							id="login_find_pwd_tel_box" class="login_control" />
					</div>
										
					<div id="login_find_button_pwd">
						<button onclick="RePWD()" id="login_find_button_pwd_title">비밀번호 재설정</button>
					</div>
				</div>

			</div>

		</div>
	</div>
</body>
</html>























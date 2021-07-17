<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EasyCook! 로그인</title>
<style>

#login_body{
	margin: 0px;
	margin-left: 10%;
	margin-top: 10%;
}

#panel_login{
	margin: auto;
	width: 50%;
}

#panle_body_login{
	background: gray;
	border-radius: 20px;
	width: 60%;
	margin-left: 15%;
	margin-top: 10%;
}

#panel_header_login{
	padding-top: 1.5%;
	font-size: 300%;
	text-align: center;
	margin-top: 3%;
	border: 1px solid lightgreen;
}

#panel_table_login{
	padding: 3%;
	border: 1px solid orange;
}

.login_title{
	margin-bottom: 7%;
}

strong{
	margin-top: 0.5%;
	margin-left: 20%;
	float: left;
	width: 25%;
	font-size: 150%;
} 

.login_control{
	height: 2.5em;
	border: 1px solid #d9d9de;
	border-radius: 5px;	
}

#login_id{
	margin-top: 10%;
}

#login_id_box{
	width: 35%;
}

#login_pwd_box{
	width: 35%;
}

#login_footer{
	text-align: center;
}

#login_button, #join_button_login{
	width: 25%;
	font-size: 1.5em;
	border-radius: 10px;
	background: salmon;
	margin-top: 5%;
	font-weight: 500;
}

#login_button:hover, #join_button_login:hover{
	color: white;
	font-weight: 500;
	cursor: pointer;
}

#login_button:active, #join_button_login:active{
	color: lightblue;
	font-weight: 500;
}

.login_find {
	text-align: center;
	margin-bottom: 5%;
}
#login_find_id {
	float: left;
	margin-left: 22%;
}

#login_find_id a{
	text-decoration: none;
	color: #333;
}

#login_find_pwd {
	margin-right: 3%;
}

#login_find_pwd a{
	text-decoration: none;
	color: #333;
}

#login_find_id a:link, #login_find_pwd a:link {
	text-decoration: none;
	color: #F90;
}

#login_find_id a:visited, #login_find_pwd a:visited { 
	color: yellow; text-decoration: none;
}

#login_find_id a:hover, #login_find_pwd a:hover {
	text-decoration: underline;
	font-weight: bold; 
	color: pink;
	cursor: pointer;
}

#login_find a:active {
	color: lightblue;
}

</style>
<link rel="stylesheet" type="text/css" href="#"/>
<script src="./js/jquery.js"></script>
<script>

</script>
</head>
<body id="login_body">
	<div id="container_login">
		<div id="panel_login"><!-- 로그인폼 전체 판 껍데기 -->
			<div id="panle_body_login"><!-- 로그인폼 전체 판 -->
				<form action="login_ok.jsp" method="post" name="login_form"><!-- 로그인 폼  -->
					<div id="panel_header_login"><!-- 로그인폼 타이틀 -->
						<span>EasyCook! 로그인</span>
					</div>
					<div id="panel_table_login"><!-- 로그인폼 입력 판 -->
						<div id="login_id" class="login_title"><!-- 로그인 폼 아이디 입력 라인 -->
							<strong><label for="login_id_box">아이디</label></strong>
							<input required name="login_id_box" id="login_id_box"
							class="login_control" maxlength="14" placeholder="아이디를 입력하세요." />
						</div>
						
						<div id="login_pwd" class="login_title"><!-- 로그인 폼 비밀번호 입력 라인 -->
							<strong><label for="login_pwd_box">비밀번호</label></strong>
							<input required name="login_pwd_box" id="login_pwd_box"
							class="login_control" maxlength="20" placeholder="비밀번호를 입력하세요." />
						</div>
						
						<div id="login_footer" class="login_title"><!-- 로그인폼 하단 로그인/회원가입 버튼 영역 -->
							<input type="submit" value="로그인" id="login_button" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="회원가입" id="join_button_login" onclick="location='join.jsp';" />
						</div>
						
						<div id="login_find" class="login_find">
							<div id="login_find_id">
								<a href="#"><b>아이디 찾기</b></a>
							</div>
							
							<div id="login_find_pwd">
								<a href="#"><b>비밀번호 찾기</b></a>
							</div>
						</div>
				
						
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>























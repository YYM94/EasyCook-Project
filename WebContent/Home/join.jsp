<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Easy COOK 회원가입</title>
<%-- 테스트  --%>
<link rel="stylesheet" type="text/css" href="./css/join.css"/>
<script src="./js/jquery.js"></script>
<script></script>

</head>
<body>
	<div id="container">
		<div id="panel" style="width: 60%">

			<div id="panel-body">
				<form action="join_ok.jsp" method="post" name="reg_form" style="margin-bottom: 0;">
					<div id="panel-heading">
						<span>Easy COOK! 회원가입</span>
					</div>
					<div id="panel-table">
						<div id="join_id" class="join_title">
							<strong>아이디</strong>
							<input type="text" name="join_id_box" id="join_id_box"
							class="form-control" maxlength="14"
							style="width: 40%;"
							placeholder="8글자 이상 작성하세요.">
						</div>
						
						<div id="join_email" class="join_title">
							<strong>이메일</strong>
							<input type="text" name="join_email_1_box" id="email_1_box" class="form-control"
							style="width: 20%;" placeholder="이메일을 입력해주세요.">&nbsp;@
							<input type="email" name="join_email_2_box" id="email_2_box" class="form-control"
							style="width: 20%;" placeholder="jsp.com">&nbsp;
							<select name="join_email_3_box" class="form-control" id="join_email_3_box"
							style="width: 20%;">
								<option value="" selected>선택하세요.</option>
								<option value="1">naver.com</option>
								<option value="2">hanmail.net</option>
								<option value="3">nate.com</option>
								<option value="4">gmail.com</option>
								<option value="5">직접입력</option>
							</select>
						</div>
						
						<div id="join_pw" class="join_title">
							<strong>비밀번호</strong>
							<input type="password" name="join_pw_box" id="join_pw_box" 
							class="form-control" maxlength="20"
							style="ime-mode: inactive; width: 40%;" placeholder="8~20자 사이로 입력하세요." />
						</div>
						
						<div id="join_pw_check" class="join_title">
							<strong>비밀번호 확인</strong>
							<input type="password" name="join_pw_check_box" id="join_pw_check_box"
							class="form-control" maxlength="20"
							style="ime-mode: inactive; width: 40%;" placeholder="입력하신 비밀번호와 일치해야합니다." />
						</div>
						
						<div id="join_name" class="join_title">
							<strong>이름</strong>
							<input type="text" name="join_name_box" id="join_name_box"
							class="form-control" maxlength="6"
							style="width: 40%;" placeholder="이름을 입력하세요." />
						</div>
						
						<div id="join_nickname" class="join_title">
							<strong>닉네임</strong>
							<input type="text" name="join_nickname_box" id="join_nickname_box" 
							class="form-control" maxlength="8"
							style="width: 40%;" placeholder="닉네임을 입력하세요." />
						</div>
						
						<div id="join_tel" class="join_title">
							<strong>핸드폰 번호</strong>
							<input type="tel" name="tel_1_box" id="tel_1_box"
							class="form-control" maxlength="3" style="width: 10.5%;" />&nbsp;-
							<input type="tel" name="tel_2_box" id="tel_2_box"
							class="form-control" maxlength="4" style="width: 12.5%;" />&nbsp;-
							<input type="tel" name="tel_3_box" id="tel_3_box"
							class="form-control" maxlength="4" style="width: 12.5%;" />
						</div>
						
						<div id="join_pw_q" class="join_title">
							<strong>비밀번호 확인 질문</strong>
							<select name="pw_q_box" class="form-control" id="pw_q_box" style="width: 40.5%;">
								<option value="">선택하세요.</option>
								<option value="1">어머니의 성함은?</option>
								<option value="2">아버지의 성함은?</option>
								<option value="3">나의 출신 초등학교는?</option>
							</select>
						</div>
						
						<div id="join_pw_q_a" class="join_title">
							<strong>비밀번호 확인 답</strong>
							<input type="text" name="join_pw_q_a_box" id="join_pw_q_a_box" class="form-control" style="width: 40%;"/>
						</div>
						
						<div id="join_post" class="join_title">
							<strong>우편번호</strong>
							<input type="text" name="join_post_box_1" id="join_post_box_1" class="form-control" style="width: 15%;" 
							placeholder="ex)00000"/>
							<strong id="join_addr_title">주소</strong>
							<input type="text" name="join_addr_box_1" id="join_addr_box_1" class="form-control" style="width: 35%;" />
						</div>
						
						<div id="clear"></div>
						
						<div id="join_post_2" class="join_title">
							<strong>상세주소</strong>
							<input type="text" name="join_post_box_2" id="join_post_box_2" class="form-control" style="width: 40%;" 
							placeholder="나머지 상세 주소를 입력하세요."/>
						</div>
						
						<div id="join_footer">
							<input type="submit" value="가입하기" id="join_button"/>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>





































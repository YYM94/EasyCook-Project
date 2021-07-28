<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>

body{
	margin: 0%;
}

#admin_header{
	text-align: center;
	margin: auto;
	padding: 1%;
	background: peachpuff;
	width: 50%;
}

#admin_panel{
	margin: auto;
	width: 50%;
	background: lavender;
	margin-top: 2%;
	padding: 1%;
}

#admin_search{
	border: 1px solid red;
	text-align: center;
	margin-bottom: 2%;
}

#admin_search b{
	font-size: 150%;

}

#admin_cont{
	border: 1px solid orange;
}

#admin_cont_title{
	border: 2px solid yellow;
	margin-bottom: 2%;
}

#admin_cont_title b{
	margin-right: 10%;
}

#admin_cont_list{
	border: 2px solid purple;
}

#admin_cont_list b{
	margin-right: 10%;
}

button{

}
</style>
</head>
<body>
<%@ include file="./menubar/adminleftbar.jsp"%>
<div id="admin_header">
	<b style="font-size: 200%;">회원정보 관리</b>
</div>

<div id="admin_panel">
	<div id="admin_search">
		<b>검색 영역</b>
	</div>
	
	<div id="admin_cont">
		<div id="admin_cont_title">
			<b>아이디</b> <b>이름</b> <b style="margin-right: 13%;">이용자상태</b> <b>가입날짜</b>
		</div>
		<div id="admin_cont_list">
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
			<b>abc123</b> <b>홍길동</b> <b style="margin-right: 15%;">가입</b> <b style="margin-right: 20%;">2021.07.26</b>
			<input type="button" value="관리"	/><p/>
		<div id="admin_page" style="text-align: center;">
			<b>쪽번호 영역</b>
		</div>
	</div>
	</div>
</div>
</body>
</html>
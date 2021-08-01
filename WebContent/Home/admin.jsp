<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>

<link rel="stylesheet" type="text/css" href="./css/admin.css" />
<script src="./js/jquery.js"></script>
<script>

	function member() {
		$('#admin_panel').hide();
		$('#admin_member').show();
	}

	function close() {


	}
</script>


</head>
<body id="admin_body">
	<%@ include file="./menubar/adminleftbar.jsp"%>
	<div id="admin_header">
		<b style="font-size: 200%;">회원 관리</b>
	</div>

	<div id="admin_panel">
		<div id="admin_search">
			<form class="table-form">
				<fieldset>
					<legend class="hidden">검색</legend>
					<label class="hidden">검색분류</label> 
					<select name="f">
					<option value="search_name">회원이름</option>
					<option value="search_join">회원상태</option>
					<option value="search_id">회원아이디</option>
					</select> 
					<label class="hidden">검색어</label> 
					<input type="text" name="q"	value="" placeholder="검색어를 입력해주세요." /> 
					<input class="btn btn-search" type="submit" value="검색" />
				</fieldset>
			</form>
		</div>

		<div id="admin_cont">
			<div id="admin_cont_title">
				<b class="a_text">아이디</b> <b class="a_text">이름</b> <b class="a_text">이용자상태</b> <b class="a_text">가입날짜</b>&nbsp;
			</div>
			<div id="admin_cont_list">
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<b id="a_id" class="a_text">abc123</b> 
				<b id="a_name" class="a_text">홍길동</b> 
				<b id="a_check" class="a_text">가입</b> 
				<b id="a_regdate" class="a_text">2021.07.26</b> 
				<button id="member_button" onclick="member()" >관리</button>
				<p />
				
				<div id="admin_page" style="text-align: center;">

					<div id="admin_page_number">
						<%
							int currentPage;
						if (request.getParameter("page") == null) {
							currentPage = 1;
						} else {
							currentPage = Integer.parseInt(request.getParameter("page"));
						}

						int totalCount = 200;
						int countList = 8;
						int countPage = 7;

						int totalPage = totalCount / countList;

						if (totalCount % countList != 0) {
							totalPage++;
						}

						if (totalPage < currentPage) {
							currentPage = totalPage;
						}

						int startPage = currentPage - 3;
						int endPage = currentPage + 3;
						if (currentPage < 4) {
							startPage = 1;
							endPage = 7;
						}
						if (endPage > totalPage) {
							startPage = totalPage - 6;
							endPage = totalPage;
						}

						if (currentPage > 4) {
						%>
						<a href="admin.jsp?page=<%=1%>">[FIRST]</a>
						<% }
						if (currentPage > 1) { %>
						<a href="admin.jsp?page=<%=currentPage - 1%>">[PREV]</a>
						<% }
						for (int iCount = startPage; iCount <= endPage; iCount++) { %>
						<a href="admin.jsp?page=<%=iCount%>"> 
						<% if (iCount == currentPage) { %>
						<span class="CurrentPageNumber">&nbsp;<%=iCount%>&nbsp; </span> 
						<% } else {
 							%> <span class="PageNumber">&nbsp;<%=iCount%>&nbsp; </span> 
 							<% } %> </a>
						<% }
						if (currentPage < totalPage) {%>
						<a href="admin.jsp?page=<%=currentPage+1%>">[NEXT]</a>
						<%}
						if (endPage < totalPage) {%>
						<a href="admin.jsp?page=<%=totalPage%>">[LAST]</a>
						<%} %>

					</div>
				</div>
				

				
			</div>
		</div>
	</div>

	<div id="admin_member"> <!-- 회원정보 조회 및 수정 영역 -->
		<div id="admin_member_table">
			<div id="admin_member_header">
				<span id="info_title">회원 정보 관리</span>
			</div>
			<div id="admin_member_cont">
				<div id="admin_member_id">
					<strong id="member_id" class="member_text">아이디</strong> <b
						id="member_id_info" class="member_info">abc123</b>
					<p />
				</div>
				<div id="admin_member_email">
					<strong id="member_email" class="member_text">이메일</strong> <b
						id="member_email_info" class="member_info">abc123@naver.com</b>
					<p />
				</div>
				<div id="admin_member_nickname">
					<strong id="member_nickname" class="member_text">닉네임</strong> <b
						id="member_nickname_info" class="member_info">이지쿡</b>
					<p />
				</div>
				<div id="admin_member_tel">
					<strong id="member_tel" class="member_text">핸드폰 번호</strong> <b
						id="member_tel_info" class="member_info">010-2323-4545</b>
					<p />
				</div>
				<div id="admin_member_pwd_q">
					<strong id="member_pwd_q" class="member_text">가입시 선택한 질문</strong> <b
						id="member_pwd_q_info" class="member_info">나의 출신 초등학교는?</b>
					<p />
					<strong id="member_pwd_q_a" class="member_text">가입시 선택한
						질문의 답</strong> <b id="member_pwd_q_a_info" class="member_info">KG초등학교</b>
					<p />
				</div>
				<div id="admin_member_post">
					<strong id="member_post" class="member_text">우편번호</strong> <b
						id="member_post_info" class="member_info">07741</b>
					<p />
					<strong id="member_addr1" class="member_text">주소</strong> 
					<b id="member_addr1_info" class="member_info">서울시 동작구 장승배기로 171</b>
					<p />
					<strong id="member_addr2" class="member_text">상세주소</strong> 
					<b id="member_addr2_info" class="member_info">노량진 아이비빌딩 303호</b>
					<p />
				</div>
			</div>
				<div id="admin_member_pwd">
					<strong id="member_pwd_reset" class="admin_infoBtn">비밀번호 초기화</strong>
					<input type="checkbox" id="member_pwd_reset_info" />
				</div>
				<div id="member_button">
					<button id="admin_member_edit" class="admin_infoBtn">수정</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button id="admin_member_set" class="admin_infoBtn">탈퇴</button>
				</div>
				<div id="admin_info_close">
					<button id="close" class="admin_infoBtn" onclick="location='admin.jsp'">X</button>
				</div>	
		</div>
	</div>

</body>
</html>
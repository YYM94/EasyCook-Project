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

#admin_page_number{
	margin: 10px 0 0 0 ;
	font-weight: bold;	
}

#admin_page_number a:link {
  color : black;
  text-decoration: none;
}
#admin_page_number a:hover {
  color : gray;
  text-decoration: underline;
}
#admin_page_number a:active {
  color : aqua;
  text-decoration: none;
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
			<div id="admin_page_number">
			<%
			int currentPage;
			if(request.getParameter("page") == null){
				currentPage = 1;
			}else{
				currentPage = Integer.parseInt(request.getParameter("page"));
			}
			
			int totalCount=200; 
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
			if(currentPage < 4){
				startPage = 1;
				endPage = 7;
			}
			if(endPage > totalPage){
				startPage = totalPage-6;
				endPage = totalPage;
			}

			if (currentPage > 4) {
			%>
				<a href="admin.jsp?page=<%=1%>">[FIRST]</a>
			<%}
			if (currentPage > 1) {
			%>			
				<a href="admin.jsp?page=<%=currentPage-1%>">[PREV]</a>
			<%}
			for (int iCount = startPage; iCount <= endPage; iCount++) {
			%> 
				<a href="admin.jsp?page=<%=iCount%>" >
				<%if (iCount == currentPage) { %>		
					<b class="CurrentPageNumber">&nbsp;<%= iCount %>&nbsp;</b>
			<%} else {%>
					<span class="PageNumber">&nbsp;<%= iCount %>&nbsp;</span>
			<%}%>
				</a>
			<%}

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
</body>
</html>
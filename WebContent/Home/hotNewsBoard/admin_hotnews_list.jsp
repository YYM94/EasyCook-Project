<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>핫뉴스 관리</title>
<style type="text/css">
#admin_header {
	text-align: center;
	margin: auto;
	padding: 1%;
	background: peachpuff;
	width: 50%;
}

#admin_panel {
	margin: auto;
	width: 50%;
	background: lavender;
	padding: 1%;
}

#admin_search{
	margin: 20px 0 20px 0;
	width: 70%; float: left;
}
#admin_hn_input{
	float: right;
	margin: 20px 0 20px 0;
	
}

#admin_list_no{
	width: 7%;
}
#admin_list_title{
	width: 50%;
	letter-spacing: 0.5em;
}
#admin_list_writer{
	width: 10%;
}
#admin_list_date{
	width: 10%;
}
#admin_list_controller{
	width: 25%;
}

#admin_list_hn th{
	border-bottom-style: solid;
	border-bottom-width: 2px;	
}
#admin_list_hn td{
	text-align: center; padding: 6px 0px;
	border-bottom-width: 1px;
	border-bottom-style: dotted;
}
#left{
	text-align: left;
	padding-left: 14px;
	width: 20em;
	overflow: hidden; 
	text-overflow: ellipsis;
	white-space: nowrap;
}


#admin_page_number {
	margin: 10px 0 10px 0;
	font-weight: bold;
	text-align: center;
}

#admin_page_number a:link {
	color: black;
	text-decoration: none;
}

#admin_page_number a:hover {
	color: gray;
	text-decoration: underline;
}

#admin_page_number a:active {
	color: aqua;
	text-decoration: none;
}
</style>
</head>

<body>
	<%@ include file="../menubar/adminleftbar.jsp"%>
	<div id="admin_header">
		<b style="font-size: 200%;">핫뉴스 관리</b>
	</div>
	
	<div id="admin_panel">
		<form action="#" method="get" id="admin_search" >
			<input type="text" /> 
			<input type="submit" value="검색" />  
		</form>
		<input type="button" id="admin_hn_input" onclick="location.href='/EasyCook_Project/Home/hotNewsBoard/admin_hotnews_input.jsp';" value="등록" />
		
		<table id="admin_list_hn">
			<tr>
				<th id="admin_list_no">번호</th>
				<th id="admin_list_title">제목</th>
				<th id="admin_list_writer">작성자</th>
				<th id="admin_list_date">등록날짜</th>
				<th id="admin_list_controller">조회/수정/삭제</th>
			</tr>
			<%for(int i=15; i>=1; i--){ %>
			<tr>
				<td><%=i %></td>
				<td><div id="left">[오피셜] “슈퍼리그 계속된다”...유럽사법재판소, ‘UEFA 징계’ 철회 명령</div></td>
				<td>관리자</td>
				<td>2021.12.11</td>
				<td><input type="button" value="조회"/>&nbsp;
					<input type="button" value="수정" onclick="location.href='/EasyCook_Project/Home/hotNewsBoard/admin_hotnews_edit.jsp';"/>&nbsp;
					<input type="button" value="삭제" /></td>
			</tr>
			<%} %>
			
		</table>
		
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
				<a href="admin_hotnews_list.jsp?page=<%=1%>">[FIRST]</a>
			<%}
			if (currentPage > 1) {
			%>			
				<a href="admin_hotnews_list.jsp?page=<%=currentPage-1%>">[PREV]</a>
			<%}
			for (int iCount = startPage; iCount <= endPage; iCount++) {
			%> 
				<a href="admin_hotnews_list.jsp?page=<%=iCount%>" >
				<%if (iCount == currentPage) { %>		
					<b class="CurrentPageNumber">&nbsp;<%= iCount %>&nbsp;</b>
			<%} else {%>
					<span class="PageNumber">&nbsp;<%= iCount %>&nbsp;</span>
			<%}%>
				</a>
			<%}

			if (currentPage < totalPage) {%>
				<a href="admin_hotnews_list.jsp?page=<%=currentPage+1%>">[NEXT]</a>
			<%}
			if (endPage < totalPage) {%>
				<a href="admin_hotnews_list.jsp?page=<%=totalPage%>">[LAST]</a>
			<%} %>			
		</div>
	</div>


</body>
</html>
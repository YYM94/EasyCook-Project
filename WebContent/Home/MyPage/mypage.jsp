<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link rel="stylesheet" type="text/css" href="../css/mypage.css"/>
<script src="./js/jquery.js"></script>
<script type="text/javascript">
	
</script>
</head> 
<body>
	<div id="mypage_heading">
		<strong id="mypage_heading_title">마이 페이지</strong>
	</div>
	
		<div id="mypage_video">
		
		<div id="mypage_video_cont1" class="mypage_form">
		<p>영상 1</p>
		</div>
		<div id="mypage_video_cont2" class="mypage_form">
		<p>영상 2</p>
		</div>
		<div id="mypage_video_cont3" class="mypage_form">
		<p>영상 3</p>
		</div>
		
		<div id="page_number_control">
		<div class="page_number">
			
	<%
			int currentPage;
			if(request.getParameter("page") == null){
				currentPage = 1;
			}else{
				currentPage = Integer.parseInt(request.getParameter("page"));
			}
			
			int totalCount=200; //총게시물
			int countList = 8; //보여질 게시물
			int countPage = 5; //보여질 페이징갯수

			int totalPage = totalCount / countList;

			if (totalCount % countList != 0) {
				totalPage++;
			}

			if (totalPage < currentPage) {//현재페이지가 끝페이지를 넘어가는것을 방지
				currentPage = totalPage;
			}

			int startPage = ((currentPage - 1) / totalCount) * totalCount + 1; ///시작페이징 번호
			int endPage = startPage + countPage - 1; //끝페이징 번호		
			if (endPage > totalPage) {
				endPage = totalPage;
			}
			if (currentPage < totalPage) {%>
			<a href="mypage.jsp?page=<%=currentPage+1%>">[NEXT]</a>
			<%}
			if (startPage > 1) {
			%>
				<a href="mypage.jsp?page=<%=1%>">[FIRST]</a>
			<%}
			if (currentPage > 1) {
			%>			
				<a href="mypage.jsp?page=<%=currentPage-1%>">[PREV]</a>
			<%}
			for (int iCount = startPage; iCount <= endPage; iCount++) {
			%> 
				<a href="mypage.jsp?page=<%=iCount%>" >
				<%if (iCount == currentPage) { %>		
					<b class="CurrentPageNumber">&nbsp;<%= iCount %>&nbsp;</b>
			<%} else {%>
					<span class="PageNumber">&nbsp;<%= iCount %>&nbsp;</span>
			<%}%>
				</a>
			<%}

			
			if (endPage < totalPage) {%>
				<a href="mypage.jsp?page=<%=totalPage%>">[LAST]</a>
			<%} %>
			
		</div>
		</div>
		
		<div id="table_search">
		<input name="" type="text" class="input_box"> 
		<input type="button" value="Search" class="btn" onClick="location.href='#'" >
		</div>
		</div>
		
		<div id="mypage_text">
		
		<div id="mypage_video_cont4" class="mypage_form1">
		<p>게시글 1</p>
		</div>
		<div id="mypage_video_cont5" class="mypage_form1">
		<p>게시글 2</p>
		</div>
		<div id="mypage_video_cont6" class="mypage_form1">
		<p>게시글 3</p>
		</div>
		
		<div id="page_number_control">
		
		<div class="page_number">
			
			<%
			
			if (currentPage < totalPage) {%>
			<a href="mypage.jsp?page=<%=currentPage+1%>">[NEXT]</a>
			<%}
			
			if (startPage > 1) {
			%>
				<a href="mypage.jsp?page=<%=1%>">[FIRST]</a>
			<%}
			if (currentPage > 1) {
			%>			
				<a href="mypage.jsp?page=<%=currentPage-1%>">[PREV]</a>
			<%}
			for (int iCount = startPage; iCount <= endPage; iCount++) {
			%> 
				<a href="mypage.jsp?page=<%=iCount%>" >
				<%if (iCount == currentPage) { %>		
					<b class="CurrentPageNumber">&nbsp;<%= iCount %>&nbsp;</b>
			<%} else {%>
					<span class="PageNumber">&nbsp;<%= iCount %>&nbsp;</span>
			<%}%>
				</a>
			<%}
			
			if (endPage < totalPage) {%>
				<a href="mypage.jsp?page=<%=totalPage%>">[LAST]</a>
			<%} %>
			
		</div>
	</div>
		<div id="table_search">
		<input name="" type="text" class="input_box"> 
		<input type="button" value="Search" class="btn" onClick="location.href='#'" >
		</div>
		</div>
		<div id="info_update">
		<input type="button" value="정보 수정" onclick="location='info_update.jsp';">
		</div>
</body>
</html>
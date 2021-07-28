<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link rel="stylesheet" type="text/css" href="../css/mypage.css"/>
<script src="./js/jquery.js"></script>
<%@ include file="../menubar/top_left_menubar.jsp"%>

</head> 
<body>
	<div id="mypage_heading">
		<strong id="mypage_heading_title">마이 페이지</strong>
	</div>
	
	
		<div id="mypage_post">
		<div id="table_search">
		<fieldset>
				<label class="hidden">검색분류</label> <select name="f">
					<option value="title">제목</option>
					<option value="titlecont">제목+내용</option>
				</select> <label class="hidden">검색어</label> <input type="text" name="search"
					value="" placeholder="검색어를 입력해주세요." /> 
					<input type="button" value="게시물 작성" id="text_create_button" onClick="location.href='#'" />
					<input type="submit" value="검색" class="btn" onClick="location.href='#'"/>
			</fieldset>
			</div>
			<input type="text" id="post_ex1" value="" placeholder="내가 올린 게시물 ">
			<input type="text" id="post_ex2" value="" placeholder="내가 올린 게시물 ">
			<input type="text" id="post_ex3" value="" placeholder="내가 올린 게시물 ">

			</div>
			

		<div id="mypage_text">
		<div id="table_search">
		<fieldset>
				<label class="hidden">검색분류</label> <select name="k">
					<option value="title">제목</option>
					<option value="titlecont">제목+내용</option>
				</select> <label class="hidden">검색어</label> <input type="text" name="search"
					value="" placeholder="검색어를 입력해주세요." /> 
					<input type="submit" value="검색" class="btn" onClick="location.href='#'"/>
					<input type="button" value="게시글 작성" id="text_create_button" onClick="location.href='#'" />
			</fieldset>
			</div>
		<input type="text" id="text_ex1" value="" placeholder="내가 작성한 게시글 ">
		<input type="text" id="text_ex2" value="" placeholder="내가 작성한 게시글 ">
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
			
			if (currentPage > 1) {
				%>
				<a href="mypage.jsp?page=<%=currentPage-1%>">[PREV]</a>
			<%}
			for (int iCount = startPage; iCount <= endPage; iCount++) {//페이징 5개씩
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
			
			<input type="button" value="HomePage" id="HomePage_button" onclick="location='../index.jsp';" />
			<input type="button" value="회원 정보 수정" id="info_update_button" onclick="location='info_update.jsp';" />
		</div>
		</div>
		
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="../css/recipeBoard.css"/>
<script src="../js/jquery.js"></script>

<script>

<%
//하단 페이지 번호 생성을 위한 전체 게시글 수 검색
int totalPages = 200;

//현재 페이지
int currentPage;
if(request.getParameter("page") == null){
	currentPage = 1;
}else{
	currentPage = Integer.parseInt(request.getParameter("page"));
}
%>


</script>

</head>
<body>

<%@ include file="../menubar/top_left_menubar.jsp"%>
<div id="RecipieSearchPage">

	<div id="Board_Recipies">
		<%-- 현재 페이지를 기준으로 8개의 게시글을 로드 --%>
	
	</div>
	
	<div id="bottonPageNumber">
		<%-- 전체 게시글 수를 이용한 하단 페이지 번호 생성 --%>
		<%
		int pages = totalPages/8;
		if((pages % 8) > 0){
			pages++;
		}
		//페이지 첫번째, 마지막 번호 지정
		int firstPage = currentPage-4;
		int lastPage = currentPage+5;
		if((currentPage-5) <= 0){
			firstPage = 1;
			lastPage = 10;
		}
		if((currentPage+5) > pages){
			firstPage = pages-9;
			lastPage = pages;
		}
		%>
		<a href="recipeBoard_view.jsp?page=<%=1%>">
			<span class="PageNumber">
				${"<<"}
			</span>
		</a>
		<a href="recipeBoard_view.jsp?page=<%=currentPage-1%>">
			<span class="PageNumber">
				${"<"}
			</span>
		</a>
		<%
		for(int i=firstPage; i<=lastPage; i++){
		%>
			<a href="recipeBoard_view.jsp?page=<%=i%>">
				<%if(i == currentPage){ %>
					<span class="PageNumber" style="color: #FF6347; font-weight: bold">
						<%=i %>
					</span>
				<%}else{ %>
					<span class="PageNumber">
						<%=i %>
					</span>
				<%} %>
			</a>
		<%
		}
		%>
		<a href="recipeBoard_view.jsp?page=<%=pages%>">
			<span class="PageNumber">
				${">>"}
			</span>
		</a>
		<a href="recipeBoard_view.jsp?page=<%=currentPage+1%>">
			<span class="PageNumber">
				${">"}
			</span>
		</a>
	</div>
</div>


</body>
</html>
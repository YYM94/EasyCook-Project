<%@ page contentType="text/html; charset=UTF-8"%>
<meta charset="UTF-8">
<title>레시피 게시판</title>
<link rel="stylesheet" type="text/css" href="../css/recipeBoard.css"/>
<script src="../js/jquery.js"></script>

<script>

<%--페이지가 작아지면 게시판을 왼쪽에 붙임--%>
$(window).resize(function(){
	if($(window).width() < 1350){
		var SearchPageMargin = $(window).width()-1200;
		if(SearchPageMargin < 0){
			SearchPageMargin = 0;
		}
		$("#RecipieSearchPage").css("margin-left", SearchPageMargin);
		$("#PostingViewPage").css("margin-left", SearchPageMargin+200);
	}
	if($(window).width() >= 1350){
		$("#RecipieSearchPage").css("margin-left", 150);
		$("#PostingViewPage").css("margin-left", 350);
	}
});

</script>

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

//현재 조회중인 게시글 번호
int currentPosting;
if(request.getParameter("post") == null){
	currentPosting = 0;
}else{
	currentPosting = Integer.parseInt(request.getParameter("post"));
}
%>

<%@ include file="../menubar/top_left_menubar.jsp"%>

<%-- 게시글 조회 영역, currentPost가 0일 경우 표시하지 않음 --%>
<%if(currentPosting != 0){ %>
	<div id="PostingViewPage">
		<div id="PostingTitle">
			<%=currentPosting %>번째 게시글 제목
		</div>
	</div>
<%} %>

<%-- 게시글 검색 영역 --%>
<div id="RecipieSearchPage">

	<div id="Board_blur"></div>

	<div id="Board_Recipies">
		<%-- 현재 페이지를 기준으로 8개의 게시글을 로드 --%>
		<%
		int startPosting = currentPage*8 - 7;
		int lastPosting = currentPage * 8;
		if(currentPage*8 > totalPages){
			lastPosting = totalPages;
		}
		for(int i=startPosting; i<=lastPosting; i++){ 
		%>
			<a href="recipeBoard_view.jsp?page=<%=currentPage%>&post=<%=totalPages-i+1%>">
				<span class="BoardPostings">
					<span class="BoardPostThumbnail"></span>
					<span class="BoardPostTitle"><%=totalPages-i+1 %>번째 게시글의 제목 : 요리(料理, Cooking)는 먹기 좋게 가공한 음식이나 가공 행위 자체를 의미한다.</span>
					<span class="BoardPostCont"><%=totalPages-i+1 %>번째 게시글의 내용 :식재료를 가공하는 행위에는 '조리(調理)'도 명사로 쓰이지만, 
					음식을 보고 조리라고 부르지는 않는다. 한자로 풀이하면, 요리(料理)는 料(헤아릴 요)와 理(다스릴 리)고 조리(調理)는 調(고를 조)와 理(다스릴 리)로서 
					조리는 재료를 알맞게 해 다스려 음식을 만든다는, 즉 음식을 먹기 좋게 만든다는 뜻이고 요리는 '다스리다, 처리하다'라는 뜻이었으나 이것이 전의돼 
					‘음식을 만든다’거나 ‘완성된 음식’ 자체를 의미하게 됐다. 참고로 동사형으로 쓰인다고 해도 뭔가 약간의 차이가 나는게, 요리는 예술(Art)분야고, 
					조리는 기능(Craft)분야에 해당한다. 누구나 예술은 할 수 있지만, 기능을 보유하는 것과는 차이가 있다.</span>
				</span>
			</a>
		<%
		}
		%>
	
	</div>
	
	<div id="bottomPageNumber">
		<%-- 전체 게시글 수를 이용한 하단 페이지 번호 생성 --%>
		<%
		int pages = totalPages/8;
		if((totalPages % 8) > 0){
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
		<a href="recipeBoard_view.jsp?page=<%=1%>&post=0">
			<span class="PageNumber">
				<img src="../images/PageMoveLeftEnd.png"/>
			</span>
		</a>
		<%if(currentPage == 1){ %>
			<span class="PageNumber">
				<img src="../images/PageEnd.png"/>
			</span>
		<%}else{ %>
			<a href="recipeBoard_view.jsp?page=<%=currentPage-1%>&post=0">
				<span class="PageNumber">
					<img src="../images/PageMoveLeft.png"/>
				</span>
			</a>
		<%} %>
		<%
		for(int i=firstPage; i<=lastPage; i++){
		%>
			<a href="recipeBoard_view.jsp?page=<%=i%>&post=0">
				<%if(i == currentPage){ %>
					<span class="PageNumber" style="color: #FF6347; font-weight: bold">
						<%=i %>
					</span>
				<%}else{ %>
					<span class="PageNumber" style="color: #252525;">
						<%=i %>
					</span>
				<%} %>
			</a>
		<%
		}
		%>
		<%if(currentPage == pages){ %>
			<span class="PageNumber">
				<img src="../images/PageEnd.png"/>
			</span>
		<%}else{ %>
			<a href="recipeBoard_view.jsp?page=<%=currentPage+1%>&post=0">
				<span class="PageNumber">
					<img src="../images/PageMoveRight.png"/>
				</span>
			</a>
		<%} %>
		<a href="recipeBoard_view.jsp?page=<%=pages%>&post=0">
			<span class="PageNumber">
				<img src="../images/PageMoveRightEnd.png"/>
			</span>
		</a>
	</div>
</div>
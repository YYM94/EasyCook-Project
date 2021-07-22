<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<title>레시피 게시판</title>
<link rel="stylesheet" type="text/css" href="../css/recipeBoard.css"/>
<script src="../js/jquery.js"></script>

<script>

<%--페이지가 작아지면 게시판을 왼쪽에 붙임--%>
$(window).resize(function(){
	if($(window).width() < 1550){
		var SearchPageMargin = $(window).width()-1200;
		if(SearchPageMargin < 0){
			SearchPageMargin = 0;
		}
		$("#RecipieSearchPage").css("margin-left", SearchPageMargin);
		$("#PostingViewPage").css("margin-left", SearchPageMargin);
	}
	if($(window).width() >= 1550){
		$("#RecipieSearchPage").css("margin-left", 350);
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

////////////현재 조회중인 게시글 정보//////////////
//게시글 번호
int currentPosting;
if(request.getParameter("post") == null){
	currentPosting = 0;
}else{
	currentPosting = Integer.parseInt(request.getParameter("post"));
}
//게시글 제목
String Title = "번째 게시글 제목";
//게시글 작성자
String Writer = "작성자";
//게시글 조회수
int Visiter = 10;
//게시글 작성날짜
String Date = "2021-07-21";
//게시글 영상 링크
String videoID = "kR77WlHRZrs";
String youtubeLink = "https://www.youtube.com/embed/" + videoID;
//게시글 레시피 설명 폼 갯수
int Recipes = 4;
//게시글 레시피 설명 텍스트 : -,-로 구분 
String recipeDes = "불맛 달걀볶음밥 <br>[재료]<br>밥 1공기(200g)<br>대파 1/2컵(40g)<br>달걀 2개(120g)<br>식용유 4큰술(40g)"
+"<br>진간장 1/2큰술(5g)<br>MSG 1/4큰술(2g)<br>맛소금 1g" + "-,-"
+"[만드는 법]<br>1. 대파는 송송 썰어 준비한다.<br>2. 프라이팬에 식용유, 대파를 넣어 파 기름을 내고 노릇해지면 한쪽으로 몰아둔다."
+"<br>3. 다른 한쪽에 달걀을 넣어 스크램블 한다." + "-,-"
+"4. 재료가 없는 쪽에 간장을 넣어 눌어붙도록 끓여주고 스크램블 한 달걀, 볶은 대파와 섞어준다." + "-,-"
+"5. 달걀, 대파가 골고루 섞이면 맛소금, 밥을 넣고 불을 끈 후 국자를 이용하여 섞어준다."
+"<br>6. 밥이 골고루 섞이면 센 불에 올려 볶는다. "
+"<br>7. 기호에 따라 MSG를 넣어 볶은 후 완성한다.";
String[] recipeSplit = recipeDes.split("-,-");

%>
<!-- 댓글 관련 -->
<c:set var="totalComments" value="80"/><!-- 현재 게시글의 댓글 갯수 -->
<c:set var="cWriter" value="댓글"/><!-- 댓글 작성자 -->
<c:set var="cContent" value="댓글 내용입니다."/><!-- 댓글 내용 -->
<c:set var="cDate" value="2021-07-22"/><!-- 댓글 작성날짜 -->

<c:set var="cPage" value="1"/><!-- 현재 댓글 페이지 -->



<%@ include file="../menubar/top_left_menubar.jsp"%>

<%-- 게시글 조회 영역, currentPost가 0일 경우 표시하지 않음 --%>
<%if(currentPosting != 0){ %>
	<div id="PostingViewPage">
		<div id="PostingTitle">
			<%=currentPosting + " " + Title%>
		</div>
		
		<div id="postingInfo">
			<div id="postingWriter"><%= Writer %></div>
			<div id="postingVisiter">조회수 : <%= Visiter %></div>
			<div id="postingDate"><%= Date %></div>
		</div>
		
		<div id="PostingVideo">
			<iframe width="880" height="500" src="<%=youtubeLink %>" 
				title="YouTube video player" frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
				allowfullscreen>
			</iframe>
		</div>
		
		<div id="postingRecipe">
			<%for(int i = 0; i < Recipes; i++){ %>
				<div class="recipeDescriptionBox">
					<img src="../images/RecipeIMG/210721_0/<%=i+1 %>.jpg"/>
					<div class="recipeDescription">
						<%=recipeSplit[i] %>
					</div>
				</div>
			<%} %>
		</div>
		
		<%if(Writer.equals("작성자")){ %>
			<div id="postingEditRmBtn">
				<input type="button" value="수정"/>
				<input type="button" value="삭제"/>
			</div>
		<%} %>
		
		<div id="commentWrap">
			<c:if test="${ totalComments > 0 }">
			
				<!-- 한 페이지에 10개의 댓글을 출력 -->
				<c:set var="startComment" value="${ cPage }"/>
				<c:set var="endComment" value="${ cPage+9 }"/>
				
				<c:forEach var="i" begin="${ startComment }" end="${ endComment }">
					<div class="commentBox">
						<div class="commentWriter">${ cWriter }</div>
						<div class="commentContent">${ cContent }</div>
						<div class="commentDate">
							${ cDate }
							<c:if test="${ cWriter == '댓글'  }">
								<input type="button" value="삭제"/>
							</c:if>
						</div>
					</div>
				</c:forEach>
				
			</c:if>
			<c:if test="${ totalComments == 0 }">
				
			</c:if>
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
					<span class="BoardPostCont"><%=totalPages-i+1 %>번째 게시글의 내용 :<%= recipeSplit[0] %></span>
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
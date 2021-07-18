<%@ page contentType="text/html; charset=UTF-8"%>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" type="text/css" href="../css/gong.css" />
<script src="./js/jquery.js"></script>



<%
	//하단 페이지 번호 생성을 위한 전체 게시글 수 검색
int totalPages = 3;

//현재 페이지
int currentPage;
if (request.getParameter("page") == null) {
	currentPage = 1;
} else {
	currentPage = Integer.parseInt(request.getParameter("page"));
}
%>

<div id="GongPage">
	<div class="search-form">
		<h3 class="hidden">공지사항</h3>
		<form class="table-form">
			<fieldset>
				<legend class="hidden">검색</legend>
				<label class="hidden">검색분류</label> <select name="f">
					<option value="title">제목</option>
					<option value="titlecont">제목+내용</option>
				</select> <label class="hidden">검색어</label> <input type="text" name="q"
					value="" placeholder="검색어를 입력해주세요." /> <input
					class="btn btn-search" type="submit" value="검색" />
			</fieldset>
		</form>
	</div>
	<div>
		<%
		int startPosting = currentPage;
		int lastPosting = currentPage;
		if (currentPage > totalPages) {
			lastPosting = totalPages;
		}
		for (int i = startPosting; i <= lastPosting; i++) {
		%>
		<a href="#">
			<div class="gong">
				<input type="radio" name="gong" id="answer01"> <label
					for="answer01">2021.07.15 [공지사항]<em></em></label>
				<div>
					<p>우리는 프로젝트 중입니다.</p>
				</div>
				<input type="radio" name="gong" id="answer02"> <label
					for="answer02">공지사항<em></em></label>
				<div>
					<p>우리는 프로젝트 중입니다.</p>
				</div>
				<input type="radio" name="gong" id="answer03"> <label
					for="answer03">공지사항<em></em></label>
				<div>
					<p>우리는 프로젝트 중입니다.</p>
				</div>
				<input type="radio" name="gong" id="answer04"> <label
					for="answer04">공지사항<em></em></label>
				<div>
					<p>우리는 프로젝트 중입니다.</p>
				</div>
				<input type="radio" name="gong" id="answer05"> <label
					for="answer05">공지사항<em></em></label>
				<div>
					<p>우리는 프로젝트 중입니다.</p>
				</div>
				<input type="radio" name="gong" id="answer06"> <label
					for="answer06">공지사항<em></em></label>
				<div>
					<p>우리는 프로젝트 중입니다.</p>
				</div>
				<input type="radio" name="gong" id="answer07"> <label
					for="answer07">공지사항<em></em></label>
				<div>
					<p>우리는 프로젝트 중입니다.</p>
				</div>
				<input type="radio" name="gong" id="answer08"> <label
					for="answer08">공지사항<em></em></label>
				<div>
					<p>우리는 프로젝트 중입니다.</p>
				</div>
				<input type="radio" name="gong" id="answer09"> <label
					for="answer09">공지사항<em></em></label>
				<div>
					<p>우리는 프로젝트 중입니다.</p>
				</div>
				<input type="radio" name="gong" id="answer10"> <label
					for="answer10">공지사항<em></em></label>
				<div>
					<p>우리는 프로젝트 중입니다.</p>
				</div>
			</div>
		</a>
		<%
			}
		%>

	</div>

	<div id="bottomPage">
		<%
			int pages = totalPages;
		if ((totalPages) > 0) {
			pages++;
		}
		int firstPage = currentPage - 1;
		int lastPage = currentPage;
		if ((currentPage - 8) <= 0) {
			firstPage = 1;
			lastPage = 3;
		}
		if ((currentPage ) > pages) {
			firstPage = pages;
			lastPage = pages;
		}
		%>
		
		<%
			for (int i = firstPage; i <= lastPage; i++) {
		%>
		<a href="gong.jsp?page=<%=i%>"> <%
 	if (i == currentPage) {
 %> <span class="pageNum" style="color: #ffffff; font-weight: bold"><%=i%></span> <%
 	} else {
 %> <span class="pageNum" style="color: #252525;"><%=i%></span> <%
 	}
 %>
		</a>
		<%
			}
		%>	
	</div>
</div>

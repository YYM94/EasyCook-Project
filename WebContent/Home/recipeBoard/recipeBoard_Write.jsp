<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>레시피 글쓰기</title>
<link rel="stylesheet" type="text/css" href="../css/recipeBoard_Write.css"/>
<script src="../js/jquery.js"></script>

<script>
	//유튜브 링크를 입력하고 입력창을 빠져나오면 하단에 유튜브 영상 로드
	function LoadThumbnail(){
		var link = $("#videoLink").val();
		var linkSplit = link.split("/");
		link = linkSplit[linkSplit.length-1];
		//링크의 watch?v= 제거
		if(link.substr(0,8) == "watch?v="){
			link = link.substr(8);
		}
		var youtubeLink = "https://www.youtube.com/embed/" + link;

		$("#thumbnail").html(""+
			"<iframe width='740' height='500' src='"+youtubeLink+"'"+
				"title='YouTube video player' frameborder='0' "+
				"allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' "+
				"allowfullscreen>"+
			"</iframe>");
	}
</script>

<%@ include file="../menubar/top_left_menubar.jsp"%>

<div id="writeFormWrap">
	<div id="recipeInsertForm">
		<form>
			<div id="title">
				게시글 제목<br>
				<input type="text"/>
			</div>
			<div id="video">
				유튜브 링크<br>
				<input type="text" id="videoLink" onblur="LoadThumbnail();"/><br>
				<div id="thumbnail">
					미리보기
				</div>
			</div>
		</form>
	</div>
</div>
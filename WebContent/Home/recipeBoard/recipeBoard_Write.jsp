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
	
	
	//레시피 과정 추가 버튼 클릭
	function addCont(){
		$("#addedContWrap").append("<div class='recepeCont'>"
										+"<div class='removeContWrap' onclick='removeCont(this);'>"
										+"	<div class='removeContLabel'>"
										+"		지우기"
										+"	</div>"
										+"	<div class='removeContBtn'>"
										+"		<img src='../images/minusBtn.png' width=30px height=25px>"
								  		+"	</div>"
								  		+"</div>"
								  		+"<div class='contWrap'>"
								  		+"	<img class='contImg' src='../images/recipeBoardContThumbnail.png'>"
								  		+"	<textarea class='contText'></textarea>"
								  		+"</div>"
								  +"</div>");
	}
	
	//레시피 과정 삭제 버튼 클릭
	function removeCont(node){
		$(node.parentNode).remove();
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
			<div id="recipeContWrap">
				<div id="addedContWrap">
					
				</div>
				<div id="addContWrap" onclick="addCont();">
					<div id="addContBtn">
						<img src="../images/plusBtn.png" width=30px height=25px>
					</div>
					<div id="addContLabel">
						추가하기
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
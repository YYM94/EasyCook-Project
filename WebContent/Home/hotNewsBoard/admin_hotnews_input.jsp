<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>핫뉴스 등록</title>
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

p {
	float: left;
}
</style>
<script type="text/javascript">
	function thumbnail(event) {
		var reader = new FileReader();
		reader.onload = function(event) {
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").appendChild(img);
		};
		reader.readAsDataURL(event.target.files[0]);
	}
</script>
</head>
<body>
<body>
	<%@ include file="../menubar/adminleftbar.jsp"%>
	<div id="admin_header">
		<b style="font-size: 200%;">핫뉴스 등록</b>
	</div>

	<div id="admin_panel">
		<form action="#">
			핫뉴스 제목 : <input type="text" placeholder="제목을 입력하세요" id="title"
				name="title" size="40" /> <br> <br>
			<p>핫뉴스 내용 :&nbsp;</p><textarea rows="10" cols="40" style="resize: none;"></textarea>	<br><br> 
			썸네일(미리보기) : <input type="file" id="image" accept="image/*" onchange="thumbnail(event);" />
			<div id="image_container" ></div><br><br> 
			링크 : <input type="text" size="80" /> <br> <br> <input
				type="submit" value="등록" /> <input type="reset" value="취소" /> <input
				type="button" value="목록보기"
				onclick="location.href='/EasyCook_Project/Home/hotNewsBoard/admin_hotnews_list.jsp';">
		</form>
	</div>
</body>
</html>
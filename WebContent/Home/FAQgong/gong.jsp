<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="../css/gong.css" type="text/css" />
</head>
<body>
	<div class="search-form">
		<h3 class="hidden">공지사항</h3>
		<form class="table-form">
			<fieldset>
				<legend class="hidden">검색</legend>
				<label class="hidden">검색분류</label>
				<select name="f">
					<option value="title">제목</option>
					<option value="titlecont">제목+내용</option>
				</select>
				<label class="hidden">검색어</label>
				<input type="text" name="q" value="" placeholder="검색어를 입력해주세요."/>
				<input class="btn btn-search" type="submit" value="검색" />
			</fieldset>
		</form>
	</div>
	<div class="gong">
		<input type="radio"name="gong" id="answer01">
		<label for="answer01">1월 공지사항<em></em></label>
		<div><p>우리는 프로젝트 중입니다.</p></div>
		<input type="radio"name="gong" id="answer02">
		<label for="answer02">2월 공지사항<em></em></label>
		<div><p>우리는 프로젝트 중입니다.</p></div>
		<input type="radio"name="gong" id="answer03">
		<label for="answer03">3월 공지사항<em></em></label>
		<div><p>우리는 프로젝트 중입니다.</p></div>
		<input type="radio"name="gong" id="answer04">
		<label for="answer04">4월 공지사항<em></em></label>
		<div><p>우리는 프로젝트 중입니다.</p></div>		
	</div>
	<footer>
		
	</footer>
</body>
</html>
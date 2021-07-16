<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 게시판</title>
<link rel="stylesheet" href="../css/FAQ.css" type="text/css" />
</head>
<body>
	<div class="search-form2">
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
	<div class="FAQ">
		<input type="radio"name="FAQ" id="FAQ01">
		<label for="FAQ01">요리 레시피 등록은 어떻게 하나요?<em></em></label>
		<div><p>우리는 프로젝트 중입니다.</p></div>
		<input type="radio"name="FAQ" id="FAQ02">
		<label for="FAQ02">회원가입은 어떻게 하나요?<em></em></label>
		<div><p>우리는 프로젝트 중입니다.</p></div>
		<input type="radio"name="FAQ" id="FAQ03">
		<label for="FAQ03">회원 탈퇴를 하고싶습니다 어떻게 할수있나요?<em></em></label>
		<div><p>우리는 프로젝트 중입니다.</p></div>
		<input type="radio"name="FAQ" id="FAQ04">
		<label for="FAQ04">추천재료가 바뀌는 날은 언제인가요?<em></em></label>
		<div><p>우리는 프로젝트 중입니다.</p></div>		
	</div>
</body>
</html>
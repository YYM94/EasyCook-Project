<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="../css/hotNewsBoard.css" />
<script src="./js/jquery.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<%@ include file="../menubar/top_left_menubar.jsp"%>

<div class="example">
  <ul class="ul_article">
  <%for(int i=0; i<10; i++){ %>
    <div class="hotNews_hyper" onclick="window.open('http://www.google.co.kr');">
    <li>
      <div class="img_wrap">	
      <img class="hotNews_img" src="../images/from.jpg" />
      </div>
      <p>기사제목 : 페이지창 어떻게만듦?대박이네 나도빨리만들고싶어 하지만너무 어렵겠지?</p>
    </li>
    </div>
    <% } %>
  </ul>
</div>

<div class="bottom_page">
	<div class="page_search">
		<input name="" type="text" class="input_box"> 
		<input type="button" value="Search" class="btn">
	</div>
 
	<div class="page_number">
		<a href="#">&nbsp;&nbsp;Prev&nbsp;&nbsp;</a> 
		<a href="#">&nbsp;&nbsp;1&nbsp;&nbsp;</a> 
		<a href="#">&nbsp;&nbsp;2&nbsp;&nbsp;</a> 
		<a href="#">&nbsp;&nbsp;3&nbsp;&nbsp;</a> 
		<a href="#">&nbsp;&nbsp;4&nbsp;&nbsp;</a> 
		<a href="#">&nbsp;&nbsp;5&nbsp;&nbsp;</a> 
		<a href="#">&nbsp;&nbsp;Next&nbsp;&nbsp;</a>
	</div>
</div>

</body>
</html>
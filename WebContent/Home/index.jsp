<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EasyCook</title>

<link rel="stylesheet" type="text/css" href="./css/index.css"/>
<script src="./js/jquery.js"></script>
<script>

//////////////////////////////페이지 초기화 ////////////////////////////////
	function initPage(){
		windowWheelEventRemove();
		windowWheelEvent();
	}
/////////////////////////// 페이지 초기화 END ///////////////////////////////

/////////////////////////// 페이지 스크롤 이벤트 //////////////////////////////
	//윈도우 휠 이벤트 제거
	function windowWheelEventRemove(){
		window.addEventListener("wheel",function(e){
			e.preventDefault();
		},{passive: false});
	}
	
	//윈도우 휠 이벤트를 위한 변수 선언
	var $html = $("html");
	var page = 1;
	var lastPage = $(".content").length;
	
	$html.animate({scrollTop:0}, 10);
	
	//윈도우 휠 이벤트
	function windowWheelEvent(){
		$(window).on("wheel", function(e){
			
			if($html.is(":animated")) return;
			
			if(e.originalEvent.deltaY > 0){
				if(page == lastPage) return;
				page++;
			}else if(e.originalEvent.deltaY < 0){
				if(page == 1) return;
				page--;
			}
			var posTop = (page-1) * $(window).height();
			$html.animate({scrollTop : posTop});
		});
	}
	
	//브라우저 크기 변경시 호출되는 이벤트
	$(window).resize(function(){
		var posTop = (page-1) * $(window).height();
		window.scrollTo(0, posTop);
	});
//////////////////////////// 페이지 스크롤 이벤트 END /////////////////////////////

</script>

</head>
<body style="overflow-x: hidden; overflow-y: hidden;" onload="initPage();">+

<%@ include file="./menubar/top_left_menubar.jsp"%>

<div id="main_logo" class="content">
	<img id="main_img" src="./images/index_logo.jpg"/>
	<img id="main_logoimg" src="./images/logo.png"/>
</div>

<div id="temp_top5" class="content">
   <header>
      <div class="h1">조회수 TOP5 게시판</div>
      <hr/>
      <div class="gallerylist">
         <ul>
            <li><a href="">
                  <div class="screen">
                     <div class="top">닭봉의 레시피가 궁금하시다면?</div>
                     <div class="bottom">알려드립니다!</div>
                     <img src="./images/picture/chicken.jpg">
                  </div>
                  <div>
                     <h3>1위:누구나 좋아하는 닭봉</h3>
                  </div>
            </a></li>
            <li><a href="">
                  <div class="screen1">
                     <div class="top">토스트의 레시피가 궁금하시다면?</div>
                     <div class="bottom">알려드립니다!</div>
                     <img src="./images/picture/toast.jpg">
                  </div>
                  <div>
                     <h3>2위:마성의 매력 계란토스트</h3>
                  </div>
            </a></li>
         </ul>
      </div>
   </header>
   
   <middle>
      <div class="gallerylist">
         <ul>
            <li><a href="">
                  <div class="screen3">
                     <div class="top">감자조림의 레시피가 궁금하시다면?</div>
                     <div class="bottom">알려드립니다!</div>
                     <img src="./images/picture/gamja.jpg">
                  </div>
                  <div>
                     <h3>3위:달콤짭잘 감자조림</h3>
                  </div>
            </a></li>
            <li><a href="">
                  <div class="screen4">
                     <div class="top">새우구이의 레시피가 궁금하시다면?</div>
                     <div class="bottom">알려드립니다!</div>
                     <img src="./images/picture/shrimp.jpg">
                  </div>
                  <div>
                     <h3>4위:새우를 제일 맛있게 먹는 방법</h3>
                  </div>
            </a></li>
            <li><a href="">
                  <div class="screen5">
                     <div class="top">장조림의 레시피가 궁금하시다면?</div>
                     <div class="bottom">알려드립니다!</div>
                     <img src="./images/picture/egg1.jpg">
                  </div>
                  <div>
                     <h3>5위:메추리알과 햄 조합의 장조림</h3>
                  </div>
            </a></li>
         </ul>
      </div>
   </middle>
</div>

<%--핫뉴스 시작 --%>
<div id="temp_news" class="content">
   <span class="hn_title">핫뉴스 제목</span>
   <div class="one_wrap" onclick="window.open('http://www.google.co.kr')">
      <div class="one_img_div">
         <img class="one_img" src="images/left.jpg" alt="첫번째 이미지" />
      </div>
      <span class="newsRight pxn">&lt;EASYCOOK'S NEWS&gt;</span>
      <span class="one_title">아주긴문장인대어디까지표시되는지테스트하는제목입니다</span>
      <span class="news_source">&lt;이지쿡일보 2021-07-12 월요일&gt;</span>
      <span class="one_cont">22일 '재밍'은 공식 SNS 채널을 통해 신개념 아이돌 콘텐츠 '마P아'의 화보를 공개했다.
                         이번 화보는 시크릿 파티 콘셉트로 파티장에 가는 설렘을 몽환적이게 그려냈다.
                         공개된 사진 속 프로미스나인은 평소 그룹 활동과는 다른 성숙한 매력을 발산해 눈길을 끌었다.
                         이어진 개인 컷에서는 멤버 모두 이전에 보여주던 발랄한 이미지와 상반되는 섹시한 듯 강렬한 스타일을 저마다의 매력으로 표현하며 화보의 완성도를 더했다.
                         이번 화보를 통해 프로미스나인은 빛나는 미모에 아홉 소녀들의 개성 넘치는 매력까지 선보였다. 
                         뿐만 아니라 촬영 내내 멤버들은 특유의 밝은 에너지를 한껏 뽐냈다.수다를 떨다가도 카메라가 켜지면 강렬한 눈빛으로 분위기를 압도, 매 컷을 완벽하게 소화하며 프로페셔널한 면모로 스태프들의 감탄을 자아냈다.
                         한편, '마P아' 프로미스나인편의 비하인드는 오는 25일 유튜브 채널 '재밍'을 통해 공개되며, 본 편은 매주 목요일 오후 5시 7분에 업로드 된다.</span>
   </div>
   <div class="one_wrap2"></div>
   <div class="clear"></div>
      
   <div class="two_wrap" onclick="window.open('http://www.google.co.kr')">
      <div class="one_img_div">
         <img class="two_img" src="images/right2.jpg" alt="두번쨰 이미지" />
      </div>      
      <span class="newsRight pxn">&lt;EASYCOOK'S NEWS&gt;</span>
      <span class="two_title">제목도 ...처리해야함너무짧으면안돼 </span>
      <span class="news_source">&lt;이지쿡일보 2021-07-12 월요일&gt;</span>
      <span class="two_cont">22일 '재밍'은 공식 SNS 채널을 통해 신개념 아이돌 콘텐츠 '마P아'의 화보를 공개했다.
                         이번 화보는 시크릿 파티 콘셉트로 파티장에 가는 설렘을 몽환적이게 그려냈다.
                         공개된 사진 속 프로미스나인은 평소 그룹 활동과는 다른 성숙한 매력을 발산해 눈길을 끌었다.
                         이어진 개인 컷에서는 멤버 모두 이전에 보여주던 발랄한 이미지와 상반되는 섹시한 듯 강렬한 스타일을 저마다의 매력으로 표현하며 화보의 완성도를 더했다.
                         이번 화보를 통해 프로미스나인은 빛나는 미모에 아홉 소녀들의 개성 넘치는 매력까지 선보였다. 
                         뿐만 아니라 촬영 내내 멤버들은 특유의 밝은 에너지를 한껏 뽐냈다.수다를 떨다가도 카메라가 켜지면 강렬한 눈빛으로 분위기를 압도, 매 컷을 완벽하게 소화하며 프로페셔널한 면모로 스태프들의 감탄을 자아냈다.
                         한편, '마P아' 프로미스나인편의 비하인드는 오는 25일 유튜브 채널 '재밍'을 통해 공개되며, 본 편은 매주 목요일 오후 5시 7분에 업로드 된다.</span>
   </div>
   <div class="two_wrap2"></div>
   <div class="clear"></div>
   
   <div class="three_wrap" onclick="window.open('http://www.google.co.kr')">
      <div class="one_img_div">
         <img class="three_img" src="images/right3.jpg" alt="세번째 이미지" />
      </div>   
      
      <span class="newsRight pxn">&lt;EASYCOOK'S NEWS&gt;</span>
      <span class="three_title">창줄이면 태그뒤섞임 태그정리</span>
      <span class="news_source">&lt;이지쿡일보 2021-07-12 월요일&gt;</span>
      <span class="three_cont">22일 '재밍'은 공식 SNS 채널을 통해 신개념 아이돌 콘텐츠 '마P아'의 화보를 공개했다.
                         이번 화보는 시크릿 파티 콘셉트로 파티장에 가는 설렘을 몽환적이게 그려냈다.
                         공개된 사진 속 프로미스나인은 평소 그룹 활동과는 다른 성숙한 매력을 발산해 눈길을 끌었다.
                         이어진 개인 컷에서는 멤버 모두 이전에 보여주던 발랄한 이미지와 상반되는 섹시한 듯 강렬한 스타일을 저마다의 매력으로 표현하며 화보의 완성도를 더했다.
                         이번 화보를 통해 프로미스나인은 빛나는 미모에 아홉 소녀들의 개성 넘치는 매력까지 선보였다. 
                         뿐만 아니라 촬영 내내 멤버들은 특유의 밝은 에너지를 한껏 뽐냈다.수다를 떨다가도 카메라가 켜지면 강렬한 눈빛으로 분위기를 압도, 매 컷을 완벽하게 소화하며 프로페셔널한 면모로 스태프들의 감탄을 자아냈다.
                         한편, '마P아' 프로미스나인편의 비하인드는 오는 25일 유튜브 채널 '재밍'을 통해 공개되며, 본 편은 매주 목요일 오후 5시 7분에 업로드 된다.</span>
   </div>
   <div class="three_wrap2"></div>
   <div class="clear"></div>
</div> <%--핫뉴스 끝 --%>

<div id="temp_ingr" class="content">
	<div id="main_cucheon_heading">
		<strong id="cucheon_title">이달의 추천 재료!</strong>
	</div>

	<div id="main_cucheon">
		<div id="main_cucheon_cont">
			<div id="main_cucheon_cont_1" class="cucheon_form">
				<div id="main_cucheon_cont_1_cont" class="food_img">
					<div id="food_text_1" class="food_text">
						<p class="food_title">감자</p>
					</div>
					<div id="food_img_cont_1" class="food_img_cont">
						<span>감자는 비타민 C가 많다. 영양분은 껍질에 많기때문에 <br /> 
						깨끗이 씻어 껍질째 먹는것이 좋다.또한, 감자는 관절 작용을 돕는 결합 조직을 형성하는 데 <br /> 
						필수적인 역할을 하며, 이를 제자리에 고정시켜주는 작용을 한다.
						</span>
					</div>
				</div>
			</div>

			<div id="main_cucheon_cont_2" class="cucheon_form">
				<div id="main_cucheon_cont_2_cont" class="food_img">
					<div id="food_text_2" class="food_text">
						<p class="food_title">가지</p>
					</div>
					<div id="food_img_cont_2" class="food_img_cont">
						<span>가지의 보라색 껍질에는 안토시아닌계 색속인 히아신과 <br /> 
						나스닌이 풍부하여 혈관의 노폐물 제거와 항암효과를 가지고 있다. <br /> 
						수분과 칼륨이 다량 함유되어 있어 이뇨작용을 촉진하여 노폐물 배출에 도움을 준다.
						</span>
					</div>
				</div>
			</div>

			<div id="main_cucheon_cont_3" class="cucheon_form">
				<div id="main_cucheon_cont_3_cont" class="food_img">
					<div id="food_text_3" class="food_text">
						<p class="food_title">양파</p>
					</div>
					<div id="food_img_cont_3" class="food_img_cont">
						<span>양파에는 알리신·케르세틴 등이 풍부하여 혈액의 콜레스테롤을 몸 밖으로 <br /> 
						내보내고 혈압을 낮추는 효과가 있다. 또 양파는 기름에 볶아 먹어야 영양소가 더 잘 흡수된다. <br /> 
						양파의 수분이 증발하면서 단맛도 더 강해진다.
						</span>
					</div>
				</div>
			</div>

			<div id="main_cucheon_cont_4" class="cucheon_form">
				<div id="main_cucheon_cont_4_cont" class="food_img">
					<div id="food_text_4" class="food_text">
						<p class="food_title">깻잎</p>
					</div>
					<div id="food_img_cont_4" class="food_img_cont">
						<span>깻잎의 독특한 향기를 내는 페릴라알데히드와 리모넨·페릴케톤 성분 등은 고기와 생선 비린내를 없애주고, <br /> 
						살균 효과로 식중독 예방에도 도움을 줍니다. 또한, 깻잎의 파이톨성분 등은 <br />
						체내에 들어온 식중독균을 없애주는 역할을 한다.
						</span>
					</div>
				</div>
			</div>

			<div id="main_cucheon_cont_5" class="cucheon_form">
				<div id="main_cucheon_cont_5_cont" class="food_img">
					<div id="food_text_5" class="food_text">
						<p class="food_title">옥수수</p>
					</div>
					<div id="food_img_cont_5" class="food_img_cont">
						<span>옥수수의 영양상 장점은 식이섬유(변비 예방)와 비타민 B1(정신건강에 유익)ㆍ엽산(기형 예방)<br /> 
						등 비타민, 칼륨(혈압 조절)ㆍ철분(빈혈 예방) 등 미네랄이 풍부하다는 것이다.
						</span>
					</div>
				</div>
			</div>

			<div id="main_cucheon_cont_6" class="cucheon_form">
				<div id="main_cucheon_cont_6_cont" class="food_img">
					<div id="food_text_6" class="food_text">
						<p class="food_title">토마토</p>
					</div>
					<div id="food_img_cont_6" class="food_img_cont">
						<span>토마토는 일명 노화의 주범인 활성산소를 줄여주는 라이코펜이 다량 함유.<br /> 
						특히 날로 먹는것보다 익혀 먹을경우 더 많이 녹아 나오므로굽거나 끓여먹는 것이 좋다.<br /> 
						각종 암 예방에도 효과가 있다.
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="temp_footer" class="content">
	<div id="footer_text">
		<h3>
			<br><br><br>(주)Easy Cook<br /> 서울특별시 동작구 장승배기로 171 노량진아이비빌딩 3층<br />
			<br /> 사업자등록번호 : 542-85-00739 &nbsp; 법인등록번호 : 110111-1959183<br />
			<br /> 전자 금융 분쟁처리<br /> 대표번호 : 1522-7909 | FAX : 02-3672-5615<br />
			대표메일:chan941027@naver.com
		</h3>
		<a href="http://facebook.com" target="_blank"><img 
			src="./images/facebook.gif" width="45px" height="45px"></a>&nbsp;
		<a href="http://twitter.com" target="_blank"><img
			src="./images/twitter.gif" width="45px" height="45px"></a>&nbsp; <a
			href="http://instagram.com" target="_blank"><img
			src="./images/instagram.jpg" width="45px" height="45px"></a>
	</div>
	<div id="footer_logo">
		<a href="#" target="_blank"><img src="./images/logo.png"></a>
		<h1>
			당신의 저녁<br/>우리가 책임질게요!
		</h1>
		<h4>Easy Cook</h4>
	</div>
</div>

</body>
</html>

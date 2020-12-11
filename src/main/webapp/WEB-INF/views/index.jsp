<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/header.jsp" %>
<!-- 헤더 영역 -->
<!-- 메인 슬라이드 -->
<div id="mainContainer">
	<div id="mainSection">
		<div class="mainCopy">
			<h1>FIND <br>YOUR FUTURE!</h1>
			<h6>
				DEV.FORT는 당신에게 가장 적합한 회사를 찾아드립니다.<br>
				어떤 회사가 나를 기다리고 있을 지, 지금 확인해보세요.
			</h6>
		</div>
		<div class="mainButton">
			<div class="actionBtn24-wrap">
				 <span class="mid-line"></span>
				 <a href="javascript:;" class="code_view actionBtn24">
				 <div class="ele-box">		 
					 <span class="lb-top">
					 <span class="txt">OPEN</span></span>		
					 <span class="dot"></span>
					 <span class="lb-bot">
					 <span class="txt">LIST</span>
					 </span>
				 </div>
				 <svg viewBox="0 0 150 150" version="1.1" xmlns="http://www.w3.org/2000/svg">
				 <circle class="c-01" cx="75" cy="75" r="74" stroke="#DEDEDE" stroke-opacity="0.4" fill="none" transform="rotate(-180 75 75)"></circle><circle class="c-02" cx="75" cy="75" r="74" stroke="#DEDEDE" stroke-opacity="0.7" fill="none" transform="rotate(-180 75 75)"></circle>
				 </svg>
				 </a>
			 </div>
		</div>
	</div>
</div>
<!-- 메인 슬라이드 -->
<!-- 검색 영역 -->
<div id="searchContainer">
	<div id="searchSection">
		<h3>SEARCH COMPANY</h3>
		<p>당신을 기다리고 있는 회사가 얼마나 많을까요?<br>
		DEV.FORT가 선택한 조건에 부합하는 기업들을 모아서 보여드립니다.
		</p>
		<div id="searchBox">
			<div class="formBox">
				<form>
					<select>
						<option>지역선택</option>
						<option>서울</option>
						<option>경기</option>
						<option>부산</option>
					</select>
					<select>
						<option>직업선택</option>
						<option>웹개발</option>
						<option>응용프로그램개발</option>
						<option>시스템개발</option>
						<option>서버/네트워크</option>
					</select>
					<select>
						<option>경력선택</option>
						<option>신입</option>
						<option>2~3년차</option>
						<option>3~5년차</option>
						<option>5년차 이상</option>
					</select>
					<input type="text" placeholder="검색어를 입력하세요.">
					<input type="submit" value="SEARCH">
				</form>
			</div>
			<div class="mySearchBox">
				<ul>
					<li>MY CUSTOM TYPE</li>
					<li><a href="javascript:;">등록한 조건 1</a></li>
					<li><a href="javascript:;">등록한 조건 2</a></li>
					<li><a href="javascript:;">등록한 조건 3</a></li>
					<li><a href="javascript:;">등록한 조건 4</a></li>
					<li><a href="javascript:;">등록한 조건 5</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- 검색 영역 -->
<!-- 썸네일 영역-->
<div id="thumbnailContainer">
	<div id="thumbnailSection" class="clear">
		<h5>지금 구인중인 기업</h5>
		<!-- 썸네일 -->
		<div class="thumbnailBox">
			<div class="InfoSection">
				<div class="scrapIcon"><a href="javascript:;"><span>☆</span></a></div>
				<div class="logo">
					<a href="javascript:;"><img src="../img/naver.jpg" alt="Naver" /></a>
				</div>
				<div class="InfoContents">
				<h6><a href="javascript:;">네이버 웹 개발자</a></h6>
				<p><a href="javascript:;">NHN에서 웹 개발자를 공개 채용합니다.<br>담당 직무 및 자격조건은...</a></p>
					<ul>
						<li class="pointB">신입</li>
						<li>~2020.12.08</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 썸네일 -->
		<div class="thumbnailBox">
			<div class="InfoSection">
			<div class="scrapIcon"><a href="javascript:;"><span>☆</span></a></div>
				<div class="logo">
					<a href="javascript:;"><img src="../img/naver.jpg" alt="Naver" /></a>
				</div>
				<div class="InfoContents">
				<h6><a href="javascript:;">네이버 웹 개발자</a></h6>
				<p><a href="javascript:;">NHN에서 웹 개발자를 공개 채용합니다.<br>담당 직무 및 자격조건은...</a></p>
					<ul>
						<li class="pointM">경력</li>
						<li>~2020.12.08</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 썸네일 -->
		<div class="thumbnailBox">
			<div class="InfoSection">
			<div class="scrapIcon"><a href="javascript:;"><span>☆</span></a></div>
				<div class="logo">
					<a href="javascript:;"><img src="../img/naver.jpg" alt="Naver" /></a>
				</div>
				<div class="InfoContents">
				<h6><a href="javascript:;">네이버 웹 개발자</a></h6>
				<p><a href="javascript:;">NHN에서 웹 개발자를 공개 채용합니다.<br>담당 직무 및 자격조건은...</a></p>
					<ul>
						<li class="pointM">경력</li>
						<li>~2020.12.08</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 썸네일 -->
		<div class="thumbnailBox">
			<div class="InfoSection">
			<div class="scrapIcon"><a href="javascript:;"><span>★</span></a></div>
				<div class="logo">
					<a href="javascript:;"><img src="../img/naver.jpg" alt="Naver" /></a>
				</div>
				<div class="InfoContents">
				<h6><a href="javascript:;">네이버 웹 개발자</a></h6>
				<p><a href="javascript:;">NHN에서 웹 개발자를 공개 채용합니다.<br>담당 직무 및 자격조건은...</a></p>
					<ul>
						<li class="pointM">경력</li>
						<li>~2020.12.08</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 썸네일 -->
		<div class="thumbnailBox">
			<div class="InfoSection">
			<div class="scrapIcon"><a href="javascript:;"><span>☆</span></a></div>
				<div class="logo">
					<a href="javascript:;"><img src="../img/naver.jpg" alt="Naver" /></a>
				</div>
				<div class="InfoContents">
				<h6><a href="javascript:;">네이버 웹 개발자</a></h6>
				<p><a href="javascript:;">NHN에서 웹 개발자를 공개 채용합니다.<br>담당 직무 및 자격조건은...</a></p>
					<ul>
						<li class="pointB">신입</li>
						<li>~2020.12.08</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 썸네일 -->
		<div class="thumbnailBox">
			<div class="InfoSection">
			<div class="scrapIcon"><a href="javascript:;"><span>★</span></a></div>
				<div class="logo">
					<a href="javascript:;"><img src="../img/naver.jpg" alt="Naver" /></a>
				</div>
				<div class="InfoContents">
				<h6><a href="javascript:;">네이버 웹 개발자</a></h6>
				<p><a href="javascript:;">NHN에서 웹 개발자를 공개 채용합니다.<br>담당 직무 및 자격조건은...</a></p>
					<ul>
						<li class="pointM">경력</li>
						<li class="alert">마감 3시간 전</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 썸네일 -->
		<div class="thumbnailBox">
			<div class="InfoSection">
			<div class="scrapIcon"><a href="javascript:;"><span>☆</span></a></div>
				<div class="logo">
					<a href="javascript:;"><img src="../img/naver.jpg" alt="Naver" /></a>
				</div>
				<div class="InfoContents">
				<h6><a href="javascript:;">네이버 웹 개발자</a></h6>
				<p><a href="javascript:;">NHN에서 웹 개발자를 공개 채용합니다.<br>담당 직무 및 자격조건은...</a></p>
					<ul>
						<li class="pointB">신입</li>
						<li>~2020.12.08</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 썸네일 -->
		<div class="thumbnailBox">
			<div class="InfoSection">
			<div class="scrapIcon"><a href="javascript:;"><span>★</span></a></div>
				<div class="logo">
					<a href="javascript:;"><img src="../img/naver.jpg" alt="Naver" /></a>
				</div>
				<div class="InfoContents">
				<h6><a href="javascript:;">네이버 웹 개발자</a></h6>
				<p><a href="javascript:;">NHN에서 웹 개발자를 공개 채용합니다.<br>담당 직무 및 자격조건은...</a></p>
					<ul>
						<li class="pointM">경력</li>
						<li class="alert">마감 15시간 전</li>
					</ul>
				</div>
			</div>
		</div>

<!-- 썸네일 영역 -->

	<!-- 페이징 -->
	<div class="pagination clear">
		<ul>
			<li><a href="javascript:;">1</a></li>
			<li><a href="javascript:;">2</a></li>
			<li><a href="javascript:;">3</a></li>
			<li><a href="javascript:;">4</a></li>
			<li><a href="javascript:;">5</a></li>
		</ul>
	</div>
	</div>
</div>

<!-- Footer -->
<%@ include file="../include/footer.jsp" %>
</body>
</html>
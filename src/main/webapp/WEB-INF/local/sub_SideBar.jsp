<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/include/header.jsp" %>
<!-- 헤더 영역 -->
<!-- 메인 슬라이드 -->
<div id="subContainer">
	<div id="subSection">
		<!-- 검색 영역 -->
		<div id="searchContainer">
			<div id="searchSection" class="pdt120">
				<h3>SEARCH COMPANY</h3>
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
								<option>언어선택</option>
								<option>자바</option>
								<option>자바스크립트</option>
								<option>JSP</option>
								<option>ASP</option>
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
	</div>
</div>
<!-- 메인 슬라이드 -->

<!-- 서브영역 -->
<div id="ScrollsubArea">
	<!-- 사이드바 -->
	<div id="sideBarContainer">
		<h4>QUICK BAR</h4>
		<hr>
		<ul>
			<li><a href="javascript:;">검색조건 리스트</a></li>
			<li><a href="javascript:;">비밀번호 변경</a></li>
			<li><a href="javascript:;">회원 탈퇴</a></li>
		</ul>
	</div> 
	<!-- 사이드바 -->
	<!-- 서브 본문 영역 -->
	<div id="subContentArea" >
	<h4>검색조건 리스트</h4>
	<p>본문</p>
	</div>
	<div class="clear"></div>
	<!-- 서브 본문 영역 -->
	
</div>



<!-- Footer -->
<%@ include file="/include/footer.jsp" %>
</body>
</html>
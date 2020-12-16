<%@page import="org.jsoup.select.Elements"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- 헤더 영역 -->

<!-- 검색영역  -->
<%@ include file="../include/search.jsp" %>
<!-- 검색영역  -->

<!-- 서브영역 -->
<div id="ScrollsubArea">
	<!-- 사이드바 -->
	<div id="sideBarContainer">
		<h4>QUICK BAR</h4>
		<hr>
		<ul>
			<li><a href="sidebar?cat_cd=404&recruitPage=1">웹 개발</a></li>
			<li><a href="sidebar?cat_cd=407&recruitPage=1">모바일 앱 개발</a></li>
			<li><a href="sidebar?cat_cd=402&recruitPage=1">서버·네트워크·보안</a></li>
			<li><a href="sidebar?cat_cd=413,412&recruitPage=1">UI/UX·웹디자인개발</a></li>
			<li><a href="sidebar?cat_cd=405&recruitPage=1">게임·AR·VR</a></li>
			<li><a href="sidebar?cat_cd=417&recruitPage=1">인공지능·빅데이터</a></li>
		</ul>
	</div> 
	<!-- 사이드바 -->
	<!-- 서브 본문 영역 -->
	<div id="subContentArea" >
	<h4>검색조건 리스트</h4>
	<p></p>
	<table>
	  <tr>
	    <th>경력</th>
	    <th>학력</th>
	    <th>근무형태</th>
	    <th>급여</th>
	    <th>직급/직책</th>
	    <th>근무일시</th>
	    <th>근무지</th>
	  </tr>
	  <tr>
	  </tr>
	</table>
	</div>
	<!-- 버튼:지원하기/목록으로 -->
	<div class="mySearchBox">
		<ul>
			<li><a href="javascript:;">입사지원하기</a></li>
			<li><a href="javascript:history.back();">목록으로</a></li>
		</ul>
	</div>
	<div class="clear"></div>
	<!-- 서브 본문 영역 -->
	

</div>

<!-- Footer -->
<%@ include file="../include/footer.jsp" %>
</body>
</html>
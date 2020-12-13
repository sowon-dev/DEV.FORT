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
			<li><a href="javascript:;">웹 개발</a></li>
			<li><a href="javascript:;">모바일 앱 개발</a></li>
			<li><a href="javascript:;">서버·네트워크·보안</a></li>
			<li><a href="javascript:;">UI/UX·웹디자인개발</a></li>
			<li><a href="javascript:;">게임·AR·VR</a></li>
			<li><a href="javascript:;">인공지능·빅데이터</a></li>
		</ul>
	</div> 
	<!-- 사이드바 -->
	<!-- 서브 본문 영역 -->
	<div id="subContentArea" >
	<h4>검색조건 리스트</h4>
	<p>총 00건</p>
	<table id="list">
	 <c:forEach var="el" items="${el}" >
	  <tr>${el }</tr>
	  </c:forEach>
	</table>
	<!--  
	<table class="w3-table-all w3-hoverable">
	<thead>
	     <tr class="w3-light-grey">
	       <th>First Name</th>
	       <th>Last Name</th>
	       <th>Points</th>
	     </tr>
	   </thead>
	   <tr>
		<td>Jill</td>
	     <td>Smith</td>
	     <td>50</td>
	   </tr>
	</table> -->
	</div>
	<div class="clear">
	</div>
	<!-- 서브 본문 영역 -->
	
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

<!-- Footer -->
<%@ include file="../include/footer.jsp" %>
</body>
</html>
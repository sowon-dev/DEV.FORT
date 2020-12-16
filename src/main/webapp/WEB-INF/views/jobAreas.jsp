<%@page import="org.jsoup.select.Elements"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header.jsp" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- 헤더 영역 -->
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}
</style>
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
	<p>${cnt_result }</p>
	<table>
	  <tr>
	    <th></th>
	    <th>회사명/정보제공처</th>
	    <th>채용공고</th>
	    <th>근무조건</th>
	    <th>마감일</th>
	  </tr>
	<%
	Elements corp_name = (Elements) request.getAttribute("corp_name");
	Elements job_tit = (Elements) request.getAttribute("job_tit");
	Elements job_condition = (Elements) request.getAttribute("job_condition");
	Elements job_date = (Elements) request.getAttribute("job_date");
	String link = (String) request.getAttribute("link");
	
	for(int i=0; i<job_tit.size(); i++){
	%>
	  <tr>
	    <td>
	    	<input type="checkbox" id="" name="" value="">
	    </td>
	    <td><%=corp_name.get(i).text()%><div>사람인</div></td>
	    <td>
	    	<%-- <a href="http://www.saramin.co.kr<%=job_tit.get(i).select("a").attr("href")%>"> --%>
	    	<a href="detail">
	    	<input type="hidden" value="http://www.saramin.co.kr<%=job_tit.get(i).select("a").attr("href")%>">
	    	<%=job_tit.get(i).text()%>
	    	</a>
	    </td>
	    <td><%=job_condition.get(i)%></td>
	    <td><%=job_date.get(i)%></td>
	  </tr>
	 <%}%>
	</table>
	</div>
	<div class="clear">
	</div>
	<!-- 서브 본문 영역 -->
	
	<!-- 페이징 -->
	<div class="pagination clear">
		<ul>
		<%
		String cat_id = request.getParameter("cat_cd");
		if(cat_id == null) cat_id = "404";
		%>
			<li><a href="page?cat_cd=<%=cat_id %>&recruitPage=1">1</a></li>
			<li><a href="page?cat_cd=<%=cat_id %>&recruitPage=2">2</a></li>
			<li><a href="page?cat_cd=<%=cat_id %>&recruitPage=3">3</a></li>
			<li><a href="page?cat_cd=<%=cat_id %>&recruitPage=4">4</a></li>
			<li><a href="page?cat_cd=<%=cat_id %>&recruitPage=5">5</a></li>
		</ul>
	</div>
</div>

<!-- Footer -->
<%@ include file="../include/footer.jsp" %>
</body>
</html>
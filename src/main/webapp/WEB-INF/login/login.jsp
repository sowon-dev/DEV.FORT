<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/include/header.jsp" %>
<!-- 헤더 영역 -->
<!-- 메인 슬라이드 -->
<div id="subContainer">
	<div id="loginSection">
		<div class="mainCopy">
			<h1>LOGIN</h1>
			<h6>
				DEV.FORT는 당신에게 가장 적합한 회사를 찾아드립니다.<br>
				어떤 회사가 나를 기다리고 있을 지, 지금 확인해보세요.
			</h6>
		</div>
	</div>
</div>
<!-- 메인 슬라이드 -->

<!-- 서브영역 -->
<div id="NoScrollsubArea">
	<!-- 서브 본문 영역 -->
	<div id="subContentArea" >
		<div class="loginLogo">
			<img src="../img/logo.png">
		</div>
		<div class="loginForm">
			<p>ID</p>
			<input type="text" placeholder="ID를 입력하세요.">
			<p>PASSWORD</p>
			<input type="password" placeholder="비밀번호를 입력하세요.">
			<input type="submit" class="wth100 mgt30" value="LOGIN">
			<input type="button" class="wth100 googleLogin" value="구글 아이디로 로그인">
			<input type="button" class="wth100 findUser" value="아이디/비밀번호 찾기">

		</div>
	</div>
	<div class="clear"></div>
	<!-- 서브 본문 영역 -->
	
</div>



<!-- Footer -->
<%@ include file="/include/footer.jsp" %>
</body>
</html>
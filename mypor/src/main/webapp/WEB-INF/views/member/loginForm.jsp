<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<c:choose>
	<c:when test="${result=='loginFailed' }">
		<script>
			window.onload = function() {
				alert("아이디나 비밀번호가 틀립니다.다시 로그인 하세요!");
			}
		</script>
	</c:when>
</c:choose>
</head>
<body>
	<section class="bg-light page-section" id="fn_member">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-subheading">Welcome</h2>
					<h3 class="section-subheading-mem text-muted">로그인 페이지입니다.</h3>
				</div>
			</div>
			<div class="memberbox_wap">
				<form name="frmLogin" method="post"
					action="${contextPath}/member/login.do">
					<div class="memberbox_in">
						<p>
							<input type="text" name="id" value="" size="20"
								placeholder="MemberID">
						</p>
						<p>
							<input type="password" name="pwd" value="" size="20"
								placeholder="PASSWORD">
						</p>
					</div>
					<div class="memberbox_sub">
						<p>
							<input class="btn btn-primary btn-xl text-uppercase"
								type="submit" value="LOG IN">
						</p>
					</div>
					<br> <br> <br>
					<p align="center">
						<a href="${contextPath}/member/memberForm.do">Not a member?
							Sign up now</a>
					<p>
				</form>
			</div>
		</div>
	</section>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정 페이지</title>
</head>
<body>
	<section class="bg-light page-section" id="fn_member">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-subheading">Member Edit</h2>
					<h3 class="section-subheading-mem text-muted">회원 정보
						수정 페이지입니다.</h3>
				</div>
			</div>
			<div class="memberbox_wap">
				<form method="post" action="${contextPath}/member/changeMember.do">
					<div class="memberbox_in">

						<div>
							<p class="mod-p">아이디</p>
							<p>
								<input class="block" type="text" name="id" value="${member.id}"
									readonly>
							</p>
						</div>

						<div>
							<p class="mod-p">비밀번호</p>
							<p>
								<input type="password" name="pwd" value="${member.pwd}">
							</p>
						</div>

						<div>
							<p class="mod-p">이름</p>
							<p>
								<input type="text" name="name" value="${member.name}">
							</p>
						</div>
						<div>
							<p class="mod-p">이메일</p>
							<p>
								<input type="text" name="email" value="${member.email}">
							</p>
						</div>

						<div>
							<p class="mod-p">가입일</p>
							<p>
								<input class="block" type="text" name="joinDate"
									value="${member.joinDate}" readonly>
							</p>
						</div>

					</div>
					<div class="memberbox_sub">
						<p>
							<input class="btn btn-primary btn-xl text-uppercase"
								type="submit" value="수정하기">
						</p>
					</div>
				</form>
			</div>
		</div>
	</section>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function fn_checkMember() {
		formCheck = document.frm;
		if (formCheck.id.value == "" || formCheck.id.value == " ") {
			alert("아이디를 입력해주세요.")
			formCheck.id.focus();
			return false;
		} else if (formCheck.pwd.value == "" || formCheck.pwd.value == " ") {
			alert("비밀번호를 입력해주세요.")
			formCheck.pwd.focus();
			return false;
		} else if (formCheck.name.value == "" || formCheck.name.value == " ") {
			alert("이름을 입력해주세요.")
			formCheck.name.focus();
			return false;
		} else if (formCheck.email.value == "" || formCheck.email.value == " ") {
			alert("이메일주소을 입력해주세요.")
			formCheck.email.focus();
			return false;
		} else {
			formCheck.submit();
		}
	}
</script>
</head>
<body>
	<section class="bg-light page-section" id="fn_member">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-subheading">Create Your Account</h2>
					<h3 class="section-subheading-mem text-muted">회원 가입 페이지입니다.</h3>
				</div>
			</div>
			<div class="memberbox_wap">
				<form name="frm" method="post"
					action="${contextPath}/member/addMember.do">
					<div class="memberbox_in">
						<p>
							<input type="text" name="name" placeholder="NAME">
						</p>
						<p>
							<input type="text" name="id" placeholder="USER ID">
						</p>
						<p>
							<input type="password" name="pwd" placeholder="PASSWORD">
						</p>
						<p>
							<input type="text" name="email" placeholder="EMAIL">
						</p>
					</div>
					<div class="memberbox_sub">
						<p>
							<input class="btn btn-primary btn-xl text-uppercase"
								type="button" value="REGISTER" onClick="fn_checkMember()">
						</p>
					</div>
				</form>
			</div>
		</div>
	</section>

</body>
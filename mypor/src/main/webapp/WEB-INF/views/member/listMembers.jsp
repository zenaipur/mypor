<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("utf-8");
%>


<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력 페이지</title>
</head>
<body>
	<section class="bg-light page-section" id="fn_member">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-subheading">Member List</h2>
					<h3 class="section-subheading-mem text-muted">가입한 회원 전체 목록 리스트입니다.</h3>
				</div>
			</div>
			<div class="all-list">
				<table class="table table-striped text-center">
					<tr>
						<th><b>아이디</b></th>
						<th><b>비밀번호</b></th>
						<th><b>이름</b></th>
						<th><b>이메일</b></th>
						<th><b>가입일</b></th>
						<th><b>수정</b></th>
						<th><b>삭제</b></th>
					</tr>
					<c:forEach var="member" items="${membersList}">
						<tr align="center">
							<td>${member.id}</td>
							<td>${member.pwd}</td>
							<td>${member.name}</td>
							<td>${member.email}</td>
							<td>${member.joinDate}</td>
							<td><a
								href="${contextPath}/member/modMember.do?id=${member.id }">수정하기</a></td>
							<td><a
								href="${contextPath}/member/removeMember.do?id=${member.id }">삭제하기</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>

			<div class="board-pagina">
				<ul class="pagination my">
					<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</div>
		</div>
	</section>
</body>
</html>
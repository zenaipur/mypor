<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지 헤더</title>
</head>
<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger"
				href="${contextPath}/main.do">Home</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="${contextPath}/main.do">About</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="${contextPath}/main.do">Skills</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="${contextPath}/main.do">Portfolio</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="${contextPath}/main.do">Contact</a></li>
					<li class="nav-item"><c:choose>
							<c:when test="${isLogOn == true  && member!= null}">
								<a class="nav-link js-scroll-trigger"
									href="${contextPath}/member/logout.do">Logout</a>
							</c:when>
							<c:otherwise>
								<a class="nav-link js-scroll-trigger"
									href="${contextPath}/member/loginForm.do">Login</a>
							</c:otherwise>
						</c:choose></li>

				</ul>
			</div>
		</div>
	</nav>

	<!-- Header -->
	<header class="second_masthead">
		<div class="container"></div>
	</header>

</body>
</html>
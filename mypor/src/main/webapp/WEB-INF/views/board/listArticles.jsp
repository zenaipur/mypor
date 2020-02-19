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
<title>글 목록 페이지</title>
</head>
<script>
	function fn_articleForm(isLogOn, articleForm, loginForm) {
		if (isLogOn != '' && isLogOn != 'false') {
			location.href = articleForm;
		} else {
			alert("로그인 후 글쓰기가 가능합니다.")
			location.href = loginForm + '?action=/board/articleForm.do';
		}
	}
</script>
<body>
	<section class="bg-light page-section" id="fn_member">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-subheading">Notice Board</h2>
					<h3 class="section-subheading-mem text-muted">게시판 페이지입니다.</h3>
				</div>
			</div>
			<div class="all-list">
				<table class="table table-striped text-center">
					<tr>
						<th>글번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>작성일</th>
					</tr>
					<c:choose>
						<c:when test="${articlesList ==null }">
							<tr>
								<td>
									<p>
										<b><span>등록된 글이 없습니다.</span></b>
									</p>
								</td>
							</tr>
						</c:when>
						<c:when test="${articlesList !=null }">
							<c:forEach var="article" items="${articlesList }"
								varStatus="articleNum">
								<tr>
									<td>${articleNum.count}</td>
									<td>${article.id }</td>
									<td><c:choose>
											<c:when test='${article.level > 1 }'>
												<c:forEach begin="1" end="${article.level }" step="1">
													<span></span>
												</c:forEach>
												<span style="font-size: 12px;"></span>
												<a
													href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
											</c:when>
											<c:otherwise>
												<a
													href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
											</c:otherwise>
										</c:choose></td>
									<td>${article.writeDate}</td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
				</table>
			</div>

			<div class="board-textbox">
				<a class="btn-article"
					href="javascript:fn_articleForm('${isLogOn}','${contextPath}/board/articleForm.do', 
                                                    '${contextPath}/member/loginForm.do')">
					글쓰기 </a>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("UTF-8");
%>

<head>
<meta charset="UTF-8">
<title>글 쓰기 페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#preview').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	function backToList(obj) {
		obj.action = "${contextPath}/board/listArticles.do";
		obj.submit();
	}
</script>

</head>
<body>
	<section class="bg-light page-section" id="fn_member">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-subheading">New Post</h2>
					<h3 class="section-subheading-mem text-muted">새 글 쓰기 페이지입니다.</h3>
				</div>
			</div>
			<div class="boderbox_wap">
				<form name="articleForm" method="post"
					action="${contextPath}/board/addNewArticle.do"
					enctype="multipart/form-data">
					<div class="memberbox_in">
						<div class="text-box">
							<div class="mod-p">작성자</div>
							<div>
								<input type="text" size="20" maxlength="100"
									value="${member.id }" readonly />
							</div>
						</div>
						<div class="text-box">
							<div class="mod-p">제목</div>
							<div>
								<input type="text" size="67" maxlength="500" name="title" />
							</div>
						</div>
						<div class="text-box">
							<div class="mod-p">내용</div>
							<textarea name="content" rows="20" cols="70" maxlength="4000"></textarea>
						</div>
						<div class="text-box">
							<div class="mod-p">이미지</div>
							<div>
								<img id="preview" src="#" width=300 height=300 onerror="this.src='${contextPath}/img/file_upload.png'"/>
							</div>
						</div>
						<div class="filebox">
							<label for="i_imageFileName">업로드</label> <img id="preview" /><br>
							<input id="i_imageFileName" type="file" name="imageFileName"
								onchange="readURL(this);" />
						</div>
					</div>

					<div id="tr-btn-new">
						<span class="buttonbox"> <label for="i_write">글쓰기</label> <input
							type="submit" value="글쓰기" id="i_write" />
						</span> <span class="buttonbox"> <label for="i_backName">목록보기</label>
							<input type="button" id="i_backName"
							onClick="backToList(this.form)" />
						</span>
					</div>

				</form>
			</div>
		</div>
	</section>

</body>
</html>

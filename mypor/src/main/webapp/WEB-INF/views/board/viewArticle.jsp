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
<title>글보기</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
     function backToList(obj){
	    obj.action="${contextPath}/board/listArticles.do";
	    obj.submit();
     }
 
	 function fn_enable(obj){
		 document.getElementById("i_title").disabled=false;
		 document.getElementById("i_content").disabled=false;
		 document.getElementById("i_imageFileName").disabled=false;
		 document.getElementById("tr-btn-mod").style.display="none";	 
		 document.getElementById("filebutton").style.display="block";
		 document.getElementById("tr_btn_modify").style.display="block";
		 document.getElementById("tr_file_upload").style.display="block";
	 }
	 
	 function fn_modify_article(obj){
		 obj.action="${contextPath}/board/modArticle.do";
		 obj.submit();
	 }
	 
	 function fn_remove_article(url,articleNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var articleNOInput = document.createElement("input");
	     articleNOInput.setAttribute("type","hidden");
	     articleNOInput.setAttribute("name","articleNO");
	     articleNOInput.setAttribute("value", articleNO);
		 
	     form.appendChild(articleNOInput);
	     document.body.appendChild(form);
	     form.submit();
	 
	 }
	 
	 function readURL(input) {
	     if (input.files && input.files[0]) {
	         var reader = new FileReader();
	         reader.onload = function (e) {
	             $('#preview').attr('src', e.target.result);
	         }
	         reader.readAsDataURL(input.files[0]);
	     }
	 }  
 </script>
</head>
<body>
	<section class="bg-light page-section" id="fn_member">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-subheading">View Post</h2>
					<h3 class="section-subheading-mem text-muted">게시글 상세 페이지입니다.</h3>
				</div>
			</div>
			<div class="boderbox_wap">
				<form name="frmArticle" method="post" action="${contextPath}"
					enctype="multipart/form-data">
					<div class="memberbox_in">
						<div class="text-box">
							<div class="mod-p">글번호</div>
							<div>
								<input type="text" value="${article.articleNO }" disabled /> <input
									type="hidden" name="articleNO" value="${article.articleNO}" />
							</div>
						</div>

						<div class="text-box">
							<div class="mod-p">작성일</div>
							<div>
								<input type=text
									value="<fmt:formatDate value="${article.writeDate}" />"
									disabled />
							</div>
						</div>

						<div class="text-box">
							<div class="mod-p">작성자</div>
							<div>
								<input type=text value="${article.id }" name="writer" disabled />
							</div>
						</div>

						<div class="text-box">
							<div class="mod-p">제목</div>
							<div>
								<input type=text value="${article.title }" name="title"
									id="i_title" disabled />
							</div>
						</div>
						<div class="text-box">
							<div class="mod-p">내용</div>

							<textarea rows="20" cols="70" name="content" id="i_content"
								disabled>${article.content }</textarea>

						</div>
							<c:choose>
								<c:when
									test="${not empty article.imageFileName && article.imageFileName!='null' }">
									<div class="text-box">
										<div class="mod-p">이미지</div>
										<div>
											<input type="hidden" name="originalFileName"
												value="${article.imageFileName }" /> <img
												src="${contextPath}/download.do?articleNO=${article.articleNO}&imageFileName=${article.imageFileName}"
												id="preview" width=300 height=300 /><br>
										</div>
									</div>

									<div id="filebutton">
										<label for="i_imageFileName">업로드</label> <input type="file"
											name="imageFileName " id="i_imageFileName" disabled
											onchange="readURL(this);" />
									</div>
								</c:when>
								<c:otherwise>
									<div id="tr_file_upload" class="text-box">
										<div class="mod-p">이미지</div>
										<div>
											<input type="hidden" name="originalFileName"
												value="${article.imageFileName }" />
										</div>
										<div>
											<img id="preview" src="#" width=300 height=300 onerror="this.src='${contextPath}/img/file_upload.png'"/>
										</div>
									</div>
									<div id="filebutton">
										<label for="i_imageFileName">업로드</label> <img id="preview" /><br>
										<input type="file" name="imageFileName " id="i_imageFileName"
											disabled onchange="readURL(this);" />
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					
					<div id="tr_btn_modify" align="center">
						<span class="buttonbox"> <label for="i_modrollName">수정
								반영하기</label> <input id="i_modrollName" type=button
							onClick="fn_modify_article(frmArticle)">
						</span> <span class="buttonbox"> <label for="i_cancelName">취소하기</label>
							<input id="i_cancelName" type=button
							onClick="backToList(frmArticle)">
						</span>
					</div>
					<div id="tr-btn-mod">
						<c:if test="${member.id == article.id }">
							<span class="buttonbox"> <label for="i_modName">수정하기</label>
								<input id="i_modName" type="button"
								onClick="fn_enable(this.form)">
							</span>
							<span class="buttonbox"> <label for="i_deleteName">삭제하기</label>
								<input id="i_deleteName" type=button
								onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
							</span>
						</c:if>
						<span class="buttonbox"> <label for="i_returnName">리스트로
								돌아가기</label> <input id="i_returnName" type=button
							onClick="backToList(this.form)">
						</span>
					</div>

				</form>
			</div>
		</div>
	</section>
</body>
</html>
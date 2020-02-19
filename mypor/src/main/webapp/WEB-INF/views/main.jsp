<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<style>
</style>
</head>
<body>
	<!-- About -->
	<section class="page-section" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">About Me</h2>
					<h3 class="section-subheading text-muted">`삶에서 만족을 느끼기 위해선 당신이
						위대하다고 생각하는 일을 해야 한다.` - Steve Jobs-</h3>
				</div>
			</div>


			<h4 class="service-heading">변화를 두려워하지 않은 인재</h4>
			<p class="text-muted" style="text-align: center">
				저는 이전에 인생의 지도(Map)가 없이 살아왔었습니다. 그러다가 최근에 Walter Isaacson의 스티브 잡스 전기를
				읽고 내가 정말 하고 싶은 일이 무엇이고, <br>무엇에 관심이 있는지, 무엇을 해야 스스로 위대하다고 여길 수
				있을지에 대해 고민하기 시작했고 그 시작이 프로그래밍이라는 것을 깨닫게 되었습니다.<br>Ray Kurzweil이
				그의 저서 ≪특이점이 온다≫에서 서술한 것처럼 기술로 인해 현실 세계는 앞으로 완전히 새롭게 변화된 형태를 보이게 된다는
				논리에 공감하며 기계와 공존해야 하는 미래에 앞으로 누구나 프로그래밍 사고를 갖추지 않는다면 도태된다고 느꼈기에
				프로그래밍을 시작하게 되었습니다. 프로그래밍은 생각하는 방법을 깨닫게 해주고 머릿속의 아이디어를 실체화시켜주는 훌륭한
				도구입니다. 이를 통해 여러 가지 산재한 문제들을 해결하고 다양한 아이디어와 접목하여 좀 더 나은 세상을 만들어가고
				싶습니다.
			</p>

		</div>

	</section>

	<!-- Portfolio Grid -->
	<section class="bg-light page-section" id="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Portfolio</h2>
					<h3 class="section-subheading text-muted"><a class="section-subheading text-muted" href="https://github.com/zenaipur/mypor.git">GitHub Address</a></h3>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link"
						href="${contextPath}/board/listArticles.do">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/board.jpg" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>게시판 페이지</h4>
						<p class="text-muted">Notice Board</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link"
						href="${contextPath}/member/memberForm.do">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/sign_up.jpg" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>회원가입 페이지</h4>
						<p class="text-muted">Sign Up</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link"
						href="${contextPath}/member/listMembers.do">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/membership.jpg" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>회원관리 페이지</h4>
						<p class="text-muted">Membership</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" href="${contextPath}/member/loginForm.do">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/login.jpg" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>로그인,아웃 페이지</h4>
						<p class="text-muted">Sign In-Out</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal5">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/coming1.jpg" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>향후 추가예정</h4>
						<p class="text-muted">Coming soon</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 portfolio-item">
					<a class="portfolio-link" data-toggle="modal"
						href="#portfolioModal6">
						<div class="portfolio-hover">
							<div class="portfolio-hover-content">
								<i class="fas fa-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/coming2.jpg" alt="">
					</a>
					<div class="portfolio-caption">
						<h4>향후 추가예정</h4>
						<p class="text-muted">Coming soon</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- skills -->
	<section class="page-section" id="skills">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Skills</h2>
					<h3 class="section-subheading text-muted">Web-Developer</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<ul class="timeline">
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="img/about/1.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>Language</h4>

								</div>
								<div class="timeline-body">
									<p class="text-muted">
										Java<br>JSP<br>HTML<br>CSS<br>JavaScript
									</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="img/about/2.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>Framework</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">
										Spring<br>MyBatis<br>JUnit<br>Bootstrap
									</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="img/about/3.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>Datebase</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">Oracle DB</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted">
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="img/about/4.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>Build tools</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">
										Maven<br>Gradle
									</p>
								</div>
							</div>
						</li>
						<li>
							<div class="timeline-image">
								<img class="rounded-circle img-fluid" src="img/about/5.jpg"
									alt="">
							</div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4>Etc</h4>
								</div>
								<div class="timeline-body">
									<p class="text-muted">
										Apache Tomcat<br>GitHub<br>jQuery<br>Ajax<br>JSON<br>eclipse
									</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<!-- Contact -->
	<section class="page-section" id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Contact Us</h2>
					<h3 class="section-subheading text-muted">빠른 답변 드리겠습니다.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form id="contactForm" name="sentMessage" novalidate="novalidate">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" id="name" type="text"
										placeholder="Your Name *" required="required"
										data-validation-required-message="Please enter your name.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input class="form-control" id="email" type="email"
										placeholder="Your Email *" required="required"
										data-validation-required-message="Please enter your email address.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input class="form-control" id="phone" type="tel"
										placeholder="Your Phone *" required="required"
										data-validation-required-message="Please enter your phone number.">
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<textarea class="form-control" id="message"
										placeholder="Your Message *" required="required"
										data-validation-required-message="Please enter a message."></textarea>
									<p class="help-block text-danger"></p>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-lg-12 text-center">
								<div id="success"></div>
								<button id="sendMessageButton"
									class="btn btn-primary btn-xl text-uppercase" type="submit">Send
									Message</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- css include   -->
<jsp:include page="/WEB-INF/jsp/include/headcss.jsp"></jsp:include>
<style type="text/css">
.owl-prev, .owl-next {
	position: absolute;
	top: 0;
	height: 100%;
}

.owl-prev {
	left: -25px;
}

.owl-next {
	right: -25px;
}

/* removing blue outline from buttons */
.owl-theme .owl-nav [class*=owl-]:hover, .owl-theme .owl-nav [class*=owl-]:active, .owl-theme .owl-nav [class*=owl-]:focus {
	background-color: transparent;
	color: black;
	outline: none;
	border: none;
}

  
  
</style>
</head>

<body>
<jsp:include page="/WEB-INF/jsp/include/headerSec.jsp"></jsp:include>

	<!-- hero-section start -->
	<div class="hero-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12  col-md-12 col-sm-12 col-xs-12">
					<div class="hero-section-caption-withcolor">
						<div class="pinside40 underLineHover">
							<h1 class="gradient padding"><span class="p-0">HanaSafe와 함께<br>쉽고 안전하게!<br>해외 송금을 이용해보세요</span></h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- hero-section close -->
	
	<!-- service-section start -->
	<div class="space-medium">
		<div class="container">
			<div class="row">
				<div class=" col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="section-title text-center">
						오늘의 송금환율
					</div>
				</div>
			</div>
			<div class="row owl-carousel owl-theme ml-3">
			<c:forEach items="${ countryList }" var="country">
				<!-- service start -->
					<div class="service-block item">
						<div class="service-content">
							<div class="text-center pb-4" >
								<img style="display:inline; width: 30px;" src="https://www.countryflags.io/${ country['COUNTRY_CODE'] }/flat/64.png">
								<span class="flag-title align-middle">${ country['COUNTRY_NAME'] } ${ country['CURRENCY'] }</span>
							</div>	
							<div class="d-flex justify-content-between">
								<div>송금 보내실 때</div>
								<div style="color:black;">${ country['REMITTANCE'] }</div>
							</div>
							<div class="d-flex justify-content-between">
								<div>송금 받으실 때</div>
								<div style="color:black;"> ${ country['RECEIVE'] }</div>
							</div>
							<div class="d-flex justify-content-between">
								<div>현찰 사실 때</div>
								<div style="color:black;"> ${ country['CASHBUYRATE'] }</div>
							</div>
							<div class="d-flex justify-content-between">
								<div>현찰 파실 때</div>
								<div style="color:black;"> ${ country['CASHSELLRATE'] }</div>
							</div>
						</div>
					</div>
				<!-- service close -->
			</c:forEach>
			</div>
			<div class="row">
				<div class="col-md-12">
				<span class="float-right" style="font-size: 14px;">업데이트 : ${ updateTime }</span>
				</div>
			</div>
		</div>
	</div>
	<!-- service-section close -->
	
	
	
	
	
	
	<!-- about-section start -->
	<div class="space-medium about-section" style="background-color: #f8f8f8;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="section-title text-center">
						HanaSafe만의 기능
					</div>
				</div>
			</div>
			<div class="row">
				<!-- feature start -->
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="feature-block text-center">
						<div><img style="color: pink;" src="${ pageContext.request.contextPath }/resources/images/world_connection__two_color (1).svg"> </div>
						<h3 class="feature-title">간편한 정보 입력</h3>
						<p class="pl-3 pr-3">전세계 어디든 수취인에게 직접 입력을 요청하고<br>간편하게 입력,승인 심사를 완료하세요</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="feature-block text-center">
						<div><img src="${ pageContext.request.contextPath }/resources/images/question_two_color (1).svg"> </div>
							<h3 class="feature-title text-center">착오송금 신고</h3>
							<p class="pl-3 pr-3">해외송금 과정에서 생기는 착오 송금을<br>온라인으로 빠르게 신고하고 처리하세요</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="feature-block text-center">
						<div><img src="${ pageContext.request.contextPath }/resources/images/innovation_two_color.svg"> </div>
							<h3 class="feature-title text-center">승인내역 실시간 알림</h3>
							<p class="pl-3 pr-3">해외정보 심사, 해외송금 승인, 착오송금 처리<br> 모든 과정을 실시간으로 확인해보세요</p>
					</div>
				</div>
				<!-- feature close -->
			</div>
		</div>
	</div>
	<!-- about-section close -->
	
	
	<!-- Destination-section-start -->
	<div class="space-medium">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="section-title text-center">
						해외송금 보내는 방법
					</div>
				</div>
			</div>
			<div class="row">
			
			<!-- timeline 시작  -->
			<div class="col-lg-10 mx-auto">
			  <!-- Timeline -->
                <ul class="timeline">
                    <li class="timeline-item bg-white rounded ml-3 p-4 shadow">
                        <div class="timeline-arrow"></div>
                        <h2 class="h5 mb-0">1 단계</h2>
                        <p class="text-small mt-2 font-weight-light">
                        	로그인 / 회원가입
                        </p>
                    <li class="timeline-item bg-white rounded ml-3 p-4 shadow">
                        <div class="timeline-arrow"></div>
                        <h2 class="h5 mb-0">2 단계</h2>
                        <p class="text-small mt-2 font-weight-light">
                        	송금 정보 등록 / 송금 정보 직접등록 요청
                        </p>
                    </li>
                    <li class="timeline-item bg-white rounded ml-3 p-4 shadow">
                        <div class="timeline-arrow"></div>
                        <h2 class="h5 mb-0">3 단계</h2>
                        <p class="text-small mt-2 font-weight-light">
                        	송금 금액, 출금 계좌 선택 <br> 예약시 예약 송금 날짜 선택
                        </p>
                    </li>
                    <li class="timeline-item bg-white rounded ml-3 p-4 shadow">
                        <div class="timeline-arrow"></div>
                        <h2 class="h5 mb-0">4 단계</h2>
                        <p class="text-small mt-2 font-weight-light">
                        	송금 완료 승인 알람 확인하기
                        </p>
                    </li>
                </ul>
                <!-- End -->
                </div>
			<!-- timeline 끝  -->
			
			
			</div>
		</div>
	</div>
	<!-- Destination-section-close -->

	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
	<script>
		$(document).ready(function(){
		  $(".owl-carousel").owlCarousel({
			  center: true,
	            items:3,
	            loop:true,
	            margin:30,
	            nav:true,
	            navText: [
	                '<i class="fa fa-angle-left" aria-hidden="true"></i>',
	                '<i class="fa fa-angle-right" aria-hidden="true"></i>'
	            ],
	            dots:false,
	            autoplay: true,
	            slideTransition: 'linear',
	            autoplayTimeout: 6000,
	            autoplaySpeed: 6000,
	            autoplayHoverPause: true,
	            responsive:{
	                0:{
	                    items:1
	                },
	                600:{
	                    items:2
	                },
	                1000:{
	                    items:3
	                }
	            }
			  
		  });
		});
	</script>
</body>

</html>

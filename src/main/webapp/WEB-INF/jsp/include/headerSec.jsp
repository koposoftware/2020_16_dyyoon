<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- header-section start -->
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-12 hidden-sm hidden-xs">
                    <div class="social float-right">
                        <ul>
                        	<li><a href="#">KEB하나은행</a></li>
                        	<li>
	                        	<div class="dropdown show">
	                        	<a href="#" class="dropdown-toggle" id="dropdownLanguage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                        		Language</i>
	                        	</a>
	                        	<div class="dropdown-menu" aria-labelledby="dropdownLanguage">
								    <a class="dropdown-item" href="#"><i class="kr flag"></i>한국어</a><br>
								    <a class="dropdown-item" href="#"><i class="us flag"></i>English</a><br>
								    <a class="dropdown-item" href="#"><i class="cn flag"></i>中文</a><br>
								</div>
	                        	</div>
                        	</li>
                            <li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-wrapper">
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-2 col-sm-12 col-xs-12">
                        <a href="${ pageContext.request.contextPath }"><img src="${ pageContext.request.contextPath }/resources/images/hanasafe-logo.png" alt="Tour and Travel Agency - Responsive Website Template"></a>
                    </div>
                    <div class="col-lg-8 col-md-10 col-sm-12 col-xs-12">
                        <div class="navigation">
                            <div id="navigation">
                            
                                <ul>
                                    <li class="active"><button class="mt-1 ml-2 btn btn-light" onclick="window.location.href='${ pageContext.request.contextPath }/login'">로그인</button></li>
                                    <li class="active"><button class="mt-1 ml-2 btn btn-light">회원가입</button></li>
                                    <li class="active"><a href="#" title="Home">서비스 소개</a></li>
                                    <li class="has-sub"><a href="#" title="Tours">해외송금</a>
                                        <ul>
                                            <li><a href="#">송금정보 등록</a></li>
                                            <li><a href="#">해외송금 신청</a></li>
                                            <li><a href="#">해외송금 예약</a></li>
                                            <li><a href="#">송금내역 조회</a></li>
                                            <li><a href="#">외국환거래은행 지정</a></li>
                                            <li><a href="#">착오송금 신고</a></li>
                                        </ul>
                                    </li>
                                    <li class="active"><a href="#" title="Home">환율</a></li>
                                    <li class="active"><a href="#" title="Home">계좌조회</a></li>
                                    <li class="active"><a href="#" title="Home">고객센터</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header-section close -->
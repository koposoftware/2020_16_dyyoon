<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!-- header-section start -->
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-12 hidden-sm hidden-xs">
                    <div class="social float-right">
                        <ul>
                        	<li><a href="https://www.kebhana.com/">KEB하나은행</a></li>
                        	<li>
	                        	<div class="dropdown show">
		                        	<a href="#" class="dropdown-toggle" id="dropdownLanguage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                        		언어선택
		                        	</a>
		                        	<div class="dropdown-menu" aria-labelledby="dropdownLanguage">
									    <a class="dropdown-item" href="javascript:localeChange('ko')"><i class="kr flag"></i>한국어</a>
									    <a class="dropdown-item" href="javascript:localeChange('en')"><i class="us flag"></i>English</a>
									    <a class="dropdown-item" href="javascript:localeChange('zh')"><i class="cn flag"></i>中文</a>
									</div>
	                        	</div>
                        	</li>
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
                        <a href="${ pageContext.request.contextPath }/"><img src="${ pageContext.request.contextPath }/resources/images/hanasafe-logo.png"></a>
                    </div>
                   
                    <div class="col-lg-8 col-md-10 col-sm-12 col-xs-12">
                        <div class="navigation d-flex justify-content-end navForBtn">
                        <div>
                        <c:choose>
                        <c:when test="${ empty loginVO }">
	                      	<button class="btn btn-info mt-2" onclick="window.location.href='${ pageContext.request.contextPath }/login'">로그인</button>
	                      	<button class="btn btn-light mt-2 mr-2">회원가입</button>
                        </c:when>
                        <c:otherwise>
	                      	<button class="btn btn-link mt-2 shadow-none text-secondary"><span class="text-info">${ loginVO.name }</span>님 어서오세요!</button>
	                      	
	                      	<button class="btn btn-info mt-2" onclick="window.location.href='${ pageContext.request.contextPath }/logout'">로그아웃</button>
	                      	
                        </c:otherwise>
                        </c:choose>
                        </div>	
                            <div id="navigation">
                            
                                <ul>
                                    <!-- <li class="active"><a href="#" title="Home">서비스 소개</a></li> -->
                                    <li class="has-sub ml-2"><a href="#" title="Tours">해외송금</a>
                                        <ul>
                                            <li><a href="${ pageContext.request.contextPath }/remInfo">송금정보 조회/등록</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/remittance/list">해외송금 전체 조회</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/remittance">해외송금 보내기</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/remittance/reserve">해외송금 예약하기</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/remittance/mistake">착오송금 조회/신고</a></li>
                                        </ul>
                                    </li>
                                    <li class="active"><a href="${ pageContext.request.contextPath }/exchange" title="Home">환율</a></li>
                                    <li class="active"><a href="${ pageContext.request.contextPath }/account" title="Home">계좌조회</a></li>
                                    <%-- <li class="active"><a href="${ pageContext.request.contextPath }/service" title="Home">고객센터</a></li> --%>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
		        
    </div>
   
   
   
   
   
    <!-- header-section close -->

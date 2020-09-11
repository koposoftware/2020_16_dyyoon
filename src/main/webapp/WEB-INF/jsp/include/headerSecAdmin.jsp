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
                        	<li><a href="#">KEB하나은행</a></li>
                        	<li>
	                        	<div class="dropdown show">
		                        	<a href="#" class="dropdown-toggle" id="dropdownLanguage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		                        		Language
		                        	</a>
		                        	<div class="dropdown-menu" aria-labelledby="dropdownLanguage">
									    <a class="dropdown-item" href="#"><i class="kr flag"></i>한국어</a>
									    <a class="dropdown-item" href="#"><i class="us flag"></i>English</a>
									    <a class="dropdown-item" href="#"><i class="cn flag"></i>中文</a>
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
        <div class="header shadow">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                        <a href="${ pageContext.request.contextPath }"><img src="${ pageContext.request.contextPath }/resources/images/hanasafe-logo.png"></a>
                    </div>
                   
                    <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                        <div class="navigation d-flex justify-content-end navForBtn">
	                      	<button class="btn btn-link shadow-none text-secondary" data-badge="6">
		                      	<span class="text-info">${ loginVO.name }</span>님 어서오세요
		                      	 <span class="badge badge-danger badge-pill">4</span>
	                      	</button>
	                      	<!-- 
	                      	<button class="btn btn-link shadow-none text-secondary pl-0"> 
	                      		<span class="material-icons align-middle">notifications</span>
	                      	</button>
	                      	 -->
	                      	<button class="btn btn-info" onclick="window.location.href='${ pageContext.request.contextPath }/logout'">로그아웃</button>

                            <div id="navigation">
                                <ul>
                                    <li class="has-sub"><a href="#" title="Tours">해외송금 관리</a>
                                        <ul>
                                            <li><a href="${ pageContext.request.contextPath }/remInfo">송금정보 조회</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/remInfo/register">송금정보 등록</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/remittance">해외송금 신청</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/remittance/reserve">해외송금 예약</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/remittance/list">송금내역 조회</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/remittance/mistake">착오송금 신고</a></li>
                                        </ul>
                                    </li>
                                    <li class="active"><a href="#" title="Home">사용자 관리</a></li>
                                    <li class="active"><a href="#" title="Home">고객센터 관리</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header-section close -->
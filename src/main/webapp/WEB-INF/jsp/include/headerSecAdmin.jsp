<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!-- header-section start -->
    <div class="header-wrapper">
        <div class="header shadow">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                        <a href="${ pageContext.request.contextPath }/admin"><img src="${ pageContext.request.contextPath }/resources/images/hanasafe-logo.png"></a>
                    </div>
                   
                    <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
                        <div class="navigation d-flex justify-content-end navForBtn">
                        <div class="pt-2">
	                      	<button class="btn btn-link shadow-none text-secondary" data-badge="6">
		                      	<span class="text-info"><%-- ${ loginVO.name } --%>관리자</span>님 어서오세요
		                      	<!--  <span class="badge badge-danger badge-pill">4</span> -->
	                      	</button>
	                      	<!-- 
	                      	<button class="btn btn-link shadow-none text-secondary pl-0"> 
	                      		<span class="material-icons align-middle">notifications</span>
	                      	</button>
	                      	 -->
	                      	<button class="btn btn-info" onclick="window.location.href='${ pageContext.request.contextPath }/logout'">로그아웃</button>
	                      </div>

                            <div id="navigation">
                                <ul>
                                    <li class="has-sub"><a href="#" title="Tours">해외송금 관리</a>
                                        <ul>
                                            <li><a href="${ pageContext.request.contextPath }/admin">오늘의 해외송금</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/admin/remInfo">송금정보 승인</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/admin/remittance">보내는 해외송금 승인</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/admin/recieved">받은 해외송금 승인</a></li>
                                            <li><a href="${ pageContext.request.contextPath }/admin/mistaken">착오송금 처리</a></li>
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
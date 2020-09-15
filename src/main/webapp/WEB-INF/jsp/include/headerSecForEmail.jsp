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
									    <a class="dropdown-item" href="${ pageContext.request.contextPath }/change?locale=ko"><i class="kr flag"></i>한국어</a>
									    <a class="dropdown-item" href="${ pageContext.request.contextPath }/change?locale=en"><i class="us flag"></i>English</a>
									    <a class="dropdown-item" href="${ pageContext.request.contextPath }/change?locale=zh"><i class="cn flag"></i>中文</a>
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
                        <a href="${ pageContext.request.contextPath }"><img src="${ pageContext.request.contextPath }/resources/images/hanasafe-logo.png"></a>
                    </div>
                   
                    <div class="col-lg-8 col-md-10 col-sm-12 col-xs-12">
                        <div class="navigation d-flex justify-content-end navForBtn">
                        	<button class="btn btn-link mt-2 mr-2">하나은행 바로가기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header-section close -->
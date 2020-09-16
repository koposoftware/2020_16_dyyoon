<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/include/headcss.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/include/headerSecForEmail.jsp"></jsp:include>
	<!-- page-header-start -->
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
					<div class="page-section">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- page-header-close -->

	<!-- 페이지 시작 -->
		<div class="container allAccount-con pt-1 pb-5">
		<div class="row d-flex justify-content-center h-75 align-items-center">
			
			<div class="col-md-8 text-center">


			<br>
			<div class="d-flex">
				<div class="font-weight-bold">
					<i class="material-icons md-18 align-middle text-info" >person</i>
					<span class="align-middle"><spring:message code="authID" /></span>
				</div>
			</div>
			<div class="pt-3">
				<div class="text-left"><spring:message code="authIDTitle" /></div>
				
				
				<form method="post" action="${ pageContext.request.contextPath }/remInfo/ask">
				<div class="input-group mb-3 mt-2">
				  <input type="text" name="id" class="form-control" placeholder="<spring:message code="authPlaceHolder" />">
				  <div class="input-group-append">
				    <button class="btn btn-info" type="submit"><spring:message code="authIDBtn" /></button>
				  </div>
				</div>
				</form>
				
			</div>
			
			
			
			
			
			
			</div>
		</div>
	</div>
	
	<!-- 페이지 끝 -->
	
	
	
<jsp:include page="/WEB-INF/jsp/include/footerSecForEmail.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
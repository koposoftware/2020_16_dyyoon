<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/include/headcss.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/include/headerSec.jsp"></jsp:include>
	<!-- page-header-start -->
	<div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
                    <div class="page-section">
                        <h1 class="page-title ">송금정보</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<div class="page-breadcrumb">
		<div class="container">
			<div class="row">
				<div class=" col-lg-12 col-md-12 col-sm-12 col-xs-12 d-flex justify-content-end navForBtn">
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>송금정보</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<!-- page-header-close -->
	
	
	<!-- remList page start -->
	
	<div class="container allAccount-con pt-3 pb-3">
		<div class="row">
			<!-- side menu col-md-3   -->
			<jsp:include page="/WEB-INF/jsp/include/remSideMenu.jsp"></jsp:include>
			
			<div class="col-md-9">
			
			<table class="table table-sm">
				<tr>
					<th>조회기간</th>
					<td>
						<input type="date"> ~
						<input type="date">
					</td>
				</tr>
			</table>
			
			<div class="text-center">
				<button class="btn btn-info">조회하기</button>
			</div>
			
			
			<table class="table table-sm mt-3">
				<tr class="text-center">
					<th>착오송금번호</th>
					<th>해외송금 상대계좌</th>
					<th>본인계좌</th>
					<th>송금액</th>
					<th>상태</th>
				</tr>
			</table>
			<div class="text-center">
				<button class="btn btn-info" onclick="window.location.href='${ pageContext.request.contextPath}/remittance/mistake/write'">착오송금 신청하기</button>
			</div>
			
			</div>
		</div>
	</div>
	<!-- remList page close -->
	
	
	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
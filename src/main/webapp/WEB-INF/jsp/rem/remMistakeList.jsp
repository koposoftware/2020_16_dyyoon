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
              <!--   <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12"> -->
                <div class="col-lg-12">
                    <div class="page-section">
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- page-header-close -->
	
	
	<!-- remList page start -->
	
	<div class="container allAccount-con pb-3">
	
		<div class="row" style="color: #c6c6c6">
			<div class="col-md-12 d-flex justify-content-end whereThisPageIs">
				<span class="material-icons md-12 lineHeight mr-1">home</span>
				<div>Home</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>해외송금</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>착오송금 조회/신청</div>
			</div>	
		</div>
		
		
		<div class="row pt-2">
			<!-- side menu col-md-3   -->
			<jsp:include page="/WEB-INF/jsp/include/remSideMenu.jsp"></jsp:include>
			
			<div class="col-md-9">
			
			<div class="font-weight-bold text-body mb-2" style="font-size: 25px;">
				<i class="material-icons align-middle">error</i>
				<span class="align-middle">착오송금 조회/신고</span>
			</div>
			<!-- 
			<table class="table table-sm">
				<tr>
					<th>조회기간</th>
					<td>
						<div class="mb-2">
							<button class="btn btn-light border ">1주일</button>
							<button class="btn btn-light border ">1개월</button>
							<button class="btn btn-light border ">3개월</button>
						</div>
						<div class="input-group">
							<input type="date" class="form-control w-25">
							<div class="pl-3 pr-3 align-middle dateBetween">~</div>
							<input type="date" class="form-control w-25">
						</div>
						
					</td>
				</tr>
			</table>
			
			<div class="text-center">
				<button class="btn btn-outline-info">조회하기</button>
			</div>
			 -->
			
			<table class="table table-sm mt-3">
				<tr class="text-center">
					<th>신고일자</th>
					<th>해외송금 상대계좌</th>
					<th>본인계좌</th>
					<th>송금액</th>
					<th>상태</th>
				</tr>
			</table>
			<div class="text-center">
				<button class="btn btn-outline-info" onclick="window.location.href='${ pageContext.request.contextPath}/remittance/mistake/write'">착오송금 신청하기</button>
			</div>
			
			</div>
		</div>
	</div>
	<!-- remList page close -->
	
	
	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
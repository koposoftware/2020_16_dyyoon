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
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- page-header-close -->


	<!-- remInfo page start -->
	
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
				<i class="material-icons align-middle">how_to_reg</i>
				<span class="align-middle">받는 분 등록</span>
			</div>
			
			<div class="d-flex">
					<div class="font-weight-bold"><i class="material-icons md-18 align-middle text-info" >person</i><span class="align-middle">송금 정보 등록이 완료되었습니다</span></div>
				</div>
			
			<table class="table">
				<tr>
					<th colspan="2">영문이름</th>
					<td>${ remInfoDetail.name }</td>
				</tr>
				<tr>
					<th colspan="2">전화번호</th>
					<td>${ remInfoDetail.phone }</td>
				</tr>
				<tr>
					<th colspan="2">이메일</th>
					<td>${ remInfoDetail.email }</td>
				</tr>
				<tr>
					<th rowspan="3">영문주소</th>
					<th>국가</th>
					<td>${ remInfoDetail.nation }</td>
				</tr>
				<tr>
					<th >주소</th>
					<td>${ remInfoDetail.addr }</td>
				</tr>
				<tr>
					<th>세부주소</th>
					<td>${ remInfoDetail.addrDetail }</td>
				</tr>
				<tr>
					<th colspan="2">통화</th>
					<td>${ remInfoDetail.currency }</td>
				</tr>
				<tr>
					<th colspan="2">은행명</th>
					<td>${ remInfoDetail.bankName }</td>
				</tr>
				<tr>
					<th colspan="2">계좌번호</th>
					<td>${ remInfoDetail.accNo }</td>
				</tr>
				<tr>
					<th colspan="2">은행코드</th>
					<td>${ remInfoDetail.bankCode }</td>
				</tr>
				<tr>
					<th rowspan="3">은행주소</th>
					<th >은행국가</th>
					<td>${ remInfoDetail.bankNation }</td>
				</tr>
				<tr>
					<th>은행주소</th>
					<td>${ remInfoDetail.bankAddr }</td>
				</tr>
				<tr>
					<th>세부주소</th>
					<td>${ remInfoDetail.bankAddrDetail }</td>
				</tr>
				<tr>
					<th colspan="2">직원전달사항</th>
					<td>${ remInfoDetail.myDesc }</td>
				</tr>
			</table>
			<div class="text-center mt-2 mb-2">
			<button class="btn btn-info" onclick="window.location.href='${ pageContext.request.contextPath }/remInfo'">목록</button>
			<button class="btn btn-light" onclick="window.location.href='${ pageContext.request.contextPath }/remInfo/register'">재등록</button>
			</div>
			
			</div>
		</div>
	</div>
	<!-- remInfo page close -->
	
	
	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
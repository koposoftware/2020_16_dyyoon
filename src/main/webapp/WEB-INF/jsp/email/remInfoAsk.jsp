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
						<h1 class="page-title">송금 정보 입력</h1>
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

				<div class="d-flex">
					<div class="font-weight-bold"><i class="material-icons md-18 align-middle text-info" >person</i><span class="align-middle"> 성공적으로 등록되었습니다</span></div>
				</div>
				<table class="table table-sm ">
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
				

			</div>
		</div>
	</div>
	
	<!-- 페이지 끝 -->
	
	
	
<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
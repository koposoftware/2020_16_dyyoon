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
			
			<div class="col-md-10 text-center">

				<div class="d-flex mt-2 mb-2">
					<div class="font-weight-bold">
					<i class="material-icons md-18 align-middle text-info" >person</i>
					<span class="align-middle"><spring:message code="registerTitle"/> </span>
					</div> 
				</div>
				<table class="table mt-2 mb-2">
				<tr>
					<th colspan="2"><spring:message code="formEngName" /> </th>
					<td>${ remInfoDetail.name }</td>
				</tr>
				<tr>
					<th colspan="2"><spring:message code="formPhone" /></th>
					<td>${ remInfoDetail.phone }</td>
				</tr>
				<tr>
					<th colspan="2"><spring:message code="formEmail" /></th>
					<td>${ remInfoDetail.email }</td>
				</tr>
				<tr>
					<th rowspan="3"><spring:message code="formEngAddr" /></th>
					<th><spring:message code="formNation" /> </th>
					<td>${ remInfoDetail.nation }</td>
				</tr>
				<tr>
					<th ><spring:message code="formAddr1" /></th>
					<td>${ remInfoDetail.addr }</td>
				</tr>
				<tr>
					<th><spring:message code="formAddr2" /></th>
					<td>${ remInfoDetail.addrDetail }</td>
				</tr>
				<tr>
					<th colspan="2"><spring:message code="formCurrency" /></th>
					<td>${ remInfoDetail.currency }</td>
				</tr>
				<tr>
					<th colspan="2"><spring:message code="formBankName" /></th>
					<td>${ remInfoDetail.bankName }</td>
				</tr>
				<tr>
					<th colspan="2"><spring:message code="formAccNo" /></th>
					<td>${ remInfoDetail.accNo }</td>
				</tr>
				<tr>
					<th colspan="2"><spring:message code="formBankCode" /></th>
					<td>${ remInfoDetail.bankCode }</td>
				</tr>
				<tr>
					<th rowspan="3"><spring:message code="formBankAddr" /></th>
					<th ><spring:message code="formBankNation" /></th>
					<td>${ remInfoDetail.bankNation }</td>
				</tr>
				<tr>
					<th><spring:message code="formBankAddr1" /></th>
					<td>${ remInfoDetail.bankAddr }</td>
				</tr>
				<tr>
					<th><spring:message code="formBankAddr2" /></th>
					<td>${ remInfoDetail.bankAddrDetail }</td>
				</tr>
				<tr>
					<th colspan="2"><spring:message code="formForward" /></th>
					<td>${ remInfoDetail.myDesc }</td>
				</tr>
			</table>
				

			</div>
		</div>
	</div>
	
	<!-- 페이지 끝 -->
	
	
	
<jsp:include page="/WEB-INF/jsp/include/footerSecForEmail.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
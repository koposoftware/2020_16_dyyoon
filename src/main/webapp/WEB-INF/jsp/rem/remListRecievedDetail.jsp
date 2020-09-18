<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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



	<!-- remRegisterConfirm page start -->

	<div class="container allAccount-con pb-3">
	
		<div class="row" style="color: #c6c6c6">
			<div class="col-md-12 d-flex justify-content-end whereThisPageIs">
				<span class="material-icons md-12 lineHeight mr-1">home</span>
				<div>Home</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>해외송금</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>해외송금 보내기</div>
			</div>	
		</div>
		
		
		<div class="row pt-2">
			<!-- side menu col-md-3   -->
			<jsp:include page="/WEB-INF/jsp/include/remSideMenu.jsp"></jsp:include>
			
			<div class="col-md-9">
			
			<div class="font-weight-bold text-body mb-2" style="font-size: 25px;">
				<i class="material-icons align-middle">list</i>
				<span class="align-middle">받은 해외송금 상세</span>
			</div>

				<div class="font-weight-bold">
					<i class="material-icons md-18 align-middle text-info">monetization_on</i>
					<span class="align-middle">보낸 분(송금인) 정보</span>
				</div>

				<table class="table">
					<tr >
						<th  colspan="2">영업점 도착 일자</th>
						<td>${ recievedDetail.recievedDate }</td>
					</tr>
					<tr>
						<th colspan="2">영문이름</th>
						<td>${ recievedDetail.fromName }</td>
					</tr>
					<tr>
						<th colspan="2">전화번호</th>
						<td>${ recievedDetail.fromPhone }</td>
					</tr>
					<tr>
						<th colspan="2">이메일</th>
						<td>${ recievedDetail.fromEmail }</td>
					</tr>
					<tr>
						<th rowspan="3">영문주소</th>
						<th>국가</th>
						<td>${ recievedDetail.fromNation }</td>
					</tr>
					<tr>
						<th >주소</th>
						<td>${ recievedDetail.fromAddr }</td>
					</tr>
					<tr>
						<th>세부주소</th>
						<td>${ recievedDetail.fromAddrDetail }</td>
					</tr>
					<tr>
						<th colspan="2">송금 금액</th>
						<td>${ recievedDetail.currency }  <fmt:formatNumber type="number" pattern="#,##0" value ="${ recievedDetail.amount }" /></td>
					</tr>
					<tr>
						<th colspan="2">은행명</th>
						<td>${ recievedDetail.fromBankCode }</td>
					</tr>
					<tr>
						<th colspan="2">계좌번호</th>
						<td>${ recievedDetail.fromAccNo }</td>
					</tr>
					<tr>
						<th colspan="2">은행코드</th>
						<td>${ recievedDetail.fromBankCode }</td>
					</tr>
					<tr>
						<th rowspan="3">은행주소</th>
						<th >은행국가</th>
						<td>${ recievedDetail.fromBankCode }</td>
					</tr>
					<tr>
						<th>은행주소</th>
						<td>${ recievedDetail.fromBankCode }</td>
					</tr>
					<tr>
						<th>세부주소</th>
						<td>${ recievedDetail.fromBankCode }</td>
					</tr>
				</table>



				<div class="font-weight-bold">
					<i class="material-icons md-18 align-middle text-info">person</i><span
						class="align-middle">받는 분(수취인) 정보</span>
				</div>
				<table class="table ">
					<tr>
						<th colspan="2">영문이름</th>
						<td>${ recievedDetail.getName }</td>
					</tr>
					<tr>
						<th colspan="2">전화번호</th>
						<td>${ recievedDetail.getPhone }</td>
					</tr>
					<tr>
						<th colspan="2">이메일</th>
						<td>${ recievedDetail.getEmail }</td>
					</tr>
					<tr>
						<th rowspan="3">영문주소</th>
						<th>국가</th>
						<td>${ recievedDetail.getNation }</td>
					</tr>
					<tr>
						<th >주소</th>
						<td>${ recievedDetail.getAddr }</td>
					</tr>
					<tr>
						<th>세부주소</th>
						<td>${ recievedDetail.getAddrDetail }</td>
					</tr>
					<tr>
						<th colspan="2">계좌번호</th>
						<td>
							${ recievedDetail.fromAccNo }
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<!-- remRegisterConfirm page close -->

	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
	


</body>
</html>
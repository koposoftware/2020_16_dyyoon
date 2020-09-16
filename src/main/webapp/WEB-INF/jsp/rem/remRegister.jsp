<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<i class="material-icons align-middle">send</i>
				<span class="align-middle">해외송금 보내기</span>
			</div>

				<div class="bg-light font-weight-bold p-3 mb-2 rounded"><span class="material-icons align-middle">check_circle</span> <span class="align-middle">해외송금 신청이 완료되었습니다</span></div>
				<div class="text-center">
					<button class="btn btn-info" type="button" data-toggle="collapse" data-target="#remRegisterCollapse" aria-expanded="false" aria-controls="collapseExample">
						상세내역보기
					</button>
					<button class="btn btn-light" onclick="window.location.href='${ pageContext.request.contextPath }/remittance'">계속송금</button>
				</div>
				
				
				
				
				<div class="collapse" id="remRegisterCollapse">
				<div class="font-weight-bold">
					<i class="material-icons md-18 align-middle text-info">monetization_on</i>
					<span class="align-middle">송금정보</span>
				</div>

				<table class="table ">
					<tr>
						<th>보내는 분</th>
						<td>${ loginVO.engName }</td>
					</tr>
					<tr>
						<th>송금사유</th>
						<td>${ remittanceVO.reason }</td>
					</tr>
					<tr>
						<th>받는 분</th>
						<td>${ remInfoDetail.name } ( ${ remInfoDetail.bankName }, ${ remInfoDetail.accNo }	)</td>
					</tr>
					<tr>
						<th>수수료 부담자</th>
						<td>
						<c:choose>
							<c:when test="${ remittanceVO.chargeCover eq 'RM'}">
							보내는 분
							</c:when>
							<c:when test="${ remittanceVO.chargeCover eq 'RC'}">
							받는분(송금수수료 제외)
							</c:when>
							<c:otherwise>
							받는분(송금수수료 포함)
							</c:otherwise>
						</c:choose>
						</td>
					</tr>
				</table>
				<br>

				<div class="font-weight-bold">
					<i class="material-icons md-18 align-middle text-info">monetization_on</i><span
						class="align-middle">송금액 및 계좌 정보</span>
				</div>
				<table class="table ">
					<tr>
						<th>계좌 유형 선택</th>
						<td>${ remittanceVO.accType }</td>
					</tr>
					<tr>
						<th>송금계좌</th>
						<td>${ remittanceVO.accNo }</td>
					</tr>
					<tr>
						<th>송금 금액</th>
						<td>
							<div>KRW ${ remittanceVO.amount }</div>

							<div class="text-center">
								<span class="material-icons">cached</span>
							</div>
							<div>${ remInfoDetail.currency } ${ remittanceVO.amount }</div>
							<div>
								적용환율 : <span class="text-danger">${ remittanceVO.exchangeRate }</span>
							</div>
						</td>
					</tr>
					<tr>
						<th>수수료출금계좌</th>
						<td>${ remittanceVO.chargeAccNo }</td>
					</tr>
					<tr>
						<th>총출금금액(원화)</th>
						<td id="krwTotal"></td>
					</tr>
					<tr>
						<th>총출금금액(외화)</th>
						<td id="otherTotal"></td>
					</tr>
				</table>





				<div class="font-weight-bold">
					<i class="material-icons md-18 align-middle text-info">person</i><span
						class="align-middle">수신인 정보</span>
				</div>
				<table class="table ">
					<tr>
						<th colspan="2">영문이름</th>
						<td>${ loginVO.engName }</td>
					</tr>
					<tr>
						<th colspan="2">전화번호</th>
						<td>${ loginVO.phone }</td>
					</tr>
					<tr>
						<th colspan="2">이메일</th>
						<td>${ loginVO.email }</td>
					</tr>
					<tr>
						<th rowspan="2">영문주소</th>
						<th>주소</th>
						<td>${ loginVO.addr }</td>
					</tr>
					<tr>
						<th>세부주소</th>
						<td>${ loginVO.addrDetail }</td>
					</tr>
				</table>

				<jsp:include page="/WEB-INF/jsp/rem/remInfoDetail.jsp"></jsp:include>

				</div>
			</div>
		</div>
	</div>
	<!-- remRegisterConfirm page close -->

	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
	


</body>
</html>
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
				<i class="material-icons align-middle">list</i>
				<span class="align-middle">보낸 해외송금 상세</span>
			</div>
			
			<!-- 송금 진행상황 추적 -->
			<div>
				<div class="md-stepper-horizontal orange">
				    <div class="md-step step-rm">
				      <div class="md-step-circle"><span>1</span></div>
				      <div class="md-step-title">수신은행</div>
				      <div class="md-step-optional"></div>
				      <div class="md-step-bar-left"></div>
				      <div class="md-step-bar-right"></div>
				    </div>
				    <div class="md-step step-in">
				      <div class="md-step-circle"><span>2</span></div>
				      <div class="md-step-title">중계은행</div>
				      <div class="md-step-bar-left"></div>
				      <div class="md-step-bar-right"></div>
				    </div>
				    <div class="md-step step-rc">
				      <div class="md-step-circle"><span>3</span></div>
				      <div class="md-step-title">수취은행</div>
				      <div class="md-step-bar-left"></div>
				      <div class="md-step-bar-right"></div>
				    </div>
				    <!-- <div class="md-step">
				      <div class="md-step-circle"><span>4</span></div>
				      <div class="md-step-title">Review</div>
				      <div class="md-step-bar-left"></div>
				      <div class="md-step-bar-right"></div>
				    </div> -->
				  </div>
			</div>
			<!-- 송금 진행상황 추적 끝 -->

				<div class="font-weight-bold">
					<i class="material-icons md-18 align-middle text-info">monetization_on</i>
					<span class="align-middle">송금정보</span>
				</div>

				<table class="table ">
					<tr>
						<th>송금 일자</th>
						<td>${ remittanceVO.remDate }</td>
					</tr>
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
							<c:choose>
								<c:when test="${ remittanceVO.accType eq '원화계좌출금' }">
									<div>KRW ${ remittanceVO.amount }</div>
		
									<div class="text-center">
										<span class="material-icons">cached</span>
									</div>
									<div>${ remInfoDetail.currency } ${ otherAmount }</div>
									<div>
										적용환율 : <span class="text-danger">${ remittanceVO.exchangeRate }</span>
									</div>
								</c:when>
								<c:otherwise>
									<div>${ remInfoDetail.currency } ${ remittanceVO.amount }</div>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<th>수수료출금계좌</th>
						<td>${ remittanceVO.chargeAccNo }</td>
					</tr>
					<tr>
						<th>총출금금액(원화)</th>
						<td id="krwTotal">
							<c:choose>
								<c:when test="${ remittanceVO.accType eq '원화계좌출금' }">
									${ remittanceVO.amount + remittanceVO.remCharge + remittanceVO.interCharge + remittanceVO.cableCharge }
								</c:when>
								<c:otherwise>
									${ remittanceVO.remCharge + remittanceVO.interCharge + remittanceVO.cableCharge }
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<th style="width:240px;">총출금금액(외화)</th>
						<td id="otherTotal">
							<c:choose>
								<c:when test="${ remittanceVO.accType eq '원화계좌출금' }">
									0.00
								</c:when>
								<c:otherwise>
									${ remittanceVO.amount }
								</c:otherwise>
							</c:choose>	
						</td>
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
	<!-- remRegisterConfirm page close -->

	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
<script>
	$(document).ready(function(){
		var test = '${ remittanceVO.status }'
		
		/* RS(예약) / RM(수신은행) IN(중계은행) RC(수취은행) / ER(승인거절) CA(취소)  
			class - active, done 추가하기*/
		if(test == 'RM'){
			$('.step-rm').addClass('active done')
		}else if (test == 'IN') {
			$('.step-rm').addClass('active done')
			$('.step-in').addClass('active done')
		}else if (test == 'RC'){
			$('.step-rm').addClass('active done')
			$('.step-in').addClass('active done')
			$('.step-rc').addClass('active done')
		}
	})
</script>	
</body>
</html>
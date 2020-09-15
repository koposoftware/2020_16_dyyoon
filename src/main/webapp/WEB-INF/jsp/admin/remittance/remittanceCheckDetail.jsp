<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- css include   -->
<jsp:include page="/WEB-INF/jsp/include/headcssAdmin.jsp"></jsp:include>
</head>

<body>
<jsp:include page="/WEB-INF/jsp/include/headerSecAdmin.jsp"></jsp:include>

<div class="container pb-3">
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
		<div class="col-md-12">
			<div class="card shadow mb-4">
	            <div class="card-header py-3">
	              <h6 class="m-0 font-weight-bold text-success">해외송금 승인</h6>
	            </div>
	            <div class="card-body">
	              <div class="table-responsive">
	                <table class="table table-bordered table-th-success">
							<tr>
								<th>고객명</th>
								<td colspan="3">${ member.engName }</td>
							</tr>
							<tr>
								<th>주소</th>
								<td colspan="3">${ member.addr }, ${ member.addrDetail }</td>
							</tr>
							<tr>
								<th>송금사유</th>
								<td colspan="3">${ remittance.reason }</td>
							</tr>
							<tr>
								<th>송금통화/금액</th>
								<td>
								<c:choose>
									<c:when test="${ remittance.accType eq '원화계좌출금' }">
										KRW
									</c:when>
									<c:otherwise>
										${ remInfoDetail.currency }
									</c:otherwise>
								</c:choose>
									${ remittance.amount }
								</td>
								<th>적용환율</th>
								<td>${ remittance.exchangeRate }</td>
							</tr>
							<tr>
								<th>출금 계좌</th>
								<td colspan="3">${ remittance.accNo }</td>
							</tr>
							<tr>
								<th style="width: 240px;">수수료출금 계좌</th>
								<td>${ remittance.chargeAccNo }</td>
								<th>수수료 총금액</th>
								<td>${ remittance.remCharge + remittance.interCharge + remittance.cableCharge }</td>
							</tr>
							<tr>
								<th>원화출금액 합계</th>
								<td colspan="3">
								<c:choose>
									<c:when test="${ remittance.accType eq '원화계좌출금' }">
										${ remittance.amount + remittance.remCharge + remittance.interCharge + remittance.cableCharge }
									</c:when>
									<c:otherwise>
										${ remittance.remCharge + remittance.interCharge + remittance.cableCharge }
									</c:otherwise>
								</c:choose>
								</td>
							</tr>
							<tr>
								<th>외화출금액 합계</th>
								<td colspan="3">
								<c:choose>
									<c:when test="${ remittance.accType eq '원화계좌출금' }">
										0.00
									</c:when>
									<c:otherwise>
										${ remittance.amount }
									</c:otherwise>
								</c:choose>	
								</td>
							</tr>
						</table>
						
						
						<table class="table table-bordered table-th-success">
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
						</table>
						
						
						
						<form action="${ pageContext.request.contextPath }/admin/remittance" method="post">
						<input type="hidden" name="remNo" value="${ remittance.remNo }">
						<table class="table table-bordered table-th-success">
							<tr>
								<th style="width: 240px;">승인 결과</th>
								<td>
									<select class="form-control" name="status">
										<option>선택하세요</option>
										<option value="IN">승인</option>
										<option value="ER">비승인</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>승인 결과  - 사유</th>
								<td><input type="text" class="form-control" name="statusDesc"></td>
							</tr>
						</table>
						<div class="text-center">
							<button class="btn btn-light" type="button" onclick="window.location.href='${ pageContext.request.contextPath}/admin/remInfo'">목록</button>
							<button class="btn btn-success" type="submit">승인심사 완료</button>
						</div>
						</form>
	                </div>
	               </div>
	           </div>
			             
				
			</div>
	</div>
</div>




<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjsAdmin.jsp"></jsp:include>
</body>
</html>
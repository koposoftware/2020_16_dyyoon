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
	              <h6 class="m-0 font-weight-bold text-warning">착오송금</h6>
	            </div>
	            <div class="card-body">
	              <div class="table-responsive">
	                <table class="table table-bordered table-th-warning">
	                	<tr>
	                		<th colspan="2">착오송금 신고 일자</th>
	                		<td>${ mistaken.regDate }</td>
	                	</tr>
	                	<tr>
	                		<th colspan="2">착오송금 신고인 ID</th>
	                		<td>${ account.id }</td>
	                	</tr>
	                	<tr>
	                		<th rowspan="2">착오송금 사유</th>
	                		<th>사유 선택</th>
	                		<td>${ mistaken.reason }</td>
	                	</tr>
	                	<tr>
	                		<th>사유 직접입력</th>
	                		<td>${ mistaken.reasonDesc }</td>
	                	</tr>
					</table>
						
						
					<table class="table table-bordered table-th-warning">
						<tr>
							<th colspan="2">해외송금 일자</th>
							<td>${ remittance.remDate }</td>
						</tr>
						<tr>
							<th colspan="2">송금 계좌 (보낸 계좌)</th>
							<td>${ remittance.accNo }</td>
						</tr>
						<tr>
							<th rowspan="2">송금 금액</th>
							<th>통화</th>
							<td>${ account.currency }</td>
						</tr>
						<tr>
							<th>금액</th>
							<td>${ remittance.amount }</td>
						</tr>
						<tr>
							<th rowspan="3">수취인 정보</th>
							<th>이름</th>
							<td>${ remInfo.name }</td>
						</tr>
						<tr>
							<th>은행명</th>
							<td>${ remInfo.bankName }</td>
						</tr>
						<tr>
							<th>계좌번호</th>
							<td>${ remInfo.accNo }</td>
						</tr>
						<tr>
							<th colspan="2">송금 상태</th>
							<td >
							<span class="font-weight-bold text-danger">
							<c:choose>
								<c:when test="${ remittance.status eq 'RM' }">
									신청중
								</c:when>
								<c:when test="${ remittance.status eq 'IN' }">
									중계은행 도착
								</c:when>
								<c:when test="${ remittance.status eq 'RC' }">
									수취은행 도착
								</c:when>
							</c:choose>
							</span>
							</td>
						</tr>
					</table>
					<div class="text-danger">**  '신청중'일 경우 취소가 가능하나 '중계은행 도착', '수취은행 도착'의 경우 해당 은행 연락이 필요합니다</div>	
						
						
					<form action="${ pageContext.request.contextPath }/admin/mistaken" method="post">
						<input type="hidden" name="misNo" value="${ mistaken.misNo }">
						<table class="table table-bordered table-th-warning">
						</table>
					<div class="text-center">
						<button class="btn btn-light" type="button" onclick="window.location.href='${ pageContext.request.contextPath}/admin/mistaken'">목록</button>
						<button class="btn btn-warning" type="submit">착오송금 반환 승인</button>
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
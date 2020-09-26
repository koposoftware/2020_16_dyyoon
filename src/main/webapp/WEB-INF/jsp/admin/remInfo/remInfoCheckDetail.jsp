<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	              <h6 class="m-0 font-weight-bold text-primary">송금정보 승인</h6>
	            </div>
	            <div class="card-body">
	              <div class="table-responsive">
	                <table class="table table-bordered table-th-primary table-detail">
							<tr>
								<th colspan="2">영문이름</th>
								<td colspan="3">${ remInfoDetail.name }</td>
							</tr>
							<tr>
								<th colspan="2">전화번호</th>
								<td>${ remInfoDetail.phone }</td>
								<th>이메일</th>
								<td>${ remInfoDetail.email }</td>
							</tr>
							<tr>
								<th rowspan="2">영문주소</th>
								<th>국가</th>
								<td colspan="3">${ remInfoDetail.nation }</td>
							</tr>
							<tr>
								<th >주소</th>
								<td>${ remInfoDetail.addr }</td>
								<th>세부주소</th>
								<td>${ remInfoDetail.addrDetail }</td>
							</tr>
							<tr>
								<th colspan="2">통화</th>
								<td  colspan="3">${ remInfoDetail.currency }</td>
							</tr>
							<tr>
								<th colspan="2">은행명</th>
								<td colspan="3">${ remInfoDetail.bankName }</td>
							</tr>
							<tr>
								<th colspan="2">계좌번호</th>
								<td colspan="3">${ remInfoDetail.accNo }</td>
							</tr>
							<tr>
								<th colspan="2">은행코드</th>
								<td colspan="3">${ remInfoDetail.bankCode }</td>
							</tr>
							<tr>
								<th rowspan="2">은행주소</th>
								<th >은행국가</th>
								<td colspan="3">${ remInfoDetail.bankNation }</td>
							</tr>
							<tr>
								<th>은행주소</th>
								<td>${ remInfoDetail.bankAddr }</td>
								<th>세부주소</th>
								<td>${ remInfoDetail.bankAddrDetail }</td>
							</tr>
							<tr>
								<th colspan="2">승인 현황</th>
								<td colspan="3">
									${ remInfoDetail.status }
									<c:if test="${ not empty remInfoDetail.statusDesc }">
										<br>사유 : ${ remInfoDetail.statusDesc }
									</c:if>
								</td>
							</tr>
						</table>
						<c:if test="${ remInfoDetail.status eq '신청중' }">
						<form action="${ pageContext.request.contextPath }/admin/remInfo" method="post">
						<input type="hidden" name="infoNo" value="${ remInfoDetail.infoNo } ">
						<table class="table table-bordered table-th-primary table-detail">
							<tr>
								<th style="width: 240px;">승인 결과</th>
								<td>
									<select class="form-control" name="status">
										<option value="">선택하세요</option>
										<option value="승인">승인</option>
										<option value="비승인">비승인</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>비승인 사유<br>(비승인시 입력 필수)</th>
								<td>
								<textarea class="form-control" rows="3" cols="10" name="statusDesc"></textarea></td>
							</tr>
						</table>
						<div class="text-center">
							<button class="btn btn-light" type="button" onclick="window.location.href='${ pageContext.request.contextPath}/admin/remInfo'">목록</button>
							<button class="btn btn-primary" type="submit">승인심사 완료</button>
						</div>
						</form>
						</c:if>
						<c:if test="${ remInfoDetail.status ne '신청중' }">
							<div class="text-center">
								<button class="btn btn-light" type="button" onclick="window.location.href='${ pageContext.request.contextPath}/admin/remInfo'">목록</button>
								<button class="btn btn-primary" type="button">승인심사 수정</button>
							</div>
							
						</c:if>
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
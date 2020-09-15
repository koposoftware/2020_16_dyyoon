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
	              <h6 class="m-0 font-weight-bold text-info">송금정보 승인</h6>
	            </div>
	            <div class="card-body">
	              <div class="table-responsive">
	              	<div class="font-weight-bold">
						<i class="material-icons md-18 align-middle text-info">person</i>
						<span class="align-middle">보낸 분 (송금인)</span>
					</div>
	                <table class="table table-bordered table-th-info table-detail">
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
							<td>${ recievedDetail.currency } ${ recievedDetail.amount }</td>
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
						<i class="material-icons md-18 align-middle text-info">person</i>
						<span class="align-middle">받는 분(수취인)</span>
					</div>
					
					<table class="table table-bordered table-th-info table-detail">
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
								<button class="btn btn-outline-info float-right" type="button" onclick="recievedCheckInfo(true)">계좌번호 확인</button>
								<button class="btn btn-white float-right text-success d-none font-weight-bold" disabled="disabled" id="showTrue">정보 일치</button>
								<button class="btn btn-white float-right text-danger d-none font-weight-bold" disabled="disabled" id="showFalse">정보 불일치(확인요망)</button>
							</td>
						</tr>
					</table>
					
					<c:if test="${ recievedDetail.status eq '요청됨' }">
					<form action="${ pageContext.request.contextPath }/admin/recieved" method="post">
					<input type="hidden" name="recievedNo" value="${ recievedDetail.recievedNo } ">
					<div class="font-weight-bold">
						<i class="material-icons md-18 align-middle text-info">check_box</i>
						<span class="align-middle">승인 심사</span>
					</div>
					<table class="table table-bordered table-th-info table-detail">
						<tr>
							<th style="width: 240px;">승인 결과</th>
							<td>
								<select class="form-control" name="status">
									<option>선택하세요</option>
									<option value="승인">승인</option>
									<option value="비승인">비승인</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>승인 결과  - 사유</th>
							<td><input type="text" class="form-control" name="statusDesc"></td>
						</tr>
					</table>
					<div class="text-center">
						<button class="btn btn-light" type="button" onclick="window.location.href='${ pageContext.request.contextPath}/admin/recieved'">목록</button>
						<button class="btn btn-info" type="submit">승인심사 완료</button>
					</div>
					</form>
					</c:if>
					<c:if test="${ recievedDetail.status ne '요청됨' }">
						<div class="text-center">
							<button class="btn btn-light" type="button" onclick="window.location.href='${ pageContext.request.contextPath}/admin/recieved'">목록</button>
							<button class="btn btn-info" type="button">승인심사 수정</button>
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
<script type="text/javascript">
	function recievedCheckInfo(status){
		if(status){
			$('#showTrue').removeClass('d-none')
		}else{
			$('#showFalse').removeClass('d-none')
		}
		
	}
</script>
</body>
</html>
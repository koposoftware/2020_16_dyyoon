<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	
	<!-- remList page start -->
	
	<div class="container allAccount-con pb-3">
	
		<div class="row" style="color: #c6c6c6">
			<div class="col-md-12 d-flex justify-content-end whereThisPageIs">
				<span class="material-icons md-12 lineHeight mr-1">home</span>
				<div>Home</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>해외송금</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>해외송금 전체 조회</div>
			</div>	
		</div>
		
		
		<div class="row pt-2">
			<!-- side menu col-md-3   -->
			<jsp:include page="/WEB-INF/jsp/include/remSideMenu.jsp"></jsp:include>
			
			<div class="col-md-9">
			
			<div class="font-weight-bold text-body mb-2" style="font-size: 25px;">
				<i class="material-icons align-middle">list</i>
				<span class="align-middle">해외송금 전체 조회</span>
			</div>
			
			<!-- tab-bar 시작 -->
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="tab" href="#remListRemittance">보낸 해외송금</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#remListReserve">예약된 해외송금</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#remListRecieved">받은 해외송금</a>
			  </li>
			</ul>
			<!-- tab-bar 끝 -->
			
			<!-- tab-bar 내용부 시작 -->
			<div class="tab-content">
				<!-- 보낸 송금목록  -->
				<div id="remListRemittance" class="container tab-pane active">
					<table class="table table-sm mt-3">
						<tr class="text-center">
							<th>송금일자</th>
							<th>내 계좌번호</th>
							<th>받는 분</th>
							<th>받는 분 계좌번호</th>
							<th style="width: 5%;">통화</th>
							<th>송금액</th>
						</tr>
						<c:forEach items="${ remittanceList }" var="remittance">
							<c:if test="${ remittance['STATUS'] ne 'RS' }">
							<tr class="text-center">
								<td>${ remittance['REM_DATE'] }</td>
								<td>${ remittance['MY_ACC_NO'] }</td>
								<td>${ remittance['NAME'] }</td>
								<td>${ remittance['YOUR_ACC_NO'] }</td>
								<td>${ remittance['CURRENCY'] }</td>
								<td>${ remittance['AMOUNT'] }</td>
							</tr>
							</c:if>
						</c:forEach>
					</table>				
				</div>
				<!-- 예약한 송금목록  -->
				<div id="remListReserve" class="container tab-pane fade">
					<table class="table table-sm mt-3">
						<tr class="text-center">
							<th>예약 송금일자</th>
							<th>내 계좌번호</th>
							<th>받는 분</th>
							<th>받는 분 계좌번호</th>
							<th style="width: 5%;">통화</th>
							<th>송금액</th>
						</tr>
						<c:forEach items="${ remittanceList }" var="remittance">
						<c:if test="${ remittance['STATUS'] eq 'RS' }">
							<tr class="text-center">
								<td>${ remittance['REM_DATE'] }</td>
								<td>${ remittance['MY_ACC_NO'] }</td>
								<td>${ remittance['NAME'] }</td>
								<td>${ remittance['YOUR_ACC_NO'] }</td>
								<td>${ remittance['CURRENCY'] }</td>
								<td>${ remittance['AMOUNT'] }</td>
							</tr>
						</c:if>
						</c:forEach>
					</table>	
				
				</div>
				<!-- 받은 송금목록  -->
				<div id="remListRecieved" class="container tab-pane fade">
					
					<table class="table table-sm mt-3">
						<tr class="text-center">
							<th>영업점 도착일</th>
							<th>송금 계좌번호</th>
							<th style="width:10%;">통화</th>
							<th>송금금액</th>
							<th>송금인</th>
							<th>입금계좌번호</th>
						</tr>
						<c:forEach items="${ recievedList }" var="recieved">
							<tr class="text-center" >
								<td>${ recieved.recievedDate }</td>
								<td>${ recieved.fromAccNo }</td>
								<td>${ recieved.currency }</td>
								<td>${ recieved.amount }</td>
								<td>${ recieved.fromName }</td>
								<td>${ recieved.getAccNo }</td>
							</tr>
						</c:forEach>
					</table>	
					
				</div>
				
				
			</div>	
			<!-- tab-bar 내용부 끝! -->
			</div>
		</div>
	</div>
	<!-- remList page close -->
	
	
	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
	<script type="text/javascript">
			
	</script>
</body>
</html>
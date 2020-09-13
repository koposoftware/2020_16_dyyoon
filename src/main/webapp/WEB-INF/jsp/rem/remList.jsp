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
							<th>보낸 분 계좌번호</th>
							<th>받는 분</th>
							<th>받는 분 계좌번호</th>
							<th>통화</th>
							<th>송금액</th>
						</tr>
						<c:forEach items="${ remittanceList }" var="remittance">
							<tr class="text-center">
								<td>${ remittance.remDate }</td>
								<td>${ remittance.accNo }</td>
								<td>${ remittance.remInfoDesc }</td>
								<td>${ remittance.remInfoDesc }</td>
								<td>${ remittance.remInfoDesc }</td>
								<td>${ remittance.amount }</td>
							</tr>
						</c:forEach>
					</table>				
				</div>
				<!-- 예약한 송금목록  -->
				<div id="remListReserve" class="container tab-pane fade">
					<table class="table table-sm mt-3">
						<tr class="text-center">
							<th>예약일자</th>
							<th>예약된 송금일자</th>
							<th>보낸 분 계좌번호</th>
							<th>받는 분</th>
							<th>받는 분 계좌번호</th>
							<th>통화</th>
							<th>송금액</th>
						</tr>
						<c:forEach items="${ remittanceList }" var="remittance">
							<tr class="text-center">
								<td>${ remittance.remDate }</td>
								<td>${ remittance.remDate }</td>
								<td>${ remittance.accNo }</td>
								<td>${ remittance.remInfoDesc }</td>
								<td>${ remittance.remInfoDesc }</td>
								<td>${ remittance.remInfoDesc }</td>
								<td>${ remittance.amount }</td>
							</tr>
						</c:forEach>
					</table>	
				
				</div>
				<!-- 받은 송금목록  -->
				<div id="remListRecieved" class="container tab-pane fade">
					
					<table class="table table-sm mt-3">
						<tr class="text-center">
							<th>해외송금 수취일자</th>
							<th>받는 분 계좌번호</th>
							<th>보낸 분</th>
							<th>보낸 분 계좌번호</th>
							<th>통화</th>
							<th>송금액</th>
						</tr>
						<c:forEach items="${ remittanceList }" var="remittance">
							<tr class="text-center">
								<td>${ remittance.remDate }</td>
								<td>${ remittance.accNo }</td>
								<td>${ remittance.remInfoDesc }</td>
								<td>${ remittance.remInfoDesc }</td>
								<td>${ remittance.remInfoDesc }</td>
								<td>${ remittance.amount }</td>
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
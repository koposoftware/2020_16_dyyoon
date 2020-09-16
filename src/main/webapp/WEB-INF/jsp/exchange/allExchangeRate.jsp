<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	<div class="container allAccount-con pb-3">
	
		<div class="row" style="color: #c6c6c6">
			<div class="col-md-12 d-flex justify-content-end whereThisPageIs">
				<span class="material-icons md-12 lineHeight mr-1">home</span>
				<div>Home</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>환율</div>
			</div>	
		</div>
		<div class="row justify-content-md-center">
			<div class="col-md-12">
			
				<!-- 제목 시작 -->
				<div class="font-weight-bold text-body mb-2 topTitle" style="font-size: 25px;">
					<i class="fas fa-money-bill-wave align-middle"></i>
					<span class="align-middle">환율 정보 조회</span>
				</div>
				<!-- 제목 끝 -->
				
				<!-- 테이블 시작 -->
				<div >
					<div class="d-flex justify-content-end">
						<span>업데이트 일자 : ${ exchangeRegDate }</span> 
					</div>
					<table class="table table-bordered">
					<thead class="text-center">
						<tr>
							<th rowspan="3">통화</th>
							<th colspan="4">현찰</th>
							<th colspan="2">송금</th>
							<th rowspan="3">T/C<br>사실떄</th>
							<th rowspan="3">외화수표<br>파실때</th>
							<th rowspan="3">매매<br>기준율</th>
							<th rowspan="3">환가료율</th>
							<th rowspan="3">미화<br>환산율</th>
						</tr>
						<tr>
							<th colspan="2">사실 떄</th>
							<th colspan="2">파실 떄</th>
							<th rowspan="2">보낼 때</th>
							<th rowspan="2">받을 떄</th>
						</tr>
						<tr>	
							<th>환율</th>
							<th>spread</th>
							<th>환율</th>
							<th>spread</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ exchangeList }" var="exchange">
							<tr>
								<td>${ exchange.currency }</td>
								<td>${ exchange.cashbuyrate }</td>
								<td>${ exchange.cashbuyspread }</td>
								<td>${ exchange.cashsellrate }</td>
								<td>${ exchange.cashsellspread }</td>
								<td>${ exchange.remittance }</td>
								<td>${ exchange.receive }</td>
								<td>${ exchange.tcbuy }</td>
								<td>${ exchange.fcsell }</td>
								<td>${ exchange.basicrate }</td>
								<td>${ exchange.conversion }</td>
								<td>${ exchange.usdrate }</td>
							</tr>
						</c:forEach>
					</tbody>
					</table>
				</div>
				
				
				
				<!-- 테이블 끝 -->
			
			
			
			
			</div>
		</div>
	</div>


<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
<script>
	$(document).ready(function(){
		$('th').addClass('align-middle');
	})
</script>
</body>
</html>
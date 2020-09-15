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
			<div>해외송금 관리</div>
			<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
			<div>받은 해외송금 승인</div>
		</div>	
	</div>
	
	
	<div class="row pt-2">
			
			<div class="col-md-4">
				<div class="mb-4">
				  <div class="card border-left-info shadow h-100 py-2">
		             <div class="card-body">
		               <div class="row no-gutters align-items-center">
		                 <div class="col mr-2">
		                   <div class="text-xs font-weight-bold text-info mb-1">받은 해외송금 승인 요청 건수</div>
		                   <div class="h5 mb-0 font-weight-bold text-gray-800">
		                   		<%-- ${ remittanceCount["COUNTALL"] } 건 --%>
		                   </div>
		                 </div>
		                 <div class="col-auto">
		                   <i class="material-icons">how_to_reg</i>
		                 </div>
		               </div>
		             </div>
		          </div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="mb-4">
				  <div class="card border-left-info shadow h-100 py-2">
		             <div class="card-body">
		             	<h4 class="small font-weight-bold text-info">승인 완료 현황 <span class="float-right">${ remittanceCount["PERCENTAGE"] } %</span></h4>
		                   <div class="progress mb-1">
		                     <div class="progress-bar bg-info" role="progressbar" 
		                     		style="width: ${ remittanceCount['PERCENTAGE'] }%" aria-valuenow="${ remittanceCount['PERCENTAGE'] }" 
		                     		aria-valuemin="0" aria-valuemax="100">
		                     </div>
		                   </div>
		             </div>
		          </div>
				</div>
			</div>
			
				
	</div>		
				
				
	<div class="row pt-2">
		<div class="col-md-12">
			<div class="card shadow mb-4">
	            <div class="card-header py-3">
	              <h6 class="m-0 font-weight-bold text-info">보낸 해외송금 승인</h6>
	            </div>
	            <div class="card-body">
	              <div class="table-responsive">
	                <table class="table table-bordered table-hover admin-table-select table-th-info displayDataTable" >
	                  <thead>
	                    <tr>
	                      <th>영업점 도착일</th>
	                      <th>보낸 분 계좌번호</th>
	                      <th>받는 분</th>
	                      <th>받는 분 계좌번호</th>
	                      <th style="width:10%;">통화</th>
	                      <th>송금액</th>
	                      <th style="width:10%;">승인여부</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    <c:forEach items="${ remittanceList }" var="remittance">
	                    <c:if test="${ remittance['STATUS'] eq 'RM'}">
							<tr class="table-row-clickable" data-value="${ remittance['REM_NO'] }">
								<td>${ remittance['REM_DATE'] }</td>
								<td>${ remittance['MY_ACC_NO'] }</td>
								<td>${ remittance['NAME'] }</td>
								<td>${ remittance['YOUR_ACC_NO'] }</td>
								<td>${ remittance['CURRENCY'] }</td>
								<td>${ remittance['AMOUNT'] }</td>
								<td>${ remittance['STATUS'] }</td>
							</tr>
						</c:if>
						</c:forEach>
	                  </tbody>
	                 </table>
	                </div>
	               </div>
              </div>
		</div>
	</div>	
				
			
	
	<div class="row pt-2">
		<div class="col-md-12">
			<div class="card shadow mb-4">
	            <div class="card-header py-3">
	              <h6 class="m-0 font-weight-bold text-info">보낸 해외송금 승인</h6>
	            </div>
	            <div class="card-body">
	              <div class="table-responsive">
	                <table class="table table-bordered table-hover admin-table-select table-th-info displayDataTable" >
	                  <thead>
	                    <tr>
	                      <th>송금 일자</th>
	                      <th>보낸 분 계좌번호</th>
	                      <th>받는 분</th>
	                      <th>받는 분 계좌번호</th>
	                      <th style="width:10%;">통화</th>
	                      <th>송금액</th>
	                      <th style="width:10%;">승인여부</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    <c:forEach items="${ remittanceList }" var="remittance">
	                    <c:if test="${ remittance['STATUS'] eq 'IN' or remittance['STATUS'] eq 'RC' or remittance['STATUS'] eq 'ER' }">
							<tr class="table-row-clickable" data-value="${ remittance['REM_NO'] }">
								<td>${ remittance['REM_DATE'] }</td>
								<td>${ remittance['MY_ACC_NO'] }</td>
								<td>${ remittance['NAME'] }</td>
								<td>${ remittance['YOUR_ACC_NO'] }</td>
								<td>${ remittance['CURRENCY'] }</td>
								<td>${ remittance['AMOUNT'] }</td>
								<td>${ remittance['STATUS'] }</td>
							</tr>
						</c:if>	
						</c:forEach>
	                  </tbody>
	                 </table>
	                </div>
	               </div>
              </div>
		</div>
	</div>	
</div>




<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjsAdmin.jsp"></jsp:include>
<script>
	$(".admin-table-select tbody tr").on('click', function() {
		var remNo = $(this).data("value");
		window.location.href = '${pageContext.request.contextPath}/admin/remittance/' + remNo;
	    
	  });
</script>
</body>
</html>
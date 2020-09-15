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
			<div>착오송금 처리</div>
		</div>	
	</div>
	
	
	<div class="row pt-2">
			
			<div class="col-md-4">
				<div class="mb-4">
				  <div class="card border-left-warning shadow h-100 py-2">
		             <div class="card-body">
		               <div class="row no-gutters align-items-center">
		                 <div class="col mr-2">
		                   <div class="text-xs font-weight-bold text-warning mb-1">착오송금 신고 건수</div>
		                   <div class="h5 mb-0 font-weight-bold text-gray-800">
		                   		 ${ mistakenCount["COUNTALL"] } 건 
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
				  <div class="card border-left-warning shadow h-100 py-2">
		             <div class="card-body">
		             	<h4 class="small font-weight-bold text-warning">착오송금 신고 처리 현황 <span class="float-right">${ mistakenCount["PERCENTAGE"] } %</span></h4>
		                   <div class="progress mb-1">
		                     <div class="progress-bar bg-warning" role="progressbar" 
		                     		style="width: ${ mistakenCount['PERCENTAGE'] } %" aria-valuenow="${ mistakenCount['PERCENTAGE'] } " 
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
	              <h6 class="m-0 font-weight-bold text-warning">착오송금 신고 처리대기</h6>
	            </div>
	            <div class="card-body">
	              <div class="table-responsive">
	                <table class="table table-bordered table-hover admin-table-select table-th-warning displayDataTable" >
	                  <thead>
	                    <tr>
	                      <th>신고접수 일자</th>
	                      <th>해외송금 일자</th>
	                      <th>신청사유</th>
	                      <th>출금 계좌</th>
	                      <th style="width:10%;">통화</th>
	                      <th>이체금액</th>
	                      <th style="width:10%;">상태</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    <c:forEach items="${ mistakenList }" var="mistaken">
	                    <c:if test="${ mistaken['STATUS'] eq '신청'}">
							<tr class="table-row-clickable" data-value="${ mistaken['MIS_NO'] }">
								<td>${ mistaken['REG_DATE'] }</td>
								<td>${ mistaken['REM_DATE'] }</td>
								<td>${ mistaken['REASON'] }</td>
								<td>${ mistaken['ACC_NO'] }</td>
								<td>${ mistaken['CURRENCY'] }</td>
								<td>${ mistaken['AMOUNT'] }</td>
								<td>${ mistaken['STATUS'] }</td>
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
	              <h6 class="m-0 font-weight-bold text-warning">착오송금 신고 처리완료</h6>
	            </div>
	            <div class="card-body">
	              <div class="table-responsive">
	                <table class="table table-bordered table-hover admin-table-select table-th-warning displayDataTable" >
	                  <thead>
	                    <tr>
	                      <th>신고접수 일자</th>
	                      <th>해외송금 일자</th>
	                      <th>신청사유</th>
	                      <th>출금 계좌</th>
	                      <th style="width:10%;">통화</th>
	                      <th>이체금액</th>
	                      <th style="width:10%;">상태</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    <c:forEach items="${ mistakenList }" var="mistaken">
	                    <c:if test="${ mistaken['STATUS'] ne '신청'}">
							<tr class="table-row-clickable" data-value="${ mistaken['MIS_NO'] }">
								<td>${ mistaken['REG_DATE'] }</td>
								<td>${ mistaken['REM_DATE'] }</td>
								<td>${ mistaken['REASON'] }</td>
								<td>${ mistaken['ACC_NO'] }</td>
								<td>${ mistaken['CURRENCY'] }</td>
								<td>${ mistaken['AMOUNT'] }</td>
								<td>${ mistaken['STATUS'] }</td>
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
		var misNo = $(this).data("value");
		window.location.href = '${pageContext.request.contextPath}/admin/mistaken/' + misNo;
	    
	  });
</script>
</body>
</html>
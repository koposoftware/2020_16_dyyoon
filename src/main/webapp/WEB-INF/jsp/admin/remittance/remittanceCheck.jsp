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
			
			<!-- 본 메뉴 col-md-12   -->
			<div class="col-md-12">
				<div class="mb-4">
				  <div class="card border-left-info shadow h-100 py-2">
		             <div class="card-body">
		               <div class="row no-gutters align-items-center">
		                 <div class="col mr-2">
		                   <div class="text-xs font-weight-bold text-info mb-1">보낸 해외송금 승인 요청 건수</div>
		                   <div class="h5 mb-0 font-weight-bold text-gray-800">
		                   		${ remittanceCount["COUNTWAITING"] } / ${ remittanceCount["COUNTALL"] }
		                   </div>
		                 </div>
		                 <div class="col-auto">
		                   <i class="material-icons">how_to_reg</i>
		                 </div>
		               </div>
		             </div>
		          </div>
				</div>
				
				
				
				
				
				<div>
					<div class="card shadow mb-4">
			            <div class="card-header py-3">
			              <h6 class="m-0 font-weight-bold text-info">보낸 해외송금 승인</h6>
			            </div>
			            <div class="card-body">
			              <div class="table-responsive">
			                <table class="table table-bordered table-hover admin-table-select" id="dataTable" >
			                  <thead>
			                    <tr>
			                      <th>송금 일자</th>
			                      <th>보낸 분 계좌번호</th>
			                      <th>받는 분</th>
			                      <th>받는 분 계좌번호</th>
			                      <th>통화</th>
			                      <th>송금액</th>
			                    </tr>
			                  </thead>
			                  <tbody>
			                    <c:forEach items="${ remittanceList }" var="remittance">
									<tr class="table-row-clickable" data-value="${ remittance.remNo }">
										<td>${ remittance.remDate }</td>
										<td>${ remittance.accNo }</td>
										<td>${ remittance.infoNo }</td>
										<td>${ remittance.infoNo }</td>
										<td>${ remittance.infoNo }</td>
										<td>${ remittance.amount }</td>
									</tr>
								</c:forEach>
			                  </tbody>
			                 </table>
			                </div>
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
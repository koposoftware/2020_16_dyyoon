<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		                   <div class="text-xs font-weight-bold text-info mb-1">송금정보 승인요청 건수</div>
		                   <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
		                 </div>
		                 <div class="col-auto">
		                   <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
		                 </div>
		               </div>
		             </div>
		          </div>
				</div>
				
				
				
				
				
				<div>
					<div class="card shadow mb-4">
			            <div class="card-header py-3">
			              <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
			            </div>
			            <div class="card-body">
			              <div class="table-responsive">
			                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			                  <thead>
			                    <tr>
			                      <th>Name</th>
			                      <th>Position</th>
			                      <th>Office</th>
			                      <th>Age</th>
			                      <th>Start date</th>
			                      <th>Salary</th>
			                    </tr>
			                  </thead>
			                  <tbody>
			                  	<tr>
			                      <td>Donna Snider</td>
			                      <td>Customer Support</td>
			                      <td>New York</td>
			                      <td>27</td>
			                      <td>2011/01/25</td>
			                      <td>$112,000</td>
			                    </tr>
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
</body>
</html>
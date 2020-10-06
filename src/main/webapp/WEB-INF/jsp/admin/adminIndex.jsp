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

	
<!-- admin page start  -->
<div class="pt-4">
<!-- Begin Page Content -->
<div class="container">

		<div class="row">
			<div class="col-md-12 mb-4">
				<div class="card shadow pt-4" style="background: url(${ pageContext.request.contextPath }/resources/images/hero-airballoon.jpg) no-repeat center; background-size: cover; ">
					<div class="card-body text-white pb-2 ">
						<span style="font-size: 20px; font-weight: bold;">HanaSafe 관리자</span>
						<span class="float-right">접속시간 : ${ date } &nbsp;  ${ time }</span>
					</div>
				</div>
			</div>
		</div>
          <!-- Content Row -->
          <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">송금정보 승인요청건수</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${ remInfoCount["COUNTALL"] } 건</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">보내는 해외송금 승인 요청 건수</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${ remittanceCount["COUNTALL"] } 건</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">받은 해외송금 승인 요청 건수</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${ recievedCount["COUNTALL"] } 건 </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">착오송금 신고 건수</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
						 ${ mistakenCount["COUNTALL"] } 건 
						</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          


          <!-- Content Row -->
          <div class="row">

            <!-- Content Column -->
            <div class="col-lg-12 mb-2">

              <!-- Project Card Example -->
              <div class="card shadow">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">해외송금 처리 완료 현황</h6>
                </div>
                <div class="card-body">
                  <h4 class="small font-weight-bold ">송금정보 승인완료 현황 <span class="float-right">${ remInfoCount["PERCENTAGE"] } %</span></h4>
                  <div class="progress mb-4">
                  	<div class="progress-bar bg-primary" role="progressbar" style="width: ${ remInfoCount['PERCENTAGE'] }%" aria-valuenow="${ remInfoCount['PERCENTAGE'] }" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <h4 class="small font-weight-bold">보내는 송금 승인완료 현황 <span class="float-right">${ remittanceCount["PERCENTAGE"] } %</span></h4>
                  <div class="progress mb-4">
                  			<div class="progress-bar bg-success" role="progressbar" 
		                     		style="width: ${ remittanceCount['PERCENTAGE'] }%" aria-valuenow="${ remittanceCount['PERCENTAGE'] }" 
		                     		aria-valuemin="0" aria-valuemax="100">
		                     </div>
                  </div>
                  <h4 class="small font-weight-bold">받은 송금 송인완료 현황 <span class="float-right">${ recievedCount["PERCENTAGE"] } %</span></h4>
                  <div class="progress mb-4">
                  	<div class="progress-bar bg-info" role="progressbar" 
		                     		style="width: ${ recievedCount['PERCENTAGE'] }%" aria-valuenow="${ recievedCount['PERCENTAGE'] }" 
		                     		aria-valuemin="0" aria-valuemax="100">
		                     </div>
                  </div>
                  <h4 class="small font-weight-bold">착오송금 처리 현황 <span class="float-right">${ mistakenCount["PERCENTAGE"] } %</span></h4>
                  <div class="progress mb-4">
                    		<div class="progress-bar bg-warning" role="progressbar" 
		                     		style="width: ${ mistakenCount['PERCENTAGE'] }%" aria-valuenow="${ mistakenCount['PERCENTAGE'] } " 
		                     		aria-valuemin="0" aria-valuemax="100">
		                     </div>
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
          
          
          
          

</div>
<!-- /.container-fluid -->
</div>
	

	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjsAdmin.jsp"></jsp:include>
</body>

</html>

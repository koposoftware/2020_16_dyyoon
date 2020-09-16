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
				<div>계좌조회</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>거래내역 조회</div>
			</div>	
		</div>
		<div class="row pt-2">
			<jsp:include page="/WEB-INF/jsp/include/sideMenuAccount.jsp" />
			
		
			<div class="col-md-9 ">
				<div class="card bg-light border-0">
					<div class="card-body container-fluid">
				        <!-- 계좌모록  -->
				        <div class=" p-3">
				        	<div style="font-size: 14px;">
				        		<span>입출금 통장</span><span>(별칭)</span>
				        		<span class="badge badge-warning">대표계좌</span>
				        	</div>
				        	<div style="font-size: 20px;">
				        		<span>010-169854-52145</span>
				        		<span class="float-right">잔액  :  100,000 원</span>
				        		<br>
				        	</div>
				        	<div class="d-flex justify-content-end mt-2">
				        		<button class="btn btn-outline-info btn-sm mr-1">계좌관리</button>
				        		<button class="btn btn-outline-info btn-sm">조회</button>
				        	</div>
				        </div>
				</div>
			</div>
			<div class="mt-3"> 
			<div class="font-weight-bold mb-1">
				<i class="material-icons md-18 align-middle text-info" >account_balance_wallet</i><span class="align-middle"> 거래내역</span>
			</div>
				<table class="table text-center">
				    <thead>
				      <tr>
				        <th>거래일시</th>
				        <th>보낸분/받는분</th>
				        <th>출금액(-)</th>
				        <th>입금액(+)</th>
				        <th>잔액</th>
				        <th>메모</th>
				      </tr>
				    </thead>
				</table>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
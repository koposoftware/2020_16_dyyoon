<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                        <h1 class="page-title">송금정보</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<div class="page-breadcrumb">
		<div class="container">
			<div class="row">
				<div class=" col-lg-12 col-md-12 col-sm-12 col-xs-12 d-flex justify-content-end navForBtn">
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>송금정보</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<!-- page-header-close -->


	<!-- remInfo page start -->
	
	<div class="container allAccount-con pt-3 pb-3">
		<div class="row">
			<!-- side menu col-md-3   -->
			<jsp:include page="/WEB-INF/jsp/include/remSideMenu.jsp"></jsp:include>
			
			
			<div class="col-md-9">
			송금정보 신청이 완료되었습니다
			<button>목록</button>
			<button>상세보기</button>
			
			<table class="table table-sm ">
				<tr>
					<td colspan="2">영문이름</td>
					<td>${ remInfoDetail.name }</td>
				</tr>
				<tr>
					<td colspan="2">전화번호</td>
					<td>${ remInfoDetail.phone }</td>
				</tr>
				<tr>
					<td colspan="2">이메일</td>
					<td>${ remInfoDetail.email }</td>
				</tr>
				<tr>
					<td rowspan="3">영문주소</td>
					<td>국가</td>
					<td>${ remInfoDetail.nation }</td>
				</tr>
				<tr>
					<td >주소</td>
					<td>${ remInfoDetail.addr }</td>
				</tr>
				<tr>
					<td>세부주소</td>
					<td>${ remInfoDetail.addrDetail }</td>
				</tr>
				<tr>
					<td colspan="2">통화</td>
					<td>${ remInfoDetail.currency }</td>
				</tr>
				<tr>
					<td colspan="2">은행명</td>
					<td>${ remInfoDetail.bankName }</td>
				</tr>
				<tr>
					<td colspan="2">계좌번호</td>
					<td>${ remInfoDetail.accNo }</td>
				</tr>
				<tr>
					<td colspan="2">은행코드</td>
					<td>${ remInfoDetail.bankCode }</td>
				</tr>
				<tr>
					<td rowspan="3">은행주소</td>
					<td >은행국가</td>
					<td>${ remInfoDetail.bankNation }</td>
				</tr>
				<tr>
					<td>은행주소</td>
					<td>${ remInfoDetail.bankAddr }</td>
				</tr>
				<tr>
					<td>세부주소</td>
					<td>${ remInfoDetail.bankAddrDetail }</td>
				</tr>
				<tr>
					<td colspan="2">직원전달사항</td>
					<td>${ remInfoDetail.myDesc }</td>
				</tr>
			</table>
			
			
			
			
			</div>
		</div>
	</div>
	<!-- remInfo page close -->
	
	
	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
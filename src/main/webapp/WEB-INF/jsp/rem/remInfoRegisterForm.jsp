<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/include/headcss.jsp"></jsp:include>
<style>
	.error{
		color : red;
	}
</style>
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
			<form:form commandName="remInfoVO" method="post">
			<table class="table table-sm">
					<tr>
						<td colspan="2">영문이름</td>
						<td>
							<form:input path="name"/><br>
							<form:errors path="name" class="error" />
						</td>
					</tr>
					<tr>
						<td colspan="2">전화번호</td>
						<td>
							<form:input path="phone"/>
							<form:errors path="phone" class="error" />
						</td>
					</tr>
					<tr>
						<td colspan="2">이메일</td>
						<td>
							<form:input path="email"/>
							<form:errors path="email" class="error" />
						</td>
					</tr>
					<tr>
						<td rowspan="3">영문주소</td>
						<td>국가</td>
						<td>
							<form:input path="nation"/>
							<form:errors path="nation" class="error" />
						</td>
					</tr>
					<tr>
						<td >주소</td>
						<td>
							<form:input path="addr"/>
							<form:errors path="addr" class="error" />
						</td>
					</tr>
					<tr>
						<td>세부주소</td>
						<td>
							<form:input path="addrDetail"/>
							<form:errors path="addrDetail" class="error" />
						</td>
					</tr>
					<tr>
						<td colspan="2">통화</td>
						<td>
							<form:input path="currency"/>
							<form:errors path="currency" class="error" />
						</td>
					</tr>
					<tr>
						<td colspan="2">은행명</td>
						<td>
							<form:input path="bankName"/>
							<form:errors path="bankName" class="error" />
						</td>
					</tr>
					<tr>
						<td colspan="2">계좌번호</td>
						<td>
							<form:input path="accNo"/>
							<form:errors path="accNo" class="error" />
						</td>
					</tr>
					<tr>
						<td colspan="2">은행코드</td>
						<td>
							<form:input path="bankCode"/>
							<form:errors path="bankCode" class="error" />
						</td>
					</tr>
					<tr>
						<td rowspan="3">은행주소</td>
						<td >은행국가</td>
						<td>
							<form:input path="bankNation"/>
							<form:errors path="bankNation" class="error" />
						</td>
					</tr>
					<tr>
						<td>은행주소</td>
						<td>
							<form:input path="bankAddr"/>
							<form:errors path="bankAddr" class="error" />
						</td>
					</tr>
					<tr>
						<td>세부주소</td>
						<td>
							<form:input path="bankAddrDetail"/>
							<form:errors path="bankAddrDetail" class="error" />
						</td>
					</tr>
					<tr>
						<td colspan="2">직원전달사항</td>
						<td>
							<form:input path="myDesc"/>
						</td>
					</tr>
				</table>
				<button type="button">수취인직접입력</button>
				<button type="submit">등록</button>
			
			</form:form>
			</div>
		</div>
	</div>
	<!-- remInfo page close -->
	
	
	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
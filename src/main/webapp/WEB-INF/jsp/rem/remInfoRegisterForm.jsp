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
			<div class="d-flex">
				<div>보내는 분 정보 </div>
				<button type="button" class="btn btn-secondary ml-auto">내 정보 수정하기</button>
			</div>
			<table class="table table-sm">
				<tr>
					<th colspan="2">영문성명</th>
					<td>${ loginVO.engName }</td>
				</tr>
				<tr>
					<th colspan="2">전화번호</th>
					<td>${ loginVO.phone }</td>
				</tr>
				<tr>
					<th colspan="2">이메일</th>
					<td>${ loginVO.email }</td>
				</tr>
				<tr>
					<th rowspan="2">영문주소</th>
					<th>주소</th>
					<td>${ loginVO.addr }</td>
				</tr>
				<tr>
					<th>세부주소</th>
					<td>${ loginVO.addrDetail }</td>
				</tr>
				
			</table>


			<form:form commandName="remInfoVO" method="post">
			<br>
			<div class="d-flex">
				<div>받는 분 정보 </div>
				<button type="button" class="btn btn-secondary ml-auto" data-toggle="tooltip" data-placement="top" title="정보 입력을 요청해보세요">수취인직접입력</button>
			</div>
			<table class="table table-sm">
					<tr>
						<th colspan="2">영문이름</th>
						<td>
							<form:input path="name" class="form-control"/>
							<form:errors path="name" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2">전화번호</th>
						<td>
							<form:input path="phone" class="form-control"/>
							<form:errors path="phone" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2">이메일</th>
						<td>
							<form:input path="email" class="form-control"/>
							<form:errors path="email" class="error" />
						</td>
					</tr>
					<tr>
						<th rowspan="3">영문주소</th>
						<th>국가</th>
						<td>
							<select>
								<c:forEach items="${ countryList }" var="country">
									<option value="${ countryList }">${ country.countryName }</option>
								</c:forEach>
							</select>
							<form:input path="nation" class="form-control"/>
							<form:errors path="nation" class="error" />
						</td>
					</tr>
					<tr>
						<th >주소</th>
						<td>
							<form:input path="addr"  class="form-control"/>
							<form:errors path="addr" class="error" />
						</td>
					</tr>
					<tr>
						<th>세부주소</th>
						<td>
							<form:input path="addrDetail"  class="form-control"/>
							<form:errors path="addrDetail" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2">통화</th>
						<td>
							<form:input path="currency"  class="form-control"/>
							<form:errors path="currency" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2">은행명</th>
						<td>
							<form:input path="bankName"  class="form-control"/>
							<form:errors path="bankName" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2">계좌번호</th>
						<td>
							<form:input path="accNo"  class="form-control"/>
							<form:errors path="accNo" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2">은행코드</th>
						<td>
							<form:input path="bankCode" class="form-control"/>
							<form:errors path="bankCode" class="error" />
						</td>
					</tr>
					<tr>
						<th rowspan="3">은행주소</th>
						<th >은행국가</th>
						<td>
							<form:input path="bankNation" class="form-control"/>
							<form:errors path="bankNation" class="error" />
						</td>
					</tr>
					<tr>
						<th>은행주소</th>
						<td>
							<form:input path="bankAddr" class="form-control"/>
							<form:errors path="bankAddr" class="error" />
						</td>
					</tr>
					<tr>
						<th>세부주소</th>
						<td>
							<form:input path="bankAddrDetail" class="form-control"/>
							<form:errors path="bankAddrDetail" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2">직원전달사항</th>
						<td>
							<form:input path="myDesc"  class="form-control"/>
						</td>
					</tr>
				</table>
				
				<button type="submit">등록</button>
			
			</form:form>
			</div>
		</div>
	</div>
	<!-- remInfo page close -->
	
	
	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
	<script>
	$(document).ready(function(){
	  $('[data-toggle="tooltip"]').tooltip();
	});
</script>
</body>
</html>
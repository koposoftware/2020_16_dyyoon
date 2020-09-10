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
	<jsp:include page="/WEB-INF/jsp/include/headerSecForEmail.jsp"></jsp:include>
	<!-- page-header-start -->
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
					<div class="page-section">
						<h1 class="page-title">송금 정보 입력</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- page-header-close -->

	<!-- 페이지 시작 -->
		<div class="container allAccount-con pt-1 pb-5">
		<div class="row d-flex justify-content-center h-75 align-items-center">
			
			<div class="col-md-8 text-center">


			<form:form commandName="remInfoVO" method="post" action="${ pageContext.request.contextPath }/remInfo/ask/register">
			<input type="hidden" name="id" value="${ id }">
			<br>
			<div class="d-flex">
				<div class="font-weight-bold"><i class="material-icons md-18 align-middle text-info" >person</i><span class="align-middle">받는 분 정보</span></div>
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
							
							<div class="input-group">
							<div class="input-group-prepend">
						      <span class="input-group-text" id="input-group-phone-code-email">+ 000</span>
						    </div>
							<form:input path="phone" type="text" class="form-control"/>
							</div>
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
							<form:select class="custom-select" path="nation" id="rcNationSelect-email">
								<form:option value="">국가를 선택하세요</form:option>
								<c:forEach items="${ countryList }" var="country">
									<form:option value="${ country.countryCode }" 
												data-value="${ country.currencyCode }"
												data-phone="${ country.phoneCode }">
										${ country.countryEngName } (${ country.countryName })
									</form:option>
								</c:forEach>
							</form:select>
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
							<form:input path="currency"  class="form-control" id="currencyInput-email" readonly="true"/>
							<form:errors path="currency" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2">은행코드</th>
						<td>
							
							<div class="input-group">
							<form:input path="bankCode" class="form-control"/>
							  <div class="input-group-append">
							    <button class="btn btn-info bankCode-btn" type="button">코드 확인</button>
							  </div>
							</div>
							
							<form:errors path="bankCode" class="error" />
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
						<th colspan="2">은행명</th>
						<td>
							<form:input path="bankName"  class="form-control"  readonly="true"/>
							<form:errors path="bankName" class="error" />
						</td>
					</tr>
					<tr>
						<th rowspan="3">은행주소</th>
						<th >은행국가</th>
						<td>
							<form:input path="bankNation" class="form-control"  readonly="true"/>
							<form:errors path="bankNation" class="error" />
						</td>
					</tr>
					<tr>
						<th>은행주소</th>
						<td>
							<form:input path="bankAddr" class="form-control"  readonly="true"/>
							<form:errors path="bankAddr" class="error" />
						</td>
					</tr>
					<tr>
						<th>세부주소</th>
						<td>
							<form:input path="bankAddrDetail" class="form-control"  readonly="true"/>
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
				
				<button type="submit" class="btn btn-light">전체 삭제</button>
				<button type="submit" class="btn btn-info">정보 등록</button>
			
			</form:form>
			</div>
		</div>
	</div>
	
	<!-- 페이지 끝 -->
	
	
	
<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
<script type="text/javascript">
	$('#rcNationSelect-email').change(function(){
		   
		  //console.log($(this).val())
		  //console.log($(this).children('option:selected').data('value'))
		  $('#currencyInput-email').val($(this).children('option:selected').data('value'))
		  $('#input-group-phone-code-email').text('+ ' + $(this).children('option:selected').data('phone'))
	})
	
	$('.bankCode-btn').on('click', function(){
		$('input[name="bankName"]').val('Bank of 000')
		$('input[name="bankNation"]').val('US')
		$('input[name="bankAddr"]').val('New York, ABCD Street')
		$('input[name="bankAddrDetail"]').val('JKH Building 123')
		
	})
	
</script>
</body>
</html>
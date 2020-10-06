<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- page-header-close -->

	<!-- 페이지 시작 -->
		<div class="container allAccount-con pt-1 pb-5">
		<div class="row d-flex justify-content-center h-75 align-items-center">
			
			<div class="col-md-10 text-center">


			<form:form commandName="remInfoVO" method="post" action="${ pageContext.request.contextPath }/remInfo/ask/register">
			<input type="hidden" name="id" value="${ id }">
			<br>
			<div class="d-flex">
				<div class="font-weight-bold"><i class="material-icons md-18 align-middle text-info" >person</i>
				<span class="align-middle"><spring:message code="formTitle"></spring:message> </span>
				</div>
			</div>
			<table class="table">
					<tr>
						<th colspan="2"><spring:message code="formEngName" /> </th>
						<td>
							<form:input path="name" class="form-control"/>
							<form:errors path="name" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2"><spring:message code="formPhone" /></th>
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
						<th colspan="2"><spring:message code="formEmail" /></th>
						<td>
							<form:input path="email" class="form-control"/>
							<form:errors path="email" class="error" />
						</td>
					</tr>
					<tr>
						<th rowspan="3"><spring:message code="formEngAddr" /></th>
						<th><spring:message code="formNation" /></th>
						<td>
							<form:select class="custom-select" path="nation" id="rcNationSelect-email">
								<form:option value=""><spring:message code="formNationSelect"></spring:message> </form:option>
								<c:forEach items="${ countryList }" var="country">
									<form:option value="${ country.countryCode }" 
												data-value="${ country.currencyCode }"
												data-phone="${ country.phoneCode }">
									<c:choose>
										<c:when test="${ langauge eq 'en' }">${ country.countryEngName }</c:when>
										<c:when test="${ langauge eq 'zh' }">${ country.countryChName } (${ country.countryEngName })</c:when>
										<c:otherwise>
											${ country.countryName } (${ country.countryEngName })
										</c:otherwise>
									</c:choose>
									</form:option>
								</c:forEach>
							</form:select>
							<form:errors path="nation" class="error" />
						</td>
					</tr>
					<tr>
						<th ><spring:message code="formAddr1" /></th>
						<td>
							<form:input path="addr"  class="form-control"/>
							<form:errors path="addr" class="error" />
						</td>
					</tr>
					<tr>
						<th><spring:message code="formAddr2" /></th>
						<td>
							<form:input path="addrDetail"  class="form-control"/>
							<form:errors path="addrDetail" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2"><spring:message code="formCurrency" /></th>
						<td>
							<form:input path="currency"  class="form-control" id="currencyInput-email" readonly="true"/>
							<form:errors path="currency" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2"><spring:message code="formBankCode" /></th>
						<td>
							
							<div class="input-group">
							<form:input path="bankCode" class="form-control"/>
							  <div class="input-group-append">
							    <button class="btn btn-info bankCode-btn" type="button">
									<spring:message code="formCodeCheck" />
								</button>
							  </div>
							</div>
							
							<form:errors path="bankCode" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2"><spring:message code="formAccNo" /></th>
						<td>
							<form:input path="accNo"  class="form-control"/>
							<form:errors path="accNo" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2"><spring:message code="formBankName" /></th>
						<td>
							<form:input path="bankName"  class="form-control"  readonly="true"/>
							<form:errors path="bankName" class="error" />
						</td>
					</tr>
					<tr>
						<th rowspan="3"><spring:message code="formBankAddr" /></th>
						<th ><spring:message code="formBankNation" /></th>
						<td>
							<form:input path="bankNation" class="form-control"  readonly="true"/>
							<form:errors path="bankNation" class="error" />
						</td>
					</tr>
					<tr>
						<th><spring:message code="formBankAddr1" /></th>
						<td>
							<form:input path="bankAddr" class="form-control"  readonly="true"/>
							<form:errors path="bankAddr" class="error" />
						</td>
					</tr>
					<tr>
						<th><spring:message code="formBankAddr2" /></th>
						<td>
							<form:input path="bankAddrDetail" class="form-control"  readonly="true"/>
							<form:errors path="bankAddrDetail" class="error" />
						</td>
					</tr>
					<tr>
						<th colspan="2"><spring:message code="formForward" /></th>
						<td>
							<form:input path="myDesc"  class="form-control"/>
						</td>
					</tr>
				</table>
				
				<button type="button" class="btn btn-light"><spring:message code="formDeleteAll" /></button>
				<button type="submit" class="btn btn-info"><spring:message code="formRegister" /></button>
			
			</form:form>
			</div>
		</div>
	</div>
	
	<!-- 페이지 끝 -->
	
	
	<!-- 경고창 모달 시작 -->
	<div class="modal" id="modalAlertBankCodeEmail">
	  <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered">
			<div class="modal-content border-0">
				<div class="modal-header bg-danger">
					<h5 class="modal-title text-white">은행코드 입력 오류</h5>
				</div>
				<!-- Modal body -->
				<div class="modal-body deleteAllModalBody text-center">
					존재하지 않는 은행코드입니다<br>다시 입력하세요<br>
					<button type="button" class="btn btn-outline-secondary float-right" data-dismiss="modal">확인</button>
				</div>
				</div>
		</div>
	</div>
	<!-- 경고창 모달 끝 -->
	
	
<jsp:include page="/WEB-INF/jsp/include/footerSecForEmail.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjsEmail.jsp"></jsp:include>
<script type="text/javascript">
	$('#rcNationSelect-email').change(function(){
		   
		  //console.log($(this).val())
		  //console.log($(this).children('option:selected').data('value'))
		  $('#currencyInput-email').val($(this).children('option:selected').data('value'))
		  $('#input-group-phone-code-email').text('+ ' + $(this).children('option:selected').data('phone'))
	})
	
	$('.bankCode-btn').on('click', function(){
		var bankCodeInput = $('input[name="bankCode"]').val()
		if(bankCodeInput == ''){
			alert('은행 코드를 입력하세요')
		}else{
			
			$.ajax({
				url : '${ pageContext.request.contextPath }/bank/' + bankCodeInput,
				type : 'get',
				success : function(data){
					//console.log(data)
					if(data == ''){
						$('#modalAlertBankCodeEmail').modal()
					}else{
						var bank = JSON.parse(data);
						$('input[name="bankName"]').val(bank.bankName)
						$('input[name="bankNation"]').val(bank.countryCode)
						$('input[name="bankAddr"]').val(bank.city)
						$('input[name="bankAddrDetail"]').val(bank.address)
						
					}
					
				},
				error : function(){
					alert('통신실패')
				}
			})
		}
		
	})
	
	
</script>
</body>
</html>
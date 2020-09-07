<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
				<div
					class=" col-lg-12 col-md-12 col-sm-12 col-xs-12 d-flex justify-content-end navForBtn">
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>송금정보</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<!-- page-header-close -->




	<!-- remRegisterForm page start -->

	<div class="container allAccount-con pt-3 pb-3">
		<div class="row">
			<!-- side menu col-md-3   -->
			<jsp:include page="/WEB-INF/jsp/include/remSideMenu.jsp"></jsp:include>

			<div class="col-md-9">

				<form:form name="remForm" commandName="remittanceVO" method="post" onsubmit="return true">
							
					<div class="font-weight-bold">
						<i class="material-icons md-18 align-middle text-info">monetization_on</i>
						<span class="align-middle">송금정보</span>
					</div>

					<table class="table table-sm">
						<tr>
							<th>보내는 분</th>
							<td>
								<div class="input-group">
									<input type="text" class="form-control"	value="${ loginVO.engName }" disabled="disabled">
									<div class="input-group-append">
										<button class="btn btn-info " type="button"
											    data-toggle="modal" data-target="#registerForm-myData-modal">
											    상세보기
										</button>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>송금사유</th>
							<td>
								<form:radiobutton path="reason" value="미화 $5,000 이하 송금"	checked="checked" label="미화 $5,000 이하 송금" /> 
								<form:radiobutton path="reason" value="해외유학생 유학경비 송금" label="해외유학생 유학경비 송금" /> 
								<form:radiobutton path="reason" value="해외체재자 체재비 송금" label="해외체재자 체재비 송금" />
							</td>
						</tr>
						<tr>
							<th>받는 분</th>
							<td>
								<div class="input-group">
								
									<form:select class="custom-select" path="infoNo" id="registerForm-infoNo-select">
										<form:option value="">받는 분을 선택하세요</form:option>
										<c:forEach items="${ remInfoList }" var="remInfo">
											<c:if test="${ remInfo.status eq '승인' }">
												<form:option value="${ remInfo.infoNo }" data-currency="${ remInfo.currency }">
													${ remInfo.name } ( ${ remInfo.bankName }, ${ remInfo.accNo } )
												</form:option>
											</c:if>
										</c:forEach>
									</form:select>
									
									<div class="input-group-append">
										<button class="btn btn-info" type="button" disabled="disabled"
											id="registerForm-infoNo-btn" data-toggle="modal"
											data-target="#registerForm-infoNo-modal">상세보기</button>
									</div>
									
								</div> 
								<form:errors path="infoNo" />
							</td>
						</tr>
						<tr>
							<th>수수료 부담자</th>
							<td>
								<form:radiobutton path="chargeCover" value="RM" checked="checked" label="보내는분" /> 
								<form:radiobutton path="chargeCover" value="RC" label="받는분(송금수수료 제외)" /> 
								<form:radiobutton path="chargeCover" value="RA" label="받는분(송금수수료 포함)" />
							</td>
						</tr>
					</table>
					<br>
					<div class="font-weight-bold">
						<i class="material-icons md-18 align-middle text-info">monetization_on</i><span
							class="align-middle">송금액 및 계좌 정보</span>
					</div>
					<table class="table table-sm">
						<tr>
							<th>계좌 유형 선택</th>
							<td>
								<form:radiobutton path="accType" value="원화계좌출금" checked="checked" label="원화계좌출금" /> 
								<form:radiobutton path="accType" value="외화계좌출금" label="외화계좌출금" /> 
							</td>
						</tr>
						<tr>
							<th>송금계좌선택</th>
							<td>
								<div class="input-group">
									<form:select class="custom-select" path="accNo">
										<form:option value="">계좌를 선택하세요</form:option>
										<c:forEach items="${ accountList }" var="account">
											<form:option value="${ account.accNo }">
												[${account.type }] ${ account.accNo } ( ${ account.accName } )
											</form:option>
										</c:forEach>
									</form:select>
									<div class="input-group-append">
										<button class="btn btn-info" type="button">잔액조회</button>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>송금 금액</th>
							<td>
								<div class="input-group mb-2">
									<div class="input-group-prepend">
										<span class="input-group-text" id="input-group-phone-code">KRW</span>
									</div>
									<form:input path="amount" type="text" class="form-control"
										placeholder="0.00" id="krwAmountInput" />
								</div>
								<div class="text-center">
									<span class="material-icons">cached</span>
								</div>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text" id="input-group-phone-code">미지정</span>
									</div>
									<input type="text" class="form-control" placeholder="0.00"
										id="otherAmountInput">
								</div>
								<div>
									적용환율 : 
									<span class="text-danger">통화 미지정</span>
								</div>
							</td>
						</tr>
						<tr>
							<th>송금 계좌 비밀번호</th>
							<td><input type="password" class="form-control"></td>
						</tr>
						<tr>
							<th>수수료출금계좌</th>
							<td>
								<div class="input-group">
									<form:select class="custom-select" path="chargeAccNo">
										<form:option value="">계좌를 선택하세요</form:option>
										<c:forEach items="${ accountList }" var="account">
											<form:option value="${ account.accNo }">[${account.type }] ${ account.accNo } ( ${ account.accName } )</form:option>
										</c:forEach>
									</form:select>
									<div class="input-group-append">
										<button class="btn btn-info" type="button">잔액조회</button>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>수수료 출금계좌 비밀번호</th>
							<td><input type="password" class="form-control"></td>
						</tr>
						<tr>
							<th>송금수수료</th>
							<td>
								<form:input class="form-control" path="remCharge" disabled="true"/>
							</td>
						</tr>
						<tr>
							<th>중계수수료</th>
							<td>
								<form:input class="form-control" path="interCharge" disabled="true"/>
							</td>
						</tr>
						<tr>
							<th>전신료</th>
							<td>
								<form:input class="form-control" path="cableCharge" disabled="true"/>
							</td>
						</tr>
						<tr>
							<th>총출금금액(원화)</th>
							<td id="krwTotal"></td>
						</tr>
						<tr>
							<th>총출금금액(외화)</th>
							<td id="otherTotal"></td>
						</tr>
					</table>

					<div class="text-center">
					
					<button class="btn btn-light" type="button">다시 입력하기</button>
					<button class="btn btn-info" type="submit">해외송금하기</button>
					</div>
					
				</form:form>
			</div>
		</div>
	</div>
	<!-- remRegisterForm page close -->


	<!-- Modal start -->


	<!-- 보내는 분(내정보) 상세 -->
	<div class="modal" id="registerForm-myData-modal">
		<div
			class="modal-dialog modal-dialog-scrollable modal-lg modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header bg-info">
					<h5 class="modal-title text-white">보내는 분 상세</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div class="font-weight-bold">
						<i class="material-icons md-18 align-middle text-info">person</i><span
							class="align-middle">보내는 분 정보</span>
					</div>
					<table class="table table-sm">
						<tr>
							<th colspan="2">영문이름</th>
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
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary">수정하기</button>
					<button type="button" class="btn btn-info" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>
	<!-- 보내는 분(내정보) 상세 끝~~~ -->

	<!-- 받는 분 정보 상세 -->
	<div class="modal" id="registerForm-infoNo-modal">
		<div
			class="modal-dialog modal-dialog-scrollable modal-lg modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header bg-info">
					<h5 class="modal-title text-white">보내는 분 상세</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!-- Modal body -->
				<div class="modal-body" id="registerForm-remNo-modal-body"></div>

				<div class="modal-footer">
					<button type="button" class="btn btn-info" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>
	<!-- 받는 분 정보 상세 -->





	<!-- Modal end -->


	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>

	<script type="text/javascript">
		$('#krwAmountInput').keyup(function() {

			var amount = parseFloat($(this).val());
			var currencyCode = $('#registerForm-infoNo-select').children('option:selected').data('currency')
			
			
			if(currencyCode !== undefined ){
				$.ajax({
					url : '${pageContext.request.contextPath}/country/remittance/' + currencyCode,
					type : 'get',
					success : function(data) {
						var rate = parseFloat(data);
						console.log(rate)
						console.log(typeof rate)
						if($('#krwAmountInput').val().length > 0 || rate != 0){
							$('#otherAmountInput').val((amount / rate).toFixed(2))
							
						}
						
					},
					error : function() {
						alert('실패')
					}
				})
				
				
				
			}
			 
			 
			 
			

		})

		$('#registerForm-infoNo-select').change(
				function() {
					var optionValue = $('#registerForm-infoNo-select').children(
							'option:selected').val();
					if (optionValue == '') {
						$('#registerForm-infoNo-btn').attr('disabled', 'disabled')
					} else {
						$('#registerForm-infoNo-btn').removeAttr('disabled');
						
					}

				})

		$('#registerForm-infoNo-btn').on('click',
				function() {
					var infoNo = $('#registerForm-infoNo-select').children('option:selected').val();
					
					$.ajax({
						url : '${pageContext.request.contextPath}/remInfo/'	+ infoNo,
						type : 'get',
						success : function(data) {
							//console.log('통신성공~!');
							$('#registerForm-infoNo-modal-body').html(data)
						},
						error : function() {
							alert('실패')
						}
					})
				})
	</script>
</body>
</html>
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
								<textarea class="form-control text-secondary p-3"  style="resize:none" rows="5" disabled="disabled">1. 순수한 증여성 송금 이외의 해외부동산 취득, 유학생경비, 재외동포 국내재산반출, 해외차입금 상환등을 목적으로 송금하실 경우에는 외국환거래규정에 위배되므로 유의 하셔야 합니다.&#13;&#10;2. "증빙서류 미제출 송금"은 당행의 모든 채널을 통해 동일한 수취인앞으로 송금된 누계액이 미화 5만불 상당액을 초과하는 경우 인터넷/모바일 등 비대면 채널을 통한 송금이 불가합니다.&#13;&#10;3. 해외예금(신탁)계약, 금전대차계약, 증권취득, 회원권 취득 등 자본거래를 위해 건당 미화 5천불 상당액 이하로 분할 송금시, 분할된 송금액의 합계가 미화 5천불 상당액을 초과하면 외국환거래규정에 따른 자본 거래 신고를 하여야 하므로 영업점을 방문하셔서 사전신고 및 송금거래 하시기 바랍니다.
								</textarea>
								<div class="text-right">
									 <input type="checkbox" class="form-check-input align-middle" id="checkReason">
    								<label class="form-check-label" for="checkReason">확인함</label>
								</div>
							</td>
						</tr>
						<tr>
							<th>받는 분</th>
							<td>
								<div class="input-group">
								
									<form:select class="custom-select registerForm-infoNo-select" path="infoNo">
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
										<button class="btn btn-info registerForm-infoNo-btn" type="button" disabled="disabled" data-toggle="modal"
											data-target="#registerForm-infoNo-modal">상세보기</button>
									</div>
									
								</div> 
								<form:errors path="infoNo" />
							</td>
						</tr>
						<tr>
							<th>수수료 부담자</th>
							<td>
								<form:radiobutton class="chargeCover-radiobutton-cal" path="chargeCover" value="RM" checked="checked" label="보내는분" /> 
								<form:radiobutton class="chargeCover-radiobutton-cal" path="chargeCover" value="RC" label="받는분(송금수수료 제외)" /> 
								<form:radiobutton class="chargeCover-radiobutton-cal" path="chargeCover" value="RA" label="받는분(송금수수료 포함)" />
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
								<form:radiobutton class="accType-radiobutton" path="accType" value="원화계좌출금" checked="checked" label="원화계좌출금" /> 
								<form:radiobutton class="accType-radiobutton" path="accType" value="외화계좌출금" label="외화계좌출금" /> 
							</td>
						</tr>
						<tr>
							<th>송금계좌선택</th>
							<td>
								<!-- 원화계좌출금  -->
								<div class="input-group rem-krwAccount-input-group">
									<form:select class="custom-select" path="accNo" disabled="false">
										<form:option value="">계좌를 선택하세요</form:option>
										<c:forEach items="${ accountList }" var="account">
										<c:if test="${ account.type eq '03' }">
											<form:option value="${ account.accNo }">
												[ 자유입출금 ] ${ account.accNo } ( ${ account.accName } )
											</form:option>
										</c:if>
										</c:forEach>
									</form:select>
									<div class="input-group-append">
										<button class="btn btn-info registerForm-accNo-btn" type="button">잔액조회</button>
									</div>
								</div>
								
								<!-- 외화계좌출금  -->
								<div class="input-group d-none rem-otherAccount-input-group">
									<form:select class="custom-select" id="otherAccNo" path="accNo" disabled="true">
										<form:option value="">계좌를 선택하세요</form:option>
										<c:forEach items="${ accountList }" var="account">
										<c:if test="${ account.type eq '04'}">
											<form:option value="${ account.accNo }" data-currency="${ account.currency }">
												[ 외화 - ${ account.currency } ] ${ account.accNo } ( ${ account.accName } )
											</form:option>
										</c:if>
										</c:forEach>
									</form:select>
									<div class="input-group-append">
										<button class="btn btn-info registerForm-otherAccNo-btn" type="button">잔액조회</button>
									</div>
								</div>
								
								<div class="text-secondary remRegister-mainAccountBalance"></div>
							</td>
						</tr>
						<tr>
							<th>송금 금액</th>
							<td class="remittanceAmount">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text registerForm-amount-krw-prepend">KRW</span>
									</div>
									<form:input path="amount" type="text" class="form-control krwAmountInput"
										placeholder="0.00" />
								</div>
								<div class="text-center align-middle accType-hideAndShow">
									<span class="material-icons">cached</span>
								</div>
								<div class="input-group accType-hideAndShow">
									<div class="input-group-prepend">
										<span class="input-group-text registerForm-amount-other-prepend">미지정</span>
									</div>
									<input type="text" class="form-control otherAmountInput" placeholder="0.00">
								</div>
								<div class="text-secondary accType-hideAndShow">
									적용환율 : 
									<span class="registerForm-amount-remittanceRate">통화 미지정</span>
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
								<div class="input-group rem-chargeAccount-input-group">
									<form:select class="custom-select" path="chargeAccNo">
										<form:option value="">계좌를 선택하세요</form:option>
										<c:forEach items="${ accountList }" var="account">
										<c:if test="${ account.type eq '03' }">
											<form:option value="${ account.accNo }">
											[ 자유입출금 ] ${ account.accNo } ( ${ account.accName } )
											</form:option>
										</c:if>	
										</c:forEach>
									</form:select>
									<div class="input-group-append">
										<button class="btn btn-info registerForm-chargeAccNo-btn" type="button">잔액조회</button>
									</div>
								</div>
								<div class="text-secondary" id="remRegister-chargeAccountBalance"></div>
							</td>
						</tr>
						<tr>
							<th>수수료 출금계좌 비밀번호</th>
							<td><input type="password" class="form-control"></td>
						</tr>
						<tr>
							<th>송금수수료</th>
							<td>
								<form:input class="form-control remForm-remCharge" path="remCharge" readonly="true" value="3000"/>
							</td>
						</tr>
						<tr>
							<th>중계수수료</th>
							<td>
								<form:input class="form-control remForm-interCharge" path="interCharge" readonly="true" value="23000"/>
							</td>
						</tr>
						<tr>
							<th>전신료</th>
							<td>
								<form:input class="form-control" path="cableCharge" readonly="true" value="5000"/>
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
				<div class="modal-body" id="registerForm-infoNo-modal-body"></div>

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


	<!------------------------------------------------------------ JS  ------------------------------------------------------------>
	<script type="text/javascript">
	
		//계좌 유형에 따라 표시되는 계좌 달라짐 & amount는 현지통화방식
		$('.accType-radiobutton').change(function(){
			$('.remRegister-mainAccountBalance').empty();
			var accType = $(this).val()
			if(accType == '원화계좌출금'){
				//원화출금계좌
				$('.rem-krwAccount-input-group').removeClass("d-none")
				$('.rem-krwAccount-input-group select').prop("disabled", false)
				$('.rem-otherAccount-input-group select').prop("disabled", true)
				$('.rem-otherAccount-input-group').addClass("d-none")
				
				$('.accType-hideAndShow').show()
				$('.registerForm-amount-krw-prepend').text('KRW')
			}else{
				//외화출금계좌 선택
				$('.rem-otherAccount-input-group').removeClass("d-none")
				$('.rem-otherAccount-input-group select').prop("disabled", false)
				$('.rem-krwAccount-input-group select').prop("disabled", true)
				$('.rem-krwAccount-input-group').addClass("d-none")
				
				$('.accType-hideAndShow').hide()
				
				var optionValue = $('.registerForm-infoNo-select').children('option:selected').val();
				if(optionValue != ''){
					var currencyCode = $('.registerForm-infoNo-select').children('option:selected').data('currency')
					$('.registerForm-amount-krw-prepend').text(currencyCode)
				}else{
					$('.registerForm-amount-krw-prepend').text('미지정')
				}
				
			}
		})
	
		//수수료 계산기
		$('.chargeCover-radiobutton-cal').change(function(){
			var chargeCoverVal = $(this).val()
			var remCharge = $('.remForm-remCharge').val()
			var interCharge = $('.remForm-interCharge').val()
			
			if(chargeCoverVal == 'RM'){
				//보내는 분 부담 - (보내는분)전신료, 송금수수료, 중계수수료
				$('.remForm-interCharge').val(23000)
				$('.remForm-remCharge').val(3000)
			}else if(chargeCoverVal == 'RC'){
				//받는 분(송금수수료제외) 부담 - (보내는분)전신료, 송금수수료
				$('.remForm-interCharge').val(0)
				$('.remForm-remCharge').val(3000)
			}else{
				//받는 분(송금수수료 포함) 부담 - (보내는분)전신료
				$('.remForm-interCharge').val(0)
				$('.remForm-remCharge').val(0)
			}
			
		})
	
		// 원화를 입력하면 해외 통화 값 자동으로 변환
		$('.krwAmountInput').keyup(function() {
			var amount = parseFloat($(this).val());
			var currencyCode = $('.registerForm-infoNo-select').children('option:selected').data('currency')
			
			if(currencyCode !== undefined ){
				$.ajax({
					url : '${pageContext.request.contextPath}/country/remittance/' + currencyCode,
					type : 'get',
					success : function(data) {
						var rate = parseFloat(data);
						if($('.krwAmountInput').val().length > 0 || rate != 0){
							$('.otherAmountInput').val((amount / rate).toFixed(2))
						}else{
							$('.otherAmountInput').val(0.00)
						}
					},
					error : function() {
						alert('원화를 입력하면 해외 통화 값 자동으로 변환')
					}
				})
			}
		})
		
		// 다른 통화 금액을 입력하면 원화 값 자동으로 변환
		$('.otherAmountInput').keyup(function() {
			var amount = parseFloat($(this).val());
			var currencyCode = $('.registerForm-infoNo-select').children('option:selected').data('currency')
			
			
			if(currencyCode !== undefined ){
				$.ajax({
					url : '${pageContext.request.contextPath}/country/remittance/' + currencyCode,
					type : 'get',
					success : function(data) {
						var rate = parseFloat(data);
						if($('.otherAmountInput').val().length > 0 || rate != 0){
							$('.krwAmountInput').val((amount * rate).toFixed(2))
							
						}
						
					},
					error : function() {
						alert('다른 통화 금액을 입력하면 원화 값 자동으로 변환')
					}
				})
			}
		})
		
		//계좌 잔액 구하기 ajax
		function getAccountBalance(accNo, divSection){
			$.ajax({
				url : '${pageContext.request.contextPath}/account/balance/' + accNo,
				type : 'get',
				success : function(data) {
					divSection = '.' + divSection;
					//var addBalance = document.getElementById(divSection);
					//addBalance.append('잔액 : ' + data)
					$(divSection).empty();
					$(divSection).text('잔액 : ' + data)
				},
				error : function() {
					alert('계좌잔액구하기 에러')
				}
			})
		}
		
		//원화계좌 잔액 조회
		$('.registerForm-accNo-btn').on('click', function(){
			var infoNo = $('.rem-krwAccount-input-group option:selected').val();
			getAccountBalance(infoNo, 'remRegister-mainAccountBalance');
		})
		//외화통장 잔액조회
		$('.registerForm-otherAccNo-btn').on('click', function(){
			var infoNo = $('.rem-otherAccount-input-group option:selected').val();
			getAccountBalance(infoNo, 'remRegister-mainAccountBalance');
		})
		//수수료통장 잔액 조회
		$('.registerForm-chargeAccNo-btn').on('click', function(){
			var infoNo = $('.rem-chargeAccount-input-group option:selected').val();
			getAccountBalance(infoNo, 'remRegister-chargeAccountBalance');
		})
		
		
		// 보낼 상대방 선택하면 상대방의 통화에 따라 통화명과 환율이 적용됨
		$('.registerForm-infoNo-select').change(function() {
					var optionValue = $('.registerForm-infoNo-select').children('option:selected').val();
					
					//상대방 선택안하면 btn 클릭 안됨
					if (optionValue == '') {
						$('.registerForm-infoNo-btn').attr('disabled', 'disabled')
					} else {
						$('.registerForm-infoNo-btn').removeAttr('disabled');
						var currencyCode = $('.registerForm-infoNo-select').children('option:selected').data('currency')
						
						//외화출금계좌에서 해당 currency만 클릭할수있게! 나머지 disabled
						$('.rem-otherAccount-input-group option').each(function(){
							optionCurrency = $(this).data('currency')
							if(optionCurrency != currencyCode){
								$(this).hide()
							}
						})
						
						// 선택한 infoNo의 통화코드 표시 
						$('.registerForm-amount-other-prepend').text(currencyCode)
						
						// 선택한 infoNo의 통화코드의 현재 환율 표시
						$.ajax({
								url : '${pageContext.request.contextPath}/country/remittance/' + currencyCode,
								type : 'get',
								success : function(data) {
									$('.registerForm-amount-remittanceRate').text(data)
									
									$('<input/>').attr({type:'hidden', name:'exchangeRate', value:data}).appendTo('form[name="remForm"]');									
								},
								error : function() {
									alert('선택한 infoNo의 통화코드의 현재 환율 표시')
								}
							})
						
					}

				})

		
		//받는 분 정보 상세 modal 띄우기		
		$('.registerForm-infoNo-btn').on('click',
				function() {
					var infoNo = $('.registerForm-infoNo-select').children('option:selected').val();
					
					$.ajax({
						url : '${pageContext.request.contextPath}/remInfo/'	+ infoNo,
						type : 'get',
						success : function(data) {
							//console.log('통신성공~!');
							$('#registerForm-infoNo-modal-body').html(data)
						},
						error : function() {
							alert('받는 분 정보 상세 modal 띄우기')
						}
					})
				})
	</script>
</body>
</html>
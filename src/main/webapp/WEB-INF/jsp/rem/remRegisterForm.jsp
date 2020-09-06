<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
	
	


	<!-- remRegisterForm page start -->
	
	<div class="container allAccount-con pt-3 pb-3">
		<div class="row">
			<!-- side menu col-md-3   -->
			<jsp:include page="/WEB-INF/jsp/include/remSideMenu.jsp"></jsp:include>
			
			<div class="col-md-9">
				
			<form:form name="remForm" commandName="remittanceVO" method="post" onsubmit="return true">
				<div>송금정보</div>
				
				<table class="table table-sm">
					<tr>
						<td>보내는 분</td>
						<td>
						<div class="input-group">
							<input type="text" class="form-control" value="${ loginVO.engName }" disabled="disabled">
							 <div class="input-group-append">
							    <button class="btn btn-info" type="button">상세보기</button>
							  </div>
						</div>
						</td>
					</tr>
					<tr>
						<td>송금사유</td>
						<td>
							<form:radiobutton path="reason" value="미화 $5,000 이하 송금" checked="checked" label="미화 $5,000 이하 송금" />
							<form:radiobutton path="reason" value="해외유학생 유학경비 송금" label="해외유학생 유학경비 송금" />
							<form:radiobutton path="reason" value="해외체재자 체재비 송금" label="해외체재자 체재비 송금" />
						</td>
					</tr>
					<tr>
						<td>받는 분</td>
						<td>
						<div class="input-group">
							<form:select class="custom-select" path="remNo">
								<form:option value="-1">받는 분을 선택하세요</form:option>
								<c:forEach items="${ remInfoList }" var="remInfo">
									<form:option value="${ remInfo.infoNo }">
										${ remInfo.name } ( ${ remInfo.bankName }, ${ remInfo.accNo } )
									</form:option>
								</c:forEach>
							</form:select>	
							<div class="input-group-append">
							    <button class="btn btn-info" type="button">상세보기</button>
							  </div>						
						</div>	
						</td>
					</tr>
					<tr>
						<td>수수료 부담자</td>
						<td>
							<form:radiobutton path="chargeCover" value="RM" checked="checked" label="보내는분" />
							<form:radiobutton path="chargeCover" value="RC" label="받는분(송금수수료 제외)" />
							<form:radiobutton path="chargeCover" value="RA" label="받는분(송금수수료 포함)" />
						</td>
					</tr>
				</table>
				<br>
				<div>송금액 및 계좌 정보</div>				
				<table class="table table-sm">
					<tr>
						<td>계좌 유형 선택</td>
						<td>
							<input type="radio" name="which" checked="checked" id="krwAccount" value="krw">
							<label for="krwAccount">원화계좌출금</label>
							<input type="radio" name="which" id="otherAccount" value="other">
							<label for="otherAccount">외화계좌출금</label>
						</td>
					</tr>
					<tr>
						<td>송금계좌선택</td>
						<td>
						<div class="input-group">
							<form:select class="custom-select" path="accNo">
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
						<td>송금 금액</td>
						<td>
							<div class="input-group mb-2">
								<div class="input-group-prepend">
							      <span class="input-group-text" id="input-group-phone-code">KRW</span>
							    </div>
								<form:input path="amount" type="text" class="form-control" id="krwAmountInput"/>
							</div>
							<div class="input-group">
								<div class="input-group-prepend">
							      <span class="input-group-text" id="input-group-phone-code">USD</span>
							    </div>
							    <input type="text" class="form-control" placeholder="0.00" id="otherAmountInput">
							</div>
						</td>
					</tr>
					<tr>
						<td>송금 계좌 비밀번호</td>
						<td>
							<input type="password" class="form-control">
						</td>
					</tr>
					<tr>
						<td>수수료출금계좌</td>
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
						<td>수수료 출금계좌 비밀번호</td>
						<td>
							<input type="password" class="form-control">
						</td>
					</tr>
					<tr>
						<td>총출금금액(원화)</td>
						<td id="krwTotal">
							
						</td>
					</tr>
					<tr>
						<td>총출금금액(외화)</td>
						<td id="otherTotal">
						
						</td>
					</tr>
				</table>
				
				<div>송금상세</div>
				<table class="table table-sm">
				
				</table>
				
				<button type="submit" >다음</button>
			</form:form>
			</div>
		</div>
	</div>
	<!-- remRegisterForm page close -->
	
	
	<!-- Modal -->
	<!-- The Modal -->
	<div class="modal" id="myModal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	
	
	      <!-- Modal body -->
	      <div class="modal-body">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        Modal body..
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	      </div>
	
	    </div>
	  </div>
	</div>





	<!-- Modal -->
	
	
	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
	
	<script type="text/javascript">
	$('#krwAmountInput').keypress(function() {
		
		console.log(this.value)
		
	})
	</script>
</body>
</html>
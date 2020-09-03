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
						<td>내정보</td>
						<td>
							${ loginVO.engName }
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">상세보기</button>
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
						<td>수취인 정보</td>
						<td>
							<select name="infoNo">
								<option value="">---선택하세요---</option>
								<c:forEach items="${ remInfoList }" var="remInfo">
									<option value="${ remInfo.infoNo }">[${ remInfo.currency }]${ remInfo.name } ( ${ remInfo.accNo } )</option>
								</c:forEach>
							</select>
							<button type="button">상세보기</button>
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
							<select name="accNo">
								<option value="">---선택하세요---</option>
								<c:forEach items="${ accountList }" var="account">
									<option value="${ account.accNo }">[${account.type }] ${ account.accNo } ( ${ account.accName } )</option>
								</c:forEach>
							</select>
							<button type="button">잔액조회</button>
						</td>
					</tr>
					<tr>
						<td>송금 금액</td>
						<td>
							<input type="text" name="amount">
						</td>
					</tr>
					<tr>
						<td>송금 계좌 비밀번호</td>
						<td>
							<input type="password">
						</td>
					</tr>
					<tr>
						<td>수수료출금계좌</td>
						<td>
							<select name="chargeAccNo">
								<option value="">---선택하세요---</option>
								<c:forEach items="${ accountList }" var="account">
									<option value="${ account.accNo }">[${account.type }] ${ account.accNo } ( ${ account.accName } )</option>
								</c:forEach>
							</select>
							<button type="button">잔액조회</button>
						</td>
					</tr>
					<tr>
						<td>수수료 출금계좌 비밀번호</td>
						<td>
							<input type="password">
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
</body>
</html>
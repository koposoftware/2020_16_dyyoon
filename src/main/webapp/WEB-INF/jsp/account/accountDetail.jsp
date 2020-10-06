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
				        <!-- 계좌목록록  -->
				        <div class=" p-3">
				        	<div style="font-size: 14px;">
				        		<span>${ account.accName }</span>
				        		<c:if test="${ not empty account.alias }">
				        			<span>( ${ account.alias } )</span>
				        		</c:if>
				        		<c:if test="${ account.favorite eq 'Y' }">
				        			<span class="badge badge-warning">대표계좌</span>
				        		</c:if>
				        	</div>
				        	<div style="font-size: 20px;">
				        		<span>${ account.accNo }</span>
				        		<span class="float-right">
				        			<c:if test="${ account.currency ne 'KRW' }">${ account.currency }</c:if>
				        			${ account.balanceConvert }
				        			<c:if test="${ account.currency eq 'KRW' }">원</c:if>
				        		</span>
				        		<br>
				        	</div>
				        	<form action="${ pageContext.request.contextPath }/account/statement" method="post">
				        	<div class="text-right mt-3">
								<button type="button" class="btn btn-outline-info" data-toggle="collapse" data-target="#demo">다른계좌선택</button>
								<div id="demo" class="collapse mt-3">
								<div class="input-group">
									<select class="form-control" name="accNo">
									  <c:forEach items="${ accountList }" var="account">
											<option value="${ account.accNo }">[ ${account.accName} ] ${ account.accNo }</option>
									  </c:forEach>
									</select>
								    <div class="input-group-append">
								      <button class="btn btn-secondary" type="submit">조회하기</button>
								    </div>
								</div>
								</div>
										
							</div>
							</form>
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
				        <th style="width: 15%;">거래일시</th>
				        <th style="width: 7%;">구분</th>
				        <th>보낸분/받는분</th>
				        <th>출금액(-)</th>
				        <th>입금액(+)</th>
				        <th>잔액</th>
				      </tr>
				    </thead>
				    <tbody>
				    <c:if test="${ not empty statement }">
				    <c:forEach items="${ statement }" var="statement">
				    	<tr>
				    		<td style="vertical-align: middle;">${ statement.stateDate }</td>
				    		<td style="vertical-align: middle;">${ statement.typeDesc }</td>
				    		<td style="vertical-align: middle;">${ statement.stateDesc }</td>
				    		<td style="vertical-align: middle; text-align: right;">
				    			<c:if test="${ statement.type eq '출금' }">
						    		<span class="text-danger">- ${ statement.amountConvert }</span>
				    			</c:if>
				    			<c:if test="${ statement.type ne '출금' }">0</c:if>
				    		</td>
				    		<td style="vertical-align: middle; text-align: right;">
				    			<c:if test="${ statement.type eq '입금' }">
						    		<span class="text-success">+ ${ statement.amountConvert }</span>
				    			</c:if>
				    			<c:if test="${ statement.type ne '입금' }">0</c:if>
				    		</td>
				    		<td style="vertical-align: middle; text-align: right;">${ statement.balanceConvert }</td>
				    	</tr>
				    </c:forEach>
				    </c:if>
				    </tbody>
				</table>
			</div>
		</div>
	</div>
</div>


<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
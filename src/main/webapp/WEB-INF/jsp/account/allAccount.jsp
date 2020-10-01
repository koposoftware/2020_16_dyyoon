<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
				<div>모든 계좌</div>
			</div>	
		</div>
		<div class="row pt-2">
			<jsp:include page="/WEB-INF/jsp/include/sideMenuAccount.jsp" />
			
		
			<div class="col-md-9 ">
				<div class="card">
					<div class="card-body container-fluid">
					<div class="row">
						<div class="col-md-8">
							<span class="material-icons md-36 align-bottom">account_balance</span>
							<span class="align-bottom font-weight-bold" style="font-size: 20px;">
								<span class="text-info"> ${ loginVO.name }</span>님의 총자산
							</span>
						</div>
						<div class="col-md-4">
							<span class=" float-right pt-1"  style="font-size: 20px;"> 600,000 원 </span>
						</div>
					</div>
					</div>
				</div>
				<div id="accordion" class="mt-3">
				  <div class="card">
				    <div class="card-header">
				      <a class="card-link" data-toggle="collapse" href="#collapseKRW">
				        	자유 입출금 계좌
				      </a>
				    </div>
				    <div id="collapseKRW" class="collapse show" data-parent="#accordion">
				      <c:forEach items="${ accountList }" var="account">
				      <c:if test="${ account.type eq '03' }">
					      <div class="card-body p-0">
					        <!-- 계좌모록  -->
					        <div class="p-3 border-bottom">
					        	<div style="font-size: 12px;">
					        		<span>${ account.accName }</span>
					        		<c:if test="${ not empty account.alias }">
					        		<span>( ${ account.alias } )</span>
					        		</c:if>
					        		<c:if test="${ account.favorite eq 'Y' }">
					        		<span class="badge badge-warning">대표계좌</span>
					        		</c:if>
					        	</div>
					        	<div style="font-size: 18px;">
					        		<span class="font-weight-bold">${ account.accNo }</span>
					        		<span class="float-right">  <fmt:formatNumber type="number" pattern="#,##0" value ="${ account.balance }" /> 원
					        		</span>
					        		<br>
					        	</div>
					        	<div class="d-flex justify-content-end mt-2">
					        		<button class="btn btn-outline-info btn-sm mr-1" data-value="${ account.accNo }">계좌관리</button>
					        		<button class="btn btn-outline-info btn-sm" data-value="${ account.accNo }">조회</button>
					        	</div>
					        </div>
					      </div>
					     </c:if>
				      </c:forEach>
				    </div>
				  </div>
				  
				  <div class="card">
				    <div class="card-header">
				      <a class="collapsed card-link" data-toggle="collapse" href="#collapseOther">
				        	외화 계좌
				      </a>
				    </div>
				    <div id="collapseOther" class="collapse" data-parent="#accordion">
				      <c:forEach items="${ accountList }" var="account">
				      <c:if test="${ account.type eq '04' }">
					      <div class="card-body p-0">
					        <!-- 계좌모록  --> 
					        <div class="p-3 border-bottom">
					        	<div style="font-size: 12px;">
					        		<span>${ account.accName }</span>
					        		<c:if test="${ not empty account.alias }">
					        		<span>( ${ account.alias } )</span>
					        		</c:if>
					        		<c:if test="${ account.favorite eq 'Y' }">
					        		<span class="badge badge-warning">대표계좌</span>
					        		</c:if>
					        	</div>
					        	<div style="font-size: 18px;">
					        		<span class="font-weight-bold">${ account.accNo }</span>
					        		<span class="float-right">  <fmt:formatNumber type="number" pattern="#,##0.00" value ="${ account.balance }" /> </span>
					        		<br>
					        	</div>
					        	<div class="d-flex justify-content-end mt-2">
					        		<button class="btn btn-outline-info btn-sm mr-1" data-value="${ account.accNo }">계좌관리</button>
					        		<button class="btn btn-outline-info btn-sm" data-value="${ account.accNo }">조회</button>
					        	</div>
					        </div>
					      </div>
					     </c:if>
				      </c:forEach>
				    </div>
				  </div>
				</div>
			</div>
		</div>
	</div>


<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
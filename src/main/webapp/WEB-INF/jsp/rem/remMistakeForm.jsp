<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/include/headcss.jsp"></jsp:include>
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
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
	
	
	<!-- remList page start -->
	
	<div class="container allAccount-con pb-3">
	
		<div class="row" style="color: #c6c6c6">
			<div class="col-md-12 d-flex justify-content-end whereThisPageIs">
				<span class="material-icons md-12 lineHeight mr-1">home</span>
				<div>Home</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>해외송금</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>착오송금 조회/신청</div>
			</div>	
		</div>
		
		
		<div class="row pt-2">
			<!-- side menu col-md-3   -->
			<jsp:include page="/WEB-INF/jsp/include/remSideMenu.jsp"></jsp:include>
			
			<div class="col-md-9">
			
			<div class="font-weight-bold text-body mb-2" style="font-size: 25px;">
				<i class="material-icons align-middle">error</i>
				<span class="align-middle">착오송금 조회/신고</span>
			</div>
			
			
			
			
			
			<form:form name="formMistake">
			<table class="table ">
				<tr>
					<th style="width:200px;">해외송금 내역 선택	</th>
					<td>
						<select class="form-control" name="remNo">
							<option value="">선택하세요</option>
							<c:forEach items="${ remittanceList }" var="remittance">
							<c:if test="${ remittance['STATUS'] eq 'RM' or remittance['STATUS'] eq 'IN' or remittance['STATUS'] eq 'RC' }">
								<option value="${ remittance['REM_NO'] }">
									[출금계좌] ${ remittance['MY_ACC_NO']} : ${ remittance['CURRENCY'] } ${ remittance['AMOUNT'] }
									</option>
							</c:if>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th>
						착오송금 사유 선택
					</th>
					<td>	
						<select class="form-control" name="reason">
							<option value="">선택하세요</option>
							<option value="계좌번호 기재 착오">계좌번호 기재 착오</option>
							<option value="금액 입력 오류">금액 입력 오류</option>
							<option value="이중입금">이중입금</option>
							<option value="기타사유">기타사유</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>착오송금 사유 상세</th>
					<td>
						<textarea rows="10" cols="70" name="reasonDesc" class="form-control"></textarea>
					</td>
				</tr>
			</table>
			
			<div class="text-center">
				<button class="btn btn-light" type="button">목록</button>
				<button class="btn btn-info" type="submit">착오송금 신고</button>
			</div>
			</form:form>
			
			
			
			
			</div>
		</div>
	</div>
	<!-- remList page close -->
	
	
	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/datepickerHS.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


	<!-- remInfo page start -->
	
	<div class="container allAccount-con pb-3">
		<div class="row" style="color: #c6c6c6">
			<div class="col-md-12 d-flex justify-content-end whereThisPageIs">
				<span class="material-icons md-12 lineHeight mr-1">home</span>
				<div>Home</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>해외송금</div>
				<div class="material-icons md-12 lineHeight">keyboard_arrow_right</div>
				<div>송금정보 조회/등록</div>
			</div>	
		</div>
	
	
	
		<div class="row pt-2">
			<!-- side menu col-md-3   -->
			<jsp:include page="/WEB-INF/jsp/include/remSideMenu.jsp"></jsp:include>
			
			<div class="col-md-9">
				<div class="font-weight-bold text-body mb-2 topTitle" style="font-size: 25px;">
					<i class="material-icons align-middle">how_to_reg</i>
					<span class="align-middle">송금정보 상세보기</span>
				</div>
				<!-- <div class="font-weight-bold">
					<i class="material-icons md-18 align-middle text-info" >person</i>
					<span class="align-middle">수취인 상세정보</span>
				</div> -->
				<div>
				<c:choose>
					<c:when test="${ remInfoDetail.status eq '비승인' }">
						<div class="alert alert-danger"><strong>승인현황</strong>  ${ remInfoDetail.status } - 사유 : ${ remInfoDetail.statusDesc }</div>
					</c:when>
					<c:when test="${ remInfoDetail.status eq '승인' }">
						<div class="alert alert-success"><strong>승인현황</strong>  ${ remInfoDetail.status }</div>
					</c:when>
					<c:otherwise>
						<div class="alert alert-secondary"><strong>승인현황</strong>  ${ remInfoDetail.status }</div>
					</c:otherwise>
				</c:choose>
				</div>
				<table class="table">
					<tr>
						<th colspan="2">영문이름</th>
						<td>${ remInfoDetail.name }</td>
					</tr>
					<tr>
						<th colspan="2">전화번호</th>
						<td>${ remInfoDetail.phone }</td>
					</tr>
					<tr>
						<th colspan="2">이메일</th>
						<td>${ remInfoDetail.email }</td>
					</tr>
					<tr>
						<th rowspan="3">영문주소</th>
						<th>국가</th>
						<td>${ remInfoDetail.nation }</td>
					</tr>
					<tr>
						<th >주소</th>
						<td>${ remInfoDetail.addr }</td>
					</tr>
					<tr>
						<th>세부주소</th>
						<td>${ remInfoDetail.addrDetail }</td>
					</tr>
					<tr>
						<th colspan="2">통화</th>
						<td>${ remInfoDetail.currency }</td>
					</tr>
					<tr>
						<th colspan="2">은행명</th>
						<td>${ remInfoDetail.bankName }</td>
					</tr>
					<tr>
						<th colspan="2">계좌번호</th>
						<td>${ remInfoDetail.accNo }</td>
					</tr>
					<tr>
						<th colspan="2">은행코드</th>
						<td>${ remInfoDetail.bankCode }</td>
					</tr>
					<tr>
						<th rowspan="3">은행주소</th>
						<th >은행국가</th>
						<td>${ remInfoDetail.bankNation }</td>
					</tr>
					<tr>
						<th>은행주소</th>
						<td>${ remInfoDetail.bankAddr }</td>
					</tr>
					<tr>
						<th>세부주소</th>
						<td>${ remInfoDetail.bankAddrDetail }</td>
					</tr>
					<c:if test="${ status ne 'remittanceConfirm' }">
					<tr>
						<th colspan="2">직원앞 전달사항</th>
						<td>${ remInfoDetail.myDesc }</td>
					</tr>
					</c:if>
					
				</table>
			
			
				<div class="text-center">
					<button class="btn btn-light">삭제</button>
					<button class="btn btn-info" onclick="window.location.href='${ pageContext.request.contextPath }/remInfo/register'">목록</button>
				</div>
			</div>
		</div>
	</div>
	<!-- remInfo page close -->
	
	
<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
<script>
$(document).ready(function(){
	$("#table-rem-info tbody tr").on('click', function() {
		var remNo = $(this).data("value");
		console.log(remNo);
		
		$(this).siblings().removeClass("table-active");
		$(this).addClass("table-active");
		
		$.ajax({
			url : '${pageContext.request.contextPath}/remInfoAjax/' + remNo,
			type : 'get',
			success : function(data){
				//console.log('통신성공~!');
				$('#viewRemInfo').empty();
				$('#viewRemInfo').html(data)
 			},
			error : function(){
				alert('실패')
			}
		})
        
        
      });
});
</script>
</body>
</html>
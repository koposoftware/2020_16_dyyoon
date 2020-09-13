<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/include/headcss.jsp"></jsp:include>
<style>
	.error{
		color : red;
	}
</style>

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
				<div>송금 정보 등록</div>
			</div>	
		</div>
		
		
		<div class="row pt-2">
			<!-- side menu col-md-3   -->
			<jsp:include page="/WEB-INF/jsp/include/remSideMenu.jsp"></jsp:include>
			
			<div class="col-md-9">
			
			<div class="font-weight-bold text-body mb-2" style="font-size: 25px;">
				<i class="material-icons align-middle">how_to_reg</i>
				<span class="align-middle">송금 정보 등록</span>
			</div>
			
			<div style="height:40px;" class="mb-2">
				<img style="height:100%;" class="float-right d-block" alt="" src="${ pageContext.request.contextPath }/resources/images/step1.png">
			</div>
			
			
			<div class="d-flex">
			
				<div class="font-weight-bold"><i class="material-icons md-18 align-middle text-info" >person</i><span class="align-middle">보내는 분 정보</span></div>
				<button type="button" class="btn btn-secondary ml-auto" data-toggle="modal" data-target="#remInfo-myData-modify-modal">내 정보 수정하기</button>
			</div>
			<table class="table table-sm">
				<tr>
					<th colspan="2">영문성명</th>
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


			<form:form commandName="remInfoVO" method="post">
			<br>
			
			<div class="d-flex">
				<div class="font-weight-bold"><i class="material-icons md-18 align-middle text-info" >person</i><span class="align-middle">받는 분 정보</span></div>
				<button type="button" class="btn btn-secondary ml-auto" data-target="#reminfo-ask-modal" data-toggle="modal">입력 요청하기</button>
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
						      <span class="input-group-text" id="input-group-phone-code">+ 000</span>
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
							<form:select class="custom-select" path="nation" id="rcNationSelect">
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
							<form:input path="currency"  class="form-control" id="currencyInput" readonly="true"/>
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
				<div class="text-center">
				<button type="submit" class="btn btn-info">송금정보 등록</button>
				</div>		
			</form:form>
			</div>
		</div>
	</div>
	<!-- remInfo page close -->
	
	
	<!-- modal 시작 -->
	<div class="modal" id="remInfo-myData-modify-modal">
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
				<form action="${ pageContext.request.contextPath }/member/modify" method="POST">
				<!-- Modal body -->
				<div class="modal-body">
					<div class="font-weight-bold">
						<i class="material-icons md-18 align-middle text-info">person</i><span
							class="align-middle">보내는 분 정보</span>
					</div>
					<table class="table table-sm">
						<tr>
							<th colspan="2">영문이름</th>
							<td><input type="text" class="form-control" value="${ loginVO.engName }" name="engName"></td>
						</tr>
						<tr>
							<th colspan="2">전화번호</th>
							<td><input type="text" class="form-control" value="${ loginVO.phone }" name="phone"></td>
						</tr>
						<tr>
							<th colspan="2">이메일</th>
							<td><input type="text" class="form-control" value="${ loginVO.email }" name="email"></td>
						</tr>
						<tr>
							<th rowspan="2">영문주소</th>
							<th>주소</th>
							<td><input type="text" class="form-control" value="${ loginVO.addr }" name="addr"></td>
						</tr>
						<tr>
							<th>세부주소</th>
							<td><input type="text" class="form-control" value="${ loginVO.addrDetail }" name="addrDetail"></td>
						</tr>
					</table>
				</div>

				<div class="modal-footer">
					<button type="submit" class="btn btn-secondary">수정하기</button>
					<button type="button" class="btn btn-info" data-dismiss="modal">닫기</button>
				</div>
				</form>

			</div>
		</div>
	</div>
	
	
	<!-- 받는 분에게 직접 요청할 수 있게 이메일 입력하는 modal  -->
	<div class="modal" id="reminfo-ask-modal">
		<div class="modal-dialog modal-dialog-scrollable modal-lg modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header bg-info">
					<h5 class="modal-title text-white">받는 분 정보 요청하기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!-- Modal body -->
				<div class="modal-body deleteAllModalBody">
					<div class="font-weight-bold">
						<i class="material-icons md-18 align-middle text-info">email</i><span
							class="align-middle">받는 분 이메일 입력</span>
					</div>
					<input type="email" class="form-control mt-3" id="sendEmailAddr-input" placeholder="이메일을 입력해주세요(@ 포함)">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" id="sendEmailAddr-btn">요청하기</button>
					<button type="button" class="btn btn-info" data-dismiss="modal">닫기</button>
				</div>

				</div>
		</div>
	</div>
	
	
	
	
	<!-- modal 끝 -->
	
	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
	<script>
	$(document).ready(function(){
	  $('[data-toggle="tooltip"]').tooltip();
	  
	  $('#rcNationSelect').change(function(){
		   
		  //console.log($(this).val())
		  //console.log($(this).children('option:selected').data('value'))
		  $('#currencyInput').val($(this).children('option:selected').data('value'))
		  $('#input-group-phone-code').text('+ ' + $(this).children('option:selected').data('phone'))
	  })
	  
	  $('.bankCode-btn').on('click', function(){
		$('input[name="bankName"]').val('Bank of 000')
		$('input[name="bankNation"]').val('US')
		$('input[name="bankAddr"]').val('New York, ABCD Street')
		$('input[name="bankAddrDetail"]').val('JKH Building 123')
		
	})
	  
	  //이메일로 송금정보 등록을 요청하는 AJAX
	  $('#sendEmailAddr-btn').on('click', function(){
		  //alert($('#sendEmailAddr-input').val())
		  var emailAddr = $('#sendEmailAddr-input').val()
		  
		  if(emailAddr == '' || emailAddr.indexOf('@') == -1){
			  alert('이메일을 올바르게 입력하세요')
		  }else{
			  $.ajax({
				  url : '${ pageContext.request.contextPath }/remInfo/ask/ajax',
				  type : 'post',
				  dataType : "json", 
				  data : {'emailAddr': emailAddr},
				  success : function(data){
					  
					  $('#sendEmailAddr-btn').hide()
					  
					  var dataMsg = data['msg']
					  $('.deleteAllModalBody').empty()
					  
					  var str = '';
					  str += '<div class="text-center align-middle mt-4 mb-4">'
					  str += '<span class="material-icons align-middle">thumb_up_alt</span>'
					  str += '<span class="align-middle">'						  
					  str += dataMsg
					  str += '</span>'
					  str += '</div>'
					  
					  $('.deleteAllModalBody').html(str)
				  },
				  error : function(){
					  alert('이메일 통신에 실패했습니다')
				  },
			  })
			  
			  
		  }
	  })
	  
	});
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="font-weight-bold">
	<i class="material-icons md-18 align-middle text-info" >person</i>
	<span class="align-middle">수취인 상세정보</span>
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
</table>
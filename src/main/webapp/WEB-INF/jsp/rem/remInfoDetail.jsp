<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ remInfoDetail.status eq '비승인' }">
	<div>${ remInfoDetail.statusDesc } </div>
</c:if>
<div>상세정보</div>
<table class="table table-sm">
	<tr>
		<td colspan="2">영문이름</td>
		<td>${ remInfoDetail.name }</td>
	</tr>
	<tr>
		<td colspan="2">전화번호</td>
		<td>${ remInfoDetail.phone }</td>
	</tr>
	<tr>
		<td colspan="2">이메일</td>
		<td>${ remInfoDetail.email }</td>
	</tr>
	<tr>
		<td rowspan="3">영문주소</td>
		<td>국가</td>
		<td>${ remInfoDetail.nation }</td>
	</tr>
	<tr>
		<td >주소</td>
		<td>${ remInfoDetail.addr }</td>
	</tr>
	<tr>
		<td>세부주소</td>
		<td>${ remInfoDetail.addrDetail }</td>
	</tr>
	<tr>
		<td colspan="2">통화</td>
		<td>${ remInfoDetail.currency }</td>
	</tr>
	<tr>
		<td colspan="2">은행명</td>
		<td>${ remInfoDetail.bankName }</td>
	</tr>
	<tr>
		<td colspan="2">은행코드</td>
		<td>${ remInfoDetail.bankCode }</td>
	</tr>
	<tr>
		<td rowspan="3">은행주소</td>
		<td >은행국가</td>
		<td>${ remInfoDetail.bankNation }</td>
	</tr>
	<tr>
		<td>은행주소</td>
		<td>${ remInfoDetail.bankAddr }</td>
	</tr>
	<tr>
		<td>세부주소</td>
		<td>${ remInfoDetail.bankAddrDetail }</td>
	</tr>
	<tr>
		<td colspan="2">직원전달사항</td>
		<td>${ remInfoDetail.myDesc }</td>
	</tr>
</table>
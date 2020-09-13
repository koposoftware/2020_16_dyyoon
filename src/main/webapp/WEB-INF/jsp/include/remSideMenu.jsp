<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="col-md-3">
	<ul class="nav flex-column remSideMenu">
	  <li class="nav-item text-info sideMenu-head">
	    	해외송금
	  </li>
	  <li class="nav-item sideMenu-content">
	    <a class="nav-link" href="${ pageContext.request.contextPath}/remInfo">송금정보조회</a>
	  </li>
	  <li class="nav-item sideMenu-content">
	    <a class="nav-link" href="${ pageContext.request.contextPath}/remInfo/register">송금정보등록</a>
	  </li>
	  <li class="nav-item sideMenu-content">
	    <a class="nav-link" href="${ pageContext.request.contextPath}/remittance">해외송금신청</a>
	  </li>
	  <li class="nav-item sideMenu-content">
	    <a class="nav-link" href="${ pageContext.request.contextPath}/remittance/reserve ">해외송금예약</a>
	  </li>
	  <li class="nav-item sideMenu-content">
	    <a class="nav-link" href="${ pageContext.request.contextPath}/remittance/list ">송금내역조회</a>
	  </li>
	  <li class="nav-item sideMenu-content">
	    <a class="nav-link" href="${ pageContext.request.contextPath}/remittance/mistake ">착오송금신고</a>
	  </li>
	</ul>
	
</div>
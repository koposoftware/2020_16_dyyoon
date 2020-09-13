<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="col-md-3">
	<ul class="nav flex-column remSideMenu">
	  <li class="nav-item text-info sideMenu-head">
	    	해외송금 관리
	  </li>
	  <li class="nav-item sideMenu-content">
	    <a class="nav-link" href="${ pageContext.request.contextPath}/admin">오늘의 해외송금</a>
	  </li>
	  <li class="nav-item sideMenu-content">
	    <a class="nav-link" href="${ pageContext.request.contextPath}/admin/remInfo ">송금정보 승인</a>
	  </li>
	  <li class="nav-item sideMenu-content">
	    <a class="nav-link" href="${ pageContext.request.contextPath}/admin">보낸 해외송금 승인</a>
	  </li>
	  <li class="nav-item sideMenu-content">
	    <a class="nav-link" href="${ pageContext.request.contextPath}/admin">받은 해외송금 승인</a>
	  </li>
	  <li class="nav-item sideMenu-content">
	    <a class="nav-link" href="${ pageContext.request.contextPath}/admin">착오송금 처리</a>
	  </li>
	</ul>
	
</div>
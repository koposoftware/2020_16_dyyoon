<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/include/headcss.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/include/headerSec.jsp"></jsp:include>
	<!-- page-header-start -->
	<div class="page-breadcrumb">
		<div class="container">
			<div class="row">
				<div class=" col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li>About</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<!-- page-header-close -->

	<div class="container">
		<div class="row d-flex justify-content-center h-75 align-items-center">
			<!-- <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12"> -->
			<div class="col-6 text-center">
				<form name="loginF" action="#" method="post">
				<br><h3>환영합니다</h3><br>
					<input class="form-control" type="text" name="id" placeholder="아이디">
					<br>
					<input class="form-control" type="password" name="password" placeholder="비밀번호">
					<br>
					<input class="btn btn-info btn-block" type="submit" value="로그인" id="loginSubmit">
				</form>
			</div>
		</div>
	</div>




	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
</body>
</html>
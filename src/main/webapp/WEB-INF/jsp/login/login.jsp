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

	<div class="container">
		<div class="row d-flex justify-content-center h-75 align-items-center">
			<!-- <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12"> -->
			<div class="col-6 text-center mt-5 pt-5">
				<form name="loginF" action="${ pageContext.request.contextPath }/login" method="post">
				<br><h3>환영합니다</h3><br>
					<input class="form-control" type="text" name="id" placeholder="아이디" value="hong">
					<br>
					<input class="form-control" type="password" name="password" placeholder="비밀번호" value="1234">
					<br>
					<input class="btn btn-info btn-block" type="submit" value="로그인" id="loginSubmit">
				</form>
			</div>
		</div>
	</div>




	<jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.5.1.min.js" type="text/javascript"></script>
<!-- popper.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${ pageContext.request.contextPath }/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${ pageContext.request.contextPath }/resources/js/menumaker.js" type="text/javascript"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/jquery.sticky.js"></script>
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/sticky-header.js"></script>

<!-- notify js 알람창 -->
<script src="${ pageContext.request.contextPath }/resources/js/notify.js"></script>
<!-- toast alarm 창 -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
</body>
</html>
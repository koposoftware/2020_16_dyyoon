<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Tippy</title>
    <!-- css include   -->
<jsp:include page="/WEB-INF/jsp/include/headcss.jsp"></jsp:include>
    <script src="https://unpkg.com/@popperjs/core@2"></script>
    <script src="https://unpkg.com/tippy.js@6"></script>
    <script src="${ pageContext.request.contextPath }/resources/js/jquery-3.5.1.min.js" type="text/javascript"></script>
    <script>
    	$(document).ready(function(){
    		
		      tippy('#myButton', {
		        content: 'My tooltip!',
		      });
    	})
      // With the above scripts loaded, you can call `tippy()` with a CSS
      // selector and a `content` prop:
    </script>
  </head>
  <body>
  	<jsp:include page="/WEB-INF/jsp/include/headerSec.jsp"></jsp:include>
    <button id="myButton">My button</button>
    
    

    <jsp:include page="/WEB-INF/jsp/include/footerSec.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/footerjs.jsp"></jsp:include>
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script src="resources/js/jquery-3.1.1.min.js"></script>
	<script src="resources/js/jquery.bpopup.min.js"></script>

<script type="text/javascript">

		function call_layer() {
			
				$('#layer_popup').bPopup();
			
		};
	</script>
<style type="text/css">

.button_style {
	opacity: 5;
	display: none;
	position: relative;
	padding: 30px;
	background-color: #fff;
}

.layer_close {
	position: absolute;
	right: 3px;
	top: 1px;
	padding: 10px;
	cursor: pointer;
}
</style>
	
</head>
<body>
	
	<input type="button" value="레이어 팝업" onclick="call_layer()"> 
	
	<div id="layer_popup" class="button_style">

		<span class="layer_close">닫기</span>

		<div class="content">

				 
		</div>
	</div>

</body>
</html>

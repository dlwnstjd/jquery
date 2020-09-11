<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn1").click(function() {
			$.ajax("ajax1-1.jsp", {
				success: function(data){
					$("body").append(data);
				},
				error: function(e){
					alert("서버오류:" + e.status);
				}
			})
		})
		$("#rmbtn1").click(function() {
			$("h1").eq(-1).remove();
		})
	})
</script>
</head>
<body>
	<button id="btn1">1-1</button>
	<button id="rmbtn1">1-1제거</button>
	<button id="btn2">1-2</button>
	<button id="rmbtn2">1-2제거</button>
</body>
</html>
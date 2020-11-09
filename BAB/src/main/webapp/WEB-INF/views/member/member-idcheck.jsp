<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복체크</title>
<script>



function checkId(){
	window.opener.document.getElementById("check").value = 'no';
			window.close();
            }
function checkIds(){

	window.opener.document.getElementById("check").value = 'idcheck';
	window.close();
    }
</script>
</head>
<body>

					<c:set var="msg" value="${msg}" />
					 <c:choose>
					    <c:when test="${msg eq 0}">
					       	${id} 는 중복입니다.
					       <input type="button" class="btn btn-primary btn-md btn-block" value="닫기" onClick="checkId()">
					   </c:when>
					   <c:when test="${msg eq 1}">
					     	${id} 는 사용가능합니다.
					     	<input type="button" class="btn btn-primary btn-md btn-block" value="확인" onClick="checkIds()">
					     </c:when>
					     </c:choose>
					   
					       
</body>
</html>
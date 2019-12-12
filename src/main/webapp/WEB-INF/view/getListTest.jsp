<%@page import="com.itwill.cryptoexchange.dto.Members"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${membersList}" var="i">
         Members <c:out value="${i}" />
		<p>
	</c:forEach>

</body>
</html>
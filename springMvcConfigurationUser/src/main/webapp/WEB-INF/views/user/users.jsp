<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
This is users.jsp page!
<br/>
${action}
<br/>
<form>
<table>
			<tr>
				<td>Username</td>
				<td>Name</td>
				<td>Surname</td>
			</tr>
			<c:forEach items="${users}" var="users">
				<tr>
					<td>${users.username}</td>
					<td>${users.firstname}</td>
					<td>${users.lastname}</td>
				</tr>
			</c:forEach>
			<tr>
				<td><a href="../springMvcConfiguration02/back">Back</a></td>
			</tr>
		</table>
	</form>
</body>
</html>
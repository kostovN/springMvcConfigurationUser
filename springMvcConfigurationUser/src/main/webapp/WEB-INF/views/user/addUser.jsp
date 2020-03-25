<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	This is addUser.jsp page!
	<br /> ${action}
	<form:form action="../users/save" method="post" modelAttribute="user">
		<table>
			<tbody>
				<tr>
					<td>Username:</td>
					<td><form:input path="username" id="username" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><form:input id="password" path="password" type="password" /></td>
				</tr>
				<tr>
					<td>Firstname:</td>
					<td><form:input id="firstname" path="firstname" /></td>
				</tr>
				<tr>
					<td>Lastname:</td>
					<td><form:input id="lastname" path="lastname" /></td>
				</tr>
				<tr>
					<td><button id="save">Save</button></td>
					<td></td>
				</tr>
				<tr>
					<td><a href="../back">Back</a></td>
					<td>${error}</td>
				
			</tbody>
		</table>
	</form:form>
</body>
</html>
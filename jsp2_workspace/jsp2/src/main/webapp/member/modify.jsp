<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Member Modify Page</h1>
	<form action="/mem/update" method="post">
		Email : <input type="text" name="email" value="${mvo.email }" readonly> <br>
		Nick_Name : <input type="text" name="nick_name" value="${mvo.nick_name }"> <br>
		Password : <input type="text" name="pwd" value="${mvo.pwd }"> <br>
		<button type="submit">Modify</button> 
	</form>
	<a href="/mem/remove?email=${mvo.email }"><button type="submit">Delete</button></a>
</body>
</html>
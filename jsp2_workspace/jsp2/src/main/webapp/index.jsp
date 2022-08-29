<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Index Page</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container">
	  <h2>Index Page</h2>
	  <div class="list-group">
	  	<c:if test="${ses.email ne '' && ses.email ne null }">
			<a href="/brd/register" class="list-group-item list-group-item-action">Board Register</a>
		</c:if>
	    <a href="/brd/list" class="list-group-item list-group-item-action" >Board List</a>
	    <a href="/mem/list" class="list-group-item list-group-item-action">Member List</a>
	    <a href="/mem/login" class="list-group-item list-group-item-action">Login</a>
	    <a href="/mem/join" class="list-group-item list-group-item-action">Sign Up</a>
	    <a href="/mem/logout?email=${ses.email }" class="list-group-item list-group-item-action">Logout</a>
	  </div>
	</div>
	<c:if test="${ses.email ne '' && ses.email ne null}">
			${ses.nick_name }님이 로그인 하였습니다. <br>
			접속일자 : ${ses.reg_at } <br>
			마지막 접속 : ${ses.last_login} 
	</c:if>
	<script>
		const msg_login = '<c:out value = "${msg_login}"/>';
		if(msg_login === '0'){
			alert("로그인 실패");
		}
	</script>
</body>
</html>
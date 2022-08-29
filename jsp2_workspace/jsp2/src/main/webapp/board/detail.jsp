<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<h1>Board Detail Page</h1>
 	<table border="1">
 		<tr>
 			<th>BNO</th>
 			<td>${bvo.bno }</td>
 		</tr>
 		<tr>
 			<th>TITLE</th>
 			<td>${bvo.title }</td>
 		</tr>
 		<tr>
 			<th>WRITER</th>
 			<td>${bvo.writer} }</td>
 		</tr>
 		<tr>
 			<th>REF__date</th>
 			<td>bvo.reg_datee</td>
 		</tr>
 		<tr>
 			<th>CONTENT</th>
 			<td>bvo.ccontent</td>
 		</tr>
 	</table>
 	<a href="/brd/modify?bno=${bvo.bno }">Modify</a> 
 	<a href="/brd/remove?bno=${bvo.bno }">Delete</a>
	<a href="/brd/list">List</a>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Detail</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Striped Rows</h2>
  <p>The .table-striped class adds zebra-stripes to a table:</p>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>

</body>
</html>



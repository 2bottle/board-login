<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Member List</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Member List Page</h2>           
  <table class="table table-hover">
    <thead>
      <tr>
        <th>reg_date</th>
        <th>last_login</th>
        <th>nick_name</th>
        <th>email</th>
      </tr>
    </thead>
    <tbody>
    	<c:forEach items="${list }" var="mvo">
	      <tr>
	        <td>${mvo.reg_at }</td>
	        <td>${mvo.last_login }</td>
	        <td>${mvo.nick_name }</td>
	        <td><a href="/mem/modify?email=${mvo.email }">${mvo.email }</a></td>
	      </tr>
	    </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>
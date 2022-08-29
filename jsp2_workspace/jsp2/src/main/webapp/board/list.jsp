<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Board List</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Board List</h2>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>bno</th>
        <th>title</th>
        <th>writer</th>
        <th>reg_date</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items = "${list }" var ="bvo">
      <tr>
        <td>${bvo.bno }</td>
        <td><a href="/brd/detail?bno=${bvo.bno }">${bvo.title }</a></td>
        <td>${bvo.writer }</td>
        <td>${bvo.reg_date }</td>
      </tr>
   	</c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>
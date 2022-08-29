<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Register</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Register Page</h2>
  <form action="/brd/insert" method="post">
    <div class="form-group">
      <label for="title">Title:</label>
      <input type="text" class="form-control" id="title" name="title">
    </div>
    <div class="form-group">
      <label for="Writer">Writer:</label>
      <input type="text" class="form-control" id="Writer" name="writer" value="${ses.email }" readonly="readonly">
    </div>
    <div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="5" id="comment" name="content"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</body>
</html>

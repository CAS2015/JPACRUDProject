<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dive Log</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>

<h2>Chelsey's Dive Log</h2>

<form action="getDiveLog.do" method="GET">
<!-- <div class="container"> -->
<div class="row">
<div class="col-md-1">
 Filter:
</div>
<div class="col-md-2">
  Id: <input type="text" name="id" size="5" />
</div>
<div class="col-md-1">
<input type="submit" value="Filter Logs" />
</div>
</div>

<!-- </div> -->
</form>

<table class="table">
<thead>
<tr>
	<th>Dive #</th>
	<th>Location</th>
	<th>Country (TODO)</th>
</tr>
</thead>
<c:forEach items = "${LogList}" var = "log">
<tr>
<td> ${log.id } </td>
<td>
<a href="getLogDetails.do?id=${log.id}">${log.location }</a>
</td>
<td>
	TBD
</td>
</tr>
</c:forEach>
</table>


</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</html>
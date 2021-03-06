<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link href="style.css" rel="stylesheet">
</head>
<body>

	<div class="cover-image">
	<div class="cover-txt">
		Log Details
	</div>
	</div>
	

	<div>
		<div class="welcome addsectionheader">
		<h4>Dive Details</h4>
		</div>
		<div class="filter addsection">
		<br>
		<ul>
			<li>Dive #: ${dive.id}</li>
			<li>Date: ${dive.date}</li>
			<li>Time: ${dive.time}</li>
			<li>Duration: ${dive.duration} minutes</li>
			<li>Maximum Depth Reached: ${dive.maxDepth} meters</li>
			<li>Rating: ${dive.rating}/5</li>
		</ul>
		</div>
	</div>
	<br>
	<div class="welcome addsectionheader">
		<h4>Site Details</h4>
		</div>
		<div class="filter addsection">
		<br>
		<ul>
			<li>Dive Site: ${dive.location}</li>
			<li>State/Province: ${dive.stateProvince}</li>
			<li>Country: ${dive.country}</li>
			<li>GPS Coordinates: ${dive.latitude}, ${dive.longitude}</li>
		</ul>
	</div>
	<br>
	<div class="welcome addsectionheader">
		<h4>Water Details</h4>
		</div>
		<div class="filter addsection">
		<br>
		<ul>
			<li>Visibility Rating: ${dive.visibility}/5</li>
			<li>Water Temperature: ${dive.waterTemp} C</li>
		</ul>
	</div>
	<br>
		<div class="welcome addsectionheader">
		<h4>Equipment Details</h4>
		</div>
		<div class="filter addsection">
		<br>
		<ul>
			<li>Cylinder Starting Pressure: ${dive.startPressure} bar</li>
			<li>Cylinder Ending Pressure: ${dive.endPressure} bar</li>
			<li>Cylinder Oxygen: ${dive.oxygen}%</li>
			<li>Suit Information: ${dive.suit}%</li>
			<li>Weight: ${dive.weight} kg</li>
		</ul>
	</div>
	<br>
	<div class="welcome addsectionheader">
		<h4>Notes</h4>
		</div>
		<div class="filter addsection">
		<br>
		<textarea name="notes" rows="3" cols="80">${dive.notes }</textarea>
	</div>
	<br>
	<form action="deleteDive.do?id=${dive.id}" method="POST">
		<input class="button1 addbutton" type="submit" value="Delete" />
	</form>
	<form action="updateDiveForm.do?id=${dive.id}" method="POST">
		<input class="button1 addbutton" type="submit" value="Update" />
	</form>
	<form action="home.do">
		<input class="button1 addbutton" type="submit" value="Return Home" />
	</form>

</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>
</html>
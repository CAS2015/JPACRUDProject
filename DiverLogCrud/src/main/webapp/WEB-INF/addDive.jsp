<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Dive Log</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>
<body>

	<h2>Add New Dive Log</h2>
	

	<form action="addDive.do" method="POST" id="addDiveForm">
		<div>
		<h4>Dive Details</h4>
		<b>Date*:</b>
		<input type="date" pattern="yyyy-MM-dd" name="date" size="10" required="required"/><br> 
		<b>Time*:</b>
		<input type="time" pattern="HH:mm" name="time" size="10" required="required"/><br> 
		<b>Dive Duration* (minutes):</b>
		<input type="number" name="duration" min=0 size="4" required="required"/><br> 
		<b>Maximum Depth Reached (meters):</b>
		<input type="number" name="maxDepth" min=0 size="4" /><br> 
		<b>Rating (1-5):</b>
		<input type="number" min=1 max=5 name="rating" size="4"/><br> 
		</div>
		<br>
		<div>
		<h4>Site Details</h4>
		<b>Site Name*:</b>
		<input type="text" name="location" size="10" required="required"/><br> 
		<b>State/Province:</b>
		<input type="text" name="stateProvince" size="10"/><br> 
		<b>Country:</b>
		<input type="text" name="country" size="10"/><br> 
		<b>Latitude:</b>
		<input type="number" step="0.0001" name="latitude" size="10"/><br> 
		<b>Longitude:</b>
		<input type="number" step="0.0001" name="longitude" size="10"/><br> 
		</div>
		<br>
		<div>
		<h4>Water Details</h4>
		<b>Visibility (1-5):</b>
		<input type="number" min=1 max=5 name="visibility" size="4"/><br> 
		<b>Water Temperature (C):</b>
		<input type="number" name="waterTemp" size="4"/><br> 
		</div>
		<br>
		<div>
		<h4>Equipment Details</h4>
		<b>Cylinder Starting Pressure (bar):</b>
		<input type="number" name="startPressure" size="4" /><br> 
		<b>Cylinder Ending Pressure (bar):</b>
		<input type="number" name="endPressure" size="4" /><br> 
		<b>Cylinder Oxygen (%):</b>
		<input type="number" name="oxygen" size="4"/><br> 
		<b>Suit Information:</b>
		<input type="text" name="suit" size="10"/><br> 
		<b>Weight (kg):</b>
		<input type="number" name="weight" size="4"/><br> 
		</div>
		<br>
		<div>
		<h4>Notes</h4>
		<textarea name="notes" form="addDiveForm" rows="3" cols="80" >${dive.notes }</textarea>
		</div>

		<br>
		*Required Field
		<br>

		<input type="submit" value="Add Dive" />
	</form>

</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>
</html>
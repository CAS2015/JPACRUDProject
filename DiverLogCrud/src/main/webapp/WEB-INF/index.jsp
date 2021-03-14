<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dive Log</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
</head>
<body>

	<h2>Chelsey's Dive Log</h2>



	<c:choose>

		<c:when test="${added == true }">
			<c:choose>

				<c:when test="${! empty dive }">
					New dive successfully added!
					<table class="table">
						<thead>
							<tr>
								<th>Dive #</th>
								<th>Location (Dive Site - State/Province, Country)</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tr>
							<td>${dive.id }</td>
							<td><a href="getLogDetails.do?id=${dive.id}">${dive.location }
									- ${dive.stateProvince }, ${dive.country }</a></td>
							<td>
								<form action="deleteDive.do?id=${dive.id}" method="POST">
									<input type="submit" value="Delete" />
								</form>
								<form action="updateDiveForm.do?id=${dive.id}" method="POST">
									<input type="submit" value="Update" />
								</form>
							</td>
						</tr>
					</table>
					<form action="home.do">
						<input type="submit" value="Return Home" />
					</form>
				</c:when>

				<c:otherwise>
					Error adding record. Dive was not added.
					<form action="home.do">
						<input type="submit" value="Return Home" />
					</form>
				</c:otherwise>

			</c:choose>
		</c:when>

		<c:when test="${updated == true }">
			<c:choose>

				<c:when test="${! empty dive }">
					Dive successfully updated!
					<table class="table">
						<thead>
							<tr>
								<th>Dive #</th>
								<th>Location (Dive Site - State/Province, Country)</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tr>
							<td>${dive.id }</td>
							<td><a href="getLogDetails.do?id=${dive.id}">${dive.location }
									- ${dive.stateProvince }, ${dive.country }</a></td>
							<td>
								<form action="deleteDive.do?id=${dive.id}" method="POST">
									<input type="submit" value="Delete" />
								</form>
								<form action="updateDiveForm.do?id=${dive.id}" method="POST">
									<input type="submit" value="Update" />
								</form>
							</td>
						</tr>
					</table>
					<form action="home.do">
						<input type="submit" value="Return Home" />
					</form>
				</c:when>

				<c:otherwise>
					Error updating record. Dive was not updated.
					<form action="home.do">
						<input type="submit" value="Return Home" />
					</form>
				</c:otherwise>

			</c:choose>
		</c:when>

		<c:when test="${deleted == true }">
			<c:choose>

				<c:when test="${success == true }">
					Dive successfully deleted!
					<form action="home.do">
						<input type="submit" value="Return Home" />
					</form>
				</c:when>

				<c:otherwise>
					Error deleting record. Dive was not deleted.
					<form action="home.do">
						<input type="submit" value="Return Home" />
					</form>
				</c:otherwise>

			</c:choose>
		</c:when>

		<c:otherwise>
			<div class="fluid-container">
						<form action="addDiveForm.do">
							<input type="submit" value="Add New Dive" />
						</form>
				<form action="filterDives.do" method="GET">
					<div class="row">
						<div>
							<h5>Filter:</h5>
						</div>
						<div>
							<input type="submit" value="Search Logs" />
						</div>
					</div>


					<div class="row">
						<div>
							Id: <input type="text" name="id" size="5" />
						</div>
						<div>
							Dive Site: <input type="text" name="location" size="10" />
						</div>
						<div>
							State/Province: <input type="text" name="stateProvince" size="10" />
						</div>
						<div>
							Country: <input type="text" name="country" size="10" />
						</div>
						<div>
							Notes: <input type="text" name="keyword" size="10" />
						</div>
						<div>
							Rating: <input type="text" name="rating" size="5" />
						</div>
					</div>
				</form>
			</div>
			<c:choose>

				<c:when test="${! empty logList}">
					<table class="table">
						<thead>
							<tr>
								<th>Dive #</th>
								<th>Location (Dive Site - State/Province, Country)</th>
								<th>Actions</th>
							</tr>
						</thead>
						<c:forEach items="${logList}" var="log">
							<tr>
								<td>${log.id }</td>
								<td><a href="getLogDetails.do?id=${log.id}">${log.location }
										- ${log.stateProvince }, ${log.country }</a></td>
								<td>
									<form action="deleteDive.do?id=${log.id}" method="POST">
										<input type="submit" value="Delete" />
									</form>
									<form action="updateDiveForm.do?id=${log.id}" method="POST">
										<input type="submit" value="Update" />
									</form>
								</td>
							</tr>
						</c:forEach>
					</table>
				</c:when>

				<c:otherwise>
					Record not found. Try filtering with a broader search or return home for full list of dives.
					<form action="home.do">
						<input type="submit" value="Return Home" />
					</form>
				</c:otherwise>

			</c:choose>
		</c:otherwise>

	</c:choose>





</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>
</html>
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
<link href="style.css" rel="stylesheet">
</head>
<body>

	<div class="cover-image">
		<div class="cover-txt">Dive Log</div>
	</div>



	<c:choose>

		<c:when test="${added == true }">
			<c:choose>
				<c:when test="${! empty dive }">
					<div class="welcome">
						<h2>New dive successfully added!</h2>
					</div>
					<table class="table filtertable">
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
								<div class="buttoncontainer">
									<div class="col">
										<form action="deleteDive.do?id=${dive.id}" method="POST">
											<input class="button1" type="submit" value="Delete" />
										</form>
									</div>
									<div class="col">
										<form action="updateDiveForm.do?id=${dive.id}" method="POST">
											<input class="button1" type="submit" value="Update" />
										</form>
									</div>
								</div>
							</td>
						</tr>
					</table>
					<form action="home.do">
						<input class="button1 addbutton" type="submit" value="Return Home" />
					</form>
				</c:when>

				<c:otherwise>
					<div class="welcome">
						<h2>Error adding record. Dive was not added.</h2>
					</div>
					<form action="home.do">
						<input class="button1 addbutton" type="submit" value="Return Home" />
					</form>
				</c:otherwise>

			</c:choose>
		</c:when>

		<c:when test="${updated == true }">
			<c:choose>

				<c:when test="${! empty dive }">
				<div class="welcome">
						<h2>Dive successfully updated!</h2>
				</div>
					<table class="table filtertable">
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
							<div class="buttoncontainer">
								<div class="col">
								<form action="deleteDive.do?id=${dive.id}" method="POST">
									<input class="button1" type="submit" value="Delete" />
								</form>
								</div>
								<div class="col">
								<form action="updateDiveForm.do?id=${dive.id}" method="POST">
									<input class="button1" type="submit" value="Update" />
								</form>
								</div>
								</div>
							</td>
						</tr>
					</table>
					<form action="home.do">
						<input class="button1 addbutton" type="submit" value="Return Home" />
					</form>
				</c:when>

				<c:otherwise>
				<div class="welcome">
						<h2>Error updating record. Dive was not updated.</h2>
				</div>
					<form action="home.do">
						<input class="button1 addbutton" type="submit" value="Return Home" />
					</form>
				</c:otherwise>

			</c:choose>
		</c:when>

		<c:when test="${deleted == true }">
			<c:choose>

				<c:when test="${success == true }">
				<div class="welcome">
						<h2>Dive successfully deleted!</h2>
				</div>
					<form action="home.do">
						<input class="button1 addbutton" type="submit" value="Return Home" />
					</form>
				</c:when>

				<c:otherwise>
				<div class="welcome">
						<h2>Error deleting record. Dive was not deleted.</h2>
				</div>
					<form action="home.do">
						<input class="button1 addbutton" type="submit" value="Return Home" />
					</form>
				</c:otherwise>

			</c:choose>
		</c:when>

		<c:otherwise>
			<div class="welcome">
				<h1>Welcome!</h1>
				<p>This is a scuba diving log that tracks relevant information
					about a dive including the site conditions, water conditions,
					equipment and notes about the fun things seen while under water.
					I've populated the database with my dives to start but the form is
					open to add new dives, update dives or delete dives. You can also
					search dives through several filters in any combination including a
					notes filter where you can type "turtle" or "lionfish" to see where
					I've encountered some fun creatures.</p>
			</div>
			<div class="welcome welcomebutton">
				<form action="addDiveForm.do">
					<input class="button1" type="submit" value="Add New Dive" />
				</form>
			</div>
			<div class="fluid-container filter">
				<form action="filterDives.do" method="GET">
					<div class="row">
						<div class="col filterheadercol">
							<h4>Filter</h4>
							<input class="button1 searchbutton" type="submit"
								value="Search Logs" />
						</div>
					</div>


					<div class="row">
						<div class="col filtercol">
							Dive Id: <input class="filterbox" type="text" name="id" />
						</div>
						<div class="col filtercol">
							Dive Site: <input class="filterbox" type="text" name="location" />
						</div>
						<div class="col filtercol">
							Province: <input class="filterbox" type="text"
								name="stateProvince" />
						</div>
						<div class="col filtercol">
							Country: <input class="filterbox" type="text" name="country" />
						</div>
						<div class="col filtercol">
							Notes: <input class="filterbox" type="text" name="keyword" />
						</div>
						<div class="col filtercol">
							Rating: <input class="filterbox" type="text" name="rating" />
						</div>
					</div>
				</form>
			</div>

			<c:choose>

				<c:when test="${! empty logList}">
					<table class="table filtertable">
						<thead>
							<tr>
								<th>Dive #</th>
								<th>Location (Dive Site - Province, Country)</th>
								<th>Actions</th>
							</tr>
						</thead>
						<c:forEach items="${logList}" var="log">
							<tr class="tablerow">
								<td>${log.id }</td>
								<td><a href="getLogDetails.do?id=${log.id}">${log.location }
										- ${log.stateProvince }, ${log.country }</a></td>
								<td>
									<div class="buttoncontainer">
										<div class="col">
											<form action="deleteDive.do?id=${log.id}" method="POST">
												<input class="button1" type="submit" value="Delete" />
											</form>
										</div>
										<div class="col">
											<form action="updateDiveForm.do?id=${log.id}" method="POST">
												<input class="button1" type="submit" value="Update" />
											</form>
										</div>
									</div>
								</td>
							</tr>
						</c:forEach>
					</table>
				</c:when>

				<c:otherwise>
					<p class="requirednote errornote">
					Record not found. Try filtering with a broader search or return home for full list of dives.
					</p>
					<form action="home.do">
						<input class="button1 addbutton" type="submit" value="Return Home" />
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
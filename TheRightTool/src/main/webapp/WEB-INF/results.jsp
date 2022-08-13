<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Maintenance History</title>
<jsp:include page ="bootstrapHead.jsp" />
</head>
<body>
<%@ include file="nav.jsp" %>
	<c:choose>
		<c:when test="${!empty historys}">
			<table class="table table-striped table-hover">
				<thead class ="table-dark">
					<tr>
						<th>Id</th>
						<th>Machine Name</th>
						<th>Employee Name</th>
						<th>Failure Description</th>
						<th>Repair Description</th>
						<th>Component</th>
						<th>Hours Worked</th>
						<th>Repair Cost</th>
						<th>Date Created</th>
						<th>Date Updated</th>
						<th>Machine Picture</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
				
				<c:forEach var="history" items="${historys}">
				<tr>
				<td><a href="getHistory.do?mhid=${history.id}">${history.id}</a></td>
				<td>${history.machineName}</td>
				<td>${history.employeeName}</td>
				<td>${history.description}</td>
				<td>${history.repair}</td>
				<td>${history.component}</td>
				<td>${history.hoursWorked}</td>
				<td>${history.repairCost}</td>
				<td>${history.dateCreated}</td>
				<td>${history.lastUpdated}</td>
				<td>${history.machineUrl}</td>
				<td><a href="addMaintenance.do">Delete</a></td>
				<td>
				<form action="updateMaintenance.do" method="get">
								<input type="hidden" value=${history.id } name="mhid" /> <input
									 type="submit" value="Update" />
							</form>
							</td>
				</tr>
				</c:forEach>
				</tbody>
			</table>
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>
		<c:choose>
		<c:when test="${!empty history}">
			<table class="table table-striped table-hover">
				<thead class ="table-dark">
					<tr>
						<th>Id</th>
						<th>Machine Name</th>
						<th>Employee Name</th>
						<th>Failure Description</th>
						<th>Repair Description</th>
						<th>Component</th>
						<th>Hours Worked</th>
						<th>Repair Cost</th>
						<th>Date Created</th>
						<th>Date Updated</th>
						<th>Machine Picture</th>
					</tr>
				</thead>
				<tbody>
				<tr>
				<td>${history.id}</td>
				<td>${history.machineName}</td>
				<td>${history.employeeName}</td>
				<td>${history.description}</td>
				<td>${history.repair}</td>
				<td>${history.component}</td>
				<td>${history.hoursWorked}</td>
				<td>${history.repairCost}</td>
				<td>${history.dateCreated}</td>
				<td>${history.lastUpdated}</td>
				<td>${history.machineUrl}</td>
				</tr>
				</tbody>
			</table>
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>
	<jsp:include page ="bootstrapFoot.jsp" />
</body>
</html>
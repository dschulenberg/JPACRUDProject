<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Add</title>
<jsp:include page ="bootstrapHead.jsp" />

</head>
<body style="padding-bottom: 66px">
<%@ include file="nav.jsp" %>
	<table>
	
		<tr>
			<td align=left>
				<h2 >Add A Maintenance Project:</h2>
				<form action="addMaintenance.do" method="POST">
					<label for="machineName">Machine Name:</label><br>
						<input type="text" name="machineName" required /> <br> 
						
					<label for="employeeName">Primary Technician:</label> <br> 
						<input type="text" name="employeeName" required> <br> 						
						
					<label for="description">Failure Description:</label> <br> 
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="4" name="description" ></textarea>
						
					<label for="repair">Repair Description:</label> <br> 
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="4" name="repair" ></textarea>
						
					<label for="component">Component Replaced:</label> <br> 
						<input type="text" name="component" > <br> 
						
					<label for="hoursWorked">Hours Worked:</label> <br> 
						<input type="number" name="hoursWorked" ><br> 
						
					<label for="repairCost">Repair Cost:</label> <br> 
						<input type="number" name="repairCost" ><br> 
												
					<label for="machineUrl">Attach Photo:</label> <br> 
						<input type="text" name="machineUrl" ><br> 
				
				
					<br> <input class="button" type="submit" value="Submit">
				</form>
			</td>
			<td></td>
			<td></td>
		</tr>
	</table>
</body>
</body>
</html>
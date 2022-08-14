<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title class="head">Edit</title>
<jsp:include page ="bootstrapHead.jsp" />
</head>
<body style="padding-bottom: 66px">
<%@ include file="nav.jsp" %>
<br>
<table>
	<tr>
	<td width=100%>
	
	  <h1 class="head" >Edit Maintenance History:</h1>      
	  
	 <div >
	  
	    <form class="forms" action="updateMaintenance.do" method="POST">
	   					<label for="machineName">Id:</label><br>
						<input type="text" name="id" value="${history.id}" readonly/> <br> 
						
	   					<label for="machineName">Machine Name:</label><br>
						<input type="text" name="machineName" value="${history.machineName}" /> <br> 
						
					<label for="employeeName">Primary Technician:</label> <br> 
						<input type="text" name="employeeName" value="${history.employeeName}" /> <br> 						
					<label for="description">Failure Description:</label> <br> 
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="4" name="description" >"${history.description}"</textarea>
						
					<label for="repair">Repair Description:</label> <br> 
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="4" name="repair" >"${history.repair}"</textarea>
						
					<label for="component">Component Replaced:</label> <br> 
						<input type="text" name="component"value="${history.component}"  /> <br> 
						
					<label for="hoursWorked">Hours Worked:</label> <br> 
						<input type="number" name="hoursWorked"value="${history.hoursWorked}"  /><br> 
						
					<label for="repairCost">Repair Cost:</label> <br> 
						<input type="number" name="repairCost" value="${history.repairCost}" /><br> 
												
					<label for="machineUrl">Attach Photo:</label> <br> 
						<input type="text" name="machineUrl"value="${history.machineUrl}"  /><br> 
  			 <input type="submit" value="Update History">
	    </form>
	 </div>
	    <br>
	    <br>
	      </tr>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<!-- reference our style sheet -->
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

<link href="<c:url value="/resources/css/add-customer-style.css" />" rel="stylesheet">

</head>
<body>

	<div id="wapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		
			<h3> Save Customer </h3>
	
			<form:form action="saveCustomer" modelAttribute="customer" method="POST">
			
			<!-- need to associate this data with customer id -->
			<form:hidden path="id"/>
			
				<table>
					<tbody>
						<tr>
							<td> <label> First Name </label> </td>
							<td> <form:input path="firstName"/> </td>
						</tr>
						
						<tr>
							<td> <label> Last Name </label> </td>
							<td> <form:input path="lastName"/> </td>
						</tr>
						
						<tr>
							<td> <label> Email </label> </td>
							<td> <form:input path="email"/> </td>
						</tr>
						
						<tr>
							<td> <label></label> </td>
							<td> <input type="submit" value="Save" class="save"> </td>
						</tr>
					</tbody>
				</table>
			</form:form>
			
			<div style="clear; both;"></div>
			<p>				
				<a href="${pageContext.request.contextPath}/customer/list"> Back To List </a>
			</p>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<link
	href="https://fonts.googleapis.com/css?family=Raleway&display=swap"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

setTimeout(function() {
    $('.LoadingDiv').fadeOut('fast');
    $(".MainContainer").show();
}, 3500);
</script>
<style type="text/css">
body {
	background: #f4f4f4;
}

.LoadingDiv {
	width: 100vh;
	height: 90vh;
	margin: auto;
	content: url(./images/Loading.gif);
}

.MainContainer {
	display: none;
}

.card bg {
	background-color: ivory	;
}
</style>
<meta charset="UTF-8">
<title>Check Out</title>
</head>
<body>

<div class="LoadingDiv" >

</div>
<div class="MainContainer">
<div class="row">
			<div class="col-md-12 text-center text-dark">
				<h2>CONGRATULATIONS!</h2>
				<p>Your ticket has been booked. The details are as
					follows</p>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-6 ">
				<div class="card bg">
					<div class="card-header">Ticket Summary</div>
					<div class="card-body">
						<h5 class="card-title"><%= session.getAttribute("FlightSource") %> to <%= session.getAttribute("FlightDestination") %> on <%= session.getAttribute("BookingDate") %></h5>
						<p class="card-text"><%= session.getAttribute("FlightNumber") %> <%= session.getAttribute("FlightName") %></p>
					</div>
					<div class="card-header">Passenger Summary</div>
					<div class="card-body">
						<h5 class="card-title">Booking Name:  <%
						Integer noOfPassenger = Integer.parseInt((String)session.getAttribute("travellers"));
 						for(int i=1;i<=noOfPassenger;i++){
	  					String firstName= "FirstNameforAdult"+i;
	  					String lastName = "LastNameforAdult"+i;
	  					String gender = "GenderForAdult"+i;
	  					String contactNumber="ContactNumberforAdult"+i;
	 					out.print(i + ". <label>Name :"+session.getAttribute(firstName)+" "+session.getAttribute(lastName)+"</label><br>"); 
	 					out.print("<label>Gender :"+session.getAttribute(gender) +" </label><br>");
	 					out.print("<label>Contact Number :"+session.getAttribute(contactNumber) +" </label>");
 					 	}%>	</h5>
					</div>
					<div class="card-header">Payment Summary</div>
					<div class="card-body">
						<h5 class="card-title">UPI ID :  <%= request.getParameter("UPI_ID") %></h5>
					</div>
					<div class="card-header"><h2>Total Price: <%= session.getAttribute("TotalAmount") %> </h2></div>
					<button class="btn btn-primary mb-3 text-center lead fw-bolder" onclick="window.print()">Print</button>
				</div>
			</div>
		</div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="com.flyaway.bean.FlightDetails" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{
background-image:url(./images/adminPageBG.jpg);
}
.logoDiv{
	content:url(./images/Logo.png);
	width: 100px;
	bottom: 17px;
	position: relative;
	left: -4px;
}
.header {
	width: 80%;
    align-items: center;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 40%);
    height: 100px;
    overflow: hidden;
    background-color: #e7e7e7;
    padding: 20px 10px;
    position: relative;
    top: 10px;
    left: 145px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 15px;
  text-decoration: none;
  font-size: 18px;
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
  left: 20px;
  position: relative;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
  position: relative;
  bottom: 96px;
  right: 50px;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
}
.container{
    margin-top: 40px;
}
h1{
text-align: center;
}

</style>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>FlyAway</title>
</head>
<body>
<div class="header">
			<a href="index.jsp" class="logo">FlyAway</a>
				<div class="logoDiv"></div>
					<div class="header-right">
						<a href="about">About</a>
					</div>
				</div>
<div class="container">
			<div class="row text-dark">
			<h1>Available Flights</h1>
				<div class="col-md-12">
					<table  class ="table table-width" style="width: 100%; text-align: center; border-color: black; background-color: ivory; border-radius: 10px;">
						<tr>
							<th>Flight Number</th>
							<th>AIRLINE</th>
							<th>DEPART</th>
							<th>ARRIVE</th>
							<th>SOURCE</th>
							<th>DESTINATION</th>
							<th>DATE</th>
							<th>TICKET PRICE</th>
							<th>Select</th>
						</tr>
						<%
							List<FlightDetails> flights = (List<FlightDetails>) session.getAttribute("Flights");
							for(FlightDetails flight : flights)
							{
								String flightNumber=flight.getFlightNumber();
								out.print("<tr>");
								out.print("<td>"+ flightNumber +"</td>");
								out.print("<td>"+ flight.getAirlineName() +"</td>");
								out.print("<td>"+ flight.getDepartureTime() +"</td>");
								out.print("<td>"+ flight.getArrivalTime() +"</td>");
								out.print("<td>"+ flight.getSourceName()+"</td>");
								out.print("<td>"+ flight.getDestinationName() +"</td>");
								out.print("<td>"+ flight.getDate() + "</td>");
								out.print("<td>"+ flight.getPrice() +"</td>");
								out.print("<td><a href='PassengerDetails.jsp?FlightNumber="+flightNumber+"&FlightSource="+flight.getSourceName()+"&FlightDestination="+flight.getDestinationName()+"&BookingDate="+flight.getDate()+"&FlightPricePerperson="+flight.getPrice()+"&FlightName="+flight.getAirlineName() +"&departTime="+flight.getDepartureTime() +"&arrivalTime="+flight.getArrivalTime() +"'class='btn btn-primary'>"+ "Book This Flight" +"</a></td>");
								out.print("</tr>");
							}
						%>
						</tr>
					</table>
				</div>
			</div>
		</div>
</body>
</html>
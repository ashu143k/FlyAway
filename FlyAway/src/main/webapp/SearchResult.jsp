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
.NoFlightFoundDiv{
width: 560px;
    background-image: url(https://imgak.mmtcdn.com/flights/assets/media/dt/listing/ff_no_flts_sector_revamp.png?v=1);
    height: 400px;
    margin: auto;
    text-align: center;
}
.button-30 {
	width : 100px;
 align-items: center;
    appearance: none;
    background-color: #d6f7d8;
    border-radius: 4px;
    border-width: 0;
    box-shadow: rgb(45 35 66 / 40%) 0 2px 4px, rgb(45 35 66 / 30%) 0 7px 13px -3px, #d6d6e7 0 -3px 0 inset;
    box-sizing: border-box;
    color: #36395A;
    display: inline-flex;
    font-family: "JetBrains Mono",monospace;
    height: 45px;
    justify-content: center;
    line-height: 1;
    list-style: none;
    overflow: hidden;
    padding-left: 16px;
    padding-right: 16px;
    position: relative;
    text-align: center;
    text-decoration: none;
    transition: box-shadow .15s,transform .15s;
    touch-action: manipulation;
    white-space: nowrap;
    will-change: box-shadow,transform;
    font-size: 16px;
    left: 7%;
    top: 15%;
}

.button-30:focus {
  box-shadow: #D6D6E7 0 0 0 1.5px inset, rgba(45, 35, 66, 0.4) 0 2px 4px, rgba(45, 35, 66, 0.3) 0 7px 13px -3px, #D6D6E7 0 -3px 0 inset;
}

.button-30:hover {
  box-shadow: rgba(45, 35, 66, 0.4) 0 4px 8px, rgba(45, 35, 66, 0.3) 0 7px 13px -3px, #D6D6E7 0 -3px 0 inset;
  transform: translateY(-2px);
}

.button-30:active {
  box-shadow: #D6D6E7 0 3px 7px inset;
  transform: translateY(2px);
}
.backButtonDiv{
    float: right;
    position: relative;
    left: 30%;
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
				</div>
<div class="container">

			<div class="row text-dark">
			
				<div class="col-md-12">
					
				
						<%
							List<FlightDetails> flights = (List<FlightDetails>) session.getAttribute("Flights");
							if(flights.size()==0){
								out.print("<div class='NoFlightFoundDiv'>");
								out.print("<div class='backButtonDiv'><a href ='index.jsp' id= 'backButton' class='button-30' role='button'>Back</a></div>");
								out.print("<h3>No Flights Found</h3>");
								out.print("</div>");
							}else{
								out.print("<h1>Available Flights</h1>");
								out.print("<table  class ='table table-width' style='width: 100%; text-align: center; border-color: black; background-color: ivory; border-radius: 10px;'>");
								out.print("<tr>");
								out.print("<th>Flight Number</th>");
								out.print("<th>AIRLINE</th>");
								out.print("<th>DEPART</th>");
								out.print("<th>ARRIVE</th>");
								out.print("<th>SOURCE</th>");
								out.print("<th>DESTINATION</th>");
								out.print("<th>DATE</th>");
								out.print("<th>TICKET PRICE</th>");
								out.print("<th>Select</th>");
							out.print("</tr>");
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
							}
						%>
					</table>
				</div>
			</div>
		</div>
</body>
</html>
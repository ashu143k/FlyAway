<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.util.List" %>
<%@ page import="com.flyaway.bean.FlightDetails" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<style type="text/css">
body{
background-image:url(./images/adminPageBG.jpg);
}
label {
  display: block;
}
.yourBookingDiv{
    width: 500px;
    z-index: 10;
    border-radius: 20px;
    box-shadow: 0 1px 5px 0 rgb(0 0 0 / 10%);
    background-color: ivory;
    padding: 30px 20px 0px;
    position: relative;
    left: 20%;
    float: left;
}
.fareSummaryDiv{

    width: 30%;
    margin: auto;
    z-index: 10;
    border-radius: 20px;
    box-shadow: 0 1px 5px 0 rgb(0 0 0 / 10%);
    background-color: ivory;
    padding: 30px 20px 0px;
    position: relative;
    float: right;
    right: 15%;
}
.UPIPaymentDiv{
    width: 30%;
    z-index: 10;
    border-radius: 20px;
    box-shadow: 0 1px 5px 0 rgb(0 0 0 / 10%);
    background-color: ivory;
    padding: 30px 20px 30px;
    position: absolute;
    right: 15%;
    margin-top: 265px;
    
    
}
th{
   text-align: left;
   
}

td{

line-height: 1.5;
    width: 150px;

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
.PaymentPageDiv
{
    position: relative;
    top: 50px;
    right: 32px;
}
.PayButtonClass
{
	background-image: var(--color-btn-primary-bg,linear-gradient(93deg,#53b2fe,#065af3));
    border: 0;
    border-radius: 34px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 20%);
    color: #fff;
    display: inline-block;
    flex-shrink: 0;
    outline: 0;
    text-align: center;
    text-transform: uppercase;
    width: 150px;
    padding: 10px;
    top: 10px;
    position: relative;
}
	
</style>
<meta charset="UTF-8">
<title>Payment Page</title>
</head>
<body>
<%
String departTime= (String)session.getAttribute("departTime");
String arrivalTime= (String)session.getAttribute("arrivalTime");
String FlightNumber =(String) session.getAttribute("FlightNumber");
String FlightSource =(String) session.getAttribute("FlightSource");
String FlightDestination =(String) session.getAttribute("FlightDestination");
String BookingDate =(String) session.getAttribute("BookingDate");
Integer FlightPricePerperson = Integer.parseInt((String)session.getAttribute("FlightPricePerperson"));
Integer noOfPassenger = Integer.parseInt((String)session.getAttribute("travellers"));
Integer TotalAmount = FlightPricePerperson*noOfPassenger;
String FlightName =(String) session.getAttribute("FlightName");
Integer total= TotalAmount+399;
session.setAttribute("TotalAmount",total );
%>
		<div class="header">
		<a href="index.jsp" class="logo">FlyAway</a>
		<div class="logoDiv"></div>
	</div>
	<div class="PaymentPageDiv">
<div class="yourBookingDiv">
<table class ="table table-width">
<tr>
<th colspan="3"><h3>Your Booking</h3></th>
</tr>
<tr>
<td>
<label><%=BookingDate%></label>
</td>
</tr>
<tr style="font-weight: bold;">
<td style="text-align : center"><%=departTime%><br><%=FlightSource%></td>
<td style="text-align : center">-----------<br>Non Stop</td>
<td style="text-align : center"><%=arrivalTime%><br><%=FlightDestination%></td>
</tr>
<tr>
<th colspan="3">Traveler(s)</th></tr>
<tr>
<td colspan="3" >
 <%
  for(int i=1;i<=noOfPassenger;i++){
	  
	  String firstName= "FirstNameforAdult"+i;
	  String lastName = "LastNameforAdult"+i;
	  String gender = "GenderForAdult"+i;
	  String contactNumber="ContactNumberforAdult"+i;
	  session.setAttribute(firstName, request.getParameter(firstName));
	  session.setAttribute(lastName, request.getParameter(lastName));
	  session.setAttribute(gender, request.getParameter(gender));
	  session.setAttribute(contactNumber, request.getParameter(contactNumber));
	 out.print(i + ". <label>Name :"+request.getParameter(firstName)+" "+request.getParameter(lastName)+"</label>"); 
	 out.print("<label>Gender :"+request.getParameter(gender) +" </label>");
	 out.print("<label>Contact Number :"+request.getParameter(contactNumber) +" </label>");
  }
  %>
</td>

</tr>
</table>
</div>
<div class="fareSummaryDiv">
<table class ="table table-width">
<tr><th colspan="3"><span>Fare Summary</span></th></tr>
<tr>
<td>FARE</td>
<td style="text-align : right">₹ <%=TotalAmount%></td></tr>
<tr>
<td>OTHERS</td>
<td style="text-align : right">₹ 399</td>
</tr>
<tr>
<th>Total Due<br><label style=" font-size: 10px; font-weight: light; " >Convenience fee added</label></th>
<th style="text-align : right">₹ <%=TotalAmount+399%></th>
</tr>
</table>
</div>
<div class="UPIPaymentDiv">
<form action="CheckOutPage.jsp" method="post">
<label style="font-weight: bold; line-height: 2.3;" >Enter UPI ID</label>
<input type="email" name="UPI_ID" placeholder="mobileNumber@upi" class="form-control" required="required" >
<input type="submit" value="Verify & Pay" class="PayButtonClass">
</form>
</div>
</div>
</body>
</html>
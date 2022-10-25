<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Passenger Detail Page</title>
<style type="text/css">
.PassengerFormInput
{
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}
.PassengerDetailDiv{
    width: 500px;
    z-index: 10;
    border-radius: 20px;
    box-shadow: 0 1px 5px 0 rgb(0 0 0 / 10%);
    background-color: ivory;
    padding: 30px 20px 25px;
    position: relative;
    left: 36%;
    float: left;
    top: 40px;
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
body{
background-image:url(./images/adminPageBG.jpg);
}
.SubmitDetailsButtonClass
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
    width: 200px;
    padding: 14px;
    top: 8px;
    left: 30%;
    position: relative;
        cursor: pointer;
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
    height: 66px;
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
</style>

</head>
<body>
<div class="header">
			<a href="index.jsp" class="logo">FlyAway</a>
				<div class="logoDiv"></div>
					<div class="header-right">
						<a href="about">About</a>
					</div>
				</div>
<div class="PassengerDetailDiv">
<form action="PaymentPage.jsp" method = "post">

<h3>Passenger Detail Form</h3>
<%

session.setAttribute("FlightNumber", request.getParameter("FlightNumber"));
session.setAttribute("FlightSource", request.getParameter("FlightSource"));
session.setAttribute("FlightDestination", request.getParameter("FlightDestination"));
session.setAttribute("BookingDate", request.getParameter("BookingDate"));
session.setAttribute("FlightPricePerperson", request.getParameter("FlightPricePerperson"));
session.setAttribute("FlightName", request.getParameter("FlightName"));
session.setAttribute("departTime", request.getParameter("departTime"));
session.setAttribute("arrivalTime", request.getParameter("arrivalTime"));



Integer noOfPassenger = Integer.parseInt((String)session.getAttribute("travellers"));

for(int i = 1; i<=noOfPassenger;i++){
	String AdultCount="Adult "+i;
	out.print("<label>"+AdultCount+"</label><br><br>");
	out.print("<label>First Name</label>");
	out.print("<input type='text' class='PassengerFormInput' name='FirstNameforAdult"+i+"' required>");
	out.print("<label>Last Name</label>");
	out.print("<input type='text' class='PassengerFormInput' name='LastNameforAdult"+i+"'required>");
	out.print("<label>Gender</label><br>"); 
	out.print("<input type='radio'  value='male' name='GenderForAdult"+i+"'required/>Male");
	out.print("<input type='radio'  value='Female' name='GenderForAdult"+i+"'required/>Female<br><br>");
	out.print("<label>Contact Number</label>");
	out.print("<input type='number' class='PassengerFormInput' name='ContactNumberforAdult"+i+"'required>");
}
%>
<input type="Submit" value= "Proceed to Payment" class="SubmitDetailsButtonClass">
</form>
</div>
</body>
</html>
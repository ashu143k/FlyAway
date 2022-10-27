<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.flyaway.bean.FlightDetails"
	import="com.flyaway.bean.AirLineDetails"
	import="com.flyaway.bean.CitiesDetails"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
function airLineDelete(airLineId){
	 var xhttp;
	    xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function () {
	        if (this.readyState === 4 && this.status === 200) {
	            alert("Air Line Deleted Successfully");
	            location.reload();
	        }
	    };
	    xhttp.open("post", '/FlyAway/DeleteService', true);
	    xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	    xhttp.send("airLineId="+airLineId);
}
function cityDelete(cityId){
	 var xhttp;
	    xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function () {
	        if (this.readyState === 4 && this.status === 200) {
	            alert("City Deleted Successfully");
	            location.reload();
	        }
	    };
	    xhttp.open("post", '/FlyAway/DeleteService', true);
	    xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	    xhttp.send("cityId="+cityId);
	
}
function flightDelete(flightId){
	 var xhttp;
	    xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function () {
	        if (this.readyState === 4 && this.status === 200) {
	            alert("Flight Deleted Successfully");
	            location.reload();
	        }
	    };
	    xhttp.open("post", '/FlyAway/DeleteService', true);
	    xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	    xhttp.send("FlightId="+flightId);

}

function changePassword(){
	
	var oldPassword= document.getElementById('oldPassword').value;
	var newPassword= document.getElementById('newPassword').value;
	var xhttp;
	    xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function () {
	        if (this.readyState === 4 && this.status === 200) {
	            alert("Password Changed");
	            location.reload();
	        }
	    };
	    xhttp.open("post", '/FlyAway/ChangePasswordValidation', true);
	    xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	    xhttp.send("newPassword="+newPassword+"&oldPassword="+oldPassword);
	
	
}

$(document).ready(function(){
	$("#changePasswordButtonId").click(function(){
	    $(".changePassMainDiv").show();
	    $(".Flightdetails").hide();
	    $(".buttonContainerdiv").hide();
	    $(".header").hide();
	    
	  });
	  $("#FlightDetailButton").click(function(){
	    $(".Flightdetails").show();
	    $(".AirlineDetailDiv").hide();
	    $(".SNDdiv").hide();
	    $(".AddFlightDiv").hide();
	    $(".AddAirLineDiv").hide();
	    $(".AddNewCityDiv").hide();
	    
	    
	  });
	  $("#closeButtonIdFlightDetails").click(function(){
		    $(".Flightdetails").hide();
		  });
	  $("#AirLineDetailButton").click(function(){
		    $(".AirlineDetailDiv").show();
		    $(".SNDdiv").hide();
		    $(".Flightdetails").hide();
		    $(".AddFlightDiv").hide();
		    $(".AddAirLineDiv").hide();
		    $(".AddNewCityDiv").hide();
		  });
	  $("#SNDDetailButton").click(function(){
		    $(".SNDdiv").show();
		    $(".AirlineDetailDiv").hide(); 	
		    $(".Flightdetails").hide();
		    $(".AddFlightDiv").hide();
		    $(".AddAirLineDiv").hide();
		    $(".AddNewCityDiv").hide();
		  });
	  $("#closeButtonIdAirlineDetailDiv").click(function(){
		    $(".AirlineDetailDiv").hide();
		  });
	  $("#closeButtonIdSNDdiv").click(function(){
		    $(".SNDdiv").hide();
		  });
	  $("#addNewFlight").click(function(){
		    $(".AddFlightDiv").show();
		    $(".Flightdetails").hide();
		  });
	  
	  $("#closeButtonaddFlightDiv").click(function(){
		    $(".AddFlightDiv").hide();
		  });
	  $("#addAirLine").click(function(){
		    $(".AddAirLineDiv").show();
		    $(".AirlineDetailDiv").hide();
		  });
	  $("#closeButtonaddAirLineDiv").click(function(){
		    $(".AddAirLineDiv").hide();
		  });
	  $("#addSNDId").click(function(){
		    $(".AddNewCityDiv").show();
		    $(".SNDdiv").hide();
		  });
	  $("#closeButtonaddCityDiv").click(function(){
		    $(".AddNewCityDiv").hide();
		  });
	  
	});


setTimeout(function() {
    $('#popupdiv').fadeOut('fast');
}, 2500);
</script>
<style type="text/css">

body{
background-image:url(./images/adminPageBG.jpg);
}

.table {
    width:  98%;
    border: 2px solid black;

}
table {
	top: 5%;	
    position: relative;
    caption-side: bottom;
    border-collapse: collapse;
    left: 1%;
    text-align: center;
    border: 1px solid black;
  
}
.changePasswordDiv {
    float: right;
    position: relative;
    right: 1%;
}

#popupdiv {
  width: 190px;
    height: 32px;
    text-align: center;
    display: none;
    position: absolute;
    left: 45%;
    top: 18px;
    background: #fff;
    border-radius: 5px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 40%);
    background-color: #83fa8c;
}
.Flightdetails{
display:none;
    width: 60%;
    align-items: center;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 40%);
    background-color: #e7e7e700;
    position: relative;
    top: 30px;
    left: 20%;

}
.FlightTableDiv{
      height: 400px;
    overflow: auto;
}
h3{
text-align: center;
}

.header {
    width: 80%;
    align-items: center;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 40%);
    background-color: #e7e7e700;
    position: relative;
    top: 15px;
    left: 10%;
    height: 95px;
}

.header a {
    float: left;
    background: #ffffff61;
    color: black;
    text-align: center;
    padding: 15px;
    text-decoration: none;
    font-size: 18px;
    line-height: 25px;
    border-radius: 10px;
}

.header a.logo {
font-size: 25px;
    font-weight: bold;
    left: 20px;
    top: 20px;
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
.logoDi{
    content: url(./images/Logo.png);
    width: 100px;
    position: relative;
}
.buttonHeader {
float: right;
    position: relative;
    right: 30px;
    bottom: 123px
}
.headerContent{
    position: relative;
    bottom: 75px;
}
.AirlineDetailDiv{
display : none;
    width: 60%;
    align-items: center;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 40%);
    background-color: #e7e7e700;
    position: relative;
    top: 30px;
    left: 20%;

}
.AirLineTableDiv{
     height: 400px;
    overflow: auto;
}
.SNDdiv{
display : none;
    width: 60%;
    align-items: center;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 40%);
    background-color: #e7e7e700;
    position: relative;
    top: 30px;
    left: 20%;
    
}
.SNDTableDiv{
height: 400px;
    overflow: auto;

}
.buttonContainerdiv{
    width: 50%;
    align-items: center;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 40%);
    background-color: #e7e7e700;
    position: relative;
    top: 20px;
    left: 25%;
    height: 70px;
    }

.button-30 {
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
.closeButtonDiv{
    float: right;
    top: 15px;
    position: relative;
    right: 20px;
}
.Logout{
    float: right;
    position: relative;
    right: 20px;
    bottom: 123px;
}
.AddFlightDiv{
display:none;
    width: 60%;
    align-items: center;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 40%);
    background-color: #e7e7e700;
    position: relative;
    top: 30px;
    left: 20%;
    height: 100%;
}
.AddAirLineDiv{
	display:none;
    width: 60%;
    align-items: center;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 40%);
    background-color: #e7e7e700;
    position: relative;
    top: 30px;
    left: 20%;
    height: 100%;
}

.AddNewCityDiv{
	display:none;
    width: 60%;
    align-items: center;
    background: #fff;
    border-radius: 15px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 40%);
    background-color: #e7e7e700;
    position: relative;
    top: 30px;
    left: 20%;
    height: 100%;
}
	   
.form-select{
    border-radius: 10px;
    width: 300px;
    height: 50px;
    text-align: center;
    background-color: #fff;
    font-family: Arial;
    cursor: pointer;
}
/* Style the arrow inside the select element: */
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}

/* Point the arrow upwards when the select box is open (active): */
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/* style the items (options), including the selected item: */
.select-items div,.select-selected {
  color: #ffffff;
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
}

/* Style items (options): */
.select-items {
  position: absolute;
  background-color: DodgerBlue;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/* Hide the items when the select box is closed: */
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
}
.SourceDiv{
position: relative;
    margin-left: 20%;
    top: 10px;
    width: 300px;
}
.DestinationDiv{
width: 300px;
position: relative;
    margin-left: 20%;
    top: 13px;
	}
	.AirLineDiv{   
	position: relative;
    margin-left: 5%;
    top: 18px;
    width: 250px;
	}
	#timeid{
	border: 1px solid #c4c4c4;
    border-radius: 10px;
    background-color: #fff;
    padding: 3px 5px;
    box-shadow: inset 0 3px 6px rgb(0 0 0 / 10%);
	}	
	.DepartTimeClass{
    float: right;
    position: relative;
    bottom: 130px;
    right: 215px;
	}
	.ArrivalTimeClass{
    float: right;
    position: relative;
    bottom: 75px;
    right: 28px;
	}	
	.dateClass
	{
	width: 250px ;
	left: 302px;
    position: absolute;
   top: 55%;
	
	}
#dateId{
background:#fff url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set/blacks/16x16/calendar_2.png)  97% 50% no-repeat ;
  border: 1px solid #c4c4c4;
  border-radius: 10px;
  background-color: #fff;
  padding: 3px 5px;
  box-shadow: inset 0 3px 6px rgba(0,0,0,0.1);
        width: 250px;
    height: 50px;
}
[type="date"]::-webkit-inner-spin-button {
  display: none;
}
[type="date"]::-webkit-calendar-picker-indicator {
  opacity: 0;
}
.PriceDiv{
    width: 250px;
    position: relative;
    margin-left: 5%;
    top: 24px;
}

.FlightNumberDiv{
    position: relative;
    margin-left: 33%;
    top: -27px
}
.CityNameTextBoxDiv{
width: 250px;
    position: relative;
    margin-left: 20%;
    top: 20px;
}
.CityIATATextBoxDiv{
width: 250px;
    position: relative;
    margin-left: 20%;
    top: 25px;
}
.PriceClass{
border-radius: 10px;
 width: 250px;
    height: 50px;
    text-align: center;
    background-color: #fff;
    font-family: Arial;
    cursor:text;
}
.AirLineNameClass{
border-radius: 10px;
 width: 250px;
    height: 50px;
    text-align: center;
    background-color: #fff;
    font-family: Arial;
    cursor:text;
}
.flightNumberClass{
border-radius: 10px;
    width: 250px;
    height: 50px;
    text-align: center;
    background-color: #fff;
    font-family: Arial;
    cursor: text;
}
#AirLineSelectId{
width: 250px;
}
.addFlightSubmitButtonDiv{
position : relative;
float: right;
    right: 10%;
    bottom: 105px;

}
#addFlightId{
width : 200px;
}
.addFlightButtonDiv{
    left: 36%;
    position: relative;
    width: 200px
}
#addNewFlight{
width : 200px;
}
.deleteClass{
display: inline-block;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    text-align: center;
    text-decoration: none;
    vertical-align: middle;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
    background-color: transparent;
    border: 1px solid transparent;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    border-radius: 0.25rem;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
    color: #fff;
    background-color: #0d6efd;
    border-color: #0d6efd;
}
.headDiv{
text-align: center;
}
.AirLineTextBoxDiv{
     position: relative;
    left: 15%;
    top: 7px;
}

.addAirLineSubmitButtonDiv{
    position: relative;
    left: 50%;
    bottom: 40px;
    width: 240px;
}
#addAirLineId{
width : 150px;
}
.addAirLineButtonDiv{
	position: relative;
    left: 40%;
    width: 200px;
    bottom: 10px;
}
.addSNDButtonDiv{
    left: 36%;
    position: relative;
    width: 200px
}
.CityNameClass{
border-radius: 10px;
    width: 250px;
    height: 50px;
    text-align: center;
    background-color: #fff;
    font-family: Arial;
    cursor: text;
}
.CityIATAClass{
border-radius: 10px;
    width: 250px;
    height: 50px;
    text-align: center;
    background-color: #fff;
    font-family: Arial;
    cursor: text;
}
.addCitySubmitButtonDiv{
position: relative;
    left: 60%;
    bottom: 55px;
    width: 100px;
}
#addCityId{
width :200px; 	
}
#ScrollId::-webkit-scrollbar {
    width: 1em;
}
 
#ScrollId::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
}
 
#ScrollId::-webkit-scrollbar-thumb {
  background-color:  #91f299;
  outline: 1px solid slategrey;
}
.innerDiv
{
      background: #7fe1e29e;
    height: 500px;
    position: relative;
    margin: auto;
    width: 500px;
    align-content: center;
    top: 100px;
    border-radius: 20px;
}
.userDiv{
    position: relative;
        top: 115px;
    left: 102px;
    height: 50px;
    width: 300px;
}
.passwordDiv{
position: relative;
   top: 135px;
    left: 102px;
}
.repasswordDiv{
position: relative;
   top: 145px;
    left: 102px;
}
.ChangePasswordButtonClass{
    top: 195px;
    left: 132px;
    font-size: larger;
    background-image: var(--color-btn-primary-bg,linear-gradient(93deg,#53b2fe,#065af3));
    border: 0;
    border-radius: 34px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 20%);
    color: #fff;
    cursor: pointer;
    display: inline-block;
    flex-shrink: 0;
    outline: 0;
    text-align: center;
    text-transform: uppercase;
    width: 253px;
    padding: 10px;
    margin-bottom: -32px;
    opacity: 1;
    position: relative;

}
.ChangePasswordInput{
font-family: sans-serif;
    /* min-height: auto; */
    /* padding: 1em 0.75em; */
    height: 50px;
    border: 0;
    background: white;
    transition: all .2s linear;
    width: 300px;
    text-align: center;
    font-size: inherit;
    font-weight: 400;
    border-radius: 10px;
}
.textDiv{
    font-weight: bolder;
    position: relative;
    color: white;
    text-align: center;
    top: 80px;
}
.changePassMainDiv{
display: none;
    
}
#changePasswordButtonId{
float: left;
    background: #ffffff61;
    color: black;
    text-align: center;
    padding: 15px;
    text-decoration: none;
    font-size: 18px;
    line-height: 25px;
    border-radius: 10px;
    border : 0px;
    }
    #SubmitButtonToChangePassword{
     top: 195px;
    left: 132px;
    font-size: larger;
    background-image: var(--color-btn-primary-bg,linear-gradient(93deg,#53b2fe,#065af3));
    border: 0;
    border-radius: 34px;
    box-shadow: 0 1px 7px 0 rgb(0 0 0 / 20%);
    color: #fff;
    cursor: pointer;
    display: inline-block;
    flex-shrink: 0;
    outline: 0;
    text-align: center;
    text-transform: uppercase;
    width: 253px;
    padding: 10px;
    margin-bottom: -32px;
    opacity: 1;
    position: relative;
    }
</style>
<meta charset="UTF-8">
<title>Admin Page</title>
</head>
<body>
<div class="changePassMainDiv">
<div class="innerDiv">
<div class="textDiv">
              <h1>Change Login Password</h1>
              <p>Please enter your password!</p></div>
<div class= "userDiv">
<input type = "password" id="oldPassword" class="ChangePasswordInput" placeholder="Old Password" required>
</div>
<div class ="passwordDiv">
<input type = "password" id="newPassword" class="ChangePasswordInput" placeholder="New Password" required/>
</div>
<div>
<button id="SubmitButtonToChangePassword"  onclick = changePassword()>RESET PASSWORD</button>
</div>
</div>
</div>
	<%
out.print("<div id ='popupdiv' display:'block'>"+ session.getAttribute("passwordChangeStatus") +"</div>");
%>
	<%
	if(session.getAttribute("UName") == null )
		response.sendRedirect("AdminLogin.jsp");
	%>

	<div class="header">
			<a href="index.jsp" class="logo">FlyAway</a>
		<div class="logoDi"></div>
		<div class="headerContent"><h3>Welcome to Admin Page</h3></div>
			<div class="Logout" >
		<a href="index.jsp" >Logout</a>
		</div>
			<div class="buttonHeader">
			<button id= "changePasswordButtonId" >RESET PASSWORD</button>
		</div>
	
	</div>

<div class="buttonContainerdiv">
<button class="button-30" role="button" id= "FlightDetailButton" >View Flights</button>
<button class="button-30" role="button" id= "AirLineDetailButton" >View AirLines </button>
<button class="button-30" role="button" id= "SNDDetailButton" >View Sources And Destinations Airports</button>
</div>
	<div class="Flightdetails">
	<div class="closeButtonDiv"><button class="btn-close" aria-label="Close" id="closeButtonIdFlightDetails"></button></div>
	<h3>Flight Details </h3>
	<div class = FlightTableDiv id="ScrollId">
		<table class="table table-width" >
			<tr>
				<th>Source</th>
				<th>Destination</th>
				<th>Airline</th>
				<th>Ticket Price</th>
				<th>Delete Flight</th>
			</tr>
						<%
							List<FlightDetails> flights = (List<FlightDetails>) session.getAttribute("Flights");
							for(FlightDetails flight : flights)
							{
								out.print("<tr>");
								out.print("<td>"+ flight.getSourceName()+"</td>");
								out.print("<td>"+ flight.getDestinationName() +"</td>");
								out.print("<td>"+ flight.getAirlineName() +"</td>");
								out.print("<td>"+ flight.getPrice() +"</td>");
								out.print("<td><button id='deleteFlight'onclick='flightDelete("+flight.getId()+")'>Delete</button></td></tr>");
							}
						%>
		</table>
		</div>
		<div class = "addFlightButtonDiv"><button id="addNewFlight" class="button-30" role="button">
		Add Flight
		</button></div>
	</div>
	<div class="AddFlightDiv" >
	<div class="closeButtonDiv"><button class="btn-close" aria-label="Close" id="closeButtonaddFlightDiv"></button></div>
	<div class = "headDiv" ><h2 >Add New Flight</h2></div>
	<form action ="AddNewFlight" method ="post" >
						<div class="SourceDiv"><select class="form-select" name="SourceName" required>
						<option selected style="display: none">Source City</option>
						<%
							List<CitiesDetails> SourceCities = (List<CitiesDetails>) session.getAttribute("Cities");
							for(CitiesDetails SourceCity : SourceCities)
							{
								String cityname=SourceCity.getCityName();
								out.print("<option value='"+cityname+"'>"+SourceCity.getCityName()+"</option>");	
							}
						%>
						</select></div>
						<div class="DestinationDiv"><select class="form-select" name="DestinationName" required>
						<option selected style="display: none">Destination City</option>
						<%
							List<CitiesDetails> destinationCities = (List<CitiesDetails>) session.getAttribute("Cities");
							for(CitiesDetails destinationCity : destinationCities)
							{
								String cityname=destinationCity.getCityName();
								out.print("<option value='"+cityname+"'>"+destinationCity.getCityName()+"</option>");	
							}
						%>
						</select></div>
						<div class="AirLineDiv"><select class="form-select" id="AirLineSelectId" name="AirlineName" required>
						<option selected style="display: none">Air Lines</option>
						<%
							List<AirLineDetails> airLines = (List<AirLineDetails>) session.getAttribute("AirLines");
							for(AirLineDetails airLine : airLines)
							{
								String airLineName=airLine.getAirlineName();
								out.print("<option value='"+airLineName+"'>"+airLine.getAirlineName()+"</option>");	
							}
						%>
						</select></div>
						 <div class="DepartTimeClass"> <label for="appt">Depart Time</label>
  						  <input type="time" id="timeid" name="departTime" required></div>
						  <div class="ArrivalTimeClass"><label for="appt">Arrival Time</label>
  						  <input type="time" id="timeid" name="arrivalTime" required></div>
  						 <div class="dateClass"> <input type=date id="dateId" name="SelectedDate" required></div>
  						  <div class="PriceDiv "><input type="text" class="PriceClass" name="flightPrice" placeholder="Price" required></div>
  						  <div class="FlightNumberDiv"><input type="text" class="flightNumberClass" name="flightNumber" placeholder="Flight Number" required></div>
  						  <div class ="addFlightSubmitButtonDiv"><input id="addFlightId" type="submit" value="Add New Flight" class="button-30" role="button" ></div>
	</form>
	
	</div>
	
	<div class="AirlineDetailDiv">
	<div class="closeButtonDiv"><button class="btn-close" aria-label="Close" id="closeButtonIdAirlineDetailDiv"></button></div>
	<h3>AirLine Master List</h3>
	<div class= "AirLineTableDiv" id="ScrollId">
		<table class="table table-width" >
			<tr>
				<th>S.No</th>
				<th>Air Lines</th>
				<th>Delete Airline</th>
			</tr>
			<%
							List<AirLineDetails> airlines = (List<AirLineDetails>) session.getAttribute("AirLines");
							for(AirLineDetails airline : airlines)
							{
								out.print("<tr>");
								out.print("<td>"+ airline.getId()+"</td>");
								out.print("<td>"+ airline.getAirlineName() +"</td>");
								out.print("<td><button id='deleteAirline'onclick='airLineDelete("+airline.getId()+")'>Delete</button></td></tr>");
							}
						%>
		</table>
		</div>
				<div class = "addAirLineButtonDiv"><button id="addAirLine" class="button-30" role="button">
		Add Air Line
		</button></div>
	</div>
	<div class="AddAirLineDiv" >
	<div class="closeButtonDiv"><button class="btn-close" aria-label="Close" id="closeButtonaddAirLineDiv"></button></div>
	<div class = "headDiv" ><h2 >Add New Air Line</h2></div>
	<form action = "AddNewAirLine" method = "Post">
	<div class="AirLineTextBoxDiv "><input type="text" class="AirLineNameClass" name="AirLineName" placeholder="Enter name for Air Line" required></div>
	<div class ="addAirLineSubmitButtonDiv"><input id="addAirLineId" type="submit" value="Add New AirLine" class="button-30" role="button" ></div>
	</form>
	</div>
	
	
	<div class="SNDdiv">
		<div class="closeButtonDiv"><button class="btn-close" aria-label="Close" id="closeButtonIdSNDdiv"></button></div>
	<h3>Source And Destination Master List</h3>
		<div class="SNDTableDiv" id="ScrollId">
		<table class="table table-width">
			
			<tr>
				<th>S.No</th>
				<th>Source And Destination cities</th>
				<th>Delete City</th>
			</tr>
						<%
							List<CitiesDetails> cityDetails = (List<CitiesDetails>) session.getAttribute("Cities");
							for(CitiesDetails cityDetail : cityDetails)
							{
								out.print("<tr>");
								out.print("<td>"+ cityDetail.getId()+"</td>");
								out.print("<td>"+ cityDetail.getCityName()+"</td>");
								out.print("<td><button id='deleteCity' onclick='cityDelete("+cityDetail.getId()+")'>Delete</button></td></tr>");
								
							}
						%>
		</table>
		</div>
		<div class = "addSNDButtonDiv">
		<button id="addSNDId" class="button-30" role="button">
		Add New City
		</button>
		</div>
	</div>
	<div class="AddNewCityDiv" >
	<div class="closeButtonDiv"><button class="btn-close" aria-label="Close" id="closeButtonaddCityDiv"></button></div>
	<div class = "headDiv" ><h2 >Add New City</h2></div>
	<form action = "AddNewCity" method = "Post">
	<div class="CityNameTextBoxDiv "><input type="text" class="CityNameClass" name="CityName" placeholder="Enter City" required></div>
	<div class="CityIATATextBoxDiv "><input type="text" class="CityIATAClass" name="CityIATA" placeholder="Enter City IATA" required></div>
	<div class ="addCitySubmitButtonDiv"><input id="addCityId" type="submit" value="Add New City" class="button-30" role="button" ></div>
	</form>
	</div>




</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="styles.css">
<meta charset="UTF-8">
<title>FlyAway Website</title>
</head>
<body>
<div class='BgImageDiv'>

	<div class='mainContainer'>
		<div class='HomePageDiv'>
		<div class="header">
			<a href="index.jsp" class="logo">FlyAway</a>
				<div class="logoDiv"></div>
					<div class="header-right">
						<a class="active" href="index.jsp">Home</a> 
						<a href="AdminLogin.jsp">Admin Login</a> 
					</div>
		</div>
			<form action="SearchFlight" method="post">
			<div class="SourceDiv">
					<select class="form-select" name="SourceName" required>
						<option selected style="display: none">Source City</option>
						<option value="New Delhi (DEL)">New Delhi (DEL)</option>
						<option value="Mumbai (BOM)">Mumbai(BOM)</option>
						<option value="Chennai (MAA)">Chennai(MAA)</option>
						<option value="Bangalore (BLR)">Bangalore(BLR)</option>
						<option value="Kochi (COK)">Kochi(COK)</option>
						<option value="Hyderabad (HYD)">Hyderabad(HYD)</option>
						<option value="Thiruvananthapuram (TRV)">Thiruvananthapuram(TRV)</option>
						<option value="Kolkata (CCU)">Kolkata(CCU)</option>
						<option value="Calicut (CCU)">Calicut(CCJ)</option>
						<option value="Vasco da Gama (GOI)">Vasco da Gama(GOI)</option>
						<option value="Amritsar (ATQ)">Amritsar(ATQ)</option>
						<option value="	Ahmedabad (AMD)">Ahmedabad(AMD)</option>
						<option value="Jaipur (JAI)">Jaipur(JAI)</option>
						<option value="Lucknow (LKO)">Lucknow(LKO)</option>
						<option value="Coimbatore (CJB)">Coimbatore(CJB)</option>
						<option value="Tiruchirappally (TRZ)">Tiruchirappally(TRZ)</option>
						<option value="Pune (PNQ)">Pune(PNQ)</option>
						<option value="Siliguri (IXB)">Siliguri(IXB)</option>
						<option value="Guwahati (GAU)">Guwahati(GAU)</option>
						<option value="Madurai (IXM)">Madurai(IXM)</option>	
						<option value="Nagpur (IXC)">Nagpur(IXC)</option>
						<option value="Jammu (IXJ)">Jammu(IXJ)</option>
						<option value="Srinagar (SXR)">Srinagar(SXR)</option>
						<option value="Mangalore (IXE)">Mangalore(IXE)</option>
						<option value="Port Blair (IXZ)">Port Blair(IXZ)</option>
						<option value="Indore (IDR)">Indore(IDR)</option>
						<option value="Agartala (IXA)">Agartala(IXA)</option>
						<option value="Patna (PAT)">Patna(PAT)</option>
						<option value="Ranchi (IXR)">Ranchi(IXR)</option>													
					</select>
				</div>
				<div class="DestinationDiv">
					<select class="form-select" name="DestinationName" required>
						<option selected style="display: none">Destination City</option>
						<option value="New Delhi (DEL)">New Delhi (DEL)</option>
						<option value="Mumbai (BOM)">Mumbai(BOM)</option>
						<option value="Chennai (MAA)">Chennai(MAA)</option>
						<option value="Bangalore (BLR)">Bangalore(BLR)</option>
						<option value="Kochi (COK)">Kochi(COK)</option>
						<option value="Hyderabad (HYD)">Hyderabad(HYD)</option>
						<option value="Thiruvananthapuram (TRV)">Thiruvananthapuram(TRV)</option>
						<option value="Kolkata (CCU)">Kolkata(CCU)</option>
						<option value="Calicut (CCU)">Calicut(CCJ)</option>
						<option value="Vasco da Gama (GOI)">Vasco da Gama(GOI)</option>
						<option value="Amritsar (ATQ)">Amritsar(ATQ)</option>
						<option value="	Ahmedabad (AMD)">Ahmedabad(AMD)</option>
						<option value="Jaipur (JAI)">Jaipur(JAI)</option>
						<option value="Lucknow (LKO)">Lucknow(LKO)</option>
						<option value="Coimbatore (CJB)">Coimbatore(CJB)</option>
						<option value="Tiruchirappally (TRZ)">Tiruchirappally(TRZ)</option>
						<option value="Pune (PNQ)">Pune(PNQ)</option>
						<option value="Siliguri (IXB)">Siliguri(IXB)</option>
						<option value="Guwahati (GAU)">Guwahati(GAU)</option>
						<option value="Madurai (IXM)">Madurai(IXM)</option>	
						<option value="Nagpur (IXC)">Nagpur(IXC)</option>
						<option value="Jammu (IXJ)">Jammu(IXJ)</option>
						<option value="Srinagar (SXR)">Srinagar(SXR)</option>
						<option value="Mangalore (IXE)">Mangalore(IXE)</option>
						<option value="Port Blair (IXZ)">Port Blair(IXZ)</option>
						<option value="Indore (IDR)">Indore(IDR)</option>
						<option value="Agartala (IXA)">Agartala(IXA)</option>
						<option value="Patna (PAT)">Patna(PAT)</option>
						<option value="Ranchi (IXR)">Ranchi(IXR)</option>
					</select>
				</div>
					<input type=date id="dateId" name="SelectDate">
					<div class="TravllerDiv">
					<select class="form-select" name="travellers" required>
						<option selected style="display: none">No. of Travllers</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
					</select>
				</div>
				<div class='ButtonDiv'>
					<input type="submit" value="Search" class="searchButtonClass">
				</div>
			</form>

		</div>
	</div>
	</div>
</body>
</html>
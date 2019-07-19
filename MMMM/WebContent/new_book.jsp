<%@include file="db.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>New Bookings</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon1.jpg"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<style type="text/css">
.shadow-drop-center {
	position: relative;
	text-align: center;
	padding: 10px 5px 10px 5px;
	font-weight: bold;
	font-size: 25px;
	-webkit-animation: shadow-drop-center 0.4s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
	        animation: shadow-drop-center 0.4s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
	}
	@-webkit-keyframes shadow-drop-center {
	  0% {
	    box-shadow: 0 0 0 0 #21D14B;
	  }
	  100% {
	    box-shadow: 0 0 25px #21D14B;
	  }
	}
	@keyframes shadow-drop-center {
	  0% {
	    box-shadow: 0 0 0 0 #21D14B;
	  }
	  100% {
	    box-shadow: 0 0 25px #21D14B;
	  }
	}
.shadow-drop-center1 {
	position: relative;
	text-align: center;
	padding: 10px 20px 10px 20px;
	font-weight: bold;
	font-size: 25px;
	-webkit-animation: shadow-drop-center1 0.4s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
	        animation: shadow-drop-center1 0.4s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
}


@-webkit-keyframes shadow-drop-center1 {
  0% {
    box-shadow: 0 0 0 0 coral;
  }
  100% {
    box-shadow: 0 0 20px #FF0000 ;
  }
}
@keyframes shadow-drop-center1 {
  0% {
    box-shadow: 0 0 0 0 coral;
  }
  100% {
    box-shadow: 0 0 20px #FF0000 ;
  }
}
</style>
</head>
<body class="animsition">
	
	<!-- Header -->
	<header class="header-v2">
		<!-- Header desktop -->
		<div class="container-menu-desktop trans-03">
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop p-l-45">
					
					<!-- Logo desktop -->		
					<a href="ahome.jsp" class="logo">
						<img src="images/logo2.png" alt="IMG-LOGO" style="height: 100%; width: 130px;">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="ahome.jsp">Home</a>
							</li>

							<li>
								<a href="aabout.html">About</a>
							</li>

							<li>
								<a href="acontact.html">Contact</a>
							</li>
							
							<li>
								<a href="logout.jsp">Logout</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m h-full">

						<div class="flex-c-m h-full p-l-18 p-r-25 bor5">
							<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11">
								<span style="font-size: 20px;">Welcome Admin</span>
							</div>
						</div>
					</div>
				</nav>
			</div>	
		</div>
	</header>


	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/conc3.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			New Bookings
		</h2>	
			<a href="ahome.jsp" class="stext-105 cl0 hov-cl0 trans-04">
					Home
					<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
				</a>
				<span class="stext-105 cl0">
					New Bookings
				</span>
	</section>
		
<br><br>
	<!-- Shoping Cart -->
		<div class="">
			<div class=" ">
				<div class=" ">
					<div class=" ">
						<div align="center">
						<%
							String qr="select * from book";
							Statement st=con.createStatement();
							ResultSet rs=st.executeQuery(qr);
							if(rs.next())
							{
						%>
							<table>
								<tr align="center">
									<th>Bid</th>
									<th>Email</th>
									<th>Event</th>
									<th>Place</th>
									<th>Guests</th>
									<th>Date</th>
									<th>Equipments</th>
									<th>F-Type</th>
									<th>Time</th>
									<th>Lunch</th>
									<th>Dinner</th>
									<th>Lightning</th>
									<th>Flower</th>
									<th>Seating</th>
									<th>Amount</th>
									<th>Status</th>
									<th>Cancel</th>
									<th>Approve</th>
								</tr>
								<% 
				do{
					int bid=rs.getInt("bid");
					String email=rs.getString("email");
					String etype=rs.getString("etype");
					String vname=rs.getString("vname");
					String guest=rs.getString("guest");
					String date=rs.getString("date");
					String equip=rs.getString("equip");
					String food=rs.getString("food");
					String time=rs.getString("time");
					String ltype=rs.getString("ltype");
					String dtype=rs.getString("dtype");
					String lightning=rs.getString("lightning");
					String flower=rs.getString("flower");
					String seating=rs.getString("seating");
					String amount=rs.getString("amount");
					String status=rs.getString("status");
					if(status.equals("pending"))
					{
					%>
					<tr align="center" class="tr1">
						<td style="text-align: center;"><%= bid%></td>
						<td style="font-weight: bold; color: black;"><%= email %></td>
						<td><%= etype%></td>
						<td><%= vname%></td>
						<td><%= guest%></td>
						<td><%= date%></td>
						<td><%= equip%></td>
						<td><%= food%></td>
						<td><%= time%></td>
						<td><%= ltype%></td>
						<td><%= dtype%></td>
						<td><%= lightning%></td>
						<td><%= flower%></td>
						<td><%= seating%></td>
						<td><%= amount%></td>
						<td style="font-weight: bold; color: red;"><%= status%></td>
						<td>
						<a href="a_cancel.jsp?bid=<%= bid%>&email=<%=email%>&etype=<%=etype%>">
							<div class="shadow-drop-center1">
								<i class="fa fa-remove" style="color: red; font-size: 25px;"></i>
							</div>
						</a>
						</td>
						<td>
						<a href="a_approve.jsp?bid=<%=bid %>&email=<%=email%>&etype=<%=etype%>&status=approve">
							<div class="shadow-drop-center">
								<i class="fa fa-check" style="color: #21D14B; font-size: 25px;"></i>
							</div>
						</a>
						</td>
					</tr>
					<%
					}
				}while(rs.next());
			%> 	
			</table>
			<%
				}
				else{
						RequestDispatcher rd=request.getRequestDispatcher("ahome.jsp");
						rd.include(request, response);
						%><script>window.alert("No Booking Found");</script><%
				}
			%>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	
		
<br><br>
	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Help
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="ahome.jsp" class="stext-107 cl7 hov-cl1 trans-04">
								Home
							</a>
						</li>

						<li class="p-b-10">
							<a href="aabout.html" class="stext-107 cl7 hov-cl1 trans-04">
								About Us 
							</a>
						</li>

						<li class="p-b-10">
							<a href="acontact.html" class="stext-107 cl7 hov-cl1 trans-04">
								Contact Us
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						GET IN TOUCH
					</h4>

					<p class="stext-107 cl7 size-201">
						Any questions? Let us know in our office at A 303-304 Mittal Commercia, Asan Pada Road, Marol Village, Andheri East, Mumbai 400059
					</p>

					<div class="p-t-27">
						<a href="https://www.facebook.com/Eventbrite" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="https://www.instagram.com/eventbrite/" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i>
						</a>

						<a href="https://twitter.com/Eventbrite" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-twitter"></i>
						</a>
						<a href="https://plus.google.com/u/0/114336542630188406257" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-google-plus"></i>
						</a>
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Newsletter
					</h4>

					<form>
						<div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
							<div class="focus-input1 trans-04"></div>
						</div>

						<div class="p-t-18">
							<button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
								Subscribe
							</button>
						</div>
					</form>
				</div>
			</div>
				<p class="stext-107 cl6 txt-center">
					
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a>Mohammed Lala</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
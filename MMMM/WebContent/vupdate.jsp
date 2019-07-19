<%
	String v_name=request.getParameter("vn");
	String v_address=request.getParameter("vadd");
	String v_number=request.getParameter("vnum");
	String v_capacity=request.getParameter("vcap");
	String v_type=request.getParameter("vtype");
	String amount=request.getParameter("vamt");
	String fileName=request.getParameter("fn");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>Update Venue</title>
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
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/conc5.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			Update Form
		</h2>	
			<a href="ahome.jsp" class="stext-105 cl0 hov-cl0 trans-04">
					Home
					<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
				</a>
				<span class="stext-105 cl0">
					Update Form
				</span>
	</section>


	<!-- Content page -->

	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr">
				<span style="margin: 0px 150px;"></span>
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-11-lg " style="background: #F0F0F0;">
					<form action="updimg.jsp" method="post">
						<h4 class="mtext-105 cl2 txt-center p-b-30">
							Update For <%=v_name %>
						</h4>
						<div class="bor8 m-b-30">
							<input class="stext-111 cl2 plh3 size-116 p-l-28 p-r-30" type="hidden" name="v_name" value="<%=v_name%>" required>
						</div>
						
						<div class="bor8 m-b-30">
							<input class="stext-111 cl2 plh3 size-116 p-l-28 p-r-30" type="hidden" name="v_type" value="<%=v_type%>" required>
						</div>
						
						<div class="bor8 m-b-30">
							<input class="stext-111 cl2 plh3 size-116 p-l-28 p-r-30" type="text" name="v_address" value="<%=v_address%>" required>
						</div>
						
						<div class="bor8 m-b-30">
							<input class="stext-111 cl2 plh3 size-116 p-l-28 p-r-30" type="text" name="v_number" value="<%=v_number%>" required>
						</div>
						
						<div class="bor8 m-b-30">
							<input class="stext-111 cl2 plh3 size-116 p-l-28 p-r-30" type="text" name="v_capacity" value="<%=v_capacity%>" required>
						</div>
						
						<div class="bor8 m-b-30">
							<input class="stext-111 cl2 plh3 size-116 p-l-28 p-r-30" type="text" name="amount" value="<%=amount%>" required>
						</div>
								
						<button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
							--Next Step--
						</button>
					</form>
				</div>

			<span id="amit"></span>
					</div>
		</div>
	</section>	
	
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="js/map-custom.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
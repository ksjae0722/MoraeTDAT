<!--
결제화면
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>모래모레</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta content="Free HTML Templates" name="keywords">
	<meta content="Free HTML Templates" name="description">

	<!-- Favicon -->
	<link href="../img/favicon.ico" rel="icon">

	<!-- Google Web Fonts -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

	<!-- Font Awesome -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

	<!-- Libraries Stylesheet -->
	<link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

	<!-- Customized Bootstrap Stylesheet -->
	<link href="../css/style.css" rel="stylesheet">
</head>

<body>
	<!-- Topbar Start -->
	<div class="container-fluid">
		<div class="row bg-secondary py-2 px-xl-5">
			<div class="col-lg-6 d-none d-lg-block">
				<div class="d-inline-flex align-items-center">
					<a class="text-dark" href="#">자주 묻는 질문</a>
					<span class="text-muted px-2">|</span>
					<a class="text-dark" href="#">고객센터</a>
				</div>
			</div>
			<div class="col-lg-6 text-center text-lg-right">
				<div class="d-inline-flex align-items-center">
					<!-- SNS계정 -->
					<a class="text-dark px-2" href="#">
						<i class="fab fa-instagram"></i>
					</a>
					<a class="text-dark pl-2" href="#">
						<i class="fab fa-youtube"></i>
					</a>
					<!--
					<a class="text-dark pl-2" href="Controller.do">
						<i class="fa-solid fa-messages"></i>
					</a>	-->
				</div>
			</div>
		</div>
		<div class="row align-items-center py-3 px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<!-- 로고 부분 -->
				<a href="<c:url value="/index.do"/>" class="text-decoration-none">
					<h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">M</span>Morae TDAT</h1>
				</a>
			</div>
			<div class="col-lg-6 col-6 text-left">
				<form action="/detail.do">
					<!-- 검색창 -->
					<div class="input-group">
						<input type="text" class="form-control" placeholder="신상 YOGA컵">
						<div class="input-group-append">
							<span class="input-group-text bg-transparent text-primary">
								<i class="fa fa-search"></i>
							</span>
						</div>
					</div>
				</form>
			</div>
			<div class="col-lg-3 col-6 text-right">
				<a href="#" class="btn border">
					<i class="fas fa-heart text-primary"></i>
					<!-- 찜 목록 -->
					<span class="badge">0</span>
				</a>
				<a href="<c:url value="/cart.do"/>" class="btn border">
					<i class="fas fa-shopping-cart text-primary"></i>
					<!-- 장바구니 -->
					<span class="badge">0</span>
				</a>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<!-- Navbar Start -->
	<div class="container-fluid">
		<div class="row border-top px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
					<h6 class="m-0">Categories</h6>
					<i class="fa fa-angle-down text-dark"></i>
				</a>
				<nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
					<div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
						<div class="nav-item dropdown">
							<a href="#" class="nav-link" data-toggle="dropdown">Best Items<i class="fa fa-angle-down float-right mt-1"></i></a>
							<div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
								<a href="<c:url value="/detail.do"/>" class="dropdown-item">크리스마스 한정 엽서</a>
								<a href="<c:url value="/detail.do"/>" class="dropdown-item">오버핏 티셔츠</a>
								<a href="<c:url value="/detail.do"/>" class="dropdown-item">YOGA컵</a>
							</div>
						</div>
						<a href="<c:url value="/detail.do"/>" class="nav-item nav-link">Stickers</a>
						<a href="<c:url value="/detail.do"/>" class="nav-item nav-link">Postcards</a>
						<a href="<c:url value="/detail.do"/>" class="nav-item nav-link">T-shirts</a>
						<a href="<c:url value="/detail.do"/>" class="nav-item nav-link">Office-Supplies</a>
						<a href="<c:url value="/detail.do"/>" class="nav-item nav-link">Cushions</a>
						<a href="<c:url value="/detail.do"/>" class="nav-item nav-link">Blankets</a>
					</div>
				</nav>
			</div>
			<div class="col-lg-9">
				<nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
					<a href="<c:url value="/index.do"/>" class="text-decoration-none d-block d-lg-none">
						<h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">M</span>Morae TDAT</h1>
					</a>
					<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
						<div class="navbar-nav mr-auto py-0">
							<a href="<c:url value="/index.do"/>" class="nav-item nav-link">Home</a>
							<a href="<c:url value="/shop.do"/>" class="nav-item nav-link">Shop</a>
							<a href="<c:url value="/detail.do"/>" class="nav-item nav-link">Shop Detail</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle active" data-toggle="dropdown">Pages</a>
								<div class="dropdown-menu rounded-0 m-0">
									<a href="<c:url value="/cart.do"/>" class="dropdown-item">Shopping Cart</a>
									<a href="<c:url value="/checkout.do"/>" class="dropdown-item">Checkout</a>
								</div>
							</div>
							<a href="<c:url value="/contact.do"/>" class="nav-item nav-link">Contact</a>
						</div>
						<div class="navbar-nav ml-auto py-0">
							<a href="<c:url value="/login.do"/>" class="nav-item nav-link">Login</a>
							<a href="<c:url value="/register.do"/>" class="nav-item nav-link">Register</a>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- Navbar End -->


	<!-- Page Header Start -->
	<div class="container-fluid bg-secondary mb-5">
		<div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 150px">
			<h1 class="font-weight-semi-bold text-uppercase mb-3">Checkout</h1>
		</div>
	</div>
	<!-- Page Header End -->


	<!-- Checkout Start -->
	<div class="container-fluid pt-5">
		<div class="row px-xl-5">
			<div class="col-lg-8">
				<div class="mb-4">
					<h4 class="font-weight-semi-bold mb-4">배송정보</h4>
					<div class="row">
						<div class="col-md-6 form-group">
							<label>성</label>
							<input class="form-control" type="text" placeholder="강">
						</div>
						<div class="col-md-6 form-group">
							<label>이름</label>
							<input class="form-control" type="text" placeholder="모래">
						</div>
						<div class="col-md-6 form-group">
							<label>이메일</label>
							<input class="form-control" type="text" placeholder="moraecute@cat.com">
						</div>
						<div class="col-md-6 form-group">
							<label>전화번호</label>
							<input class="form-control" type="text" placeholder="+123 456 789">
						</div>
						<div class="col-md-6 form-group">
							<label>배송지 주소</label>
							<input class="form-control" type="text" placeholder="모래시 모래구 모래동 모래로 1길 1, 1층">
						</div>
						<div class="col-md-6 form-group">
							<label>우편번호</label>
							<input class="form-control" type="text" placeholder="123-456">
						</div>
					</div>
				</div>
				<div class="collapse mb-4" id="shipping-address">
					<h4 class="font-weight-semi-bold mb-4">배송정보</h4>
					<div class="row">
						<div class="col-md-6 form-group">
							<label>성</label>
							<input class="form-control" type="text" placeholder="강">
						</div>
						<div class="col-md-6 form-group">
							<label>이름</label>
							<input class="form-control" type="text" placeholder="모래">
						</div>
						<div class="col-md-6 form-group">
							<label>이메일</label>
							<input class="form-control" type="text" placeholder="moraecute@cat.com">
						</div>
						<div class="col-md-6 form-group">
							<label>전화번호</label>
							<input class="form-control" type="text" placeholder="+123 456 789">
						</div>
						<div class="col-md-6 form-group">
							<label>배송지 주소</label>
							<input class="form-control" type="text" placeholder="모래시 모래구 모래동 모래로 1길 1, 1층">
						</div>
						<div class="col-md-6 form-group">
							<label>우편번호</label>
							<input class="form-control" type="text" placeholder="123-456">
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="card border-secondary mb-5">
					<!-- 주문 정보 넘겨 받아야함 -->
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">주문 목록</h4>
					</div>
					<div class="card-body">
						<h5 class="font-weight-medium mb-3">제품</h5>
						<div class="d-flex justify-content-between">
							<p>주문 제품1</p>
							<p>제품 가격1</p>
						</div>
						<div class="d-flex justify-content-between">
							<p>주문 제품2</p>
							<p>제품 가격2</p>
						</div>
						<div class="d-flex justify-content-between">
							<p>주문 제품3</p>
							<p>제품 가격3</p>
						</div>
						<hr class="mt-0">
						<div class="d-flex justify-content-between mb-3 pt-1">
							<h6 class="font-weight-medium">결제금액</h6>
							<h6 class="font-weight-medium">제품금액 총합</h6>
						</div>
						<div class="d-flex justify-content-between">
							<h6 class="font-weight-medium">배송비</h6>
							<h6 class="font-weight-medium">배송비 금액</h6>
						</div>
					</div>
					<div class="card-footer border-secondary bg-transparent">
						<div class="d-flex justify-content-between mt-2">
							<h5 class="font-weight-bold">총 결제금액</h5>
							<h5 class="font-weight-bold">결제금액+배송비</h5>
						</div>
					</div>
				</div>
				<div class="card border-secondary mb-5">
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">결제방식</h4>
					</div>
					<div class="card-body">
						<div class="form-group">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment" id="creditcard">
								<label class="custom-control-label" for="paypal">신용카드</label>
							</div>
						</div>
						<div class="form-group">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment" id="naverpay">
								<label class="custom-control-label" for="directcheck">네이버페이</label>
							</div>
						</div>
						<div class="">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment" id="kakaopay">
								<label class="custom-control-label" for="banktransfer">카카오페이</label>
							</div>
						</div>
					</div>
					<div class="card-footer border-secondary bg-transparent">
						<button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3">결제하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Checkout End -->


	 <!-- Footer Start -->
	 <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
		<div class="row px-xl-5 pt-5">
			<div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
				<a href="<c:url value="/index.do"/>" class="text-decoration-none">
					<h1 class="mb-4 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border border-white px-3 mr-1">M</span>Morae TDAT</h1>
				</a>
				<p>Morae the day after tomorrow<br>모래모레. 귀엽고 앙큼한 모래 굿즈를 모레까지. </p>
				<p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Sandiego , California, USA</p>
				<p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>moraetdat@cat.com</p>
				<p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+010 2021 1009</p>
			</div>
			<div class="col-lg-8 col-md-12">
				<div class="row">
					<div class="col-md-4 mb-5">
						<h5 class="font-weight-bold text-dark mb-4">빠른 메뉴</h5>
						<div class="d-flex flex-column justify-content-start">
							<a class="text-dark mb-2" href="<c:url value="/index.do"/>"><i class="fa fa-angle-right mr-2"></i>Home</a>
							<a class="text-dark mb-2" href="<c:url value="/shop.do"/>"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
							<a class="text-dark mb-2" href="<c:url value="/detail.do"/>"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
							<a class="text-dark mb-2" href="<c:url value="/cart.do"/>"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
							<a class="text-dark mb-2" href="<c:url value="/checkout.do"/>"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
							<a class="text-dark" href="<c:url value="/contact.do"/>"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
						</div>
					</div>
					<div class="col-md-4 mb-5">
						<h5 class="font-weight-bold text-dark mb-4">모래</h5>
						<div class="d-flex flex-column justify-content-start">
							<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>냥스타그램</a>
							<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>이모네 유튜브</a>
							<a class="text-dark mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>집사그램</a>
						</div>
					</div>
					<div class="col-md-4 mb-5">
						<h5 class="font-weight-bold text-dark mb-4">모래 사진 정기구독</h5>
						<form action="#">
							<div class="form-group">
								<input type="text" class="form-control border-0 py-4" placeholder="이름" required="required" />
							</div>
							<div class="form-group">
								<input type="email" class="form-control border-0 py-4" placeholder="이메일"
									required="required" />
							</div>
							<div>
								<button class="btn btn-primary btn-block border-0 py-3" type="submit">당장 구독</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row border-top border-light mx-xl-5 py-4">
			<div class="col-md-6 px-xl-0">
				<p class="mb-md-0 text-center text-md-left text-dark">
					&copy; <a class="text-dark font-weight-semi-bold" href="<c:url value="/index.do"/>">Morae TDAT</a>. All Rights Reserved. Designed
					by
					<a class="text-dark font-weight-semi-bold" href="#">Rayson Joanna</a><br>
					Distributed By <a href="#" target="_blank">Rayson Joanna</a>
				</p>
			</div>
			<div class="col-md-6 px-xl-0 text-center text-md-right">
				<img class="img-fluid" src="img/payments.png" alt="">
			</div>
		</div>
	</div>
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Contact Javascript File -->
	<script src="mail/jqBootstrapValidation.min.js"></script>
	<script src="mail/contact.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>

</html>
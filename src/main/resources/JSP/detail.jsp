<!--
물품상세화면
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
				<form action="Controller.do">
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
				<a href="Controller.do" class="btn border">
					<i class="fas fa-heart text-primary"></i>
					<!-- 찜 목록 -->
					<span class="badge">0</span>
				</a>
				<a href="Controller.do" class="btn border">
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
							<a href="Controller.do" class="nav-link" data-toggle="dropdown">Best Items <i class="fa fa-angle-down float-right mt-1"></i></a>
							<div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
								<a href="Controller.do" class="dropdown-item">크리스마스 한정 엽서</a>
								<a href="Controller.do" class="dropdown-item">오버핏 티셔츠</a>
								<a href="Controller.do" class="dropdown-item">YOGA컵</a>
							</div>
						</div>
						<a href="Controller.do" class="nav-item nav-link">Stickers</a>
						<a href="Controller.do" class="nav-item nav-link">Postcards</a>
						<a href="Controller.do" class="nav-item nav-link">T-shirts</a>
						<a href="Controller.do" class="nav-item nav-link">Office-Supplies</a>
						<a href="Controller.do" class="nav-item nav-link">Cushions</a>
						<a href="Controller.do" class="nav-item nav-link">Blankets</a>
					</div>
				</nav>
			</div>
			<div class="col-lg-9">
				<nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
					<a href="Controller.do" class="text-decoration-none d-block d-lg-none">
						<h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">M</span>Morae TDAT</h1>
					</a>
					<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
						<div class="navbar-nav mr-auto py-0">
							<a href="Controller.do" class="nav-item nav-link">Home</a>
							<a href="Controller.do" class="nav-item nav-link">Shop</a>
							<a href="Controller.do" class="nav-item nav-link active">Shop Detail</a>
							<div class="nav-item dropdown">
								<a href="Controller.do" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
								<div class="dropdown-menu rounded-0 m-0">
									<a href="Controller.do" class="dropdown-item">Shopping Cart</a>
									<a href="Controller.do" class="dropdown-item">Checkout</a>
								</div>
							</div>
							<a href="Controller.do" class="nav-item nav-link">Contact</a>
						</div>
						<div class="navbar-nav ml-auto py-0">
							<a href="Controller.do" class="nav-item nav-link">Login</a>
							<a href="Controller.do" class="nav-item nav-link">Register</a>
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
			<h1 class="font-weight-semi-bold text-uppercase mb-3">Shop Detail</h1>
		</div>
	</div>
	<!-- Page Header End -->


	<!-- Shop Detail Start -->
	<!-- 사진 슬라이더 -->
	<div class="container-fluid py-5">
		<div class="row px-xl-5">
			<div class="col-lg-5 pb-5">
				<div id="product-carousel" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner border">
						<!-- 제품 슬라이더 -->
						<div class="carousel-item active">
							<img class="w-100 h-100" src="img/product-1.jpg" alt="Image">
						</div>
						<div class="carousel-item">
							<img class="w-100 h-100" src="img/product-2.jpg" alt="Image">
						</div>
					</div>
					<a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
						<i class="fa fa-2x fa-angle-left text-dark"></i>
					</a>
					<a class="carousel-control-next" href="#product-carousel" data-slide="next">
						<i class="fa fa-2x fa-angle-right text-dark"></i>
					</a>
				</div>
			</div>
			<!-- 물건 설명 -->
			<div class="col-lg-7 pb-5">
				<h3 class="font-weight-semi-bold">선택한 물건</h3>
				<div class="d-flex mb-3">
					<div class="text-primary mr-2">
						<small class="fas fa-star"></small>
						<small class="fas fa-star"></small>
						<small class="fas fa-star"></small>
						<small class="fas fa-star"></small>
						<small class="fas fa-star-half-alt"></small>
					</div>
					<small class="pt-1">(5 Reviews)</small>
				</div>
				<h3 class="font-weight-semi-bold mb-4">30,000</h3>
				<p class="mb-4">누구보다 애교많은 슈퍼똥고양이 모래의 귀여움을 가득. 키치한 감성으로 어디든 모래와 함께! 박시한 사이즈와 큼직한 모래가 포인트인 티셔츠[선택한 물건 설명]</p>
				<div class="d-flex mb-3">
					<p class="text-dark font-weight-medium mb-0 mr-3">Sizes:</p>
					<form>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="size-2" name="size">
							<label class="custom-control-label" for="size-2">S</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="size-3" name="size">
							<label class="custom-control-label" for="size-3">M</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="size-4" name="size">
							<label class="custom-control-label" for="size-4">L</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="size-5" name="size">
							<label class="custom-control-label" for="size-5">XL</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="size-5" name="size">
							<label class="custom-control-label" for="size-5">2XL</label>
						</div>
					</form>
				</div>
				<div class="d-flex mb-4">
					<p class="text-dark font-weight-medium mb-0 mr-3">Colors:</p>
					<form>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="color-4" name="color">
							<label class="custom-control-label" for="color-4">SkyBlue</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="color-5" name="color">
							<label class="custom-control-label" for="color-5">DarkGreen</label>
						</div>
					</form>
				</div>
				<!-- 수량과 장바구니 넣기 -->
				<div class="d-flex align-items-center mb-4 pt-2">
					<div class="input-group quantity mr-3" style="width: 130px;">
						<div class="input-group-btn">
							<button class="btn btn-primary btn-minus" >
							<i class="fa fa-minus"></i>
							</button>
						</div>
						<input type="text" class="form-control bg-secondary text-center" value="1">
						<div class="input-group-btn">
							<button class="btn btn-primary btn-plus">
								<i class="fa fa-plus"></i>
							</button>
						</div>
					</div>
					<button class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1"></i> Add To Cart</button>
				</div>
				<!-- SNS공유 아이콘 -->
				<div class="d-flex pt-2">
					<p class="text-dark font-weight-medium mb-0 mr-2">Share on:</p>
					<div class="d-inline-flex">
						<a class="text-dark px-2" href="Controller.do">
							<i class="fab fa-facebook-f"></i>
						</a>
						<a class="text-dark px-2" href="Controller.do">
							<i class="fab fa-twitter"></i>
						</a>
						<a class="text-dark px-2" href="Controller.do">
							<i class="fab fa-instagram"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 제품 설명 -->
		<div class="row px-xl-5">
			<div class="col">
				<div class="nav nav-tabs justify-content-center border-secondary mb-4">
					<a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">Description</a>
					<a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-2">Information</a>
					<a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-3">Reviews (0)</a>
				</div>
				<div class="tab-content">
					<!-- Description 탭 시  -->
					<div class="tab-pane fade show active" id="tab-pane-1">
						<h4 class="mb-3">Product Description</h4>
						<p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.</p>
						<p>Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.</p>
					</div>
					<!-- Information 탭 시 -->
					<div class="tab-pane fade" id="tab-pane-2">
						<h4 class="mb-3">Additional Information</h4>
						<p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.</p>
						<div class="row">
							<div class="col-md-6">
								<!-- 대충 추가 정보 -->
								<ul class="list-group list-group-flush">
									<li class="list-group-item px-0">
										Sit erat duo lorem duo ea consetetur, et eirmod takimata.
									</li>
									<li class="list-group-item px-0">
										Amet kasd gubergren sit sanctus et lorem eos sadipscing at.
									</li>
									<li class="list-group-item px-0">
										Duo amet accusam eirmod nonumy stet et et stet eirmod.
									</li>
									<li class="list-group-item px-0">
										Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.
									</li>
								  </ul> 
							</div>
							<div class="col-md-6">
								<ul class="list-group list-group-flush">
									<li class="list-group-item px-0">
										Sit erat duo lorem duo ea consetetur, et eirmod takimata.
									</li>
									<li class="list-group-item px-0">
										Amet kasd gubergren sit sanctus et lorem eos sadipscing at.
									</li>
									<li class="list-group-item px-0">
										Duo amet accusam eirmod nonumy stet et et stet eirmod.
									</li>
									<li class="list-group-item px-0">
										Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.
									</li>
								  </ul> 
							</div>
						</div>
					</div>
					<!-- 리뷰 탭 시 -->
					<div class="tab-pane fade" id="tab-pane-3">
						<div class="row">
							<div class="col-md-6">
								<h4 class="mb-4">1 review for "Colorful Stylish Shirt"</h4>
								<div class="media mb-4">
									<img src="img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1" style="width: 45px;">
									<div class="media-body">
										<h6>John Doe<small> - <i>01 Jan 2045</i></small></h6>
										<div class="text-primary mb-2">
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
											<i class="fas fa-star-half-alt"></i>
											<i class="far fa-star"></i>
										</div>
										<p>Diam amet duo labore stet elitr ea clita ipsum, tempor labore accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
									</div>
								</div>
							</div>
							<!-- 리뷰작성 -->
							<div class="col-md-6">
								<h4 class="mb-4">Leave a review</h4>
								<small>Your email address will not be published. Required fields are marked *</small>
								<div class="d-flex my-3">
									<p class="mb-0 mr-2">Your Rating * :</p>
									<!-- 클릭하면 변하게 작성 필요 -->
									<div class="text-primary">
										<i class="far fa-star"></i>
										<i class="far fa-star"></i>
										<i class="far fa-star"></i>
										<i class="far fa-star"></i>
										<i class="far fa-star"></i>
									</div>
								</div>
								<form>
									<div class="form-group">
										<label for="message">Your Review *</label>
										<textarea id="message" cols="30" rows="5" class="form-control"></textarea>
									</div>
									<div class="form-group">
										<label for="name">Your Name *</label>
										<input type="text" class="form-control" id="name">
									</div>
									<div class="form-group">
										<label for="email">Your Email *</label>
										<input type="email" class="form-control" id="email">
									</div>
									<div class="form-group mb-0">
										<input type="submit" value="Leave Your Review" class="btn btn-primary px-3">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Shop Detail End -->


	<!-- Products Start -->
	<div class="container-fluid py-5">
		<div class="text-center mb-4">
			<h2 class="section-title px-5"><span class="px-2">You May Also Like</span></h2>
		</div>
		<!-- 추천 상품 사진 슬라이더 -->
		<div class="row px-xl-5">
			<div class="col">
				<div class="owl-carousel related-carousel">
					<div class="card product-item border-0">
						<div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
							<img class="img-fluid w-100" src="img/product-1.jpg" alt="">
						</div>
						<div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
							<h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
							<div class="d-flex justify-content-center">
								<h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
							</div>
						</div>
						<div class="card-footer d-flex justify-content-between bg-light border">
							<a href="Controller.do" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
							<a href="Controller.do" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
						</div>
					</div>
					<div class="card product-item border-0">
						<div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
							<img class="img-fluid w-100" src="img/product-2.jpg" alt="">
						</div>
						<div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
							<h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
							<div class="d-flex justify-content-center">
								<h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
							</div>
						</div>
						<div class="card-footer d-flex justify-content-between bg-light border">
							<a href="Controller.do" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
							<a href="Controller.do" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
						</div>
					</div>
					<div class="card product-item border-0">
						<div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
							<img class="img-fluid w-100" src="img/product-3.jpg" alt="">
						</div>
						<div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
							<h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
							<div class="d-flex justify-content-center">
								<h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
							</div>
						</div>
						<div class="card-footer d-flex justify-content-between bg-light border">
							<a href="Controller.do" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
							<a href="Controller.do" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
						</div>
					</div>
					<div class="card product-item border-0">
						<div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
							<img class="img-fluid w-100" src="img/product-4.jpg" alt="">
						</div>
						<div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
							<h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
							<div class="d-flex justify-content-center">
								<h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
							</div>
						</div>
						<div class="card-footer d-flex justify-content-between bg-light border">
							<a href="Controller.do" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
							<a href="Controller.do" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
						</div>
					</div>
					<div class="card product-item border-0">
						<div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
							<img class="img-fluid w-100" src="img/product-5.jpg" alt="">
						</div>
						<div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
							<h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
							<div class="d-flex justify-content-center">
								<h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
							</div>
						</div>
						<div class="card-footer d-flex justify-content-between bg-light border">
							<a href="Controller.do" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
							<a href="Controller.do" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Products End -->


	 <!-- Footer Start -->
	 <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
		<div class="row px-xl-5 pt-5">
			<div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
				<a href="Controller.do" class="text-decoration-none">
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
							<a class="text-dark mb-2" href="Controller.do"><i class="fa fa-angle-right mr-2"></i>Home</a>
							<a class="text-dark mb-2" href="Controller.do"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
							<a class="text-dark mb-2" href="Controller.do"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
							<a class="text-dark mb-2" href="Controller.do"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
							<a class="text-dark mb-2" href="Controller.do"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
							<a class="text-dark" href="Controller.do"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
						</div>
					</div>
					<div class="col-md-4 mb-5">
						<h5 class="font-weight-bold text-dark mb-4">모래</h5>
						<div class="d-flex flex-column justify-content-start">
							<a class="text-dark mb-2" href="Controller.do"><i class="fa fa-angle-right mr-2"></i>냥스타그램</a>
							<a class="text-dark mb-2" href="Controller.do"><i class="fa fa-angle-right mr-2"></i>이모네 유튜브</a>
							<a class="text-dark mb-2" href="Controller.do"><i class="fa fa-angle-right mr-2"></i>집사그램</a>
						</div>
					</div>
					<div class="col-md-4 mb-5">
						<h5 class="font-weight-bold text-dark mb-4">모래 사진 정기구독</h5>
						<form action="Controller.do">
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
					&copy; <a class="text-dark font-weight-semi-bold" href="Controller.do">Morae TDAT</a>. All Rights Reserved. Designed
					by
					<a class="text-dark font-weight-semi-bold" href="Controller.do">Rayson Joanna</a><br>
					Distributed By <a href="Controller.do" target="_blank">Rayson Joanna</a>
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
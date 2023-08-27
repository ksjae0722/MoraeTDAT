<!--
회원가입화면
-->

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>모래모레</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    
    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

    <!-- 사진 사이즈 -->
    <style>
        #blank_spaces{
            height:30px;
        }
    </style>

</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid">
        <div class="row bg-secondary py-2 px-xl-5">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark" href="Controller.do">자주 묻는 질문</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="Controller.do">고객센터</a>
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <!-- SNS계정 -->
                    <a class="text-dark px-2" href="Controller.do">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-dark pl-2" href="Controller.do">
                        <i class="fab fa-youtube"></i>
                    </a>
                    <!--
                    <a class="text-dark pl-2" href="Controller.do">
                        <i class="fa-solid fa-messages"></i>
                    </a>    -->
                </div>
            </div>
        </div>
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <!-- 로고 부분 -->
                <a href="Controller.do" class="text-decoration-none">
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
    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-5">
            <!-- 카테고리 메뉴 -->
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                    <h6 class="m-0">Categories</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                    <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                        <div class="nav-item dropdown">
                            <a href="Controller.do" class="nav-link" data-toggle="dropdown">Best Items<i class="fa fa-angle-down float-right mt-1"></i></a>
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
                        <!-- 대문사진 위 메뉴 -->
                        <div class="navbar-nav mr-auto py-0">
                            <a href="Controller.do" class="nav-item nav-link active">Home</a>
                            <a href="Controller.do" class="nav-item nav-link">Shop</a>
                            <a href="Controller.do" class="nav-item nav-link">Shop Detail</a>
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
    <!-- 간격 벌리기 -->
    <div id="blank_spaces">
        <h3> </h3>
    </div>
    <!-- Register Start -->
    <div class="container-fluid col-xl-4 mb-5 mt-5">
        <h3 class="font-weight-bold text-dark mb-4">회원가입</h3>
        <form action="Controller.do">
            <div class="form-group">
                <label>이름</label>
                <input class="form-control" type="text" placeholder="모래" name="userName">
            </div>
            <div class="form-group">
                <label>이메일</label>
                <input class="form-control" type="text" placeholder="moraecute@cat.com" name="email">
            </div>
            <div class="form-group">
                <label>전화번호</label>
                <input class="form-control" type="text" placeholder="010-2021-1009" name="phoneNumber">
            </div>
            <div class="form-group">
                <label>주소</label>
                <input class="form-control" type="text" placeholder="모래시 모래구 모래동 모래로 1길 1" name="address">
            </div>
            <div class="form-group">
                <label>우편번호</label>
                <input class="form-control" type="text" placeholder="123-456" name="z_code">
            </div>
            <div class="form-group">
                <label>아이디</label>
                <input class="form-control" type="text" placeholder="moraesocute" name="userID">
            </div>            <div class="form-group">
                <label>비밀번호</label>
                <input class="form-control" type="password" placeholder="password" name="userPassword">
            </div>
            <div>
                <button class="btn btn-primary btn-block border-0 py-3" type="submit">회원가입</button>
            </div>
        </form>
    </div>
    <!-- Register End -->


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
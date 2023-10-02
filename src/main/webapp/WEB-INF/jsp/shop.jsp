<%@ page import="MoraeTdat.data.Entity.Product" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>모래모레</title>
    <!-- 부트스트랩5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- 부트스트랩 js, popper js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 네비바 css -->
    <link rel="stylesheet" type="text/css" href="/css/navbar.css">
    <!-- 헤더 css -->
    <link rel="stylesheet" type="text/css" href="/css/header.css">
    <!-- 전체 css -->
    <link rel="stylesheet" type="text/css" href="/css/whole.css">
    <!-- 홈 css -->
    <link rel="stylesheet" type="text/css" href="/css/home.css">
    <script type="text/javascript" src="/js/shop.js"></script>
    <style>
        .cart, .heart {
            cursor : pointer;
        }
    </style>
</head>
<body>
<script type="text/javascript">
    window.onload = () => {
        let showID = '${sessionScope.loginID}';

        if(showID === "" || showID === 'null'){
            $('#showUserId').text("비회원");
            $('#login').show();
        } else {
            $('#showUserId').text(showID);
            $('#login').hide();
            $('#logout').show();
        }
    }
</script>
    <div id="navbar">
        <ul id="navbar_list" class="nav flex-column pt-2 mt-5 ms-3">
            <li class="nav-item">
                <p class="fw-bold fs-3">Category
            </li>       
            <li class="nav-item">
            <a class="nav-link" href="shop?category=tshirts">&raquo; 티셔츠</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="shop?category=living">&raquo; 리빙</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="shop?category=office">&raquo; 오피스</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="shop?category=cute">&raquo; 귀여움</a>
            </li>
            <br>
            <li class="nav-item">
                <a class="nav-link" href="shop?category=best">베스트</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="shop?category=new">신상</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="shop?category=sale">할인상품</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="shop?category=preorder">예약판매</a>
            </li>
            <br>
            <li class="nav-item">
                <a class="nav-link" href="inquiry">문의사항</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="notice">공지사항</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact">ContactUs</a>
            </li>
            <br>
            <li class="nav-item">
                <a class="nav-link mb-3" href="morae">About모래</a>
            </li>
        </ul>
    </div>
    <div id="header" class="container">
        <div class="row">
            <div class="col-9 d-flex justify-content-center">
                <a href="home"><img src="/img/logo.png" alt="logo" class="mx-auto img-fluid"></a>
            </div>
            <div class="col-2 mb-4 p-0" id="userInfo">
                <div class="mt-4 d-flex justify-content-center">
                    <img src="/img/user.png" alt="userInfo" height="30px" width="30px">
                    <p style="margin-left: 5px;" id="showUserId">비회원</p>
                </div>
                <div>
                    <div class="d-flex  justify-content-center">
                        <a class="userThing" href="login" id="login"><p>로그인</p></a>
                        <a class="userThing" href="logout" id="logout" style="display: none"><p>로그아웃</p></a>
                        <a class="userThing" href="register" style="margin-left: 30px;"><p>회원가입</p></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 상품 목록 -->
    <div id="shoplist">
        <hr>
        <p class="h1 fw-bold text-center mb-5" style="margin-top: 80px;">카테고리</p>
        <div class="container" style="margin-top: 100px;">
            <div class="row">
                <div id="shop_search" class="col-2" style="padding: 0;">
                    <div class="input-group mb-3">
                        <input type="text" id="search_bar" class="form-control" placeholder="  티셔츠" aria-label="Username" aria-describedby="basic-addon1">
                        <span class="input-group-text" name="id" id="id"><img src="/img/search.png" style="width: 25px;"></span>
                    </div>
                </div>
                <div class="col-8"></div>
                <div id="shop_align" class="dropdown col-2 text-end justify-content-center px-0">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                        정렬
                    </button>
                      <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="#">인기순</a></li>
                        <li><a class="dropdown-item" href="#">최저가순</a></li>
                      </ul>
                </div>
            </div>
            <%
                List<Product> productList = (List<Product>) request.getAttribute("productList");

            %>
            <div class="row mt-5 pb-5 gap-5 border pt-5 justify-content-center">
                <!-- 상품 출력 1-->
                <%
                    String loginID = (String)session.getAttribute("loginID");
                    for(Product product : productList){
                %>
                <div class="col-3 border border-2 px-3">
                    <div class="mt-4 mb-2 text-center">
                        <img class="border" style="width: 250px; height:265px;" src="<%= product.getMainphoto() %>">
                    </div>
                    <p class="fs-5 text-center"><%= product.getProductname() %></p>
                    <p class="fs-6 text-center"><%= product.getProductprice() %>원</p>
                    <div class="mb-2 text-end">
                        <img src="/img/cart.png" class="cart" alt="cart" style="width:30px; margin-right: 15px;" onClick="cart(<%= product.getProductnum() %>,'<%=loginID%>')">
                        <img src="/img/heart.png" class="heart" alt="heart" style="width:30px" onClick="heart(<%= product.getProductnum() %>,'<%=loginID%>')">
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <div class="footer" style="position: absolute; top : 1950px; left :335px;">
        <hr>
        <div class="container d-flex align-items-center mt-5">
            <div class="col">
                <img src="/img/logo.png" alt="Logo" class="img-fluid">
            </div>
            <div class="col">
                <div class="container text-start ms-5">
                    <p>&copy; 모래모레 All rights reserved.<br>
                        주소 : 경남 남해군 상주면 상주로 17-4 벤치오피스 2층<br>
                        대표 : 강소희 &nbsp;&nbsp;| &nbsp;&nbsp;사업자등록번호 : 2021-1009<br>
                        제휴협력문의 : raysonkingdom@gmail.com
                    </p>
                </div>
            </div>
            <div class="col">
                <div class="container text-start ms-5" >
                    <p><b>고객센터</b><br><br>
                        전화번호 : 055-2021-1009<br>
                        주말, 공휴일은 모래 복지를 위해 운영하지 않습니다.<br>
                        <img src="/img/kakao-talk.png" class="img-fluid" style="width: 20px; margin-right:5px;">카카오채널 : MoraeTDAT
                    </p>
                </div>
            </div>
        </div>
        <div class="mb-5"></div>
    </div>
</body>
</html>
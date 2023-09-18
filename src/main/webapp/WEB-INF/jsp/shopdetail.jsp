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
    <link rel="stylesheet" href="css/navbar.css">
    <!-- 헤더 css -->
    <link rel="stylesheet" href="css/header.css">
    <!-- 전체 css -->
    <link rel="stylesheet" href="css/whole.css">
    <!-- 홈 css -->
    <link rel="stylesheet" href="css/home.css">
</head>
<body>
    <div id="navbar">
        <ul id="navbar_list" class="nav flex-column pt-2 mt-5 ms-3">
            <li class="nav-item">
                <p class="fw-bold fs-3">Category
            </li>       
            <li class="nav-item">
            <a class="nav-link" href="/category=tshirts">&raquo; 티셔츠</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="/category=living">&raquo; 리빙</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="/category=office">&raquo; 오피스</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/category=cute">&raquo; 귀여움</a>
            </li>
            <br>
            <li class="nav-item">
                <a class="nav-link" href="/category=best">베스트</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/category=new">신상</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/category=sale">할인상품</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/category=preorder">예약판매</a>
            </li>
            <br>
            <li class="nav-item">
                <a class="nav-link" href="/enquiry">문의사항</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/notice">공지사항</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/contact">ContactUs</a>
            </li>
            <br>
            <li class="nav-item">
                <a class="nav-link mb-3" href="/morae">About모래</a>
            </li>
        </ul>
    </div>
    <div id="header" class="container">
        <div class="row">
            <div class="col-9 d-flex justify-content-center">
                <a href="/home"><img src="img/logo.png" alt="logo" class="mx-auto img-fluid"></a>
            </div>
            <div class="col-2 mb-4 p-0" id="userInfo">
                <div class="mt-4 d-flex justify-content-center">
                    <img src="img/user.png" alt="userInfo" height="30px" width="30px">
                    <p style="margin-left: 5px;"><s%=userId%></p>
                </div>
                <div>
                    <div class="d-flex  justify-content-center">
                        <a class="userThing" href="/login"><p>로그인</p></a>
                        <a class="userThing" href="/register" style="margin-left: 30px;"><p>회원가입</p></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 상품 목록 -->
    <div id="shopdetail">
        <hr>
        <p class="h1 fw-bold text-center mb-5" style="margin-top: 80px;">상품 상세페이지</p>
        <div class="container">
            <div class="row mt-5 pb-5 border pt-5 justify-content-center px-5">
                    <!-- 대표사진, 옵션 선택 -->
                    <div class="d-flex gap-3">
                        <img src="img/tshirtsskyblue.png" alt="product" class="col border">
                        <div class="col border">
                            <form action="">
                                <div style="margin-top: 100px;">
                                    <p class="h2 text-center mt-5 mb-5">상품 이름</p>
                                    <p class="fs-6 text-start mb-0" style="color: gray; padding-left: 70px;">스카이블루, L</p>
                                    <p class="fs-2" style="padding-left: 70px;">35000원</p>
                                </div>
                                <div class="mx-5">
                                    <select name="product_option" id="product_option" class="form-control" style="margin-left: 23px; width:400px;">
                                        <option value="">선택하세요</option>
                                        <option value="s">세계정복티셔츠/스카이블루/S</option>
                                        <option value="m">세계정복티셔츠/스카이블루/M</option>
                                        <option value="l">세계정복티셔츠/스카이블루/L</option>
                                        <option value="xl">세계정복티셔츠/스카이블루/XL</option>
                                    </select>
                                </div>
                                <div class="mx-5 mt-4 d-flex">
                                    <img src="img/heart.png" alt="like" style="margin-left: 23px; width:50px;" class="border rounded p-2" onClick="">
                                    <button class="form-control" style="display: inline; margin-left:12px; width:164px">장바구니</button>
                                    <button class="form-control" style="display: inline; margin-left:12px; width:164px">구매하기</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- 대표사진, 옵션 끝 -->

                    <!-- 제품정보(텍스트) -->
                    <div class="row mt-5 pb-5 border pt-5 justify-content-center px-5 d-flex">
                        <div class="col border">
                            <p class="">상품 상세 정보 텍스트 데스네</p>
                        </div> 
                        <div class="col border">
                            <p class="">상품 사이즈 정보 데스네</p>
                        </div> 
                    </div>
                    <!-- 제품정보(텍스트) 끝 -->

                    <!-- 제품 정보(긴 사진) -->
                    <div class="row pb-5 pt-5 justify-content-center px-5 d-flex">
                        <img src="" alt="photo_description">
                    </div>
                    <!-- 제품 정보(긴 사진) 끝 -->
                </div>
            </div>    
        </div>
    </div>
    <!-- Footer -->
    <div class="footer" style="position: absolute; top : 1650px; left :335px;">
        <hr>
        <div class="container d-flex align-items-center mt-5">
            <div class="col">
                <img src="img/logo.png" alt="Logo" class="img-fluid">
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
                        <img src="img/kakao-talk.png" class="img-fluid" style="width: 20px; margin-right:5px;">카카오채널 : MoraeTDAT
                    </p>
                </div>
            </div>
        </div>
        <div class="mb-5"></div>
    </div>
</body>
</html>
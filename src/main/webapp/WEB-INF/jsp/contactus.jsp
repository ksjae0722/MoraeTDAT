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
    <!-- 카카오맵 api -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d03f50c58f26a9ff960e6569403c910f&libraries=services,clusterer"></script>
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
            <a class="nav-link" href="/MoraeTDAT/shop?category=tshirts">&raquo; 티셔츠</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="/MoraeTDAT/shop?category=living">&raquo; 리빙</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="/MoraeTDAT/shop?category=office">&raquo; 오피스</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MoraeTDAT/shop?category=cute">&raquo; 귀여움</a>
            </li>
            <br>
            <li class="nav-item">
                <a class="nav-link" href="/MoraeTDAT/shop?category=best">베스트</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MoraeTDAT/shop?category=new">신상</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MoraeTDAT/shop?category=sale">할인상품</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MoraeTDAT/shop?category=preorder">예약판매</a>
            </li>
            <br>
            <li class="nav-item">
                <a class="nav-link" href="/MoraeTDAT/inquiry">문의사항</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MoraeTDAT/notice">공지사항</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MoraeTDAT/contact">ContactUs</a>
            </li>
            <br>
            <li class="nav-item">
                <a class="nav-link mb-3" href="/MoraeTDAT/morae">About모래</a>
            </li>
        </ul>
    </div>
    <div id="header" class="container">
        <div class="row">
            <div class="col-9 d-flex justify-content-center">
                <a href="/MoraeTDAT/home"><img src="/img/logo.png" alt="logo" class="mx-auto img-fluid"></a>
            </div>
            <div class="col-1">
                <!-- 위치 차지 -->
            </div>
            <div class="col-2 mb-4 p-0" id="userInfo">
                <div class="mt-4 d-flex justify-content-center">
                    <img src="/img/user.png" alt="userInfo" height="30px" width="30px">
                    <p style="margin-left: 5px;"  id="showUserId">비회원</p>
                </div>
                <div>
                    <div class="d-flex  justify-content-center">
                        <a class="userThing" href="/MoraeTDAT/login" id="login"><p>로그인</p></a>
                        <a class="userThing" href="/MoraeTDAT/logout" id="logout" style="display: none"><p>로그아웃</p></a>
                        <a class="userThing" href="/MoraeTDAT/register" style="margin-left: 30px;"><p>회원가입</p></a>
                    </div>
                    <div class="mb-2 text-center">
                        <a href="/MoraeTDAT/shop/cartpage"><img src="/img/cart.png" class="cart" alt="cart" style="width:35px; margin-right: 15px;"></a>
                        <a href="/MoraeTDAT/shop/heartpage"><img src="/img/heart.png" class="heart ms-3" alt="heart" style="width:35px"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 회원가입 폼 -->
    <div id="mypage" class="border rounded-3 pb-5" style="background-color: #FCFCFC;">
        <div class="mb-3 mt-5">
            <p class="text-center h1">Contact Us</p>
            <div class="d-flex justify-content-center mt-5">          
                <!-- 카카오맵 -->
                <!-- 1. 지도 노드 -->
                <div id="daumRoughmapContainer1695005978115" class="root_daum_roughmap root_daum_roughmap_landing"></div>
                <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp" : "1695005978115",
                        "key" : "2g8e4",
                        "mapWidth" : "500",
                        "mapHeight" : "400"
                    }).render();
                </script>
                <div class="border rounded ms-3 p-4" style="width:500; height:400;">
                    <div class="d-flex justify-content-center mb-3">
                        <img src="/img/logo.png" alt="logo" style="width:300px">
                    </div>
                    <div class="p-3 border rounded">
                        <p class="fs-5 text-center mb-4 fw-bold">모래모레 본점</p>
                        <p>주소 : 경남 남해군 상주면 상주로 17-4 벤치오피스 2층</p>
                        <p>연락처 : 055-2021-1009</p>
                        <p>카카오톡 채널 : MoraeTDAT</p>
                        <p>인스타그램 : @nyangachi_morae</p>
                        <p>협업문의/입점문의 : MoraeTDAT@cat.com </p>
                    </div>
                </div>
            </div>
        </div>
    </div>    
    
    <!-- Footer -->
    <div class="footer" style="position: absolute; top : 1000px; left :335px;">
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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function DaumPostcode() {
            let addr = '';
            let zonecode = '';

            new daum.Postcode({
                oncomplete : function(data) {
                    addr = data.address;
                    zonecode = data.zonecode;
                    $('#address').val(addr);
                    $('#zonecode').val(zonecode);
                    $('#detailAddress').focus();
                }
            }).open();
        }
    </script>
</body>
</html>
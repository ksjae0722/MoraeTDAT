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
            <div class="col-1">
                <!-- 위치 차지 -->
            </div>
            <div class="col-2 mb-4 p-0" id="userInfo">
                <div class="mt-4 d-flex justify-content-center">
                    <img src="img/user.png" alt="userInfo" height="30px" width="30px">
                    <p style="margin-left: 5px;"><d%=userId%></p>
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
    <!-- 회원가입 폼 -->
    <div id="mypage" class="border rounded-3" style="background-color: #FCFCFC;">
        <div class="mb-3 mt-5">
            <p class="text-center h1">마이페이지</p>
            <div class="d-flex justify-content-center mt-5">
                <p>계정정보</p>
                <p>&nbsp;&nbsp;|&nbsp;&nbsp;</p>
                <p>주문내역</p>
            </div>
        </div>
        <!--개인정보-->
        <div>
            <div id="userInformation" style="padding: 20px 200px; display: none">
                <!-- 아이디 -->
                <div class="input-group mb-3">
                    <span class="input-group-text" name="id" id="id"><img src="img/userbk.png" style="width: 25px;"></span>
                    <input type="text" class="form-control" placeholder="  기존아이디" aria-label="Username" aria-describedby="basic-addon1">
                </div>
                <!-- 비밀번호 -->
                <div class="input-group mb-3">
                    <span class="input-group-text" name="pw" id="pw"><img src="img/lock.png" style="width: 25px;"></span>
                    <input type="text" class="form-control" placeholder="  ********" aria-label="Username" aria-describedby="basic-addon1">
                </div>
                <!-- 비밀번호 확인 -->
                <div class="input-group mb-3">
                    <span class="input-group-text" name="pwCheck" id="pwCheck"><img src="img/check.png" style="width: 25px;"></span>
                    <input type="text" class="form-control" placeholder="  ********" aria-label="Username" aria-describedby="basic-addon1">
                </div>
                <!-- 휴대폰번호 -->
                <div class="input-group mb-3">
                    <span class="input-group-text" name="phoneNumber" id="phoneNumber"><img src="img/phone.png" style="width: 25px;"></span>
                    <input type="text" class="form-control" placeholder="  기존전화번호" aria-label="Username" aria-describedby="basic-addon1">
                </div>
                <!-- 이메일 -->
                <div class="input-group mb-3">
                    <span class="input-group-text" name="email" id="email"><img src="img/email.png" style="width: 25px;"></span>
                    <input type="text" class="form-control" placeholder="  기존이메일" aria-label="Username" aria-describedby="basic-addon1">
                </div>
                <!-- 우편번호 -->
                <div class="container mb-5" style="padding:0;">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1"><img src="img/addr.png" style="width: 25px;"></span>
                        <div class="form-control">
                            <input type="text" name="zonecode" id="zonecode" class="form-control" style="width: 70%; display:inline-block">
                            <button class="form-control mb-2 zbtn" type="button" onclick="DaumPostcode()" id="button-addon2">우편번호 찾기</button>
                            <input type="text" name="address" id="address" class="form-control mb-2" placeholder="주소">
                            <input type="text" name="detailAddress" id="detailAddress" class="form-control" placeholder="상세주소">
                        </div>  
                    </div>
                </div>
            </div>
            <!-- 디비에서 최근 3개 조회 (페이징) -->
            <div id="orderHistory" style="">
                <div style="margin: 0 80px;" class="mt-5 mb-5">
                    <div class="border py-3" style="background-color: white;">
                        <p style="margin-left: 15px;" class="mb-2">주문번호 21414&nbsp;&nbsp;&nbsp;주문날짜 2023-09-17</p>
                        <div class="d-flex mt-3">
                            <input type="checkbox" name="historyCheck" id="historyCheck" style="margin: 0 30px;">
                            <img src="img/sale_item.png" alt="product_img" style="width: 180px;">
                            <div class="border d-flex" style="margin-left: 30px; width: 720px;">
                                <p>제품명</p>
                                <p>수량,옵션</p>
                                <p>가격</p>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center mt-2">
                            <p style="margin-top: 20px; margin-bottom: 5px;">더보기</p>
                        </div>
                    </div>
                </div>
                <!-- 한개만 일단 코드 -->
                <div style="margin: 0 80px;" class="mt-5 mb-5">
                    <div class="border py-3" style="background-color: white;">
                        <p style="margin-left: 15px;" class="mb-2">주문번호 21414&nbsp;&nbsp;&nbsp;주문날짜 2023-09-17</p>
                        <div class="d-flex mt-3">
                            <input type="checkbox" name="historyCheck" id="historyCheck" style="margin: 0 30px;">
                            <img src="img/sale_item.png" alt="product_img" style="width: 180px;">
                            <div class="border d-flex" style="margin-left: 30px; width: 720px;">
                                <p>제품명</p>
                                <p>수량,옵션</p>
                                <p>가격</p>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center mt-2">
                            <p style="margin-top: 20px; margin-bottom: 5px;">더보기</p>
                        </div>
                    </div>
                </div>            
                <div  style="margin: 0 80px;" class="mt-5 mb-5">
                    <div class="border py-3" style="background-color: white;">
                        <p style="margin-left: 15px;" class="mb-2">주문번호 21414&nbsp;&nbsp;&nbsp;주문날짜 2023-09-17</p>
                        <div class="d-flex mt-3">
                            <input type="checkbox" name="historyCheck" id="historyCheck" style="margin: 0 30px;">
                            <img src="img/sale_item.png" alt="product_img" style="width: 180px;">
                            <div class="border d-flex" style="margin-left: 30px; width: 720px;">
                                <p>제품명</p>
                                <p>수량,옵션</p>
                                <p>가격</p>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center mt-2">
                            <p style="margin-top: 20px; margin-bottom: 5px;">더보기</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 페이지네이션 -->
        <div id="pagination" class="justify-content-center d-flex mb-3">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                </ul>
            </nav>
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
</html>l>
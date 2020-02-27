<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Index</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Place favicon.ico in the root directory -->
<link rel="shortcut icon" type="image/x-icon" href="/resources/images/favicon.ico">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <!-- Owl Carousel min css -->
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="/resources/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="/resources/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="/resources/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="/resources/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="/resources/css/custom.css">
    <!-- Modernizr JS -->
    <script src="/resources/js/vendor/modernizr-3.5.0.min.js"></script>
</head>
<body>
    <!-- Body main wrapper start -->
    <div class="wrapper">
        <!-- Start Header Style -->
        <header id="htc__header" class="htc__header__area header--one">
            <!-- Start Mainmenu Area -->
            <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="menumenu__container clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5"> 
                                <div class="logo">
                                     <a href="/"><img src="/resources/images/logo/4.png" alt="logo images"></a>
                                </div>
                            </div>
                            <div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
                                <nav class="main__menu__nav hidden-xs hidden-sm">
                                    <ul class="main__menu">
                                        <li><a href="#">WINE</a></li>
                                        <li><a href="/member/list">MEMBER</a></li>
                                        <li class="drop"><a href="#">BOARD</a>
                                            <ul class="dropdown">
                                                <li><a href="blog.html">REVIEW</a></li>
                                                <li><a href="blog-details.html">Q&A</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">LOGIN</a></li>
                                        <li><a href="#">LOGOUT</a></li>
                                        <li><a href="/member/insert">JOIN US</a></li>
                                        <li><a href="#">MY PAGE</a></li>
                                        <li><a href="#">CONTACT</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
                                <div class="header__right">
                                    <div class="header__search search search__open">
                                        <a href="#"><i class="icon-magnifier icons"></i></a>
                                    </div>
                                    <div class="header__account">
                                        <a href="#"><i class="icon-user icons"></i></a>
                                    </div>
                                    <div class="htc__shopping__cart">
                                        <a class="cart__menu" href="#"><i class="icon-handbag icons"></i></a>
                                        <a href="#"><span class="htc__qua">2</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Mainmenu Area -->
        </header>
        <!-- End Header Area -->
        <div class="body__overlay"></div>
        <!-- Start Offset Wrapper -->
        <div class="offset__wrapper">
            <!-- Start Search Popap -->
            <div class="search__area">
                <div class="container" >
                    <div class="row" >
                        <div class="col-md-12" >
                            <div class="search__inner">
                                <form action="#" method="get">
                                    <input placeholder="Search..." type="text">
                                    <button type="submit"></button>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Search Popap -->
            <!-- Start Cart Panel -->
            <div class="shopping__cart">
                <div class="shopping__cart__inner">
                    <div class="offsetmenu__close__btn">
                        <a href="#"><i class="zmdi zmdi-close"></i></a>
                    </div>
                    <div class="shp__cart__wrap">
                        <div class="shp__single__product">
                            <div class="shp__pro__thumb">
                                <a href="#">
                                    <img src="images/product-2/sm-smg/1.jpg" alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="product-details.html">BO&Play Wireless Speaker</a></h2>
                                <span class="quantity">QTY: 1</span>
                                <span class="shp__price">$105.00</span>
                            </div>
                            <div class="remove__btn">
                                <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                            </div>
                        </div>
                        <div class="shp__single__product">
                            <div class="shp__pro__thumb">
                                <a href="#">
                                    <img src="images/product-2/sm-smg/2.jpg" alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="product-details.html">Brone Candle</a></h2>
                                <span class="quantity">QTY: 1</span>
                                <span class="shp__price">$25.00</span>
                            </div>
                            <div class="remove__btn">
                                <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                            </div>
                        </div>
                    </div>
                    <ul class="shoping__total">
                        <li class="subtotal">Subtotal:</li>
                        <li class="total__price">$130.00</li>
                    </ul>
                    <ul class="shopping__btn">
                        <li><a href="cart.html">View Cart</a></li>
                        <li class="shp__checkout"><a href="checkout.html">Checkout</a></li>
                    </ul>
                </div>
            </div>
            <!-- End Cart Panel -->
        </div>
        <!-- End Offset Wrapper -->
	    <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(/resources/images/bg/2.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner">
                            	<h1>Member List</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        
        
        
        
        
        
	<!-- class = container  -->
	<div class="container">
	<form role="form" action="/member/insert" method="post">
		<div class="row">
		<table class="table table-bordered" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="3" style="background-color: #eeeeee; text-align: center;">
						<h5>JOIN US</h5>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 20%;">아이디</td>
					<td style="text-align: left;">
						<input required style="width:100px;" type="text" id="id" name="mem_id">
               			<span id="idmsg"></span>(영문대소문자/숫자,4~16자)
               			<button id="idcheck" class="btn btn-danger btn-xs">중복확인</button>
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">비밀번호</td>
					<td style="text-align: left;">
						<input required style="width:100px;" class="form-control" type="password" id="pw" name="mem_pw">
            			<span id="pwmsg"></span>(영문 대소문자/숫자 중 2가지 이상 조합, 4~10자)
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">비밀번호 확인</td>
					<td style="text-align: left;">
						<input required type="password" id="pwck" name="pwcheck">
						<span id="pwcheckmsg"></span>
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">이름</td>
					<td style="text-align: left;">
						<input required type="text" id="name" name="mem_name">
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">성별</td>
					<td style="text-align: left;">
						<input required type="radio" id="gender" name="mem_gender" value="m" checked>남성
						<input required type="radio" id="gender" name="mem_gender" value="f">여성
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">연락처</td>
					<td style="text-align: left;">
						<input required type="text" id="contact" name="mem_contact">
					</td>
				</tr>
				<tr>
					<td style="width: 20%;">생년월일</td>
					<td style="text-align: left;">
						<input required type="date" id="birth" name="mem_birth">
					</td>
				</tr>
				
			</tbody>
		</table>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<button id="submit" type="submit" class="btn btn-danger">회원등록</button>
			</div>
		</div>
	</form>
	</div>
    <!-- class = container  -->        
        
        
        
        
 
        
        
        
        
        
         
        <!-- cart-main-area start -->
        <div class="cart-main-area ptb--100 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-name">가입일</th>
                                            <th class="product-name">아이디</th>
                                            <th class="product-name">이름</th>
                                            <th class="product-name">성별</th>
                                            <th class="product-name">연락처</th>
                                            <th class="product-name">생년월일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${to.list}" var="dto">
                                        <tr>
                                            <td class="product-name"><a href="/member/read/${dto.mem_id}">${dto.mem_regdate}</a></td>
                                            <td class="product-name">${dto.mem_id}</td>
                                            <td class="product-name"><a href="/member/read/${dto.mem_id}">${dto.mem_name}</a></td>
                                            <td class="product-name"><a href="/member/read/${dto.mem_id}">${dto.mem_gender}</a></td>
                                            <td class="product-name"><a href="/member/read/${dto.mem_id}">${dto.mem_contact}</a></td>
                                            <td class="product-name"><a href="/member/read/${dto.mem_id}">${dto.mem_birth}</a></td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
						    <!-- class = row  -->		
							<div class="row">
								<div class="text-center">
									<ul class="htc__pagenation">
										<li>
											<c:if test="${to.curPage-1 >= 1 }">
												<a href="/member/list?curPage=${to.curPage-1}">
													<i class="zmdi zmdi-chevron-left"></i>
												</a>
											</c:if>
										</li>
										<c:forEach begin="${to.beginPageNum}" end="${to.stopPageNum}" var="var">
											<li class="${to.curPage == var?'active':''}"><a href="/member/list?curPage=${var}">${var}</a></li>
										</c:forEach>
										<li>
											<c:if test="${to.curPage < to.totalPage }">
												<a href="/member/list?curPage=${to.curPage+1}">
													<i class="zmdi zmdi-chevron-right"></i>
												</a>
											</c:if> 
										</li>
									</ul>
								</div>
							</div>
							<!-- class = row  -->
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="buttons-cart--inner">
                                        <div class="buttons-cart">
                                            <a href="/member/insert">REGISTE</a>
                                        </div>
                                        <div class="buttons-cart checkout--btn">
                                            <a href="/">BACK</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- cart-main-area end -->               

        <!-- Start Footer Area -->
        <footer id="htc__footer">
            <!-- Start Footer Widget -->
            <div class="footer__container bg__cat--1">
                <div class="container">
                    <div class="row">
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="footer">
                                <h2 class="title__line--2">ABOUT US</h2>
                                <div class="ft__details">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,</p>
                                    <div class="ft__social__link">
                                        <ul class="social__link">
                                            <li><a href="#"><i class="icon-social-twitter icons"></i></a></li>
                                            <li><a href="#"><i class="icon-social-instagram icons"></i></a></li>
                                            <li><a href="#"><i class="icon-social-facebook icons"></i></a></li>
                                            <li><a href="#"><i class="icon-social-google icons"></i></a></li>
                                            <li><a href="#"><i class="icon-social-linkedin icons"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-2 col-sm-6 col-xs-12 xmt-40">
                            <div class="footer">
                                <h2 class="title__line--2">information</h2>
                                <div class="ft__inner">
                                    <ul class="ft__list">
                                        <li><a href="#">About us</a></li>
                                        <li><a href="#">Delivery Information</a></li>
                                        <li><a href="#">Privacy & Policy</a></li>
                                        <li><a href="#">Terms  & Condition</a></li>
                                        <li><a href="#">Manufactures</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-2 col-sm-6 col-xs-12 xmt-40 smt-40">
                            <div class="footer">
                                <h2 class="title__line--2">my account</h2>
                                <div class="ft__inner">
                                    <ul class="ft__list">
                                        <li><a href="#">My Account</a></li>
                                        <li><a href="cart.html">My Cart</a></li>
                                        <li><a href="#">Login</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-2 col-sm-6 col-xs-12 xmt-40 smt-40">
                            <div class="footer">
                                <h2 class="title__line--2">Our service</h2>
                                <div class="ft__inner">
                                    <ul class="ft__list">
                                        <li><a href="#">My Account</a></li>
                                        <li><a href="cart.html">My Cart</a></li>
                                        <li><a href="#">Login</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-3 col-sm-6 col-xs-12 xmt-40 smt-40">
                            <div class="footer">
                                <h2 class="title__line--2">NEWSLETTER </h2>
                                <div class="ft__inner">
                                    <div class="news__input">
                                        <input type="text" placeholder="Your Mail*">
                                        <div class="send__btn">
                                            <a class="fr__btn" href="#">Send Mail</a>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                    </div>
                </div>
            </div>
            <!-- End Footer Widget -->
            <!-- Start Copyright Area -->
            <div class="htc__copyright bg__cat--5">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="copyright__inner">
                                <p>Copyright© <a href="https://freethemescloud.com/">Free themes Cloud</a> 2018. All right reserved.</p>
                                <a href="#"><img src="images/others/shape/paypol.png" alt="payment images"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Copyright Area -->
        </footer>
        <!-- End Footer Style -->
    </div>
    <!-- Body main wrapper end -->

    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="/resources/js/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="/resources/js/plugins.js"></script>
    <script src="/resources/js/slick.min.js"></script>
    <script src="/resources/js/owl.carousel.min.js"></script>
    <!-- Waypoints.min.js. -->
    <script src="/resources/js/waypoints.min.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="/resources/js/main.js"></script>
    
<script type="text/javascript">
   $(document).ready(function() {
      var ckid = '0';
      var ckpw = '0';
      var ckpwck = '0';
      $("#idcheck").click(function() {
         var ida = $("input[name='mem_id']").val();
         var limit = /^[a-zA-Z0-9]{4,16}$/;
         if (!limit.test(ida)) {
            $("#idmsg").text("4이상 16이하 영문대소문자/숫자를 이용하세요.");
            $("#idmsg").css("color", "red");
            ckpw = '0';
         } else {
            $.ajax({
               type : 'get',
               url : '/member/checkid',
               data : {
                  id : ida
               },
               dataType : 'text',
               success : function(result) {
                  if (result == "1") {
                     $("#idmsg").text("사용 가능한 아이디 입니다.");
                     $("#idmsg").css("color", "blue");
                     ckid = '1';
                  } else if (result == "0") {
                     $("#idmsg").text("사용할 수 없는 아이디 입니다.");
                     $("#idmsg").css("color", "red");
                     ckid = '0';
                  }
               }
            });
         }
         return false;
      });
      $("#id").keydown(function() {
         ckid = '0';
         $("#idmsg").text("");
      });
      $("input[name='mem_pw']").change(function() {
         var pw = $("input[name='mem_pw']").val();
         var limit = /^[a-zA-Z0-9]{4,10}$/;
         if (!limit.test(pw)) {
            $("#pwmsg").text("4이상 10이하 영문대소문자/숫자를 이용하세요.");
            $("#pwmsg").css("color", "red");
            ckpw = '0';
         } else {
            $("#pwmsg").text("");
            ckpw = '1';
         }
      });
      $("input[name='pwcheck']").change(function() {
         var pw = $("input[name='mem_pw']").val();
         var pwcheck = $("input[name='pwcheck']").val();
         if (pw != pwcheck) {
            $("#pwcheckmsg").text("비밀번호가 일치하지 않습니다.");
            $("#pwcheckmsg").css("color", "red");
            ckpwck = '0';
         } else {
            $("#pwcheckmsg").text("비밀번호가 일치합니다.");
            $("#pwcheckmsg").css("color", "blue");
            ckpwck = '1';
         }
      });
      $("#submit").click(function() {
         if (ckid != '1') {
            alert("아이디 중복 확인을 해주세요.");
         } else if (ckpw != '1') {
            alert("사용 가능한 비밀번호를 입력하시오.");
         } else if (ckpwck != '1') {
            alert("비밀번호가 일치하지 않습니다.");
         } else if(confirm("회원등록하시겠습니까?") == true){
        	 return true;
         }
		return false;
      });
   });
</script>
</body>
</html>
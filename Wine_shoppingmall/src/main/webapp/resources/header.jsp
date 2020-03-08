<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   

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
                                                <li><a href="#">REVIEW</a></li>
                                                <li><a href="#">Q&A</a></li>
                                            </ul>
                                        </li>
                                         <c:choose>
                                        	<c:when test="${empty login}">
                                        		<li><a data-toggle="modal" href="#myModal1">LOGIN</a></li>
                                        	</c:when>
                                        	<c:otherwise>
                                        		<li><a data-toggle="modal" href="#myModal2">LOGOUT</a></li>
                                        			<div class="modal fade" id="myModal2" role="dialog">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close" data-dismiss="modal">&times;</button>
																</div>
																<div class="modal-body" style="text-align: center;">
																	<br>
																	<h3>로그아웃 하시겠습니까??</h3>
																	<br>
																	<a href="/member/logout" class="fr__btn">Yes</a>
																	<br>
																</div>
																<div class="modal-footer"></div>
															</div>
														</div>
													</div>
                                        		
                                        	</c:otherwise>
                                        </c:choose>
                                        <li><a href="/member/insert">JOIN US</a></li>
                                        <c:choose>
                                        	<c:when test="${empty login}">
                                        		<li><a data-toggle="modal" href="#myModal1">MY PAGE</a></li>
                                        	</c:when>
                                        	<c:otherwise>
                                        		<li><a href="/member/read/${login.mem_id}">MY PAGE</a></li>
                                        	</c:otherwise>
                                        </c:choose>
                                        <li><a href="/contact">CONTACT</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
                                <div class="header__right">
                                    <div class="header__search search search__open">
                                        <a href="#"><i class="icon-magnifier icons"></i></a>
                                    </div>
                                    <c:choose>
                                    	<c:when test="${empty login}">
                                    		<div class="header__account">
                                        		<a data-toggle="modal" href="#myModal1"><i class="icon-user icons"></i></a>
                                    		</div>
                                    		<div class="modal fade" id="myModal1" role="dialog">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal">&times;</button>
														</div>
														<div class="modal-body" style="text-align: center;">
															<br>
															<h1>LOGIN</h1>
															<br>
															<div class="accordion__body">
																<form id="contact-form" action="/member/login" method="post">
																	<div class="col-xs-3"></div>
																	<div class="col-xs-6">
																		<div class="checkout-method__login">
																			<div class="single-input">
																				<div class="contact-box subject">
																					<input required type="text" name="mem_id" placeholder="ID">
																				</div>
																			</div>
																			<div class="single-input">
																				<div class="contact-box subject">
																					<input required type="password" name="mem_pw" placeholder="PASSWORD">
																				</div>
																			</div><br>
																			<button id="submit" type="submit" class="fv-btn">LOGIN</button>
																		</div>
																	</div>
																	<div class="col-xs-3"></div>
																</form>
															</div>
														</div><br><br><br><br><br><br><br><br><br>
														<div class="modal-footer"></div>
													</div>
												</div>
											</div>
                                    	</c:when>
                                    	<c:otherwise>
                                    		<div class="header__account">
                                        		<a href="/member/read/${login.mem_id}"><i class="icon-user icons"></i></a>
                                    		</div>
                                    	</c:otherwise>
                                    </c:choose>
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
                                    <img src="/resources/images/product-2/sm-smg/1.jpg" alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="#">BO&Play Wireless Speaker</a></h2>
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
                                    <img src="/resources/images/product-2/sm-smg/2.jpg" alt="product images">
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


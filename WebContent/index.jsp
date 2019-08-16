<!doctype html>
<%@ page import="java.*" %>
<%@ page import="asd.DbConnection1"%>
<%@ page import="java.sql.*" %>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>4Points - Minimalist eCommerce HTML5 Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
		<!-- all css here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slinky.min.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/ionicons.min.css">
        <link rel="stylesheet" href="assets/css/bundle.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!-- header start -->
        <div class="wrapper">
            
            <header>
                <div class="header-area header-area-padding">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-6">
                                <div class="logo">
                                    <a href="index.jsp"><img src="assets/img/logo/logo.png" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-lg-6 menu-none-block menu-center">
                                <div class="main-menu">
                                    <nav>
                                        <ul>
                                            <li><a href="index.jsp">home</a></li>
                                            <li><a href="about-us.html">about us</a></li>
                                            <li><a href="shop-grid-view-5-col.jsp">shop</a></li>
                                            <li><a href="#">pages</a>
                                                <ul class="dropdown">
                                                    <li><a href="about-us.html">about us</a></li>
                                                    <li><a href="cart.jsp">cart</a></li>
                                                    <li><a href="checkout.jsp">checkout</a></li>
                                                    <li><a href="contact.html">contact</a></li>
                                                    <li><a href="login.jsp">login</a></li>
                                                    <li><a href="register.jsp">register</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">contact</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-6">
                                <div class="header-search-cart">
                                    <div class="header-search common-style">
                                        <button class="sidebar-trigger-search">
                                            <span class="ion-ios-search-strong"></span>
                                        </button>
                                    </div>
                                    
                                    <div class="header-sidebar common-style">
                                        <button class="header-navbar-active">
                                            <span class="ion-navicon"></span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- header end --> 
           
            <!-- main-search start -->
            <div class="main-search-active">
                <div class="sidebar-search-icon">
                    <button class="search-close"><span class="ion-android-close"></span></button>
                </div>
                <div class="sidebar-search-input">
                    <form action="searchp">
                        <div class="form-search">
                            <input id="search" class="input-text" name="psearch" placeholder="Search Entire Store" type="search">
                            <button>
                                <i class="ion-ios-search-strong"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- main-search start -->
            <div class="cur-lang-acc-active">
                <div class="wrap-sidebar">
                    <div class="sidebar-nav-icon">
                        <button class="op-sidebar-close"><span class="ion-android-close"></span></button>
                    </div>
                        <div class="single-currency-language-account">
                            <div class="cur-lang-acc-title">
                                <h4>My Account:</h4>
                            </div>
                            <div class="cur-lang-acc-dropdown">
                                <ul>
                                <%String name= (String)session.getAttribute("user-name");
                   // request("user-name",name);
                    System.out.println(name+" Garg");%>
                                    <li><a href="quiz.jsp">Quiz </a></li>
                                    <li><a href="cart.jsp">My Cart</a></li>
                                   <% if(name==null)
                                   {%>
                                   <li><a href="register.jsp">register</a></li>
                                    <li><a href="login.jsp">Sign In</a></li>
                                                                     
                                   
                                 <%}
                                   else{%>
                                     <li><a href="login.jsp">Sign Out!!! <%=name%> </a></li>
                                    <%} %>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slider-area">
                <div class="slider-active owl-carousel">
                    <div class="single-slider single-slider-hm1 bg-img ptb-260" style="background-image: url(assets/img/slider/1.jpg)">
                        <div class="container">
                            <div class="slider-content slider-content-style-1 slider-animated-1">
                                <h3 class="animated">New Collection <span>2019.</span></h3>
                                <h2 class="animated">Amazing Product</h2>
                                <a class="btn-hover slider-btn-style animated" href="shop-grid-view-5-col.jsp">shop now</a>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="banner-area pt-100 pb-70">
                <div class="container">
                    <div class="row">
                        
                    </div>
                </div>
            </div>
            <div class="product-area pb-100">
                <div class="container">
                    <div class="section-title text-center mb-35">
                        <h2>Featured Products</h2>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when look</p>
                    </div>
                    <div class="product-style">
                        <div class="product-tab-list text-center mb-45 nav product-menu-mrg" role="tablist">
                            
                        </div>
                       
                        <div class="tab-content jump">
                            <div class="tab-pane active show fade" id="home1" role="tabpanel">
                                <div class="row">
                                       <div class="col-md-3 col-lg-3 col-sm-4">
                                      <%   Connection  con = DbConnection1.dbConnection("mssql");
                                        PreparedStatement stmt  =null;
										ResultSet rslt = null;
										
										int count = 0;
									     	try {
												stmt =con.prepareStatement("select * from electronics");
												rslt = stmt.executeQuery();
												while(rslt.next()){
												String imgname = rslt.getString(1);
												%>
												 <form action="cartupdate2">
												<div class="single-product">
                                                <div class="product-img">
                                                    <img src="assets/img/product/<%=imgname%>.jpg" alt="">
                                                    
                                                </div>
                                               
                                                <div class="product-content">
                                                    <div class="product-title-price">
                                                        <div class="product-title">
                                                            <h4><%=rslt.getString(1)%></h4><input type="hidden" name="pname" value="<%=rslt.getString(1)%>">
                                                        </div>
                                                        <div class="product-price">
                                                            <span><%=rslt.getInt(3) %></span><input type="hidden" name="pprice" value="<%=rslt.getString(3)%>">
                                                        </div>
                                                    </div>
                                                    <div class="product-cart-categori">
                                                        <div class="product-cart">
                                                            <span>Electronics</span><input type="hidden" name="pcat" value="Electronics">
                                                        </div>
                                                        <input type="hidden" name="pquantity" value="1">
                                                        <div class="product-categori">
                                                         <a href="">
                                                      <i class="ion-bag"></i> Add to cart</a> 
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </div></form><%count+=1;if(count==4)break;
                                            }
												}
											 catch (SQLException e) {
											// TODO Auto-generated catch block
											e.printStackTrace();
											}
										finally{
		
											try{
												stmt.close();
												}
											catch(SQLException e)
											{
												e.printStackTrace();
											}
											}
                                        
                                            
                                         %>   
                                            
                                         
                                            
                                            
                                            
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                                
                                    
                        </div>
                    </div>
                </div>
            </div>
            
            
            <footer class="footer-area gray-bg pt-100 pb-95">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-5 col-12">
                            <div class="footer-widget">
                                <div class="footer-widget-l-content">
                                    <h4>20 Years Experience</h4>
                                    <ul>
                                        <li><a href="#"><i class="ion-social-twitter"></i></a></li> 
                                        <li><a href="#"><i class="ion-social-tumblr"></i></a></li>
                                        <li><a href="#"><i class="ion-social-facebook"></i></a></li> 
                                        <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li> 
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-7 col-12">
                            <div class="footer-widget">
                                <div class="footer-widget-m-content text-center">
                                    <div class="footer-logo">
                                        <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                                    </div>
                                    <div class="footer-nav">
                                        <nav>
                                            <ul>
                                                <li><a href="index.jsp">home</a></li>
                                                <li><a href="about-us.html">about us</a></li>
                                                <li><a href="shop-grid-view-5-col.jsp">shop </a></li>
                                               
                                               
                                            </ul>
                                        </nav>
                                    </div>
                                    <p>Copyright <i class="fa fa-copyright"></i> 2018 <a href="https://freethemescloud.com/" target="_blank" >Free Themes Cloud.</a> All rights reserved. </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-12 col-12">
                            <div class="footer-widget f-right">
                                <div class="footer-widget-r-content">
                                    <ul>
                                        <li><span>Phone :</span> +1416-471-0117</li>
                                        <li><span>Email : </span> <a href="#">nittingarg21@gmail.com</a></li>
                                        <li><span>Address :</span> Hell</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="ion-android-close" aria-hidden="true"></span>
                </button>
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="qwick-view-left">
                                <div class="quick-view-learg-img">
                                    <div class="quick-view-tab-content tab-content">
                                        <div class="tab-pane active show fade" id="modal1" role="tabpanel">
                                            <img src="assets/img/quick-view/l1.jpg" alt="">
                                        </div>
                                        <div class="tab-pane fade" id="modal2" role="tabpanel">
                                            <img src="assets/img/quick-view/l2.jpg" alt="">
                                        </div>
                                        <div class="tab-pane fade" id="modal3" role="tabpanel">
                                            <img src="assets/img/quick-view/l3.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="quick-view-list nav" role="tablist">
                                    <a class="active" href="#modal1" data-toggle="tab" role="tab" aria-selected="true" aria-controls="home1">
                                        <img src="assets/img/quick-view/s1.jpg" alt="">
                                    </a>
                                    <a href="#modal2" data-toggle="tab" role="tab" aria-selected="false" aria-controls="home2">
                                        <img src="assets/img/quick-view/s2.jpg" alt="">
                                    </a>
                                    <a href="#modal3" data-toggle="tab" role="tab" aria-selected="false" aria-controls="home3">
                                        <img src="assets/img/quick-view/s3.jpg" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="qwick-view-right">
                                <div class="qwick-view-content">
                                    <h3>Handcrafted Supper Mug</h3>
                                    <div class="price">
                                        <span class="new">$90.00</span>
                                        <span class="old">$120.00  </span>
                                    </div>
                                    <div class="rating-number">
                                        <div class="quick-view-rating">
                                            <i class="ion-ios-star red-star"></i>
                                            <i class="ion-ios-star red-star"></i>
                                            <i class="ion-android-star-outline"></i>
                                            <i class="ion-android-star-outline"></i>
                                            <i class="ion-android-star-outline"></i>
                                        </div>
                                        <div class="quick-view-number">
                                            <span>2 Ratting (S)</span>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do tempor incididun ut labore et dolore magna aliqua. Ut enim ad mi , quis nostrud veniam exercitation .</p>
                                    <div class="quick-view-select">
                                        <div class="select-option-part">
                                            <label>Size*</label>
                                            <select class="select">
                                                <option value="">- Please Select -</option>
                                                <option value="">900</option>
                                                <option value="">700</option>
                                            </select>
                                        </div>
                                        <div class="select-option-part">
                                            <label>Color*</label>
                                            <select class="select">
                                                <option value="">- Please Select -</option>
                                                <option value="">orange</option>
                                                <option value="">pink</option>
                                                <option value="">yellow</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="quickview-plus-minus">
                                        <div class="cart-plus-minus">
											<input type="text" value="02" name="qtybutton" class="cart-plus-minus-box">
										</div>
                                        <div class="quickview-btn-cart">
                                            <a class="btn-hover-black" href="#">add to cart</a>
                                        </div>
                                        <div class="quickview-btn-wishlist">
                                            <a class="btn-hover" href="#"><i class="ion-ios-heart-outline"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clickable-mainmenu-btn">
                <a class="clickable-mainmenu-active" href="#"><i class="ion-navicon"></i></a>
            </div>
            <div class="clickable-mainmenu text-center">
                <div class="clickable-mainmenu-icon">
                    <button class="clickable-mainmenu-close">
                        <span class="ion-android-close"></span>
                    </button>
                </div>
                <div id="menu" class="text-left">
                    <ul>
                                            <li><a href="index.jsp">home</a></li>
                                            <li><a href="about-us.html">about us</a></li>
                                            <li><a href="shop-grid-view-5-col.jsp">shop</a></li>
                                            <li><a href="#">pages</a>
                                                <ul class="dropdown">
                                                    <li><a href="about-us.html">about us</a></li>
                                                    <li><a href="cart.jsp">cart</a></li>
                                                    <li><a href="checkout.jsp">checkout</a></li>
                                                    <li><a href="contact.html">contact</a></li>
                                                    <li><a href="login.jsp">login</a></li>
                                                    <li><a href="register.jsp">register</a></li>
                                                </ul>
                                            </li>
                                            
                                            <li><a href="contact.html">contact</a></li>
                                        </ul>
                </div>
            </div>
        </div>
		
		
		
		
		
		
		
		
		
		<!-- all js here -->
        <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/isotope.pkgd.min.js"></script>
        <script src="assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/slinky.min.js"></script>
        <script src="assets/js/ajax-mail.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>

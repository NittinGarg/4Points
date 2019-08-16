<!doctype html>
<%@ page import="java.*" %>
<%@ page import="asd.DbConnection1"%>
<%@ page import="java.sql.*" %>
<html class="no-js" lang="zxx">
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
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="assets/css/jquery-ui.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/ionicons.min.css">
        <link rel="stylesheet" href="assets/css/bundle.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!-- header start -->
        <div class="wrapper">
            
            <header class="pl-155 pr-155 intelligent-header">
                <div class="header-area header-area-2">
                    <div class="container-fluid p-0">
                        <div class="row no-gutters">
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
                            <div class="mobile-menu-area d-md-block col-md-12 col-lg-12 col-12 d-lg-none d-xl-none">
                                <div class="mobile-menu">
                                    <nav id="mobile-menu-active">
                                        <ul class="menu-overflow">
                                            <li><a href="#">HOME</a>
                                                <ul>
                                                    <li><a href="index.jsp">furniture</a></li>
                                                    <li><a href="index-electronics.html">electronics</a></li>
                                                    <li><a href="index-fashion.html">fashion</a></li>
                                                    <li><a href="index-jewellery.html">jewellery</a></li>
                                                    <li><a href="index-food-drink.html">food & drink</a></li>
                                                    <li><a href="index-toys.html">Toys & Games</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">pages</a>
                                                <ul>
                                                    <li><a href="about-us.html">about us</a></li>
                                                    <li><a href="cart.html">cart</a></li>
                                                    <li><a href="checkout.jsp">checkout</a></li>
                                                    <li><a href="wishlist.html">wishlist</a></li>
                                                    <li><a href="contact.html">contact</a></li>
                                                    <li><a href="login.jsp">login</a></li>
                                                    <li><a href="register.html">register</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">shop</a>
                                                <ul>
                                                    <li><a href="shop-grid-view-3-col.html">grid 3 column</a></li>
                                                    <li><a href="shop-grid-view-5-col.html">grid 5 column</a></li>
                                                    <li><a href="shop-grid-view-sidebar.html">grid with sidebar</a></li>
                                                    <li><a href="shop-list-view-1-col.html">list 1 column</a></li>
                                                    <li><a href="shop-list-view-2-col.html">list 2 column</a></li>
                                                    <li><a href="shop-list-view-sidebar.html">list with sidebar</a></li>
                                                    <li><a href="shop-list-view-1-col-container.html">list 1 column box</a></li>
                                                    <li><a href="product-details.html">tab style 1</a></li>
                                                    <li><a href="product-details-2.html">tab style 2</a></li>
                                                    <li><a href="product-details-3.html">tab style 3</a></li>
                                                    <li><a href="product-details-6.html">sticky style</a></li>
                                                    <li><a href="product-details-7.html">sticky style 2</a></li>
                                                    <li><a href="product-details-8.html">gallery style</a></li>
                                                    <li><a href="product-details-9.html">gallery style 2</a></li>
                                                    <li><a href="product-details-4.html">fixed image style</a></li>
                                                    <li><a href="product-details-5.html">fixed image style 2</a></li> 
                                                </ul>
                                            </li>
                                            <li><a href="#">BLOG</a>
                                                <ul>
                                                    <li><a href="blog.html">blog </a></li>
                                                    <li><a href="blog-2-col.html">blog 2 column</a></li>
                                                    <li><a href="blog-left-sidebar.html">blog left sidebar</a></li>
                                                    <li><a href="blog-details.html">blog details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html"> Contact  </a></li>
                                        </ul>
                                    </nav>							
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="header-space"></div>
            <!-- header end -->
            
            <!-- main-search start -->
            <div class="main-search-active">
                <div class="sidebar-search-icon">
                    <button class="search-close"><span class="ion-android-close"></span></button>
                </div>
                <div class="sidebar-search-input">
                    <form action="searchproduct">
                        <div class="form-search">
                            <input id="search" class="input-text" name="search" placeholder="Search Entire Store" type="search">
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
                    <div class="cur-lang-acc-all">
                        
                        <div class="single-currency-language-account">
                            <div class="cur-lang-acc-title">
                                <h4>My Account:</h4>
                            </div>
                            <div class="cur-lang-acc-dropdown">
                                <ul>
                               <%String name= (String)request.getAttribute("user-name");
                                 System.out.println(name);
                                 request.setAttribute("user-name",name);%>
                                    <li><a href="quiz.jsp">Quiz </a></li>
                                    <li><a href="cart.jsp">My Cart</a></li>
                                   <% if(name==null)
                                   {%>
                                   <li><a href="register.jsp">register</a></li>
                                    <li><a href="login.jsp">Sign In</a></li>
                                                                     
                                   
                                 <%}
                                   else{%>
                                     <li><a href="login.jsp">Sign Out!!! <%=request.getAttribute("user-name")%> </a></li>
                                    <%} %>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="breadcrumb-area pt-205 pb-210 bg-img" style="background-image: url(assets/img/bg/breadcrumb.jpg)">
                <div class="container">
                    <div class="breadcrumb-content">
                        <h2>shop</h2>
                        <ul>
                            <li><a href="index.jsp">home</a></li>
                            <li> shop </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="shop-page-wrapper hidden-items padding-filter">
                <div class="container-fluid">
                    <div class="shop-filters-left">
                        <div class="shop-sidebar">
                            <div class="sidebar-widget mb-50">
                                <h3 class="sidebar-title">Search Products</h3>
                                <div class="sidebar-search">
                                    <form action="#">
                                        <input placeholder="Search Products..." type="text">
                                        <button><i class="ion-ios-search-strong"></i></button>
                                    </form>
                                </div>
                            </div>
                            <div class="sidebar-widget mb-40">
                                <h3 class="sidebar-title">Filter by Price</h3>
                                <div class="price_filter">
                                    <div id="slider-range"></div>
                                    <div class="price_slider_amount">
                                        <div class="label-input">
                                            <label>price : </label>
                                            <input type="text" id="amount" name="price"  placeholder="Add Your Price" />
                                        </div>
                                        <button type="button">Filter</button> 
                                    </div>
                                </div>
                            </div>
                            <div class="sidebar-widget mb-45">
                                <h3 class="sidebar-title">Categories</h3>
                                <div class="sidebar-categories">
                                    <ul>
                                        <li><a href="#">Accessories <span>4</span></a></li>
                                        <li><a href="#">Book <span>9</span></a></li>
                                        <li><a href="#">Clothing <span>5</span> </a></li>
                                        <li><a href="#">Homelife <span>3</span></a></li>
                                        <li><a href="#">Kids & Baby <span>4</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="sidebar-widget sidebar-overflow mb-45">
                                <h3 class="sidebar-title">color</h3>
                                <div class="product-color">
                                    <ul>
                                        <li class="red">b</li>
                                        <li class="pink">p</li>
                                        <li class="blue">b</li>
                                        <li class="sky">b</li>
                                        <li class="green">y</li>
                                        <li class="purple">g</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="sidebar-widget mb-40">
                                <h3 class="sidebar-title">size</h3>
                                <div class="product-size">
                                    <ul>
                                        <li><a href="#">xl</a></li>
                                        <li><a href="#">m</a></li>
                                        <li><a href="#">l</a></li>
                                        <li><a href="#">ml</a></li>
                                        <li><a href="#">lm</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="sidebar-widget mb-50">
                                <h3 class="sidebar-title">Top rated products</h3>
                                <div class="sidebar-top-rated-all">
                                    <div class="sidebar-top-rated mb-30">
                                        <div class="single-top-rated">
                                            <div class="top-rated-img">
                                                <a href="#"><img src="assets/img/product/sidebar-product/1.jpg" alt=""></a>
                                            </div>
                                            <div class="top-rated-text">
                                                <h4><a href="#">Flying Drone</a></h4>
                                                <div class="top-rated-rating">
                                                    <ul>
                                                        <li><i class="reting-color ion-android-star"></i></li>
                                                        <li><i class="reting-color ion-android-star"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                                <span>$140.00</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sidebar-top-rated mb-30">
                                        <div class="single-top-rated">
                                            <div class="top-rated-img">
                                                <a href="#"><img src="assets/img/product/sidebar-product/2.jpg" alt=""></a>
                                            </div>
                                            <div class="top-rated-text">
                                                <h4><a href="#">Flying Drone</a></h4>
                                                <div class="top-rated-rating">
                                                    <ul>
                                                        <li><i class="reting-color ion-android-star"></i></li>
                                                        <li><i class="reting-color ion-android-star"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                                <span>$140.00</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sidebar-top-rated mb-30">
                                        <div class="single-top-rated">
                                            <div class="top-rated-img">
                                                <a href="#"><img src="assets/img/product/sidebar-product/3.jpg" alt=""></a>
                                            </div>
                                            <div class="top-rated-text">
                                                <h4><a href="#">Flying Drone</a></h4>
                                                <div class="top-rated-rating">
                                                    <ul>
                                                        <li><i class="reting-color ion-android-star"></i></li>
                                                        <li><i class="reting-color ion-android-star"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                                <span>$140.00</span>
                                            </div>
                                        </div>
                                    </div>
                            <!--         <div class="sidebar-top-rated mb-30">
                                        <div class="single-top-rated">
                                            <div class="top-rated-img">
                                                <a href="#"><img src="assets/img/product/sidebar-product/4.jpg" alt=""></a>
                                            </div>
                                            <div class="top-rated-text">
                                                <h4><a href="#">Flying Drone</a></h4>
                                                <div class="top-rated-rating">
                                                    <ul>
                                                        <li><i class="reting-color ion-android-star"></i></li>
                                                        <li><i class="reting-color ion-android-star"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                        <li><i class="ion-android-star-outline"></i></li>
                                                    </ul>
                                                </div>
                                                <span>$140.00</span>
                                            </div>
                                        </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="shop-filters-right">
                        <div class="shop-bar-area pb-60">
                            <div class="shop-bar">
                                <div class="shop-found-selector">
                                <%Connection  con1 = DbConnection1.dbConnection("mssql");
                                        PreparedStatement stmt1  =null;
										ResultSet rslt1 = null;
										int count1 = 1;
										
									     	try {
												stmt1 =con1.prepareStatement("select * from electronics");
												rslt1 = stmt1.executeQuery();
                                   	while(rslt1.next()){
									count1+=1;
                                    }}
                                     catch (SQLException e) {
											// TODO Auto-generated catch block
											e.printStackTrace();
											}
										finally{
		
											try{
												stmt1.close();
												}
											catch(SQLException e)
											{
												e.printStackTrace();
											}
											}
											try {
												stmt1 =con1.prepareStatement("select * from clothes");
												rslt1 = stmt1.executeQuery();
                                   	while(rslt1.next()){
									count1+=1;
                                    }}
                                     catch (SQLException e) {
											// TODO Auto-generated catch block
											e.printStackTrace();
											}
										finally{
		
											try{
												stmt1.close();
												}
											catch(SQLException e)
											{
												e.printStackTrace();
											}
											}
											try {
												stmt1 =con1.prepareStatement("select * from furniture");
												rslt1 = stmt1.executeQuery();
                                   	while(rslt1.next()){
									count1+=1;
                                    }}
                                     catch (SQLException e) {
											// TODO Auto-generated catch block
											e.printStackTrace();
											}
										finally{
		
											try{
												stmt1.close();
												}
											catch(SQLException e)
											{
												e.printStackTrace();
											}
											}
											try {
												stmt1 =con1.prepareStatement("select * from footwear");
												rslt1 = stmt1.executeQuery();
                                   	while(rslt1.next()){
									count1+=1;
                                    }}
                                     catch (SQLException e) {
											// TODO Auto-generated catch block
											e.printStackTrace();
											}
										finally{
		
											try{
												stmt1.close();
												}
											catch(SQLException e)
											{
												e.printStackTrace();
											}
											}%>
                                    <div class="shop-found">
                                        <p><span><%=count1 %></span> Product Found of <span>50</span></p>
                                    </div>
                                    
                                </div>
                               
                            </div>
                        </div>
                        <form action="cartupdate">
                        <div class="shop-product-content tab-content">
                            <div id="grid-5-col1" class="tab-pane fade active show">
                                <div class="row custom-row">
                                    <%Connection  con = DbConnection1.dbConnection("mssql");
                                        PreparedStatement stmt  =null;
										ResultSet rslt = null;
										int count = 1;
										
									     	try {
												stmt =con.prepareStatement("select * from electronics");
												rslt = stmt.executeQuery();
                                   	while(rslt.next()){
									String imgname=rslt.getString(1);%>
                                    <div class="custom-col-5 custom-col-style">
                                        <div class="single-product mb-35">
                                            <div class="product-img">
                                               <img src="assets/img/shop/shop-grid-1/<%=imgname%>.jpg">
                                            </div>
                                            <div class="product-content">
                                                <div class="product-title-price">
                                                    <div class="product-title">
                                                        <h4><%=rslt.getString(1)%></h4>
                                                    </div>
                                                    <div class="product-price">
                                                        <span><%=rslt.getInt(3)%></span>
                                                    </div>
                                                </div>
                                                <div class="product-cart-categori">
                                                    <div class="product-cart">
                                                        <span>Electronics</span>
                                                    </div>
                                                    <div class="product-categori">
                                                        <a href="shop-grid-view-5-col.jsp"><i class="ion-bag"></i> Add to cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%}}
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
	try {
												stmt =con.prepareStatement("select * from clothes");
												rslt = stmt.executeQuery();
                                   	while(rslt.next()){
									String imgname=rslt.getString(1);%>
                                    
                                    <div class="custom-col-5 custom-col-style">
                                        <div class="single-product mb-35">
                                            <div class="product-img">
                                               <img src="assets/img/shop/shop-grid-1/<%=imgname%>.jpg">
                                            </div>
                                            <div class="product-content">
                                                <div class="product-title-price">
                                                    <div class="product-title">
                                                        <h4><%=rslt.getString(1)%></h4><input type="hidden" name="pname" value="<%=rslt.getString(1)%>">
                                                    </div>
                                                    <div class="product-price">
                                                        <span><%=rslt.getInt(3)%><input type="hidden" name="pprice" value="<%=rslt.getString(3)%>"></span>
                                                    </div>
                                                </div>
                                                <div class="product-cart-categori">
                                                    <div class="product-cart">
                                                        <span>Clothes
                                                        </span><input type="hidden" name="pcat" value="clothes">
                                                    </div>
                                                    <div class="product-categori">
                                                        <a href="shop-grid-view-5-col.jsp"><i class="ion-bag"></i> Add to cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <%}}
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
try {
												stmt =con.prepareStatement("select * from furniture");
												rslt = stmt.executeQuery();
                                   	while(rslt.next()){
									String imgname=rslt.getString(1);%>
                                    <div class="custom-col-5 custom-col-style">
                                        <div class="single-product mb-35">
                                            <div class="product-img">
                                               <img src="assets/img/shop/shop-grid-1/<%=imgname%>.jpg">
                                            </div>
                                            <div class="product-content">
                                                <div class="product-title-price">
                                                    <div class="product-title">
                                                        <h4><%=rslt.getString(1)%></h4>
                                                    </div>
                                                    <div class="product-price">
                                                        <span><%=rslt.getInt(3)%></span>
                                                    </div>
                                                </div>
                                                <div class="product-cart-categori">
                                                    <div class="product-cart">
                                                        <span>Furniture</span>
                                                    </div>
                                                    <div class="product-categori">
                                                        <a href="shop-grid-view-5-col.jsp"><i class="ion-bag"></i> Add to cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%}}
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
try {
												stmt =con.prepareStatement("select * from footwear");
												rslt = stmt.executeQuery();
                                   	while(rslt.next()){
									String imgname=rslt.getString(1);%>
                                    <div class="custom-col-5 custom-col-style">
                                        <div class="single-product mb-35">
                                            <div class="product-img">
                                               <img src="assets/img/shop/shop-grid-1/<%=imgname%>.jpg">
                                            </div>
                                            <div class="product-content">
                                                <div class="product-title-price">
                                                    <div class="product-title">
                                                        <h4><%=rslt.getString(1)%></h4>
                                                    </div>
                                                    <div class="product-price">
                                                        <span><%=rslt.getInt(3)%></span>
                                                    </div>
                                                </div>
                                                <div class="product-cart-categori">
                                                    <div class="product-cart">
                                                        <span>Footwear</span>
                                                    </div>
                                                    <div class="product-categori">
                                                        <a href="shop-grid-view-5-col.jsp"><i class="ion-bag"></i> Add to cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%}}
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
            </div>
            </form>
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
                                        <a href="#"><img src="assets/img/logo/logo.png" alt=""></a>
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
                                        <li><span>Phone :</span> +1 416 471 0117</li>
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
                                <div class="quick-view-list nav" role=tablist>
                                    <a class="active" href="#modal1" data-toggle="tab" role="tab" aria-selected="true">
                                        <img src="assets/img/quick-view/s1.jpg" alt="">
                                    </a>
                                    <a href="#modal2" data-toggle="tab" role="tab" aria-selected="false">
                                        <img src="assets/img/quick-view/s2.jpg" alt="">
                                    </a>
                                    <a href="#modal3" data-toggle="tab" role="tab" aria-selected="false">
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
                                                <option value="">xl</option>
                                                <option value="">ml</option>
                                                <option value="">m</option>
                                                <option value="">sl</option>
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
        <script type="text/javascript">
            // grab an element
            var myElement = document.querySelector(".intelligent-header");
            // construct an instance of Headroom, passing the element
            var headroom  = new Headroom(myElement);
            // initialise
            headroom.init(); 
        </script>
        <script src="assets/js/main.js"></script>
    </body>
</html>

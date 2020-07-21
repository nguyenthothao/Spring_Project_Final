<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Header Start -->
<div class="header-area">
    <div class="main-header header-sticky">
        <div class="container-fluid">
            <div class="menu-wrapper">
                <!-- Logo -->
                <div class="logo">
                    <a href="<c:url value="/home"/>"/>
                    <img src="<c:url value="/resources/img/logo/logo.png"/>" alt=""></a>
                </div>
                <!-- Main-menu -->
                <div class="main-menu d-none d-lg-block">
                    <nav>                                                
                        <ul id="navigation">  
                            <li><a href="<c:url value="/home"/>">Home</a></li>
                            <li><a href="<c:url value="/shop"/>">shop</a></li>
                            <li><a href="<c:url value="/about"/>">about</a></li>
                            <li class="hot"><a href="<c:url value="/about"/>">Latest</a>
                                <ul class="submenu">
                                    <li><a href="<c:url value="/shop"/>"> Product list</a></li>
                                    <li><a href="<c:url value="/product_details"/>"> Product Details</a></li>
                                </ul>
                            </li>
                            <li><a href="<c:url value="/blog"/>">Blog</a>
                                <ul class="submenu">
                                    <li><a href="<c:url value="/blog"/>">Blog</a></li>
                                    <li><a href="<c:url value="/blog_details"/>">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="<c:url value="/page"/>">Pages</a>
                                <ul class="submenu">
                                    <li><a href="<c:url value="/login"/>">Login</a></li>
                                    <li><a href="<c:url value="/cart"/>">Cart</a></li>
                                    <li><a href="<c:url value="/element"/>">Element</a></li>
                                    <li><a href="<c:url value="/confirmation"/>">Confirmation</a></li>
                                    <li><a href="<c:url value="/checkout"/>">Product Checkout</a></li>
                                </ul>
                            </li>
                            <li><a href<c:url value="/contact"/>">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- Header Right -->
                <div class="header-right">
                    <ul>
                        <!--<li>
                                   <form method="post" action="${pageContext.request.contextPath}/search">
                                       <div class="form-group">
                                           <input name="strSearch" class="form-control"/>
                                           <input type="submit" value="Search" 
                                                  class="btn btn-info" />
                                       </div>
                                   </form>
                               </li>-->
                        <li>
                                <div class="nav-search search-switch">
                                    <span class="flaticon-search"></span>
                                </div>
                        </li>
                        <li><a href="<c:url value="/login"/>"><span class="flaticon-user"></span></a></li>
                        <li><a href="<c:url value="/cart"/>"><span class="flaticon-shopping-cart"></span></a> </li>
                    </ul>
                </div>
            </div>
            <!-- Mobile Menu -->
            <div class="col-12">
                <div class="mobile_menu d-block d-lg-none"></div>
            </div>
        </div>
    </div>
</div>
<!-- Header End -->


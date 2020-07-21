<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Footer Start-->
<div class="container">
    <h2 style="text-align: center; padding-top: 40px; padding-bottom: 20px">Subscribe ours shop</h2>
    <form method="post" action="${pageContext.request.contextPath}/sendEmail">
        <table>
            <td>
                <h5 style="padding-left: 150px">Your Email:&ensp;</h5>
            </td>
            <td>
                <input type="text" name="recipient" style="height: 50px" size="50" />
            </td>
            <td>
                <input type="submit" style="height: 30px" class="btn btn-secondary" value="Subscribe"/>
            </td>
        </table>
    </form>
</div>
<div class="footer-area footer-padding">
    <div class="container">
        <div class="row d-flex justify-content-between">
            <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                <div class="single-footer-caption mb-50">
                    <div class="single-footer-caption mb-30">
                        <!-- logo -->
                        <div class="footer-logo">
                            <a href="<c:url value="/home"/>"><img src="<c:url value="resources/img/logo/logo2_footer.png"/>" 
                                                                  alt=""></a>
                        </div>
                        <div class="footer-tittle">
                            <div class="footer-pera">
                                <p>This is the best choice you have.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
                <div class="single-footer-caption mb-50">
                    <div class="footer-tittle">
                        <h4>Quick Links</h4>
                        <ul>
                            <li><a href="<c:url value="/about"/>">About</a></li>
                            <li><a href="#"> Offers & Discounts</a></li>
                            <li><a href="#"> Get Coupon</a></li>
                            <li><a href="#">  Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
                <div class="single-footer-caption mb-50">
                    <div class="footer-tittle">
                        <h4>New Products</h4>
                        <ul>
                            <li><a href="#">Woman Cloth</a></li>
                            <li><a href="#">Fashion Accessories</a></li>
                            <li><a href="#"> Man Accessories</a></li>
                            <li><a href="#"> Rubber made Toys</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
                <div class="single-footer-caption mb-50">
                    <div class="footer-tittle">
                        <h4>Support</h4>
                        <ul>
                            <li><a href="#">Frequently Asked Questions</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Report a Payment Issue</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer bottom -->
        <div class="row align-items-center">
            <div class="col-xl-7 col-lg-8 col-md-7">
                <div class="footer-copy-right">
                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>                  
                </div>
            </div>
            <div class="col-xl-5 col-lg-4 col-md-5">
                <div class="footer-copy-right f-right">
                    <!-- social -->
                    <div class="footer-social">
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="https://www.facebook.com/thao.nguyentho"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-behance"></i></a>
                        <a href="#"><i class="fas fa-globe"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End-->


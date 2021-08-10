<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value='/resources/css/Cart.css'/>" rel="stylesheet">
</head>
<body>
    <div class="header">
        <div class="icon-home"><h1><a href="Home?page=1">Zazzle</a></h1></div>
        <div class="search-textbox"><input  type="text" placeholder="Search"></div>
        <div class="icon">
            <a href="zazzle.com"><div class="icon-user"></div></a>
            <div class="icon-cart"></div>
        </div> 
        <div class="content">
        <div class="menu">
            <div class="left">
                <ul>
                    <h1>Your Shopping Cart</h1>
                    
                </ul>
            </div>
            <div class="right">
                <ul class="buton1">
                    <button>Proceed to checkout</button>
                </ul>
                <ul class="buton2">
                    <button>Pay</button>
                </ul>
            </div>
        </div>
        <div class="items">
            <ul >
                <li style="text-align: left;width:46%;">Items</li>
                <li >Price</li>
                <li>Qty</li>
                <li>Total</li>
            </ul>
       </div>
       <div class="product">
            <div class="product-img">
                <img src="https://rlv.zcache.com/watercolor_greenery_and_flowers_confirmation_invitation-r6544afba2fd04c65872b70883536b2d7_tcv4s_200.jpg" alt="">
            </div>
            <div class="content-product">
                    <h2 class="title">Dog Lover Gift</h2>
                    <h1>Watercolor Greenery and Flowers Confirmation</h1>
                    <p>Artwork designed by misstallulah</p>
            </div>
            <div class="product-button">
                <div class="Price"><h3>3.5</h3></div>
                <div class="Qty"><input type="text" value="1" max="999" min="1"></div>
                <div class="Total"><h3>3.5</h3></div>
            </div>
        </div>
        <div class="sub-total">
            <div class="total">
                <div style="text-align: left; width:30%;float: left;">
                    <h3>Total</h3>
                </div>
                <div style="float:left;text-align: right;"> 
                    <h3>3.5</h3>
                </div>
            </div>
        </div>
    </div>
    
    <footer>
        <div class="footer-hr"></div>
        <div class="footer-center">
            <ul>
                <li><a href="">About</a></li>
                <li><a href="">Corporate Responsibility</a></li>
                <li><a>Press</a></li>
            </ul>
            <ul>
                <li><a href="">My Account</a></li>
                <li><a href="">Track My Order</a></li>
                <li><a>Return Policy</a></li>
            </ul>
            <ul>
                <li><a href="">Sitemap</a></li>
                <li><a href="">Help</a></li>
                <li><a href="">Careers</a></li>
            </ul>
            <ul>
                <li><a href="">Zazzle Ideas</a></li>
                <li><a href="">Refer a Friend</a></li>
                <li>Content Filter: <a href="">Moderate</a></li>
            </ul>
        </div>
        <div class="footer-icon">
            <a href="https://www.facebook.com/zazzle" target="_blank"><div class="icon-facebook"></div></a>
            <a href="https://twitter.com/zazzle" target="_blank"><div class="icon-twitter"></div></a>
            <a href="https://instagram.com/zazzle" target="_blank"><div class="icon-instagram"></div></a>
            <a href="https://www.pinterest.com/zazzle/" target="_blank"><div class="icon-pinterest"></div></a>
            <a href="https://www.youtube.com/user/ZazzleTV" target="_blank"><div class="icon-youtube"></div></a>
            <a href="https://itunes.apple.com/us/app/zazzle/id736836912" target="_blank"><div class="icon-appstore"></div></a>
            <a href="https://play.google.com/store/apps/details?id=com.zazzle" target="_blank"><div class="icon-googleplay"></div></a>
        </div>
    </div>
    
    <footer>
        <div class="footer-hr"></div>
        <div class="footer-center">
            <ul>
                <li><a href="">About</a></li>
                <li><a href="">Corporate Responsibility</a></li>
                <li><a>Press</a></li>
            </ul>
            <ul>
                <li><a href="">My Account</a></li>
                <li><a href="">Track My Order</a></li>
                <li><a>Return Policy</a></li>
            </ul>
            <ul>
                <li><a href="">Sitemap</a></li>
                <li><a href="">Help</a></li>
                <li><a href="">Careers</a></li>
            </ul>
            <ul>
                <li><a href="">Zazzle Ideas</a></li>
                <li><a href="">Refer a Friend</a></li>
                <li>Content Filter: <a href="">Moderate</a></li>
            </ul>
        </div>
        <div class="footer-icon">
            <a href="https://www.facebook.com/zazzle"><div class="icon-facebook"></div></a>
            <a href="https://twitter.com/zazzle"><div class="icon-twitter"></div></a>
            <a href="https://instagram.com/zazzle"><div class="icon-instagram"></div></a>
            <a href="https://www.pinterest.com/zazzle/"><div class="icon-pinterest"></div></a>
            <a href="https://www.youtube.com/user/ZazzleTV  "><div class="icon-youtube"></div></a>
            <a href="https://itunes.apple.com/us/app/zazzle/id736836912"><div class="icon-appstore"></div></a>
            <a href="https://play.google.com/store/apps/details?id=com.zazzle"><div class="icon-googleplay"></div></a>
        </div>
    </footer>
</body>
</html>
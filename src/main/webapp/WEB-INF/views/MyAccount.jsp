<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zazzle</title>
    <link href="<c:url value='/resources/css/AccountSetting.css'/>" rel="stylesheet">
   <link href="<c:url value='/resources/css/MyAccount.css'/>" rel="stylesheet"> 
</head>
<body>
    <div class="header">
        <div class="icon-home"><h1><a href="Home?page=1">Zazzle</a></h1></div>
        <div class="search-textbox"><input  type="text" placeholder="Search"></div>
        <div class="icon">
            <div class="icon-user">
                <div class="form-user">
                    <div class="title-user">
                        <div class="icon">
                            <div class="icon-user"></div>
                        </div>
                        <a href="">
                            <div class="title-username">
                                Dai Truong
                            </div>
                            <div class="title-yearjoined">
                                Member Since 2021
                            </div>
                        </a>
                    </div>
                    <div class="form-user-hr"></div>
                    <div class="title-account">
                        <div class="title-account-MyAccount"><a href="">My Account</a></div>
                        <div class="title-account-MyOrder"><a href="">My Order </a></div>
                        <div class="title-account-SavedDesign"><a href="">Save Design</a></div>
                        <div class="title-account-AddressBook"><a href="">Address Book</a></div>
                        <div class="title-account-FollowedDesigners"><a href="">Followed Designers</a></div>
                    </div>
                    <div class="form-user-hr"></div>
                    <div class="title-stores">
                        <div class="title-account-MyStore"><a href="">My Stores</a></div>
                        <div class="title-account-Earnings"><a href="">Earnings</a></div>
                    </div>
                    <div class="form-user-hr"></div>
                    <div class="login-logout">
                        <div class="title-account-Earnings"><a href="<%=request.getContextPath()+request.getAttribute("LoginAccess")%>" title="Đăng xuất" ><%=request.getAttribute("Login")%></a></div>
                    </div>
                    
                </div>
            </div>
            <div class="icon-cart"></div>
        </div>
    </div>
    <div class="content">
        <div class="title-content">
            <div class="title-MyAccount"><a href="">My Account</a></div>
            <div class="title-Earnings"><a href="">Eearnings</a></div>
        </div>
        <div class="title-information">
            <div class="information-left">
                <p style="padding-left: 40px;">My Account at a glance</p>
                <ul>
                    <li><a href="">My Profile</a></li>
                    <li><a href="">Collections</a></li>
                    <li><a href="">Likes</a></li>
                    <li><a href="">Order History</a></li>
                    <li><a href="">Account Settings</a></li>
                    <li><a href="">Payment Methods</a></li>
                    <li><a href="">Address Book</a></li>
                    <li><a href="">Refer a Friend</a></li>
                </ul>
            </div>
            <div class="information-right">
                <p style="padding-left: 40px;">My Account at a glance</p>
                <ul><a href="">Earnings</a></ul>
                <ul><a href="">Payment Settings</a></ul>
                <ul><a href="">Default Royalty</a></ul>
                <p style="padding-left: 40px;">Current balance:</p>
                <ul><a href="">History</a></ul>
                <ul><a href="">Summary & Reports</a></ul>
                <input type="button" value="Manage my stores">
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
    </footer>
</body>
</html>
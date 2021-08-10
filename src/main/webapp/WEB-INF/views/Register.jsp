<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zazzle</title>
    <link href="<c:url value='/resources/css/Register.css'/>" rel="stylesheet">
    <link rel="stylesheet" href="Register.css">
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
                        <div class="title-account-Earnings"><a href="<%=request.getContextPath()+request.getAttribute("LoginAccess")%>" title="Đăng xuất"><%=request.getAttribute("Login")%></a></div>
                    </div>
                    <div class="form-user-hr"></div>
                    <div class="login-logout">
                        <div class="title-account-Earnings"><a href="">Sign Out</a></div>
                    </div>
                    
                </div>
            </div>
            <div class="icon-cart"></div>
        </div>
    </div>
    <div class="content">
        <form action="/Zazzle/Form-Register" method="post" >
            <div class="left">
                <label for="">User Name</label><br>
            <input class="username" name="username" type="text" placeholder="User Name"><br><br>
            <label for="">Password</label><br>
            <input class="Password" name="password" type="password" placeholder="Pass Word"><br><br>
            <label for="">Full Name</label><br>
            <input class="fullname" name="fullname" type="text" placeholder="Full Name"><br><br>
            <label for="">BirthDay</label><br>
            <input class="birthday" name="birthday" type="date" placeholder="Birthday">
            </div>
            <div class="right">
                
            <label for="">Number Phone</label><br>
            <input class="numberphone" name="numberphone" type="text" maxlength="11" placeholder="Number Phone"><br><br>
            <label for="">City</label><label for="">State</label> <br>
            <select class="SelectCity" name="city" id="city" style="display: inline-block; width: 100px; background-color: white;"  onchange="giveSelection(this.value)">
                <option value="Quảng Trị">Quảng Trị</option>
                <option value="Cần Thơ">Cần Thơ</option>
                <option value="Đà Nẵng">Đà Nẵng</option>
            </select>
            <select name="state" class="SelectState" id="state" style="width: 130px; background-color: white;display: inline-block;">
                    <option data-option="Đà Nẵng">Hải Châu</option>
                    <option data-option="Đà Nẵng">Thanh Khê</option>
                    <option data-option="Đà Nẵng">Sơn Trà</option>
                    <option data-option="Đà Nẵng">Ngũ Hành Sơn</option>
                    <option data-option="Đà Nẵng">Lien Chiểu</option>
                    <option data-option="Đà Nẵng">Cẩm Lệ</option>
                    <option data-option="Đà Nẵng">Hòa Vang</option>
                    <option data-option="Đà Nẵng">Hoàng Sa</option>
                    <option data-option="Quảng Trị">Đông Hà</option>
                    <option data-option="Quảng Trị">Cam Lộ</option>
                    <option data-option="Quảng Trị">Giò Linh</option>
                    <option data-option="Quảng Trị">Vĩnh Linh</option>
                    <option data-option="Quảng Trị">Hướng Hóa</option>
                    <option data-option="Quảng Trị">Đa Klông</option>
                    <option data-option="Quảng Trị">Triệu Phong</option>
                    <option data-option="Quảng Trị">Quảng Trị</option>
                    <option data-option="Quảng Trị">Hải Lăng</option>
                    <option data-option="Quảng Trị">Côn Cỏ</option>
                    <option data-option="Cần Thơ">Ninh Kiều</option>
                    <option data-option="Cần Thơ">Bình Thủy</option>
                    <option data-option="Cần Thơ">Ô Mô<nav></nav></option>
                    <option data-option="Cần Thơ">Thốt Nốt</option>
                    <option data-option="Cần Thơ">Vĩnh Thạnh</option>
                    <option data-option="Cần Thơ">Huyện Cờ Đỏ</option>
                    <option data-option="Cần Thơ">Thới Lai</option>
                    <option data-option="Cần Thơ">Phong Điền</option>
                    <option data-option="Cần Thơ">Quận Cái Răng</option>

            </select>
            <script>
                var city = document.querySelector('#city');
                var state = document.querySelector('#state');
                var options2 = state.querySelectorAll('option');

                function giveSelection(selValue) {
                state.innerHTML = '';
                for(var i = 0; i < options2.length; i++) {
                    if(options2[i].dataset.option === selValue) {
                    state.appendChild(options2[i]);
                    }
                }
                }

                giveSelection(city.value);
            </script>
            <br><br>
            <label for="">Address</label><br>
            <input class="address" name="address" type="text" placeholder="Address"><br><br>
            <label for="">Famle  </label><label for="">  Male</label>
            <br>
            <input type="radio" name="sex" value="0" > 
            <input type="radio" name="sex" value="1" > 
            </div>
            <div class="center"><input class="submit" name="submit" value="Register" type="submit" style="margin-top:8px ;"></div>
        </form>

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
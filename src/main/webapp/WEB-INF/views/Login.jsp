<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zazzle</title>
    <link href="<c:url value='/resources/css/Login.css'/>" rel="stylesheet">
    
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id" content="376658860120-54cr2qarb9po4n89k5tqspdf1khjd814.apps.googleusercontent.com">
    <script src="<c:url value='https://apis.google.com/js/platform.js'/>" async defer></script>
    
    
</head>
<body>
<script type="text/javascript">
        function onSignIn(googleUser) {
        // window.location.href='success.jsp';

            
        
              var profile = googleUser.getBasicProfile();
              var imagurl=profile.getImageUrl();
              var name=profile.getName();
              var email=profile.getEmail();
                 document.getElementById("myImg").src = imagurl;
         
              document.getElementById("name").innerHTML = name;

              document.getElementById("myP").style.visibility = "hidden";
              

              document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=success.jsp?email='+email+'&name='+name+'/>Continue with Google login</a></p>'

               
               
         }
</script>
   <script>
   
function myFunction() {
gapi.auth2.getAuthInstance().disconnect();
location.reload();
}
<!-- </script>


    <script>

        function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
          console.log('statusChangeCallback');
          console.log(response);                   // The current login status of the person.
          if (response.status === 'connected') {   // Logged into your webpage and Facebook.
            testAPI();  
          } else {                                 // Not logged into your webpage or we are unable to tell.
            document.getElementById('status').innerHTML = 'Please log ' +
              'into this webpage.';
          }
        }
      
      
        function checkLoginState() {               // Called when a person is finished with the Login Button.
          FB.getLoginStatus(function(response) {   // See the onlogin handler
            statusChangeCallback(response);
          });
        }
      
      
        window.fbAsyncInit = function() {
          FB.init({
            appId      : '387053692750036',
            cookie     : true,                     // Enable cookies to allow the server to access the session.
            xfbml      : true,                     // Parse social plugins on this webpage.
            version    : 'v11.0'           // Use this Graph API version for this call.
          });
      
      
          FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
            statusChangeCallback(response);        // Returns the login status.
          });
        };
       
        function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
          console.log('Welcome!  Fetching your information.... ');
          FB.api('/me', function(response) {
            console.log('Successful login for: ' + response.name);
            document.getElementById('status').innerHTML =
              'Thanks for logging in, ' + response.name + '!';
          });
        }
      
      </script> -->
      
      
      
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
                        <div class="title-account-Earnings"><a href="">Sign Out</a></div>
                    </div>
                    
                </div>
            </div>
            <div class="icon-cart"></div>
        </div>
    </div>
    <div class="content">
        <form action="/Zazzle/Form_Login" method="post" >
            <label for="">User Name</label><br>
            <input class="username" name="username" type="text" placeholder="User Name"><br><br>
            <label for="">Password</label><br>
            <input class="Password" name="password" type="password" placeholder="Pass Word"><br><br>
            <input class="submit" name="submid" type="submit">
            <br>
            <br>
            <div class="g-signin2" data-onsuccess="onSignIn" id="myP" style="width: 150px ;height: 40px; display: inline-block;">
                <img id="myImg" src="" alt=""  >
              </div>
              <br><br>
              <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
              </fb:login-button>
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
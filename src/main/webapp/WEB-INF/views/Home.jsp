<%@page import="java.util.ArrayList"%>
	<%@page import="Configure.SQLServer"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zazzle </title>
    <link href="<c:url value='/resources/css/giaodien.css'/>" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
                        <div class="title-account-MyAccount"><a href="MyAccount.html">My Account</a></div>
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
                        <div class="title-account-Earnings"><a href="<%=request.getContextPath()+request.getAttribute("LoginAccess")%>" title="Đăng xuất"><%=request.getAttribute("Login")%></a></div>
                    </div>
                    
                </div>
            </div>
            <div class="icon-cart"></div>
        </div> 
        <div class="content">
            <p style="font-size: 20px;font-weight: 300;line-height: 1.4;">DON'T MISS OUT</p>
            <p style="font-size: 32px; font-weight: 300;line-height: 1.125;">Unmistakably You</p>
            <p style="font-size: 20px;font-weight:900;line-height:1.4">40% Off Tote Bags, Hats, Beach Towels & More</p>
            <p style="font-size: 20px; font-weight: 300;line-height: 1.4;">Give your look that extra flair</p>
            <input type="button" value="SHOP NOW" >
        </div>
    </div>
    <div class="paging" style="height: auto;width: 100%; text-align:center; margin-top:50px">
    	 <%
    	try{
    		int IDProduct=0;
    		ResultSet rsl= new SQLServer().ResultStatment("select COUNT('IDProduct')as'IDProduct' from SanPham;");
    		while(rsl.next())
    			IDProduct=rsl.getInt(1);//9
    		if(IDProduct%4!=0)
    			IDProduct=IDProduct/4+1;
    		else
    			IDProduct=IDProduct/4;
    		out.print("<div style=\"display:inline-block;height:100%;width:"+(IDProduct*30+IDProduct*14)+"px;\">");
    		for(int i=1;i<=IDProduct;i++)
    		{
    			if(Integer.valueOf(request.getParameter("page").toString())==i)
    				out.print("<div style=\"height:30px; background-color:#e4e4e4 ; border-color:black;float:left; width:30px;\"><a href=\"/BankBlood/Home?page="+i+"\">"+i+"</a></div>");
    			else
    				out.print("<div style=\"height:30px; float:left; width:30px;\"><a href=\"/BankBlood/Home?page="+i+"\">"+i+"</a></div>");
    		}
    		out.print("</div>");
    	}catch(Exception e){
    		
    	}
    	%>  
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
                <li><a href="MyAccount.html">My Account</a></li>
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
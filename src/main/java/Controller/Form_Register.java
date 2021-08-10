package Controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Configure.SQLServer;

@WebServlet(urlPatterns={"/Form-Register"})
public class Form_Register eng xtends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			SQLServer connect = new SQLServer();
			ResultSet rsl=connect.ResultStatment("Select*from TaiKhoan where Username='"+req.getParameter("username")+"'");
			if(rsl.next()==true)
				req.getRequestDispatcher("/Register").forward(req,resp);
			else
			{
				if(req.getParameter("password")!=""&&req.getParameter("username")!="")
				{
					
					connect.Result("insert into TaiKhoan (Username,Password,Fullname,Birthday,NumberPhone,City,State,Address,Sex) values('"+ req.getParameter("username")+"','"+req.getParameter("password")+"',N'"+req.getParameter("fullname")+"','"+req.getParameter("birthday")+"','"+req.getParameter("numberphone")+"',N'"+req.getParameter("city")+"',N'"+req.getParameter("state")+"',N'"+req.getParameter("address")+"',"+Integer.valueOf(req.getParameter("sex").toString())+");");
					// ResultSet rsl1=connect.Result("select IDUser from TaiKhoan where Username='"+req.getParameter("username")+"'");
					 String address =req.getParameter("address")+", "+req.getParameter("state")+", "+req.getParameter("city");
					/*if(rsl.next()==true)
						connect.Result("insert into Shop values ('"+req.getParameter("fullname")+"','"+address+"','"+rsl1.getInt(1)+"')");*/
					req.getRequestDispatcher("/Login").forward(req,resp);
				}
				else
				{
					req.getRequestDispatcher("/Register").forward(req,resp);
				}
			}
				
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
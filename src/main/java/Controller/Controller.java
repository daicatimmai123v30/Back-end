package Controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@org.springframework.stereotype.Controller
public class Controller extends HttpServlet{
	
	@RequestMapping("/MyAccount")
	public String MyAccount(ModelMap map,HttpServletRequest req, HttpServletResponse resp,HttpSession session) throws ServletException, IOException {
		Object IDUser= req.getSession().getAttribute("IDUser");
		if(IDUser !=null)
		{
			req.setAttribute("Login","Log Out");
			req.setAttribute("LoginAccess", "/Logout");
		}
			
		else{
			req.setAttribute("Login","Log In");
			req.setAttribute("LoginAccess", "/Login");
		}
		return "MyAccount";
	}
	
	@RequestMapping("/Login")
	public void Login(ModelMap map,HttpServletRequest req, HttpServletResponse resp,HttpSession session) throws ServletException, IOException {
		
		session = req.getSession();
		Object IDUser= session.getAttribute("IDUser");
		if(IDUser!=null)
			resp.sendRedirect("/Zazzle/Home?page=1");
		else
			resp.sendRedirect("/Zazzle/LoginAccess");
	}
	@RequestMapping("LoginAccess")
	public String Login()
	{
		return "Login";
	}
	
	@RequestMapping("/AccountSetting")
	public String AccountSetting (ModelMap map,HttpServletRequest req, HttpServletResponse resp,HttpSession session) throws ServletException, IOException
	{
		
		Object IDUser= req.getSession().getAttribute("IDUser");
		if(IDUser !=null)
		{
			req.setAttribute("Login","Log Out");
			req.setAttribute("LoginAccess", "/Logout");
			
		}
			
		else{
			req.setAttribute("Login","Log In");
			req.setAttribute("LoginAccess", "/Login");
		}
		return "AccountSetting";
	}
	@RequestMapping("/Cart")
	public String Cart(ModelMap map,HttpServletRequest req,HttpServletResponse resp, HttpSession session)throws ServletException, IOException {
		Object IDUser= req.getSession().getAttribute("IDUser");
		if(IDUser !=null)
		{
			req.setAttribute("Login","Log Out");
			req.setAttribute("LoginAccess", "/Logout");
			
		}
			
		else{
			req.setAttribute("Login","Log In");
			req.setAttribute("LoginAccess", "/Login");
		}
		return "Cart";
	}
	@RequestMapping("/Home")
	public String Home(ModelMap map,HttpServletRequest req, HttpServletResponse resp, @RequestParam(name="page", required=true)int page){
		Object IDUser= req.getSession().getAttribute("IDUser");
		if(IDUser !=null)
		{
			req.setAttribute("Login","Log Out");
			req.setAttribute("LoginAccess", "/Logout");
			
		}
			
		else{
			req.setAttribute("Login","Log In");
			req.setAttribute("LoginAccess", "/Login");
		}
		return "Home";
	}
	@RequestMapping("Logout")
	public void Logout(HttpServletRequest req,HttpServletResponse resp, HttpSession session)throws ServletException, IOException 
	{
		session.invalidate();
		resp.sendRedirect("/Zazzle/");
	}
	
	@RequestMapping("/")
	public void Home1(ModelMap map,HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		resp.sendRedirect("/Zazzle/Home?page=1");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter writer= resp.getWriter();
		writer.print("doget");
		writer.close();
	}
	@RequestMapping("Register")
	public void Register(ModelMap map,HttpServletRequest req,HttpServletResponse resp,HttpSession session)throws ServletException, IOException 
	{
		session = req.getSession();
		Object IDUser= session.getAttribute("IDUser");
		if(IDUser!=null)
			resp.sendRedirect("/Zazzle/Home?page=1");
		else
			resp.sendRedirect("/Zazzle/RegisterAccess");
	}
	@RequestMapping("RegisterAccess")
	public String RegisterAccess()
	{
		return "Register";
	}
	
	@RequestMapping("Product")
	public String Product(ModelMap map,HttpServletRequest req, HttpServletResponse resp,HttpSession session) throws ServletException, IOException 
	{
		Object IDUser= req.getSession().getAttribute("IDUser");
		if(IDUser !=null)
		{
			req.setAttribute("Login","Log Out");
			req.setAttribute("LoginAccess", "/Logout");
			
		}
			
		else{
			req.setAttribute("Login","Log In");
			req.setAttribute("LoginAccess", "/Login");
		}
		return "Product";
	}
	@RequestMapping("/Home2")
	public String Home2(HttpServletRequest req, HttpServletResponse resp,@RequestParam(name = "page") String page) {
		return "Test";
	}
	
}

package Controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns={"/Form_Login"})
public class Form_Login extends HttpServlet {
	
	/*@Inject
	private AccountServiceImplement accountService;
	
	public Form_Login(){
		 accountService = new AccountService();
	}
	*/
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*Form_Login test= new Form_Login();
		test.accountService.FindAccountByUsername();
			*/
	}
		
	
}

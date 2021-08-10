package Configure;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.naming.spi.DirStateFactory.Result;

public class SQLServer {

	private String Url= "jdbc:sqlserver://localhost:1433;databaseName=CDIO;integratedSecurity=false;"; 
	
	private String usr="sa";
	private String pass="truongledai123";
	private Connection con=null;
	private Statement ste=null;
	private ResultSet rsl=null;
	public SQLServer()
	{
		if(con==null)
		{
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
				 con=DriverManager.getConnection(Url, usr, pass);
				 
					
			}catch(Exception err){
				err.printStackTrace();
			}
		}
	}
	
	
	public ResultSet ResultStatment(String Query)
	{
		try
		{
			ste=con.createStatement();
			rsl=ste.executeQuery(Query);
		}
		catch (Exception err)
		{
			err.printStackTrace();
		}
		return rsl;
	}
	public void Result(String Query)
	{
		try
		{
			ste=con.createStatement();
			rsl=ste.executeQuery(Query);
		}
		catch (Exception err)
		{
			err.printStackTrace();
		}
		
	}

}

package Dao.Implement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dao.GenaricDao;
import Mapper.RowMapper;
import Model.TaiKhoan;

public class AbstractDao<T> implements GenaricDao<T>{
	public Connection getConnection()  {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String Url= "jdbc:sqlserver://localhost:1433;databaseName=CDIO;integratedSecurity=false;";
			String usr = "sa";
			String pass = "truongledai123";
			return DriverManager.getConnection(Url,usr,pass);
		} catch (ClassNotFoundException| SQLException e) {
			return null;
		}
	}

	@Override
	public  T query(String Sql, RowMapper<T> rowMapper, Object... parameters)
	{
		T results =null;
		Connection connection =null;
		PreparedStatement statement = null;
		setParameter(statement,parameters);
		ResultSet resultset=null;
		try {
			connection= getConnection();
			statement= connection.prepareStatement(Sql);
			resultset=statement.executeQuery();
			while(resultset.next())
			{
				results =(rowMapper.MapRow(resultset));
			}
			return results;
		} catch ( SQLException e) {
			return null;
		}finally{
			try {
				if (connection != null)
					connection.close();
				if (statement != null)
					statement.close();
				if (results != null)
					resultset.close();
			} catch (SQLException e) {
				return null;
			}
		}
	}

	private void setParameter(PreparedStatement statement, Object... parameters) {
		for(int i =0; i<parameters.length;i++)
		{
			Object parameter = parameters[i];
			if(parameter instanceof String){
				
			}
				
		}
		
	}

	
}

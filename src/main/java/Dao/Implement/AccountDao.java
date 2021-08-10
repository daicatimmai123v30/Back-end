package Dao.Implement;

import java.sql.SQLException;

import javax.persistence.Entity;

import Dao.ImplementAccountDao;
import Mapper.AccountMapper;
import Model.TaiKhoan;

public class AccountDao extends AbstractDao<TaiKhoan> implements ImplementAccountDao {
		
	public TaiKhoan FindAccountByUsername(String Username)  {
		String Sql = "select*from Account where Username=?";
		return query(Sql, new AccountMapper());
	}

}

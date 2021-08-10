package Service.Implement;

import Dao.ImplementAccountDao;
import Dao.Implement.AccountDao;
import Model.TaiKhoan;
import Service.AccountServiceImplement;

public class AccountService implements AccountServiceImplement {
	
	private ImplementAccountDao accountDao;
	public AccountService(){
		accountDao= new AccountDao();
	}
	
	public TaiKhoan FindAccountByUsername() {
		return accountDao.FindAccountByUsername("ledai");
	}
	
}

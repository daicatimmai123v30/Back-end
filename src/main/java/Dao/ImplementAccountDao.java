package Dao;

import java.util.List;

import Model.TaiKhoan;

public interface ImplementAccountDao extends GenaricDao<TaiKhoan>{

	public TaiKhoan FindAccountByUsername(String Username);
	

}

package Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.TaiKhoan;

public class AccountMapper implements RowMapper<TaiKhoan> {

	
	public TaiKhoan MapRow(ResultSet resultset) {
		try {
			TaiKhoan taikhoan = new TaiKhoan();
			taikhoan.setIDUser(resultset.getInt("IDUser"));
			taikhoan.setUsername(resultset.getString("Username"));
			taikhoan.setPassword(resultset.getString("Password"));
			taikhoan.setFullName(resultset.getString("FullName"));
			taikhoan.setIdShop(resultset.getInt("IdShop"));
			taikhoan.setIDOrder(resultset.getInt("IDOrder"));
			taikhoan.setBirthday(resultset.getString("Birthday"));
			taikhoan.setSex(resultset.getByte("Sex"));
			taikhoan.setNumberPhone(resultset.getString("NumberPhone"));
			taikhoan.setCity(resultset.getString("City"));
			taikhoan.setState(resultset.getString("State"));
			taikhoan.setAddress(resultset.getString("Address"));
			return taikhoan;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}

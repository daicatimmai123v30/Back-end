package Service;

import org.springframework.stereotype.Service;

import Model.TaiKhoan;

@Service
public interface AccountServiceImplement   {
	TaiKhoan FindAccountByUsername();
}

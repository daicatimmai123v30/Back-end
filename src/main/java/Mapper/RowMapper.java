package Mapper;

import java.sql.ResultSet;

public interface RowMapper<T>{
	T MapRow(ResultSet resultset);
}

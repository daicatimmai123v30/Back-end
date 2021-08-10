package Dao;

import java.util.List;

import Mapper.RowMapper;

public interface GenaricDao<T> {
	T query(String Sql,RowMapper<T> rowMapper, Object... parameters) ;
}

package com.huucuong.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.huucuong.dao.INewDAO;
import com.huucuong.mapper.NewMapper;
import com.huucuong.model.NewModel;

@Repository
public class NewDAO extends AbstractDAO<NewModel> implements INewDAO {
	
	@Override
	public List<NewModel> findAll() {
		StringBuilder sql = new StringBuilder("SELECT * FROM news");
		return query(sql.toString(), new NewMapper());
	}
}

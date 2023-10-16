package com.huucuong.dao.impl;

import java.util.List;

import com.huucuong.dao.ICategoryDAO;
import com.huucuong.mapper.CategoryMapper;
import com.huucuong.model.CategoryModel;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {

	@Override
	public List<CategoryModel> findAll() {
		String sql = "SELECT * FROM category";
		return query(sql, new CategoryMapper());
	}


}

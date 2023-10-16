package com.huucuong.dao;

import java.util.List;

import com.huucuong.model.CategoryModel;

public interface ICategoryDAO extends GenericDAO<CategoryModel> {
	List<CategoryModel> findAll();
	
}

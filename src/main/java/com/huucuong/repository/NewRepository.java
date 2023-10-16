package com.huucuong.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.huucuong.entity.NewEntity;

public interface NewRepository extends JpaRepository<NewEntity, Long>{
	
}

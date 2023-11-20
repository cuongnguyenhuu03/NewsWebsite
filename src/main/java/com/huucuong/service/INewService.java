package com.huucuong.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.huucuong.dto.NewDTO;

public interface INewService {
	List<NewDTO> findAll(Pageable pageable);
	int getTotalItem();
}

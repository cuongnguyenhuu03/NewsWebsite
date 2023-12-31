package com.huucuong.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.huucuong.dto.NewDTO;
import com.huucuong.entity.NewEntity;
import com.huucuong.repository.NewRepository;
import com.huucuong.service.INewService;

@Service
public class NewService implements INewService {

	@Autowired
	private NewRepository newRepository;

	@Override
	public List<NewDTO> findAll(Pageable pageable) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAll(pageable).getContent();
		for(NewEntity item: entities) {
			NewDTO newDTO = new NewDTO();
			newDTO.setTitle(item.getTitle());
			newDTO.setShortDescription(item.getShortDescription());
			models.add(newDTO);
		}
		return models;
	
	}
	
	@Override
	public int getTotalItem() {
		return (int) newRepository.count();
		
	}
}

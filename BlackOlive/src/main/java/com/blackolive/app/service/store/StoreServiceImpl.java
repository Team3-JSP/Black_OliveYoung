package com.blackolive.app.service.store;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blackolive.app.domain.store.StoreDTO;
import com.blackolive.app.mapper.store.StoreMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class StoreServiceImpl implements StoreService {
	private StoreMapper storeMapper;
	
	@Override
	public List<StoreDTO> getStore() {
		return storeMapper.selectAllStore();
	}
}

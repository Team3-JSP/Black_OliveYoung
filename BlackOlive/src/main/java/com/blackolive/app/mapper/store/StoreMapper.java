package com.blackolive.app.mapper.store;

import java.util.List;

import com.blackolive.app.domain.store.StoreDTO;

public interface StoreMapper {
	List<StoreDTO> selectAllStore();
}

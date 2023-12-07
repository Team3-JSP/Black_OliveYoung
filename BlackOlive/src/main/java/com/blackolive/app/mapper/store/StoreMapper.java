package com.blackolive.app.mapper.store;

import java.util.List;

import com.blackolive.app.domain.store.CityDTO;
import com.blackolive.app.domain.store.DistrictDTO;
import com.blackolive.app.domain.store.StoreDTO;

public interface StoreMapper {
	List<CityDTO> selectAllCity(); // 시,도 리스트
	
	List<DistrictDTO> selectAllDistrict(String city_id); // 구 리스트
	
	List<StoreDTO> selectAllStore(); // 매장 리스트
	
	List<StoreDTO> selectStoreList(String city, String district); //
}

package com.blackolive.app.service.store;

import java.util.List;

import com.blackolive.app.domain.store.CityDTO;
import com.blackolive.app.domain.store.DistrictDTO;
import com.blackolive.app.domain.store.StoreDTO;

public interface StoreService {
	List<StoreDTO> getStoreService();
	
	List<CityDTO> getCityService();
	
	List<DistrictDTO> getDistrictService(String city_id);

	List<StoreDTO> getStoreService(String city, String district);

	
}

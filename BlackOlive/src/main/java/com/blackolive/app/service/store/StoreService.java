package com.blackolive.app.service.store;

import java.util.List;

import com.blackolive.app.domain.store.CityDTO;
import com.blackolive.app.domain.store.DistrictDTO;
import com.blackolive.app.domain.store.StoreDTO;

public interface StoreService {
	
	List<StoreDTO> getStoreService(); // 오버로딩
	
	List<CityDTO> getCityService();
	
	List<DistrictDTO> getDistrictService(String city_id);

	List<StoreDTO> getStoreService(String city, String district); // 오버로딩
	
	int udpStoreFavorService(String store_id, String user_id, int clickCheck);

	List<StoreDTO> getInterestShopService(String userId);

	List<StoreDTO> getStoreService(String keyword); // 오버로딩

	List<StoreDTO> getStoreService(String[] tcs, String[] pcs, String keyword); // 오버로딩

	
}

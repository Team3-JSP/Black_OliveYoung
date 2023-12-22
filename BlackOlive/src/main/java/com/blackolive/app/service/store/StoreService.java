package com.blackolive.app.service.store;

import java.util.List;

import com.blackolive.app.domain.productList.ProductContainer;
import com.blackolive.app.domain.store.CityDTO;
import com.blackolive.app.domain.store.DistrictDTO;
import com.blackolive.app.domain.store.StoreDTO;
import com.blackolive.app.domain.store.StoreDetailDTO;

public interface StoreService {
	
	List<StoreDTO> getStoreService(); // 오버로딩
	
	List<CityDTO> getCityService();
	
	List<DistrictDTO> getDistrictService(String city_id);

	List<StoreDTO> getStoreService(String tcs, String pss, String city, String district); // 오버로딩
	
	int udpStoreFavorService(String store_id, String user_id, int clickCheck);

	List<StoreDTO> getInterestShopService(String tcs, String pss, String userId);

	List<StoreDTO> getStoreService(String tcs, String pss, String keyword); // 오버로딩

	List<ProductContainer> getProductNameList(String keyword);

	StoreDetailDTO getStoreDetail(String storeId);

	// List<StoreDTO> getStoreService(String tcs, String pss, String keyword); // 오버로딩

	
}

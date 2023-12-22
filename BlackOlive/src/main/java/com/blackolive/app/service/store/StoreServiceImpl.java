package com.blackolive.app.service.store;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blackolive.app.domain.productList.ProductContainer;
import com.blackolive.app.domain.store.CityDTO;
import com.blackolive.app.domain.store.DistrictDTO;
import com.blackolive.app.domain.store.StoreDTO;
import com.blackolive.app.domain.store.StoreDetailDTO;
import com.blackolive.app.mapper.store.StoreMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class StoreServiceImpl implements StoreService {
	
	//@Autowired
	private StoreMapper storeMapper;
	
	@Override
	public List<StoreDTO> getStoreService() {
		return this.storeMapper.selectAllStore();
	}

	@Override
	public List<CityDTO> getCityService() {
		return this.storeMapper.selectAllCity();
	}

	@Override
	public List<DistrictDTO> getDistrictService(String city_id) {
		return this.storeMapper.selectAllDistrict(city_id);
	}

	@Override
	public List<StoreDTO> getStoreService(String[] tcs, String[] pss, String city, String district) {
		return this.storeMapper.selectStoreList(tcs, pss, city, district);
	}

	//@Transactional(rollbackFor = Exception.class)
	@Override
	public int udpStoreFavorService(String store_id, String user_id, int clickCheck) {
		int rowCount = 0;
		
		this.storeMapper.updateStoreFavorite(store_id, clickCheck);
		
		if(clickCheck == 1) {
			rowCount = this.storeMapper.insertInterestShop(user_id, store_id);
		} else {
			rowCount = this.storeMapper.deleteInterestShop(user_id, store_id);
		}
		
		return rowCount;
	}

	@Override
	public List<StoreDTO> getInterestShopService(String[] tcs, String[] pss, String userId) {
		return this.storeMapper.selectInterestShop(tcs, pss, userId);
	}

	@Override
	public List<StoreDTO> getStoreService(String[] tcs, String[] pss, String keyword) {
		return this.storeMapper.selectStoreKeyword(tcs, pss, keyword);
	}

	@Override
	public List<ProductContainer> getProductNameList(String keyword) {
		return this.storeMapper.selectProductName(keyword);
	}

	@Override
	public StoreDetailDTO getStoreDetail(String storeId) {
		return this.storeMapper.selectOneStoreDetail(storeId);
	}
}

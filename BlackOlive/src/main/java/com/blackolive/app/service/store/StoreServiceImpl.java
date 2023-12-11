package com.blackolive.app.service.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blackolive.app.domain.store.CityDTO;
import com.blackolive.app.domain.store.DistrictDTO;
import com.blackolive.app.domain.store.StoreDTO;
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
	public List<StoreDTO> getStoreService(String tcs, String pss, String city, String district) {
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
		System.out.println("store_id = " + store_id + ", user_id = " + user_id);
		
		return rowCount;
	}

	@Override
	public List<StoreDTO> getInterestShopService(String userId) {
		return this.storeMapper.selectInterestShop(userId);
	}

	@Override
	public List<StoreDTO> getStoreService(String tcs, String pss, String keyword) {
		return this.storeMapper.selectStoreKeyword(tcs, pss, keyword);
	}

//	@Override
//	public List<StoreDTO> getStoreService(String tcs, String pss, String keyword) {
//		return this.storeMapper.selectStoreCondition(tcs, pss, keyword);
//	}
}

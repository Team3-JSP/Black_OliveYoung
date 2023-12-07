package com.blackolive.app.service.store;

import java.util.List;

import org.springframework.stereotype.Service;

import com.blackolive.app.domain.store.CityDTO;
import com.blackolive.app.domain.store.DistrictDTO;
import com.blackolive.app.domain.store.StoreDTO;
import com.blackolive.app.mapper.store.StoreMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class StoreServiceImpl implements StoreService {
	private StoreMapper storeMapper;
	
	@Override
	public List<StoreDTO> getStoreService() {
		return storeMapper.selectAllStore();
	}

	@Override
	public List<CityDTO> getCityService() {
		return storeMapper.selectAllCity();
	}

	@Override
	public List<DistrictDTO> getDistrictService(String city_id) {
		return storeMapper.selectAllDistrict(city_id);
	}

	@Override
	public List<StoreDTO> getStoreService(String city, String district) {
		return storeMapper.selectStoreList(city, district);
	}
}

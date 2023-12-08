package com.blackolive.app.mapper.store;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blackolive.app.domain.store.CityDTO;
import com.blackolive.app.domain.store.DistrictDTO;
import com.blackolive.app.domain.store.StoreDTO;

public interface StoreMapper {
	
	List<CityDTO> selectAllCity(); // 시,도 리스트
	
	List<DistrictDTO> selectAllDistrict(String city_id); // 구 리스트
	
	List<StoreDTO> selectAllStore(); // 매장 리스트
	
	List<StoreDTO> selectStoreList(@Param("city") String city, @Param("district") String district); // 지역으로 검색
	
	int updateStoreFavorite(@Param("storeId") String storeId, @Param("clickCheck") int clickCheck); // 매장 좋아요 수 업데이트
	
	int insertInterestShop(String user_id, String store_id); // 관심 매장 추가
	
	int deleteInterestShop(String user_id, String store_id);  // 관심 매장 삭제

	List<StoreDTO> selectInterestShop(String userId); // 로그인 시 관심매장 리스트

	List<StoreDTO> selectStoreKeyword(String keyword); // 키워드로 매장 검색

	List<StoreDTO> selectStoreCondition(String[] tcs, String[] pcs, String keyword); // 매장 검색 옵션 + 키워드
}

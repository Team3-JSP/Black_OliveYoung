package com.blackolive.app.controller.store;

import java.util.Arrays;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.domain.store.DistrictDTO;
import com.blackolive.app.domain.store.StoreDTO;
import com.blackolive.app.service.store.StoreService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/store")
@AllArgsConstructor
public class StoreAjaxController {
	private StoreService storeService;
	
	@GetMapping("/getDistrict/{city_id}")
	public ResponseEntity<List<DistrictDTO>> getDistrict(@PathVariable String city_id) {
		return new ResponseEntity<List<DistrictDTO>>(this.storeService.getDistrictService(city_id), HttpStatus.OK);
	}
	
	@GetMapping("/getStoreList")
	public ResponseEntity<List<StoreDTO>> getDistrict(String city, String district) {
		return new ResponseEntity<List<StoreDTO>>(this.storeService.getStoreService(city, district), HttpStatus.OK);
	}
	
	@GetMapping("/getStoreKeyword")
	public ResponseEntity<List<StoreDTO>> getStoreKeyword(String keyword) {
		return new ResponseEntity<List<StoreDTO>>(this.storeService.getStoreService(keyword), HttpStatus.OK);
	}
	
	@GetMapping("/getStoreCondition")
	public ResponseEntity<List<StoreDTO>> getStoreCondition(@RequestBody String[] tcs, String[] pcs, String keyword) {
		ResponseEntity<List<StoreDTO>> rett = new ResponseEntity<List<StoreDTO>>(this.storeService.getStoreService(tcs, pcs, keyword), HttpStatus.OK);
		System.out.println("tsc : " + Arrays.toString(tcs) + ", pcs : " + Arrays.toString(pcs) + ", keyword : " + keyword);
		return rett;
	}
	
	@PostMapping(value="/setStoreFavorite", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> setFavorite(String storeId, String userId, Integer clickCheck) {
		return this.storeService.udpStoreFavorService(storeId, userId, clickCheck) == 1
				? new ResponseEntity<String>("success", HttpStatus.OK) 
				: new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@PostMapping("/getInterestShopList")
	public ResponseEntity<List<StoreDTO>> getInterestShop(String userId) {
		return new ResponseEntity<List<StoreDTO>>(this.storeService.getInterestShopService(userId), HttpStatus.OK);
	}
}

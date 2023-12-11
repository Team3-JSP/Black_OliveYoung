package com.blackolive.app.controller.store;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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
	public ResponseEntity<List<StoreDTO>> getDistrict(String[] tcs, String[] pss, String city, String district) {
		return new ResponseEntity<List<StoreDTO>>(this.storeService.getStoreService(String.join(",", tcs), String.join(",", pss), city, district), HttpStatus.OK);
	}
	
	@GetMapping("/getStoreKeyword")
	public ResponseEntity<List<StoreDTO>> getStoreKeyword(String[] tcs, String[] pss, String keyword) {
		return new ResponseEntity<List<StoreDTO>>(this.storeService.getStoreService(String.join(",", tcs), String.join(",", pss), keyword), HttpStatus.OK);
	}
	
	/*
	@GetMapping("/getStoreCondition")
	public ResponseEntity<List<StoreDTO>> getStoreCondition(String[] tcs, String[] pss, String keyword) {
		return new ResponseEntity<List<StoreDTO>>(this.storeService.getStoreService(String.join(",", tcs), String.join(",", pss), keyword), HttpStatus.OK);
	}
	*/
	
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

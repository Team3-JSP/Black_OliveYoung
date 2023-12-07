package com.blackolive.app.controller.store;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
		return new ResponseEntity<List<DistrictDTO>>(storeService.getDistrictService(city_id), HttpStatus.OK);
	}
	
	@GetMapping("/getStoreList")
	public ResponseEntity<List<StoreDTO>> getDistrict(String city, String district) {
		System.out.println("city : " + city + ", district : " + district);
		return new ResponseEntity<List<StoreDTO>>(storeService.getStoreService(city, district), HttpStatus.OK);
	}
}

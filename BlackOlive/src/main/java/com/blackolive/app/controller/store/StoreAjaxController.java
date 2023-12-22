package com.blackolive.app.controller.store;

import java.security.Principal;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.domain.productList.ProductContainer;
import com.blackolive.app.domain.store.DistrictDTO;
import com.blackolive.app.domain.store.StoreDTO;
import com.blackolive.app.domain.store.StoreDetailDTO;
import com.blackolive.app.service.store.StoreService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/store")
@AllArgsConstructor
public class StoreAjaxController {
	private StoreService storeService;
	
	@GetMapping("/getDistrict/{city_id}")
	public ResponseEntity<List<DistrictDTO>> getDistrict(@PathVariable String city_id) {
		return new ResponseEntity<>(this.storeService.getDistrictService(city_id), HttpStatus.OK);
	}
	
	@GetMapping("/getStoreList")
	public ResponseEntity<List<StoreDTO>> getDistrict(String[] tcs, String[] pss, String city, String district) {
		return new ResponseEntity<>(this.storeService.getStoreService(tcs, pss, city, district), HttpStatus.OK);
	}
	
	@GetMapping("/getStoreKeyword")
	public ResponseEntity<List<StoreDTO>> getStoreKeyword(String[] tcs, String[] pss, String keyword) {
		return new ResponseEntity<>(this.storeService.getStoreService(tcs, pss, keyword), HttpStatus.OK);
	}
	
	@PostMapping("/setStoreFavorite")
	public ResponseEntity<String> setFavorite(String storeId, Integer clickCheck, Principal principal) throws Exception {
		return this.storeService.udpStoreFavorService(storeId, principal.getName(), clickCheck) == 1
				? new ResponseEntity<>("success", HttpStatus.OK) 
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@PostMapping("/getInterestShopList")
	public ResponseEntity<List<StoreDTO>> getInterestShop(String[] tcs, String[] pss, Principal principal) {
		return new ResponseEntity<>(this.storeService.getInterestShopService(tcs, pss, principal.getName()), HttpStatus.OK);
	}
	
	@GetMapping("/getProductName/{keyword}")
	public ResponseEntity<List<ProductContainer>> getProductName(@PathVariable String keyword) {
		return new ResponseEntity<>(this.storeService.getProductNameList(keyword), HttpStatus.OK);
	}
	
	@GetMapping("/getStoreDetail")
	public ResponseEntity<StoreDetailDTO> getStoreDetail(String storeId) {
		return new ResponseEntity<>(this.storeService.getStoreDetail(storeId), HttpStatus.OK);
	}
}

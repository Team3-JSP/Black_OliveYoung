package com.blackolive.app.domain.store;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StoreDTO {
	private String storeId;
	private String districtId;
	private String storeName;
	private String storeTel;
	private String storeAddress;
	private String storeDirection;
	private String storeParking;
	private String storeSignificant;
	private int storeFavorite;
	private double lat;
	private double lng;
	private String weekday;
	private String saturday;
	private String sunday;
	private String holiday;
}

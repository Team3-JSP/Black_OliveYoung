package com.blackolive.app.domain.store;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StoreDetailDTO {
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
	
	private List<StoreCategoryDTO> storeCategory;
	private List<OliveServiceDTO> oliveService;
	private List<StoreThumbnailDTO> storeThumbnail;
}

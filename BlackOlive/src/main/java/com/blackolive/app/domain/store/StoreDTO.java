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
	private String store_id;
	private String district_id;
	private String store_name;
	private String store_tel;
	private String store_address;
	private String store_direction;
	private String store_parking;
	private String store_significant;
	private int store_favorite;
	private double lat;
	private double lng;
	private String weekday;
	private String saturday;
	private String sunday;
	private String holiday;
}

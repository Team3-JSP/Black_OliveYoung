package com.blackolive.app.domain.basket;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BasketDTO {

	private String productDisplaySrc;
    private String brandName;
    private String brandId;
    private String productDisplayName;
    private int minPrice;
    private int categoryLargeId;
    private int categoryMidId;
    private int categorySmallId;
    private int afterPrice;
    private String productDisplayId;
    private String productId;
    private String couponFlag;
    private String discountFlag;
    private String presentFlag;
    private String todayPickupFlag;
    private int orderCount;
    private int productStock;
    private int productDisplayLike;
    private Date productDisplayRegDate;
	
}

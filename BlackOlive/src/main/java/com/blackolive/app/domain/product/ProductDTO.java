package com.blackolive.app.domain.product;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDTO {

	private String productDisplaySrc;
    private String brandName;
    private String brandId;
    private String productDisplayName;
    private int minPrice;
    private String categoryLargeId;
    private String categoryMidId;
    private String categorySmallId;
    private int afterPrice;
    private String productDisplayId;
    private String productId;
    private String couponflag;
    private String discountflag;
    private String presentflag;
    private String todayPickupflag;
    private int orderCnt;
    private int productStock;
    private int productDisplayLike;
    private Date productDisplayRegDate;
    private String productName;
	
}

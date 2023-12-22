package com.blackolive.app.domain.adminpage;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDTO {
	
	private String productId;
	private String productDisplayId;
	private String categorySmallId;
	private String productName;
	private int productPrice;
	private int productStock;

}

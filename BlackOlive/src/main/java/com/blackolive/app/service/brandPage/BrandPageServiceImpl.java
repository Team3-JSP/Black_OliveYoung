package com.blackolive.app.service.brandPage;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blackolive.app.domain.brandPage.BrandPageDTO;
import com.blackolive.app.mapper.brandPage.BrandPageMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BrandPageServiceImpl implements BrandPageService  {

	@Autowired
	private BrandPageMapper brandpageMapper;

	@Override
	public BrandPageDTO getBrands(String brandId) throws ClassNotFoundException, SQLException {
		return brandpageMapper.getBrands(brandId);
	}

	@Override
	public List<BrandPageDTO> getSortBrands(String brandId, String sort, String dispcatno)
			throws ClassNotFoundException, SQLException {
		return brandpageMapper.getSortBrands(brandId, dispcatno, sort);
	}

	@Override
	public String createBrandPageHtml(String brandId, String sort, String dispcatno 
			)throws Exception {
 
		
		log.info("> BRAND PAGE HTML......");
		
		StringBuilder html = new StringBuilder();
	    List<BrandPageDTO> brandPageList = getSortBrands(brandId, sort, dispcatno);
	    
        System.out.println(" brandPageList.size(): " + brandPageList );
		for ( int i = 0; i < brandPageList.size(); i++) {
			BrandPageDTO product = brandPageList.get(i);
			
			System.out.println(">DDD");
			
		      if (i % 4 == 0) {
		          
		            html.append("<div class=\"row\">");
		        }

		        html.append("<div class=\"prod\">");
		        html.append("<a href=\"#\" class=\"thumb goodsList\" data-ref-goodsno=\"" + product.getProductDisplayId() + "\">\r\n");
		        html.append("<img src=\"" + product.getProductDisplaySrc() + "\" alt=\"" + product.getProductDisplayName() + "\" class=\"pic-thumb\" onerror=\"common.errorImg(this);\">\r\n");
		        html.append("<span class=\"flag-badge best\">베스트</span>");
		        html.append("</a>");
		        html.append("<div class=\"prod-info\">");
		        html.append("<div class=\"prod-brand\"><strong class=\"exclusive\"></strong></div>");
		        html.append("<a href=\"#\" class=\"goodsList\" data-ref-goodsno=\"" + product.getProductDisplayId() + "\">\r\n");
		        html.append("<span class=\"prod-name double-line\">" + product.getProductDisplayName() + "</span>\r\n");
		        html.append("</a>");
		        html.append("</div>");
		        html.append("<div class=\"prod-func\">");
		        html.append("<button type=\"button\" class=\"favorite\" data-ref-goodsno=\"" + product.getProductDisplayId() + "\">\r\n");
		        html.append("<span>찜하기</span>");
		        html.append("</button>");
		        html.append("<button type=\"button\" class=\"cart\" onclick=\"common.gf_regCart(this); return false;\" data-goods-no=\"" + product.getProductDisplayId() + "\" data-item-no=\"001\">\r\n");
		        html.append("<span>장바구니</span>");
		        html.append("</button>");
		        html.append("</div>\r\n");
		        html.append("</div>\r\n");

		        if ((i + 1) % 4 == 0 || (i + 1) == brandPageList.size()) {
		            html.append("</div>");
		        }
		    }
		return html.toString();
	
	}
	



	@Override
	public List<BrandPageDTO> getsellProduct(String brandId, String categoryId)
			throws ClassNotFoundException, SQLException {
		return brandpageMapper.getsellProduct(brandId, categoryId);
	}

	@Override
	public List<BrandPageDTO> getReviews(String brandId) throws ClassNotFoundException, SQLException {
		return brandpageMapper.getReviews(brandId);
	}





}

package com.blackolive.app.service.brandPage;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
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

	  @Autowired
	    private Environment environment; // Environment 객체 주입

	    private int pageSize; // 페이지당 아이템 수

	    // 생성자를 통해 프로퍼티 값 주입
	    @Autowired
	    public BrandPageServiceImpl(Environment environment) {
	        String pageSizeProperty = environment.getProperty("page.size");
	        
	        if (pageSizeProperty != null) {
	            try {
	                this.pageSize = Integer.parseInt(pageSizeProperty);
	            } catch (NumberFormatException e) {
	                // Handle the exception as needed, e.g., log an error
	                log.error("Failed to parse page.size property as an integer.", e);
	                this.pageSize = 8;  // Set a default value or handle it in another way
	            }
	        } else {
	            // Handle the case when the property is null
	            log.error("page.size property is null.");
	            this.pageSize = 8;  // Set a default value or handle it in another way
	        }
	    }
	 
	   @Override
	    public List<BrandPageDTO> pagingList(String brandId, String sort, String dispcatno, int page) throws Exception {
	        log.info("BrandPageServiceImpl pagingList call...");

	        try {
	            // 페이징 처리를 위한 추가 로직
	            int startRow = (page - 1) * pageSize + 1; // 시작 행
	            int endRow = startRow + pageSize - 1; // 끝 행

	            List<BrandPageDTO> brandPageList = brandpageMapper.pagingList(brandId, sort, dispcatno, startRow, endRow);

	     
	            
	            return brandPageList;
	        } catch (Exception e) {
	            log.error("Error in pagingList: " + e.getMessage(), e);
	            throw new Exception("Failed to retrieve paged brand page list.", e);
	        }
	    }
	   
	   @Override
	    public int getTotalPages(String brandId, String sort, String dispcatno) {
	        try {
	            int totalRecords = brandpageMapper.getTotalRecords(brandId, sort, dispcatno);
	            return (int) Math.ceil((double) totalRecords / pageSize);
	        } catch (Exception e) {
	            log.error("Error in getTotalPages: " + e.getMessage(), e);
	            return 0; // 예외 처리 로직을 추가하여 실패 시 기본값을 반환하도록 수정할 수 있습니다.
	        }
	    }
	   
	@Override
	public List<BrandPageDTO> getSortBrands(String brandId, String sort, String dispcatno
			, int numOfItems, int pageNumber, int pageSize )
			throws ClassNotFoundException, SQLException {
		return brandpageMapper.getSortBrands(brandId, dispcatno, sort, numOfItems, pageNumber,
	             pageSize );
	}

	@Override
	public String createBrandPageHtml(String brandId, String sort, String dispcatno, int numOfItems
			,int pageNumber, int pageSize)throws Exception {
 
		
		log.info("> BRAND PAGE HTML......");
		
		StringBuilder html = new StringBuilder();
	    List<BrandPageDTO> brandPageList = getSortBrands(brandId, sort, dispcatno, numOfItems, pageNumber, pageSize);
	    
        System.out.println(" brandPageList.size(): " + brandPageList );
       // BrandPageDTO product = new BrandPageDTO();   
        try {
        	
        	 html.append("<input type=\"hidden\" id=\"strList\" name=\"strList\" value=\"\"/>\r\n");
        	 html.append( "<input type=\"hidden\" id=\"lgcGoodsList\" name=\"lgcGoodsList1\" value=\"\"/>\r\n");
        	 html.append( "<input type=\"hidden\" id=\"idx\" name=\"idx\" value=\"1\"/>\r\n");
        	 html.append( "<input type=\"hidden\" id=\"totCntFmt\" name=\"totCntFmt\" value=\"14\"/>\r\n");
        	 html.append( "<input type=\"hidden\" id=\"goodsTrackingCd\" name=\"goodsTrackingCd\" value=\"\"/>\r\n");
        	 
        	 
        for ( int i = 0; i < brandPageList.size(); i++) {
			BrandPageDTO product = brandPageList.get(i);
			
			System.out.println(">DDD"+brandPageList);
				
			  
		      if (i % 4 == 0) {
		    	   if( i != 0 )  html.append( "</ul>\r\n");
		           //  html.append("<div class=\"row\">");
		            System.out.println(">aaa");
		            
		            html.append( "<ul class=\"prod-list goodsProd\">\r\n");
		        }



 html.append( "    <li data-goods-idx=\"1\">\r\n");
 html.append( "        <div class=\"prod\">\r\n");
 html.append( "            <a href=\"https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo="+ product.getProductDisplayId() +"&dispCatNo=9000002&trackingCd=BrandA001436_PROD&t_page=브랜드관&t_click=전체상품_상품상세&t_number=1\" name=\"BrandA001436_PROD\" class=\"thumb goodsList\" data-ref-goodsNo=\"" + product.getProductDisplayId()+ "\" data-ref-dispCatNo=\"9000002\" data-ref-itemNo=\"001\">\r\n");
 html.append( "                <img src=\"" + product.getProductDisplaySrc() + "\" alt=\"[2023어워즈] 구달 청귤 비타C 잡티케어 세럼 50ml 어워즈 한정기획 (50ml+50ml리필)\" class=\"pic-thumb\" onerror=\"common.errorImg(this);\">\r\n");
 html.append( "                <span class=\"flag-badge best\">베스트</span>\r\n");
 html.append( "            </a>\r\n");
 html.append( "            <div class=\"prod-info\">\r\n");
 html.append( "                <div class=\"prod-brand\">\r\n");
 html.append( "                    <strong class=\"exclusive\"></strong>\r\n");
 html.append( "                </div>\r\n");
 html.append( "                <a href=\"https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000192385&dispCatNo=9000002&trackingCd=BrandA001436_PROD&t_page=브랜드관&t_click=전체상품_상품상세&t_number=1\" class=\"goodsList\" data-ref-goodsNo=\"A000000192385\" data-ref-dispCatNo=\"9000002\" data-ref-itemNo=\"001\">\r\n");
 html.append( "                    <span class=\"prod-name double-line\">"+ product.getProductDisplayName() +"</span>\r\n");
 html.append( "                </a>\r\n");
 html.append( "                <div class=\"price-info\">\r\n");
 html.append( "                    <div class=\"discount\">\r\n");
 html.append( "                        <span class=\"origin\"></span>\r\n");
 html.append( "                    </div>\r\n");
 html.append( "                    <div class=\"price\">\r\n");
 html.append( "                        <strong class=\"total\">\r\n");
 html.append("                            " + String.format("%,d", product.getAfterPrice()) + "<span class=\"won\">원</span>\r\n");
 html.append( "                        </strong>\r\n");
 html.append( "                        <span class=\"oneday\">오늘드림</span>\r\n");
 html.append( "                    </div>\r\n");
 html.append( "                    <div class=\"rating\">\r\n");
 html.append( "                        <span class=\"point\">4.8</span>\r\n");
 html.append( "                        <span class=\"num\">(999+)</span>\r\n");
 html.append( "                    </div>\r\n");
 html.append( "                    <div class=\"rating_type\">\r\n");
 html.append( "                        <div class=\"rating_point star5\">\r\n");
 html.append( "                            <span class=\"oyblind\">별점 5점 만점에 4.8점</span>\r\n");
 html.append( "                        </div>\r\n");
 html.append( "                        <span>(999+)</span>\r\n");
 html.append( "                    </div>\r\n");
 html.append( "                </div>\r\n");
 html.append( "                <div class=\"flags\">\r\n");
 html.append( "                    <span class=\"flag sale\">세일</span>\r\n");
 html.append( "                    <span class=\"flag coupon\">쿠폰</span>\r\n");
 html.append( "                </div>\r\n");
 html.append( "            </div>\r\n");
 html.append( "            <div class=\"prod-func\">\r\n");
 html.append( "                <button type=\"button\" class=\"favorite\" data-ref-goodsNo=\"A000000192385\">\r\n");
 html.append( "                    <span>찜하기</span>\r\n");
 html.append( "                </button>\r\n");
 html.append( "                <button type=\"button\" class=\"cart\" onclick=\"common.gf_regCart(this); return false;\" data-goods-no=\"A000000192385\" data-item-no=\"001\">\r\n");
 html.append( "                    <span>장바구니</span>\r\n");
 html.append( "                </button>\r\n");
 html.append( "            </div>\r\n");
 html.append( "        </div>\r\n");
 html.append( "    </li>\r\n");
        		
        		

		    }
        } catch (Exception e) {
            
            return "";
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


	@Override
	public List<BrandPageDTO> pagingList(String brandId, String sort, String dispcatno, int startRow, int endRow)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}





}
package com.blackolive.app.controller.brandPage;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.blackolive.app.domain.brandPage.BrandPageDTO;
import com.blackolive.app.service.brandPage.BrandPageService;

import lombok.AllArgsConstructor;
import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping
@Log4j
public class BrandPageAjaxController {

    private final BrandPageService brandPageService;

    @Autowired
    public BrandPageAjaxController(BrandPageService brandPageService) {
        this.brandPageService = brandPageService;
    }

    @GetMapping("/getSortBrands")
    @ResponseBody
    public ResponseEntity<String> getSortBrands(
            @RequestParam("brandId") String brandId,
            @RequestParam String sort,
            @RequestParam String dispcatno) {
        log.info(">brandId:" + brandId);

        try {
            List<BrandPageDTO> brandList = brandPageService.getSortBrands(brandId, sort, dispcatno);
            String brandPageHtml = brandPageService.createBrandPageHtml(brandId, sort,dispcatno);
            return new ResponseEntity<>(brandPageHtml, HttpStatus.OK);
        } catch (Exception e) {
            log.error("에러: " + e.getMessage());
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}




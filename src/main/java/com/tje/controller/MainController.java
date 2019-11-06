package com.tje.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.tje.service.CateService;
import lombok.Setter;

// 테마 및 지역별 컨트롤러
@Controller
public class MainController {

	@Setter(onMethod_ = { @Autowired })
	private CateService cateservice;

	// 쇼핑 카테고리 페이지
	@RequestMapping({ "/shopping/{contentTypeId}/{areaCode}",
			"/shopping/{contentTypeId}/{areaCode}/{pageNo}/{numOfRows}/{totalCount}" })
	public ModelAndView selectShopping(@PathVariable("contentTypeId") String contentTypeId,
			@PathVariable("areaCode") String areaCode,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") String pageNo,
			@RequestParam(value = "numOfRows", required = false, defaultValue = "15") String numOfRows,
			@RequestParam(value = "totalCount", required = false, defaultValue = "30") String totalCount) {

		ModelAndView view = new ModelAndView();
		view.setViewName("includes/AreaBaseCategory");
		view.addObject("CateList", cateservice.showCategory(contentTypeId, areaCode, pageNo, numOfRows, totalCount));
		return view;

	}

	// 음식점 카테고리 페이지
	@RequestMapping({ "/restaurant/{contentTypeId}/{areaCode}",
			"/restaurant/{contentTypeId}/{areaCode}/{pageNo}/{numOfRows}/{totalCount}" })
	public ModelAndView selectRestaurant(@PathVariable("contentTypeId") String contentTypeId,
			@PathVariable("areaCode") String areaCode,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") String pageNo,
			@RequestParam(value = "numOfRows", required = false, defaultValue = "15") String numOfRows,
			@RequestParam(value = "totalCount", required = false, defaultValue = "30") String totalCount) {

		ModelAndView view = new ModelAndView();
		view.setViewName("includes/AreaBaseCategory");
		view.addObject("CateList", cateservice.showCategory(contentTypeId, areaCode, pageNo, numOfRows, totalCount));
		return view;

	}

	// 랜드마크 카테고리 페이지
	@RequestMapping({ "/landmark/{contentTypeId}/{areaCode}",
			"/landmark/{contentTypeId}/{areaCode}/{pageNo}/{numOfRows}/{totalCount}" })
	public ModelAndView selectLandmark(@PathVariable("contentTypeId") String contentTypeId,
			@PathVariable("areaCode") String areaCode,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") String pageNo,
			@RequestParam(value = "numOfRows", required = false, defaultValue = "15") String numOfRows,
			@RequestParam(value = "totalCount", required = false, defaultValue = "30") String totalCount) {

		ModelAndView view = new ModelAndView();
		view.setViewName("includes/AreaBaseCategory");
		view.addObject("CateList", cateservice.showCategory(contentTypeId, areaCode, pageNo, numOfRows, totalCount));
		return view;

	}

	// 숙박 카테고리 페이지
	@RequestMapping({ "/hotel/{contentTypeId}/{areaCode}",
			"/hotel/{contentTypeId}/{areaCode}/{pageNo}/{numOfRows}/{totalCount}" })
	public ModelAndView selectHotel(@PathVariable("contentTypeId") String contentTypeId,
			@PathVariable("areaCode") String areaCode,
			@RequestParam(value = "pageNo", required = false, defaultValue = "1") String pageNo,
			@RequestParam(value = "numOfRows", required = false, defaultValue = "15") String numOfRows,
			@RequestParam(value = "totalCount", required = false, defaultValue = "30") String totalCount) {

		ModelAndView view = new ModelAndView();
		view.setViewName("includes/AreaBaseCategory");
		view.addObject("CateList", cateservice.showCategory(contentTypeId, areaCode, pageNo, numOfRows, totalCount));
		return view;

	}

	// 행사 카테고리 페이지
	@RequestMapping({ "/play/{contentTypeId}/{areaCode}",
			"/play/{contentTypeId}/{areaCode}/{pageNo}/{numOfRows}/{totalCount}" })
	public ModelAndView selectPlay(@PathVariable("contentTypeId") String contentTypeId,
			@PathVariable("areaCode") String areaCode,
			@RequestParam(value = "pageno", required = false, defaultValue = "1") String pageNo,
			@RequestParam(value = "numOfRows", required = false, defaultValue = "15") String numOfRows,
			@RequestParam(value = "totalCount", required = false, defaultValue = "50") String totalCount) {

		ModelAndView view = new ModelAndView();
		view.setViewName("includes/AreaBaseCategory");
		view.addObject("CateList", cateservice.showCategory(contentTypeId, areaCode, pageNo, numOfRows, totalCount));
		return view;
	}

	// 카테고리 페이지 페이징
	@RequestMapping("/page")
	public ModelAndView jumpPage(@RequestParam("contentTypeId") String contentTypeId,
			@RequestParam("areaCode") String areaCode,
			@RequestParam(value = "pageNo", required = false, defaultValue = "2") String pageNo,
			@RequestParam(value = "numOfRows", required = false, defaultValue = "15") String numOfRows,
			@RequestParam(value = "totalCount", required = false, defaultValue = "30") String totalCount) {

		ModelAndView view = new ModelAndView();
		view.setViewName("includes/AreaBaseCategory");
		view.addObject("CateList", cateservice.showCategory(contentTypeId, areaCode, pageNo, numOfRows, totalCount));
		view.addObject("page", cateservice.pageno(contentTypeId, areaCode, pageNo, numOfRows));
		return view;

	}
}
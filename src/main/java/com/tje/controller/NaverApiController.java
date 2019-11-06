package com.tje.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tje.service.NaverApiService;

import lombok.Setter;

//네이버 API 컨트롤러
@Controller
@RequestMapping("naversearch")
public class NaverApiController {

	@Setter(onMethod_ = { @Autowired })
	private NaverApiService naverApiService;

	// 네이버 블로그 파싱 결과
	@GetMapping(value = "/blogandlocal")
	public ModelAndView naverBlogApiSearch(
			@RequestParam(value = "userSearchKeyword", required = false, defaultValue = "여행지추천") String search_word,
			@RequestParam(value = "display", required = false, defaultValue = "6") String display,
			@RequestParam(value = "sort", required = false, defaultValue = "sim") String sort) {
		ModelAndView view = new ModelAndView();
		view.setViewName("includes/searchResult");
		view.addObject("blogSearch", naverApiService.blogNaverApiService(search_word, display, sort));
		view.addObject("localSearch", naverApiService.localSearchNaverApiService(search_word, display, sort));

		return view;
	}

	// 맛집 및 관광지 정보 파싱 결과
	@GetMapping(value = "/localdetail")
	public ModelAndView naverLocalSearch(
			@RequestParam(value = "userSearchKeyword", required = false, defaultValue = "서울맛집") String search_word,
			@RequestParam(value = "display", required = false, defaultValue = "30") String display,
			@RequestParam(value = "sort", required = false, defaultValue = "random") String sort) {
		ModelAndView view = new ModelAndView();
		view.setViewName("includes/searchResult");
		return view;
	}

}

package com.tje.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tje.service.DetailService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
// 상세정보 컨트롤러
@Controller
@Log4j
public class DetailController {

	@Setter(onMethod_ = { @Autowired })
	private DetailService service;
    
	// 테마 및 지역 선택 후 보여주는 카테고리 페이지에서 항목별 상세정보 보여주기
	@RequestMapping(value = "/detailCommon", method = RequestMethod.GET)
	public ModelAndView getDetailCommon(HttpServletRequest request) {
		String contentTypeId = request.getParameter("contentTypeId");
		String contentId = request.getParameter("contentId");
		log.info("상세정보: " + contentTypeId + contentId);
		ModelAndView view = new ModelAndView();
		view.setViewName("detail/detailCommon");
		view.addObject("detailCommonVO", this.service.getDetailCommon(contentTypeId, contentId));
		view.addObject("imageVO", this.service.getDetailImage(contentTypeId, contentId));
		view.addObject("introVO", this.service.getDetailIntro(contentTypeId, contentId));
		return view;
	}
}

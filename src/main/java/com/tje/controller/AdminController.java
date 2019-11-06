package com.tje.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tje.domain.AdminVO;
import com.tje.service.AdminService;
import com.tje.service.NonMembersService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

// [관리자 Controller]
@Controller
@Log4j
public class AdminController {
	@Setter(onMethod_ = { @Autowired })
	private NonMembersService nonMembersService;
	@Setter(onMethod_ = { @Autowired })
	private AdminService adminService;
	AdminVO adminVO = new AdminVO();

	// 관리자 로그인 여부 확인
	@GetMapping("/adminLogin")
	public ModelAndView checkAdminLoggedin() {
		ModelAndView view = new ModelAndView();
		if (adminVO.getLoginflag() == 1) {
			return dataTable();
		} else {
			view.setViewName("admin/adminLogin");
		}
		return view;
	}

	// 관리자 로그인 하기
	@PostMapping("/adminLogin")
	@ResponseBody
	public AdminVO adminLogin(@RequestParam("adminname") String adminname,
			@RequestParam("adminpassword") String adminpassword, HttpSession loginSession) {
		if (adminService.loginCheck(adminname, adminpassword) >= 1) {
			adminVO.setLoginflag(1);
			log.info("관리자 로그인 성공");
		} else {
			adminVO.setLoginflag(0);
		}
		return adminVO;
	}

	// 관리자 로그아웃
	@GetMapping("/adminLogout")
	public ModelAndView adminLogout() {
		adminVO.setLoginflag(0);
		ModelAndView view = new ModelAndView();
		view.addObject("msg", "관리자 로그아웃 성공.");
		view.setViewName("admin/adminLogout");
		log.info("관리자 로그아웃 성공");
		return view;
	}

	// 회원 목록 및 사용자 검색 키워드 확인 페이지
	@RequestMapping("/dataTable")
	public ModelAndView dataTable() {
		ModelAndView view = new ModelAndView();
		view.setViewName("admin/adminPage");
		view.addObject("nonSigninSearchList", nonMembersService.getSearchList());
		view.addObject("member", adminService.getList());
		log.info("회원 및 검색어 목록으로 이동 성공");
		log.info("회원 및 검색어 목록 : \n" + view);
		return view;
	}
}

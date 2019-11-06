package com.tje.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tje.domain.MemberVO;
import com.tje.service.MemberService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

// 회원 Controller
@Controller
@Log4j

public class MemberController {

	@Setter(onMethod_ = { @Autowired })
	private MemberService memberService;
	MemberVO memberVO = new MemberVO();

	// 회원가입 페이지로 이동
	@GetMapping("/register")
	public String movetoRegister() {
		log.info("회원가입 페이지로 이동");
		return "member/memberRegister";
	}

	// 아이디 중복 확인하기
	@PostMapping("/checkid")
	@ResponseBody
	public MemberVO idDoubleCheck(@RequestParam("username") String username) {
		if (memberService.idDoubleCheck(username) == 0) {
			memberVO.setLoginflag(0);
			log.info("동일한 회원아이디 없음");
		} else {
			memberVO.setLoginflag(1);
			log.info("동일한 회원아이디 있음");
		}
		return memberVO;
	}

	// 회원가입 하기
	@PostMapping("/memregister")
	public ModelAndView memberRegister(MemberVO memberVO) {
		memberService.insertMember(memberVO);
		ModelAndView view = new ModelAndView();

		view.addObject("registerSuccess", "회원가입에 성공하였습니다.");
		view.setViewName("member/memberRegisterSuccess");
		return view;
	}

	@GetMapping("/memberLogin")
	public ModelAndView loginInput(HttpServletRequest request) {
		// 로그인이 되어 있는지 먼저 확인
		ModelAndView view = new ModelAndView();
		Object username = request.getSession().getAttribute("username");

		if (username != null) {
			view.addObject("msg", "로그인된 상태입니다.");
			view.setViewName("member/memberLoginSuccess");
		} else {
			view.setViewName("member/memberLogin");
		}
		return view;
	}

	@PostMapping("/memberLogin")
	public ModelAndView memberLogin(@RequestParam("username") String username,
			@RequestParam("userpassword") String userpassword, HttpServletRequest request) {
		log.info("회원아이디: " + username + "회원비밀번호: " + userpassword);
		ModelAndView view = new ModelAndView();
		if (memberService.loginCheck(username, userpassword) >= 1) {
			request.getSession().setAttribute("username", username);
			request.getSession().setAttribute("userpassword", userpassword);
			// 세션 유지 시간
			request.getSession().setMaxInactiveInterval(60 * 30);
			view.addObject("msg", "로그인에 성공하였습니다.");
			view.setViewName("member/memberLoginSuccess");

		} else {
			view.addObject("msg", "아이디와 비밀번호가 올바르지 않습니다.");
			view.setViewName("member/memberLogin");
		}
		return view;
	}

	@GetMapping("/memberLogout")
	public ModelAndView memberLogout(HttpServletRequest request) {
		request.getSession().removeAttribute("username");
		ModelAndView view = new ModelAndView();
		view.addObject("msg", "로그아웃 되었습니다.");
		view.setViewName("member/memberLogout");
		return view;
	}

	// 사용자가 찜한 리스트를 보여주는 페이지로 이동
	@GetMapping("/travellist")
	public String showSelectList() {

		return "member/travelList";
	}

	@GetMapping("/addtotravellist")
	public ModelAndView addtodiary(@RequestParam("contenttypeid") String contenttypeid,
			@RequestParam("firstimage") String firstimage, @RequestParam("title") String title,
			@RequestParam("contentid") String contentid, @RequestParam("username") String username) {

		log.info(contenttypeid + "\n" + title + "\n" + firstimage + "\n" + contentid + "\n" + username);

		memberService.insertCart(contenttypeid, firstimage, title, contentid, username);
		ModelAndView view = new ModelAndView();

		view.addObject("list", memberService.list(username));
		view.setViewName("member/travelList");
		return view;
	}

}

package com.tje.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tje.domain.BoardVO;
import com.tje.domain.PageDTO;
import com.tje.domain.Paging;
import com.tje.service.BoardService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

// [여행후기 Controller]
@Controller
@Log4j
@RequestMapping("/comment/*")
public class BoardController {
	@Setter(onMethod_ = { @Autowired })
	private BoardService service;

	// 여행후기 목록 페이지
	@GetMapping("/list")
	public String list(Model model, Paging page) {
		model.addAttribute("list", service.getList(page));
		model.addAttribute("pageMaker", new PageDTO(page, service.getTotalCount(page)));
		model.addAttribute("count", service.boardCount());
		log.info("여행후기 목록 출력: \n" + model);
		return "member/userComment";
	}

	// 여행후기 등록 페이지
	@GetMapping("/register")
	public String register() {
		return "member/userCommentRegister";
	}

	// 여행후기 등록하기
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		service.register(board);
		rttr.addFlashAttribute("result", board.getBno());
		return "redirect:/comment/list";
	}

	// 여행후기 조회하기
	@GetMapping("/get")
	public String get(@RequestParam("bno") Long bno, Model model) {
		model.addAttribute("board", service.get(bno));
		return "member/readUserComment";
	}

	// 여행후기 수정페이지
	@GetMapping("/modify")
	public String modify(@RequestParam("bno") Long bno, Model model) {
		model.addAttribute("board", service.get(bno));
		return "member/modifyUserComment";
	}

	// 여행후기 수정하기
	@PostMapping("/modify")
	public String modify(BoardVO board, RedirectAttributes rttr) {
		if (service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
			log.info("여행후기 수정 성공");
		}
		return "redirect:/comment/list";
	}

	// 여행후기 삭제하기
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
		if (service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
			log.info("여행후기 삭제 성공");
		}
		return "redirect:/comment/list";
	}
}

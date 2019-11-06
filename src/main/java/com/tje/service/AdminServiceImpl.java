package com.tje.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tje.domain.AdminVO;
import com.tje.domain.MemberVO;
import com.tje.mapper.AdminMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminServiceImpl implements AdminService {
	@Setter(onMethod_ = { @Autowired })
	private AdminMapper adminMapper;

	AdminVO adminVO = new AdminVO();

	// 관리자 로그인 체크
	@Override
	public Integer loginCheck(String username, String userpassword) {
		adminVO.setAdminname(adminVO.getAdminname());
		adminVO.setAdminpassword(adminVO.getAdminpassword());
		int result = adminMapper.loginCheck(username, userpassword);
		return result;
	}

	// 관리자 페이지에서 회원 목록 확인
	@Override
	public List<MemberVO> getList() {
		List<MemberVO> list = adminMapper.getList();
		log.info("회원 목록을 출력합니다: " + "[" + list + "]");
		return list;

	}
}

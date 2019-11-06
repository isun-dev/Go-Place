package com.tje.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tje.domain.MemberVO;
import com.tje.domain.TravelList;
import com.tje.mapper.MemberMapper;

import lombok.Setter;

@Service
public class MemberServiceImpl implements MemberService {
	@Setter(onMethod_ = { @Autowired })
	private MemberMapper memberMapper;

	MemberVO memberVO = new MemberVO();

	// 회원 아이디 중복 확인
	@Override
	public int idDoubleCheck(String username) {
		int idDoubleCheckResult = memberMapper.idDoubleCheck(username);
		return idDoubleCheckResult;
	}

	// 회원가입
	@Override
	public void insertMember(MemberVO memberVO) {
		memberMapper.insertMember(memberVO);
	}

	// 회원 로그인
	@Override
	public Integer loginCheck(String username, String userpassword) {
		memberVO.setUsername(memberVO.getUsername());
		memberVO.setUserpassword(memberVO.getUserpassword());
		int result = memberMapper.loginCheck(username, userpassword);
		return result;
	}

	// 찜한 리스트에 추가
	@Override
	public void insertCart(String contenttypeid, String firstimage, String title, String contentid, String username) {
		memberMapper.insertCart(contenttypeid, firstimage, title, contentid, username);
	}

	// 찜한 리스트 목록
	@Override
	public List<TravelList> list(String username) {

		return memberMapper.list(username);
	}
}

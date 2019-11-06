package com.tje.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tje.domain.NonmemberVO;
import com.tje.mapper.NonmemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class NonMembersServiceImpl implements NonMembersService {
	@Setter(onMethod_ = { @Autowired })
	private NonmemberMapper nonmemberMapper;

	@Override
	public List<NonmemberVO> getSearchList() {
		List<NonmemberVO> list = new ArrayList<NonmemberVO>();
		list = nonmemberMapper.getSearchKeywordList();
		log.info("[list를 출력합니다:" + list + "]");
		return list;
	}
}

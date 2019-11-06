package com.tje.mapper;

import java.util.List;

import com.tje.domain.NonmemberVO;

// 사용자 검색 키워드 Mapper
public interface NonmemberMapper {
	public List<NonmemberVO> getSearchKeywordList();
	public void insertSearchKeyword(String keyword);

}

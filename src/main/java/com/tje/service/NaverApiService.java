package com.tje.service;

import java.util.List;

import com.tje.domain.NaverBlogApiVO;
import com.tje.domain.NaverLocalSearchApiVO;

public interface NaverApiService {
	// 네이버 블로그 파싱
	public List<NaverBlogApiVO> blogNaverApiService(String search_word, String display, String sort);

	// 네이버 지역 및 맛집 파싱
	public List<NaverLocalSearchApiVO> localSearchNaverApiService(String search_word, String display, String sort);

}

package com.tje.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tje.domain.NaverBlogApiVO;
import com.tje.domain.NaverLocalSearchApiVO;
import com.tje.mapper.NonmemberMapper;
import lombok.Setter;

@Service
public class NaverApiServiceImpl implements NaverApiService {
	@Setter(onMethod_ = { @Autowired })
	private NonmemberMapper nonmemberMapper;

	// 네이버 블로그 파싱
	@Override
	public List<NaverBlogApiVO> blogNaverApiService(String search_word, String display, String sort) {
		NaverJsonParsing naverJsonParsing = new NaverJsonParsing();
		List<NaverBlogApiVO> naverBlogResult = naverJsonParsing.blogNaverApiService(search_word, display, sort);
		nonmemberMapper.insertSearchKeyword(search_word);
		return naverBlogResult;
	}

	// 네이버 지역 및 맛집 파싱
	@Override
	public List<NaverLocalSearchApiVO> localSearchNaverApiService(String search_word, String display, String sort) {
		NaverJsonParsing naverJsonParsing = new NaverJsonParsing();
		List<NaverLocalSearchApiVO> naverLocalSearchApiVO = naverJsonParsing.localSearchNaverApiService(search_word,
				display, sort);
		return naverLocalSearchApiVO;
	}
}

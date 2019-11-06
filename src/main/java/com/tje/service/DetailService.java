package com.tje.service;

import java.util.List;

import com.tje.domain.DetailCommonVO;
import com.tje.domain.ImageVO;

public interface DetailService {

	// 테마 및 지역 콘텐츠의 상세 정보
	public List<DetailCommonVO> getDetailCommon(String contentTypeId, String contentId);

	public List<ImageVO> getDetailImage(String contentTypeId, String contentId);

	public List<Object> getDetailIntro(String contentTypeId, String contentId);
}

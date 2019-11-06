package com.tje.service;

import java.util.List;

import com.tje.domain.CateVO;

// 테마 및 지역별 결과 Service
public interface CateService {

	public List<CateVO> showCategory(String contentTypeId, String areaCode, String pageNo, String numOfRows,
			String totalCount);

	public String pageno(String contentTypeId, String areaCode, String pageNo, String numOfRows);

}

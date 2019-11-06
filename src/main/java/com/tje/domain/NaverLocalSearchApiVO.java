package com.tje.domain;

import lombok.Data;

@Data
//네이버 지역 서비스에 등록된 각 지역별 업체 및 상호 검색 결과 VO
public class NaverLocalSearchApiVO {
	// 검색 결과 업체, 기관의 분류 정보
	private String category;
	// 검색 결과 업체, 기관명
	private String title;
	// 검색 결과 업체, 기관의 상세 정보가 제공되는 네이버 페이지의 하이퍼텍스트 link
	private String link;
	// 검색 결과 업체, 기관명에 대한 설명을 제공
	private String description;
	// 검색 결과 업체, 기관명의 전화번호를 제공
	private String telephone;
	// 검색 결과 업체, 기관명의 주소를 제공
	private String address;
	private String mapx;
	private String mapy;
}

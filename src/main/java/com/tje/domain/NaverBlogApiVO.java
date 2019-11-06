package com.tje.domain;

import lombok.Data;
//네이버 API VO
@Data
// 네이버 블로그 검색 결과를 출력해주는 REST API의 Bean입니다.
public class NaverBlogApiVO {
	private String lastBuildDate;
	// 블로그 포스트를 작성한 날짜.
	private String postdate;
	// 검색 결과 문서의 제목.
	private String title;
	// 검색 결과 문서의 링크를 의미.
	private String link;
	// 검색 결과 문서의 내용을 요약한 정보.
	private String description;
	// 블로거 이름
	private String bloggername;
}

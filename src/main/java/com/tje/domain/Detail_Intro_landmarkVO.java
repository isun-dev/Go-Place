package com.tje.domain;

import lombok.Data;

//랜드마크 소개정보
@Data	
public class Detail_Intro_landmarkVO {
	private String contentid;
	private String contenttypeid;
	private String accomcount; //수용인원
	private String chkbabycarriage; //유모차대여 정보
	private String chkcreditcard; //신용카드가능 정보
	private String chkpet; //유모차대여 정보
	private String infocenter; //문의 및 안내
	private String opendate; //개장일
	private String parking; //주차시설
	private String restdate; //쉬는날
} 

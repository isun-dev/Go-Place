package com.tje.domain;

import lombok.Data;
// 음식점 소개정보
@Data
public class Detaill_Intro_restaurantsVO {
	private String contentid;
	private String contenttypeid;
	private String chkcreditcardfood; //신용카드 가능정보
	private String discountinfofood; // 할인 메뉴
	private String firstmenu; // 대표메뉴
	private String infocenterfood; // 문의 및 안내
	private String kidsfacility; // 어린이 놀이방 여부
	private String opentimefood; // 영업시간
	private String packing; // 포장 가능
	private String parkingfood; // 주차시설
	private String reservationfood; // 예약안내
	private String restdatefood; // 쉬는날
	private String smoking; // 금연/흡연 여부
	private String treatmenu; // 취급 메뉴
}

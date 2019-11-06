package com.tje.domain;

import lombok.Data;

// 쇼핑 소개정보
@Data	
public class Detail_Intro_shoppingVO {
	private String contentid;
	private String contenttypeid;
	private String chkbabycarriageshopping; //유모차대여 정보
	private String chkcreditcardshopping; //신용카드가능 정보
	private String chkpetshopping; //애완동물동반가능 정보
	private String fairday; //장서는 날
	private String infocentershopping; //문의 및 안내
	private String opendateshopping;// 개장일
	private String restdateshopping;// 쉬는날
	private String parkingshopping;// 주차시설
	private String shopguide;// 매장안내
	private String saleitem;// 판매 품목
	private String saleitemcost;// 판매 품목별 가격
	private String scaleshopping;// 규모	
}

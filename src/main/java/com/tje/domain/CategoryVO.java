package com.tje.domain;

import lombok.Data;

@Data

public class CategoryVO {
	
	// 목차
	private String contentid;
	private String contenttypeid;
	private String addr1; // 주소
	private String areacode; // 지역코드
	private String firstimage; // 대표이미지(원본)
	private String sigungucode;
	private String tel; 
	private String title;

	// 페이징 처리 관련 VO
	   private int pageNo; // 현재 페이지번호
	   private int numOfRows; // 한 페이지에 보여주는 게시물 개수
	   private int startPage;
	   private int endPage;
	   private boolean prev, next;

	   private int totalCount; // 전체 데이터 수
    
    public CategoryVO() {}
    
    public CategoryVO(String pageNo, String numOfRows, String totalCount) {
        this.pageNo = Integer.parseInt(pageNo);
        this.numOfRows = Integer.parseInt(numOfRows);
        this.totalCount = Integer.parseInt(totalCount);

        this.endPage =  (int)(Math.ceil(Integer.parseInt(pageNo) / 10.0)) * 10;
        this.startPage = this.endPage - 9;

        int realEnd = (int) (Math.ceil((Integer.parseInt(totalCount) * 1.0) / Integer.parseInt(numOfRows)));

        if (realEnd < this.endPage) {
           this.endPage = realEnd;
        }

        this.prev = this.startPage > 1;
        this.next = this.endPage < realEnd;
     }
   

}

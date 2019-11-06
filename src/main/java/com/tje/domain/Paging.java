package com.tje.domain;

import lombok.Data;
import lombok.ToString;

//페이징 처리 VO
@Data
@ToString
public class Paging {
    private int pageNum;
    private int amount;
    
    public Paging() {
    	this(1,10);
    }
     public Paging(int pageNum, int amount) {
    	this.pageNum = pageNum;
    	this.amount = amount;
    }
}

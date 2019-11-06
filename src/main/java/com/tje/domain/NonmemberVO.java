package com.tje.domain;

import java.util.Date;

import lombok.Data;

// 홈화면에서 사용자가 검색한 키워드 VO
@Data
public class NonmemberVO {
    private int search_num;
    private String search_word;
    private Date search_date;
}

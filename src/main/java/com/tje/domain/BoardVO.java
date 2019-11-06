package com.tje.domain;

import java.util.Date;

import lombok.Data;

// 여행후기 
@Data
public class BoardVO {
    private Long bno;
    private String title;
    private String content;
    private String username;
    private Date regdate;
    private Date updatedate;

}

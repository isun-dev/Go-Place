package com.tje.domain;

import java.util.Date;

import lombok.Data;
//관리자 VO
@Data
public class AdminVO {
	private String adminname;
	private String adminpassword;
	private Date regdate;
	private Date updatedate;
	private int loginflag;
}

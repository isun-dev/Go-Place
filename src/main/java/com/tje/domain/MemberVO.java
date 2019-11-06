package com.tje.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	
	// 회원 VO 
	private String username;
	private String userbirth;
	private String usergender;
	private String useremail;
	private String userpassword;
	private Date regdate;
	private Date updatedate;
	private int loginflag;
}

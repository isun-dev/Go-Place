package com.tje.service;

// 회원  Service
import java.util.List;

import com.tje.domain.MemberVO;
import com.tje.domain.TravelList;

public interface MemberService {
	public int idDoubleCheck(String username);

	public void insertMember(MemberVO memberVO);

	public void insertCart(String contenttypeid, String firstimage, String title, String contentid, String username);

	public Integer loginCheck(String username, String userpassword);

	public List<TravelList> list(String username);
}

package com.tje.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.tje.domain.MemberVO;
import com.tje.domain.TravelList;

// 회원 Mapper
public interface MemberMapper {
	public int idDoubleCheck(String username);
	public void insertMember(MemberVO memberVO);
	public void insertCart(@Param("contenttypeid") String contenttypeid, @Param("firstimage") String firstimage,
			@Param("title") String title, @Param("contentid") String contentid, @Param("username") String username);
	public Integer loginCheck(@Param("username") String username, @Param("userpassword") String userpassword);
	public List<TravelList> list(String username);
}
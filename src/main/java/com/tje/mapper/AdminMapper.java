package com.tje.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.tje.domain.MemberVO;

// 관리자 Mapper
public interface AdminMapper {
	// 관리자 로그인 체크 
	public Integer loginCheck(@Param("adminname") String adminname, @Param("adminpassword") String adminpassword);
	// 관리자 페이지에서 회원목록 확인
	public List<MemberVO> getList();
}
package com.tje.service;

import java.util.List;

import com.tje.domain.MemberVO;

//관리자 Service
public interface AdminService {
        public Integer loginCheck(String adminname, String adminpassword);
        public List<MemberVO> getList();
}

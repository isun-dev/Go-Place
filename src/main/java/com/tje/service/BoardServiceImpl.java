package com.tje.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tje.domain.BoardVO;
import com.tje.domain.Paging;
import com.tje.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BoardServiceImpl implements BoardService {
	@Setter(onMethod_ = { @Autowired })
	private BoardMapper mapper;

	// 등록 구현
	@Override
	public void register(BoardVO board) {
		mapper.insertSelectKey(board);
	}

	// 조회 구현
	@Override
	public BoardVO get(Long bno) {
		return mapper.read(bno);
	}

	// 수정 구현
	@Override
	public boolean modify(BoardVO board) {
		return mapper.update(board) == 1;
	}

	// 삭제 구현
	@Override
	public boolean remove(Long bno) {
		return mapper.delete(bno) == 1;
	}

	// 목록 보기 구현
	@Override
	public List<BoardVO> getList(Paging page) {
		List<BoardVO> list = mapper.getListWithPaging(page);
		log.info("여행 후기 목록을 출력합니다: " + "[" + list + "]");
		return list;
	}

	// 페이징 구현
	@Override
	public int boardCount() {
		return mapper.boardCount();
	}

	// 페이징 구현
	@Override
	public int getTotalCount(Paging page) {
		return mapper.getTotalCount(page);
	}
}
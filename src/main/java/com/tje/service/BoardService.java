package com.tje.service;

import java.util.List;

import com.tje.domain.BoardVO;
import com.tje.domain.Paging;

//여행후기 Service
public interface BoardService {
    public void register(BoardVO board);
    public BoardVO get(Long bno);
    public boolean modify(BoardVO board);
    public boolean remove(Long bno);
    public List<BoardVO> getList(Paging page);
    public int boardCount();
    public int getTotalCount(Paging page);
}

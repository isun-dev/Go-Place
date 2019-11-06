package com.tje.mapper;

import java.util.List;

import com.tje.domain.BoardVO;
import com.tje.domain.Paging;

//여행 후기 Mapper
public interface BoardMapper {
    public List<BoardVO> getList();
    public void insert(BoardVO board);
    public void insertSelectKey(BoardVO board);
    public BoardVO read(Long bno);
    public int delete(Long bno);
    public int update(BoardVO board);
    public List<BoardVO> getListWithPaging(Paging page);
    public int boardCount();
    public int getTotalCount(Paging page);
    
}

package com.tje.domain;
import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {

  private int startPage;
  private int endPage;
  private boolean prev, next;
  private int total;
  private Paging page;
  public PageDTO(Paging page, int total) {

  this.page = page;
  this.total = total;

 // 페이징의 끝번호 계산 
    this.endPage = (int) (Math.ceil(page.getPageNum() / 10.0)) * 10;
    this.startPage = this.endPage - 9;
    int realEnd = (int) (Math.ceil((total * 1.0) / page.getAmount()));
    if (realEnd <= this.endPage) {
      this.endPage = realEnd;
    }
    this.prev = this.startPage > 1;
    this.next = this.endPage < realEnd;
  }
}

-- 비회원 검색 키워드 테이블

CREATE SEQUENCE nonmember_table_search_num_seq;

CREATE TABLE nonmember_table(
    search_num NUMBER,
    search_word VARCHAR2(500),
    search_date DATE DEFAULT SYSDATE);
    
INSERT INTO nonmember_table(search_num, search_word) VALUES(nonmember_table_search_num_seq.NEXTVAL, '제주여행');
INSERT INTO nonmember_table(search_num, search_word) VALUES(nonmember_table_search_num_seq.NEXTVAL, '강화도여행');
INSERT INTO nonmember_table(search_num, search_word) VALUES(nonmember_table_search_num_seq.NEXTVAL, '남산타워');

SELECT * FROM nonmember_table;
SELECT * FROM nonmember_table_search_num_seq;

DROP SEQUENCE nonmember_seq;
DROP TABLE nonmember_table;


   
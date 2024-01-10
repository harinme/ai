-- dept 데이터 넣기
insert into dept (deptno, dname, loc) values (10,'경리부','서울');
insert into dept (deptno, dname, loc) values (20,'영업부','경기');

select *from dept;

-- 수정하기
-- 40 서울
update dept set loc ='서울' where deptno = 40;
-- 방금 바꾼 것을 원래대로 하기.
rollback;

-- 30 총부부를 해외부로
-- 40 삭제하기
delete from dept where deptno=40;
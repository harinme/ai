use sqldb;
select * from usertbl;
-- userId 'BBK' 'JKW'
select  *  from usertbl where userid in ('BBK', 'JKW' );
-- 김씨 성을 가진 사람 검색
select * from usertbl where name like '김%' ;
-- 김경호씨의 키보다 큰 사람은?
-- 1단계 김경호 키는? 177
select  height  from usertbl  where name = '김경호' ;
-- 2단계 조건 찾기
select *  from usertbl where height >= 177 ;
-- 1단계 2단계 동시에 작성하기
select *  from usertbl where 
  height >= (  select  height  from usertbl  where name = '김경호' );
--  은지원 나이가 어린 사람은?
select birthYear from usertbl where name='은지원' ;
select  *  from usertbl 
 where birthYear > (  select birthYear from usertbl where name='은지원' ); 

select  *  from buytbl; 
-- prodName 노트북의 groupName 종류와 동일한 userId와 prodName, groupName 검색하기 
-- 결과는 kbs 노트북 전자 / jyp 모니터 전자 / bbk 모니터 전자 / bbk 메모리 전자 
-- 1단계 전자 검색 
select groupName from buytbl where prodName = '노트북' ;
-- 2단계 
select userid, prodName, groupName from buytbl 
  where groupName = (  select groupName from buytbl where prodName = '노트북'  ); 
  
-- '김범수' 산 물건는 무엇인가요?
-- '김범수'의 user_id를 구한다.
select prodName, userid from buytbl 
  where userId = ( select  userId from usertbl where name='김범수' ) ;  

select * from usertbl;
-- 주소가 서울사람 검색하기
select * from usertbl where addr = '서울' ;
-- 서울에 사는 사람의 키보다 작은 키를 가진 사람  any  또는 
select * from usertbl
  where height <= any( select height from usertbl where addr = '서울' ) ;

select * from usertbl -- all and 
  where height <= all( select height from usertbl where addr = '서울' ) ;  
  
select * from usertbl
  where height <= some( select height from usertbl where addr = '서울' ) ;
  
select * from buytbl;

-- 운동화를 산 사람의 이름은?
select userId from buytbl where prodName='운동화' ; 
select name  from usertbl 
     where userid = any(  select userId from buytbl where prodName='운동화' ); 

-- 키가 제일 큰 사람 3명
select * from usertbl order by height desc limit 3;
-- 나이가 제일 많은 사람 5명 검색
select * from usertbl order by birthyear asc limit 5;    

-- 테이블 만들기  usertbl 동일한 테이블 만들고 싶다
create table usertbl2 ( select * from usertbl ) ;
select * from usertbl2;

-- 테이블 만들기 서울에 있는 사람 
create table usertblSeoul ( select * from usertbl where addr = '서울') ; 
select * from usertblSeoul ;
-- 키가 175~180 사이인 사람만 userid, name, height 열만 테이블 만들기 
create table heightTbl 
 ( select userid, name, height from usertbl where height between 175 and 180 ) ; 
select * from heightTbl; 
-- 단 제약조건(pk, fk)은 만들어 지지 않는다.

-- group by절 
select userid, sum( amount ), avg( amount ), max( amount ), count( amount), std( amount ), var_samp( amount )   from buytbl group by userid ;
-- 총구매액이 300만원 이상인 사람의 사용자명과 총구매액 구하기
select userid, sum( price ) from buytbl group by userid having sum( price ) >= 300 ; 
-- 경품 대상인 사람을 테이블 만들어기 , userid, mobile1, mobile2, addr
create table eventTbl 
 ( select userid, mobile1, mobile2, addr from usertbl 
     where userid = any ( select userid from buytbl group by userid having sum( price ) >= 300  ) 
 ) ;
 
 select * from eventTbl;
 
 select * from buytbl;
 
 -- groupName 그룹화하기
 select  groupName, sum( amount ), sum( price )   from buytbl group by groupName ;
 
 -- 테이블 가장 높은 groupName, prodName, amount, price 만들기
 -- 1단계 '전자'
  select  groupName 
  from buytbl group by groupName
              having max(price) >= ( select max(price) from buytbl ) ;
 -- 2단계 
 create table if not exists maxGroupTbl 
   ( select groupName, prodName, amount, price from buytbl 
    where groupName = ( select  groupName 
                     from buytbl group by groupName
                             having max(price) >= ( select max(price) from buytbl)
                       )
    );
select * from maxGroupTbl;  


select groupName, prodName, amount, price from buytbl 
    where groupName = '전자';  
    
-- with rollup 중간합계
-- 소합계 
select num, groupName, sum( price ) from buytbl  group by groupName, num  with rollup ;

-- 220page
-- 요구사항 게시판에서 게시글번호 경우에  자동번호가 넘버링 좋겠다. 
-- 학번 부여 자동부여 되게 하고 싶다.
-- auto_increment사용하려면 조건  int형이고 primary key / unique 이어야 한다.
create table if not exists testTbl2 
(  id int auto_increment primary key,  
   userName char(3),
   age int );
   
insert into testTbl2 values( null, '지민', 25 );   
insert into testTbl2 (userName, age ) values ('유나', 22 ); 
insert into testTbl2 (userName, age ) values ('유경', 21 ); 
select * from testTbl2 ;

alter table testTbl2 auto_increment=100;
insert into testTbl2 values( null, '지수', 25 );  

drop table testTbl2;
-- 학번 240101 시작하기
 
create table if not exists testTbl2 
(  id int auto_increment primary key,  
   userName char(3),
   age int );
   
alter table testTbl2 auto_increment=240101;   
insert into testTbl2 (userName, age ) values ('유경2', 21 );    

select * from testTbl2;

-- 증가치를 1씩 아니라 3개씩 증가되게 만들기
set @@auto_increment_increment=3;
insert into testTbl2 (userName, age ) values ('유경5', 21 );  
insert into testTbl2 (userName, age ) values ('유경6', 21 );  

select * from testTbl2;

 

use employees ;
select  * from employees.employees;
--             데이터베이스명.테이블명 
use sqldb;

use employees ;
select * from employees;
insert into employees  values ( 1003, '05/01/01', '정','현희', 'F', '20/10/05' );
insert into employees  values ( 1004, '05/01/01', '박','현희', 'M', '20/10/05' );
insert into employees  values ( 1005, '05/01/01', '이','현희', 'F', '20/10/05' );
insert into employees  values ( 1006, '05/01/01', '김','현희', 'M', '20/10/05' );

-- sqldb 사용하러 가기
use sqldb; 

-- insert문인데 select문을 이용해서 삽입하기
create table testTbl4  ( id int, fname varchar(50), lname varchar(50) ) ;

select emp_no, first_name, last_name from employees.employees ; 

insert into testTbl4 
     select emp_no, first_name, last_name from employees.employees ; 

select * from testTbl4 ;

select  * from buytbl  order by price desc ;

create table  copyBuyTbl  
   ( select * from buyTbl ) ;

select * from copyBuyTbl order by price desc limit 3; 

-- 가격의 상위 3개 삭제하기 
delete from copyBuyTbl order by price desc limit 3 ;

select * from copyBuyTbl;  

-- 수량 하위 2개 삭제하기
select *  from copyBuyTbl order by amount asc ;
delete from copyBuyTbl order by amount asc limit 2 ;

select * from copyBuyTbl;

-- 운동화중 상위 1개 삭제하기
select  * from copyBuyTbl where prodName='운동화' ;
update copyBuyTbl set price=60 where num = 1 ;
-- 오류 발생 큰일

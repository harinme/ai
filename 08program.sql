use sqldb;
select*from usertbl;
select*from buytbl;

select userid,name from usertbl
union all -- 중복된거 모두 합치기
select userid,prodName from buytbl;

select userid,name from usertbl
union 
select userid,prodName from buytbl;-- 중복된거 제거

-- 요구사항 이름 전화번호로 주소록 만들기 단 전화 번호 없는 사람은 제외
select name from usertbl where mobile1 is null;

select mobile1,mobile2 from usertbl;

select name,mobile1,mobile2  from usertbl 
where name not in
( select name from usertbl where mobile1 is null);

-- SQL 구문을 프로그래밍처럼 만들수 있다
drop procedure if exists ifProc;
-- 스토어드 프로스저

delimiter $$
create procedure ifProc()
begin
  declare var1 int;
  set var1 =100;
  if var1=100 then
  select'100입니다';
  else
  select'아닙니다';
  end if;
end $$
delimiter ;

call ifProc();

drop procedure if exists ifproc2;
use employees;
select*from employees;
delimiter $$
create procedure ifProc2()
begin
  declare hiredate date;-- 변수 선언 변수명 자료형
  declare curdate date;
  declare days int;
  
  select hire_date into hiredate from employees.employees
  where emp_no=10001;
  set curDate=current_date();
  set days = datediff(curDate,hiredate);
  if(days/365)>=5 then
  select concat('입사한지',days,'일이나 지났습니다.축하합니다');
  else
  select concat('입사한지',days,'일밖에 안되었네요.열심히하세요');
  end if;
  end $$
delimiter ;

call ifProc2();

-- 298 p 교재에 있는 것 해보기
drop procedure if exists ifproc3;
delimiter $$
create procedure ifproc3()
begin
	declare point int;
    declare credit char(1);
    set point = 77;
    
    if point >=90 then
		set credit = 'A';
	elseif point >=80 then
		set credit = 'B';
	elseif point >= 70 then
		set credit = 'C';
	elseif point >=60 then
		set credit = 'D';
	else
		set credit = 'F';
	end if;
    select concat('취득점수==>', point), concat('학점==>', credit);
end $$
delimiter ;
call ifproc3();


-- 299
drop procedure if exists caseproc;
delimiter $$
create procedure caseproc()
begin
	declare point int;
    declare credit char(1);
    set point = 77;
    
    case
    when point >=90 then
		set credit = 'A';
	when point >=80 then
		set credit = 'B';
	when point >= 70 then
		set credit = 'C';
	when point >=60 then
		set credit = 'D';
	else
		set credit = 'F';
	end case;
    select concat('취득점수==>', point), concat('학점==>', credit);
end $$
delimiter ;
call caseproc();

-- view
select *from usertbl;
create view vuser
as 
select *from usertbl;

select * from vuser;

-- 뷰를 사용하는 이유? 1. 보안 2. 복잡한 쿼리문 단수화 시키기.

use sqldb;

create view v1
as
select u.userid as 'user id', u.name 'user name', b.prodname as 'product name'
from usertbl u
inner join buytbl b
on u.userID = b.userid;

select *from v1;

select `user id`, `user name` `product name`from v1
where `user id` = 'KBS' order by `product name`; -- `백틱 ~키와 같이 있는 것 

-- view 수정하기
alter view v1
as 
select u.name 'name', u.addr 'addr', concat_ws('-', u.mobile1, u.mobile2)
 'tel'from usertbl u
inner join buytbl b
on u.userid = b.userid;

select *from v1;
select `name`, `tel` from v1 ; -- name, tel

create or replace view v1 -- v1 뷰가 있으면 고치고 없으면 새로 만들고
as
select name, birthyear from usertbl where name = '김범수';

select *from v1;

-- 뷰 삽입 테이블이 삽입될까?
-- usertbl을 복사하기
create table cUsertbl
as
select *from usertbl;

-- 뷰 만들기
create or replace view v2
as
select userid, name, birthyear, addr, height from cusertbl;

select *from v2; -- 뷰에 삽입됐다
insert into v2 values ( 'HGD','홍길동', 2020, '서울',175);

select *from cusertbl; -- 뷰에 넣어도 테이블에 삽입된당


-- 테이블 안에 삽입하기 뷰에 보일까?
insert into cusertbl (userid, name, birthyear, addr)
	values ('ADM', '관리자',2021,'인천');
desc v2;

-- 뷰 수정 테이블이 수정될까?
select *from v2;
-- 홍길동 birthyear 2019 수정하기
update v2 set birthyear = 2019 where name='홍길동';


-- 뷰 수정 테이블이 삭제될까?
-- 관리자를 지우기
delete from v2 where name='관리자';
-- view 삭제하기
drop view v2;

-- ------------------
-- 테이블 스페이스: 물리적(real 실제 d드라이브나 그런 거 실제 저장되는 공간) 공간
-- DBA 데이터베이스 관리 - 서버 계정, 공간 할당

-- -------
-- 인덱스
-- 자료를 찾을 때 색인표 붙여 두는 것
-- 목적 : 빠르게 검색하려고
-- B-tree 
-- 교재 375p 장점과 단점을 읽어보기
-- 장점: 검색 속도가 빠르다.(항상 그런 것은 아니다), 시스템의 성능이 향상된다.
-- 단점: 추가적인 공간이 필요해진다. 대략 데이터베이스 전체 용량의 10%가 필요하다
-- 처음 인덱스를 생성하는데 시간이 많이 소요된다.
-- 데이터 변경 작업이 자주 일어나는 경우 오히려 성능이 나빠질 수 있따.

-- 인덱스를 생성해야하는 경우
-- 인덱스는 열 단위에 생성하낟.
-- where 절에서 사용되는 열에 인덱스를 만ㄷ르어야 한다.
-- 자주 사용하는 열에 생성한다.
-- 조인을 자주하는 열에 생성한다.

-- primary key, unique 지정한 열은 자동으로 인덱스 처리됨.

-- 스토어드 프로그램
-- 고급 SQL 문 상위레벨
-- 종류: 1. 스토어드 프로시저, 2. 스토어드 함수, 3. 커서, 4. 트리거

/* 1. 스토어드 프로시저
delimiter $$
	create procedure 이름(입력 또는 출력 파라미터(매개변수))
	begin
		내용
	end $$
delimiter ;
call 이름(실제 값들) ;
*/

delimiter $$
	create procedure p1()
	begin
		select *from usertbl;
	end $$
delimiter ;

call p1() ;

drop procedure if exists p1;

--
delimiter $$
	create procedure p2(in username varchar(10))
	begin
		select *from usertbl where name=username;
	end $$
delimiter ;
drop procedure if exists p2;
call p2('바비킴') ;
-- 생일 1973년보다 이후에 태어났고 키가 170인 사람
delimiter $$
	create procedure p3(in birth int, in h int)
	begin
		select *from usertbl where birthyear>= birth and height>= h;
	end $$
delimiter ;
drop procedure if exists p3;
call p3(1973,170) ;
--  ------------------------------
create table testTbl
 (id int auto_increment primary key, name char(10) );
 insert into testtbl values (null, '홍길동');
 
-- testTbl
delimiter $$
	create procedure p4(in invar char(10), out outvar int)
	begin
		insert into testtbl values(null, invar);
        select count(id) into outvar from testtbl;
	end $$
delimiter ;
drop procedure if exists p4;
call p4('이순신', @countvar) ;
select @countvar;
select *from testtbl;

-- 445p
delimiter $$
create procedure ifelseproc(in username varchar(10))
begin 
declare byear int;
select birthyear into byear from usertbl where name= username;
if (byear >= 1980) then
select '아직 젊군요..';
else
select '나이가 지긋하시네요';
end if;
end $$
delimiter ;

call ifelseproc1('조용필');
select @nameout ; --
-- ----------------------
drop procedure if exists ifelseproc1;
delimiter $$
create procedure ifelseproc1(in username varchar(10), out byear int)
begin 
select birthyear into byear from usertbl where name= username;
if (byear >= 1980) then
select '아직 젊군요..';
else
select concat(byear, '나이가 지긋하시네요');
end if;
end $$
delimiter ;

call ifelseproc1('조용필', @yearout);
select  @yearout ; -- 
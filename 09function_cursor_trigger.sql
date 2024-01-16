-- stored procedure program
-- 설계 --> 인스턴스화 --> 사용
use sqldb;
-- 기본적인 형식
delimiter $$
create procedure  userProc()
begin
    select * from usertbl;
end $$
delimiter 

call userProc();

desc usertbl ; -- 테이블의 구조 보기
-- 파라미터를 넣어 처리형식
delimiter $$
create procedure  userProc1( in _addr char( 2 ) )
begin
    select * from usertbl where addr = _addr ;
end $$
delimiter 

call userProc1('서울');

-- userId BBK 또는 LJB 검색하기 
drop procedure userProc2;

delimiter $$
create procedure  userProc2( in _userId1 varchar( 10 ),  in _userId2 varchar( 10 ) )
begin
    select * from usertbl where userId in ( _userId1, _userId2 ) ;
end $$
delimiter 

call userProc2('BBK', 'LJB');

-- 파라미터 값을 내보내기
-- 서울에 사는 사람이 몇명인지 변수에 담아서 외부로 내보내기 
-- 파라미터를 넣어 처리형식

delimiter $$
create procedure  userProc3( in _addr char( 2 ), out _result int )
begin
    select count(addr) into _result  from usertbl where addr = _addr ;
end $$
delimiter ;

call userProc3('서울',  @_result );
select @_result; -- 답 4

select * from buytbl;
desc  buytbl; 
-- 문제 groupName을 입력하면  price 값이 가장 큰 것을 찾기 변수로 받기 
-- 처리 결과  입력은 전자 답은 노트북 1000
--               의류 답은 청바지  50
--               서적 답은 책     15
drop procedure  buyPro1;

delimiter $$
create procedure  buyPro1( in _gN  char(4),  out _price int )
begin 
  select  max(price) into _price from buytbl where  groupName = _gN ;
end $$
delimiter ;

call buyPro1( '전자', @priceVar) ;
call buyPro1( '의류', @priceVar) ;
call buyPro1( '서적', @priceVar) ;
select @priceVar ;

drop procedure buyPro2;

delimiter $$
create procedure buyPro2 ( in _gn char(4), out _pN char(6), out _price int)
begin
-- 여러개의 출력 값을 얻으려면 select 문을 여러개 쓰기
select distinct prodname into _pn from buytbl where groupName = _gn;
select max(price) into _price from buytbl where  groupName = _gN ;

end $$
delimiter ;

call buypro2('의류', @pnVar, @priVar);
select @pnVar, @priVar;

select *from buytbl where groupname ='전자';
select prodname, max(price) from buytbl where groupname = '전자' group by prodname
having prodname ='노트북';

-- 2) procedure function 함수 -> 결과가 1개가 나온다. return /452페이지
-- 주의사항: 사전에 해야하는 작업 - 함수 생성 권한 제한을 풀어주기
set global log_bin_trust_function_creators = 1;
-- ex)_
delimiter $$
create function userFun1 (v1 int, v2 int) -- 입력 해줄 자료형
returns int -- >출력해줄 자료형 선언
begin
return v1 + v2;

end $$ ;
delimiter ;

select userFun1(100,200); -- 실행은 select 문으로

-- 요구사항) 출생년도를 입력하면 나이가 생성되는 함수 만들기
delimiter $$
create function ageFun(birthYear int)
	returns int
begin
	declare age int;
	set age =year(curdate())-birthyear;
    return age;
end $$
delimiter ;

select ageFun(2000) into @age2000;
select ageFun(2020) into @age2020;
select @age2000 - @age2020 ;

drop table cusertbl;
create table cUserTbl
as
select *from usertbl;

select *from cusertbl;

alter table cusertbl
	add column years int; -- 컬럼 추가하기
    
-- 요구사항 mDate를 이용해서 근무년수를 구하는 함수를 만들기
DROP function Yearsfun;
delimiter $$
create function yearsFun( y1 date) -- mdate 컬럼 입력받기
	returns int
begin
	declare yy int;
    set yy = year(curdate()) - year(y1);
    return yy ;
end $$
delimiter ;

desc cusertbl;
-- 2단계 함수를 호출해서 근무년수를 구한다.
select mDate into @mdate from cusertbl where userid='BBK';
select @mdate;

select yearsfun(@mdate) into @years;
select @years;

update cusertbl set years = @years where userid='BBK';

select *from cusertbl;

-- 'EJW' 업데이트하기
select mDate into @mdate from cusertbl where userid='EJW';
select @mdate;

select yearsfun(@mdate) into @years;
select @years;

update cusertbl set years = @years where userid='EJW';


--  'kbs' 업데이트하기
select mDate into @mdate from cusertbl where userid='KBS';
select @mdate;

select yearsfun(@mdate) into @years;
select @years;

update cusertbl set years = @years where userid='KBS';

select *from cusertbl;

-- 3) cursor 반복처리 -> 가르키다
-- 파일 시작 BOF: begin of File , EOP: End of file
-- 처리 순서 1단계 파일을 연다 2단계 파일을 읽는다 행단위로 읽는다. 3단계 파일 끝 4단계 닫는다
-- fetch
/* 커서 형식
delimiter $$
create procedure cursorProc()
begin
	-- 변수 선언 6줄~10줄까지
    -- 커서 선언 12줄
    -- 반복 조건 15줄
    -- 커서 열기
    -- 반복문
    -- 결과 출력
    -- 커서 닫기alter

end $$
delimiter ; */

-- 고객의 평균키를 구하는 프로시저 커서 이용하기.
delimiter $$
create procedure cursorProc()
begin
	-- 변수 선언 6줄~10줄까지
    declare userHeight int; -- 고객의 키
    declare cnt int default 0; -- 고객의 인원수
    declare totalHeight int default 0; -- 키의 합계
    declare endOfRow boolean default false;
    -- 커서 선언 12줄
    declare userCursor Cursor for
		select height from usertbl; -- 문제가 평균키를 구하기
	-- 반복 조건 15줄
    declare continue handler for not found set endOfRow = True ;
    -- 커서 열기
    open userCursor;
    -- 반복문
    cursor_loop : loop
     fetch userCursor into userHeight ;
     if endOfRow then
		leave cursor_loop ; -- leave 반복문에서 빠져라
        end if ; 
        set cnt = cnt +1;
        set totalHeight = totalHeight +userHeight;
    end loop cursor_loop ;
    -- 결과 출력
    select concat('고객 키의 평균 ===>', (totalHeight/cnt));
    -- 커서 닫기
    close userCursor;
end $$
delimiter ;

-- 호출하기 
call cursorProc() ;

-- 고개 테이블 고객등급 열을 하나 추가하기 등급 넣기
use sqldb;
select *from usertbl;

create table rankUt
as
select *from usertbl;

alter table rankUt
	add column r1 varchar(20) ; -- 컬럼 추가하기 r1 안에 최우수 고객/ 우수고객/ 일반고객/ 유령 고객
    
    
select* from buytbl order by userid;
drop procedure gp;
delimiter $$
create procedure gP()
begin
	-- 변수 선언 6줄~10줄까지
    declare id varchar(10) ; -- 사용자 id 'bbk'
    declare hap bigInt; -- 총구매합 1920
    declare usergrade varchar(20); -- 등급 최우수고객
    declare endOfRow boolean default false;
    -- 커서 선언 12줄
    declare userCursor cursor for
    select u.userid, sum(b.price *b.amount) from buytbl b
    right outer join usertbl u
    on b.userid = u.userid
    group by u.userid, u.name;
    -- 반복 조건 15줄
    declare continue handler for not found set endOfRow = true;
    -- 커서 열기
    open usercursor ;
    -- 반복문
    grape_loop: loop
		fetch usercursor into id, hap ;
        if endofrow then
        leave grape_loop;
        end if;
   
    case 
    when (hap>= 1500) then set userGrade = '최우수고객';
    when (hap>= 1000) then set userGrade = '우수고객';
    when (hap= 1) then set userGrade = '일반고객';
    else set usergrade = '잠재고객';
     end case;
     
     update usertbl set r1 = usergrade where userID = id;
          end loop grape_loop ;
    -- 결과 출력
    -- 커서 닫기alter

close usercursor;
end $$
delimiter ;

call gp();

select *from usertbl;

alter table usertbl
add column r1 varchar(20);

-- 4) 트리거
-- EX) 신입사원이 들어오면 기본적인 인적사항이 자동 삽입되면 좋겠다. 급여가 지급 된 후에 테이블에 자동 저장되면 좋겠다
-- 사용은 insert update delete
-- 직접 실행은 안됨. 이벤트가 발생했을 때 자동 실행 됨.
create database if not exists testdb ;
use testdb;

create table if not exists testtbl ( id int , txt varchar(10));
insert into testtbl values( 1, '레드벨벳');
insert into testtbl values( 2, '잇지');
insert into testtbl values( 3, '블랙핑그');

select *from testTbl;

drop trigger if exists testtrg ;

delimiter //
 create trigger testtrg -- x트리거가 언제 어느 테이블 적용할지
	after delete -- 이후에
    on testtbl
    for each row
    begin
     set @msg= '가수 그룹이 삭제됩니다'; -- 트리거의 처리 내용
     end //

delimiter ;

set @msg = '';
insert into testtbl values( 4, '마마무');

select @msg;

update testtbl set text ='마마마무' where id =4;
select @msg;

delete from testtbl where id= 4;
select @msg;

-- ----------------------
-- 요구사항 :회원 테비블에서 update, delete 시도하면 수정된 또는 삭제된 테이블을 별도의 테이블에 보관하고 변경일자, 변경한 사람을 기록하자.alter
use sqldb;
create table backup_usertbl
(
  userID     CHAR(8) NOT NULL PRIMARY KEY, -- 사용자 아이디(PK)
  name       VARCHAR(10) NOT NULL, -- 이름
  birthYear   INT NOT NULL,  -- 출생년도
  addr        CHAR(2) NOT NULL, -- 지역(경기,서울,경남 식으로 2글자만입력)
  mobile1   CHAR(3), -- 휴대폰의 국번(011, 016, 017, 018, 019, 010 등)
  mobile2   CHAR(8), -- 휴대폰의 나머지 전화번호(하이픈제외)
  height       SMALLINT,  -- 키
  mDate       DATE,  -- 회원 가입일
  modType char(2), -- 변경된 타입, '수정' 또는 '삭제'
  modDate date, -- 변경된 날짜
  modUser varchar(256) -- 변경한 사용자 
 ) ;
 
 -- 트리거 작성하기
 delimiter //
 create trigger but -- 언제할래? update 후에 무엇을 할래? usertbl의 모든 행을
 after update
 on usertbl
 for each row
 begin
  insert backup_usertbl
  values ( OLD.userID, OLD.name, OLD.birthYear, OLD.addr, OLD. mobile1, OLD.mobile2, 
		   OLD.height, OLD.mdate , '수정', curdate(), current_user());
 end //
 delimiter ;

select *from usertbl ;

update usertbl set birthyear = 1977 where userid= 'BBK' ;
update usertbl set addr ='서울' where userid='EJW';

select *from backup_usertbl;


-- 467p
delimiter //
create trigger bud -- 언제 누구에게
	after delete
    on usertbl
    for each row
begin
	insert into backup_usertbl
    values (OLD.userID, OLD.name, OLD.birthYear, OLD.addr, OLD. mobile1, OLD.mobile2, 
		   OLD.height, OLD.mdate , '삭제', curdate(), current_user() );
end //
delimiter ;

select *from usertbl ;

delete from usertbl where userid = 'YJS' ;

select *from backup_usertbl ;

-- 469p
-- 삽입 후에 경고 오류 발생시키고 경고 메세지 띄우기
delimiter //
create trigger uti -- 언제 누구에게
	after insert
    on usertbl
    for each row
begin
	signal sqlstate '45000' set message_text = '데이터의 입력을 시도했습니다. 귀한의 정보가 서버에 기록되었습니다.'  ;
end //
delimiter ;

insert into usertbl values('ABC', '에비씨', 1977, '서울','011', '1111111',181,'2019-12-25','잠재고객');
select *from usertbl ;

-- before 트리거

-- old 변경되기 전의 자료, new 변경되고 난 후 자료
-- 요구사항 입력할 때 생일 잘못 입력되지 않도록 1900년 이전 입력이면 0 출력 or 올해 년도보다 이후의 년도가 입력 되면 0출력

DROP TRIGGER UTI;
delimiter //
create trigger ubi
	before insert
    on usertbl
    for each row
    begin
    if new.birthyear < 1900 then
    set new.birthyear = 0 ;
    elseif new.birthyear > year ( curdate()) then
    set new.birthyear = year ( curdate());
    end if;
    end //
delimiter ;

insert into usertbl values('DDD', '디디디', 1877, '서울','011', '1111111',181,'2019-12-25','잠재고객');
insert into usertbl values('EEE', '이이이', 2877, '서울','011', '1111111',181,'2019-12-25','잠재고객');
select *FROM USERTBL;
DROP TRIGGER UBa;
-- 주소가 '평양' 입력되면 '외국인'
-- 전화번호가 '999' 입력되면 010으로 바꾸기
delimiter //
create trigger uba
	before insert
    on usertbl
    for each row
    begin
    if new.addr = '평양' then
    set new.addr = '외국' ;
	elseif new.mobile1 = '999' then
    set new.mobile1 = '010' ;
    end if;
    end //
delimiter ;

insert into usertbl values('GGG', '지지지', 2007, '평양','999', '1111111',181,'2019-12-25','잠재고객');
SHOW triggers from sqldb;

-- 다중 트리거
-- 1개를 구매 -> 구매 테이블에 삽입 -> 물품 테이블 -1 -> 배송 테이블 +1

drop database if exists triggerdb;
create database if not exists triggerdb;
use triggerdb;

-- 구매 테이블
create table orderTbl
( orderNo int auto_increment primary key,
  userId varchar(5),
  prodName varchar(5),
  orderAmount int) ;
  
  -- 물품 테이블
  create table prodTbl
  ( prodName varchar(5),
  account int) ;
  -- 배송 테이블
  create table deliberTbl
  ( deliverNo int auto_increment primary key,
  prodName varchar(5),
  account int) ;
insert into prodTbl values ('사과', 100);
insert into prodTbl values ('배', 100);
insert into prodTbl values ('귤', 100);

select * from prodtbl;

-- 트리거
delimiter //
create trigger orderTg
	after insert
    on ordertbl
    for each row
begin
update prodTbl set account = account - new.orderamount where prodName = new.prodName ;
end //
delimiter ;

drop trigger prodtg;
-- 요구사항) 물품 테이블을 업데이트 된 후에 배송 테이블에 삽입하기.
delimiter //
create trigger prodTg
	after update
    on prodtbl
    for each row
begin
declare  orderAmount int ; -- 변수 선언
set  orderAmount = old.account - new.account ; -- 100- 95=5
insert into delibertbl values (null, new.prodname, orderAmount);
end //
delimiter ;

select *from ordertbl;
desc ordertbl;
insert into ordertbl values (null, 'BBK','사과',5);

show triggers ;

select *from prodtbl;
select *from deliberTbl;
insert into ordertbl values (null, 'KBS','배',10);


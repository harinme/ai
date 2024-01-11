use sqldb;
select *from  buytbl;
-- 요구사항: 상품명, 가격으로 이루어진 가격 테이블 만들기
-- 1단계 테이블 만들기
drop table if exists testtbl4;
create table if not exists testtbl4
	(prodName varchar(40) not null, price int not null);
    
-- 2단계 삽입한다.(중복 배제 distinct)
select distinct prodName, price from buytbl;
insert into testtbl4 select distinct prodName, price from buytbl;

select *from testtbl4;

select *from testtbl4 order by price desc;

-- 청바지 가격을 100으로 수정하기
update testtbl4 set price = 100 where prodname='청바지';

-- 가장 높은 가격을 찾아서 10% 인하하기
select *from testtbl4 order by price desc limit 1;
 update testtbl4 set price= price*90/100 where price = (select price from(select price testtbl4 order by price desc limit 0, 1) as t);

-- delete 문
select *from buytbl;
-- copybuy 테이블 복사해서 만들기
create table if not exists copyBuy
select *from buytbl;
select *from copybuy;

-- buttbl amount가 제일 작은 것 찾아서 삭제하기
delete from buytbl where amount = min (amount) and num=2;

-- copybuy amount가 제일 작은 거 찾기
select amount from copybuy order by amount asc limit 1;
-- 2단계 삭제하기
delete from copybuy where amount = (select amount from (select amount from copybuy order by amount asc limit 1)as t);

-- 1 with 절 사용하기 p229
-- 뷰, 파생 테이블, 임시테이블, 가상테이블 : 잠깐 쓰고 버리기(메모리에서 삭제)
use sqldb;
select *from usertbl;
select *from buytbl;

-- 요구사항 이름 총구매액(price*amount)
select userid, sum(price), sum(amount) *sum(amount) as '총구매액' from buytbl group by userid;
-- 이름 출력하기
select name from usertbl;

with t (tid,total)
as
(select userid, sum(price* amount)from buytbl group by userid)
select *from t;

select usertbl.name, buytbl.price from usertbl, buytbl;

select *from usertbl, buytbl; -- usertbl 행과 buytbl 행이 모두 곱해져서 나온다.
select *from usertbl, buytbl where usertbl.userID = buytbl.userID; -- 교집합이 나온다.

-- userid, name, amount, price 두개 테이블에서 각각 다른 항목 검색하기
select u.name , b.amount * b.price	from usertbl u, buytbl b where u.userID = b.userID; 

-- 위의 쿼리를 가상 테이블로 만들기
with t (id, name, total)
as
(select u.name , b.amount * b.price	from usertbl u, buytbl b where u.userID = b.userID)
select t.name, t.total from t;

-- 회원 테이블에서 각 지역별로 가장 큰 키를 1명씩 뽑은 후 그 사람들의 키의 평균을 내보자 
-- 1. 각 지역별로 가장 큰 키를 1명씩 뽑은 후
select addr, max(height) from usertbl group by addr;
-- 2단꼐 가상 테이블 만들기
with t(avgHeight)
as
(select max(height) from usertbl group by addr
)
select avg(avgHeight) from t;

select * from buytbl;

-- 각 groupname의 price 가 최저를 구해서 그것의 평균을 구하기
select groupname, min(price ) from buytbl group by groupName;

with t (minprice)
as
(select min(price) from buytbl group by groupName)
select avg(minprice) from t;

with t (id, name, total)
as
( select u.userid, u.name, b.amount * b.price from usertbl u, buytbl b where u.userID = b.userID)
select name, sum(total) from t group by name;

-- -------------------------------------------------------- 7장 sql  고급
-- 238 동영상, 소리, 그림, 2진수(BLOB) 저장해야한다.
-- 날짜형

select cast('2020-10-19 12:35:29.123' as date ) ; -- cast() 형 변환 함수
select cast('2020-10-19 12:35:29.123' as time ) ;
select cast('2020-10-19 12:35:29.123' as datetime ) ;

set @var1 = 10;
set @var2 = '제품판매처 : 삼성';
select @var1, @var2;
select @var2, prodname from buytbl;

-- 데이터 형 변환 cast(), convert()

select *from buytbl;
select avg(amount) from buytbl;
-- 실수를 정수형으로 변환
select cast(avg(amount)as signed integer ) from buytbl;
select convert(avg(amount), signed integer ) from buytbl;

-- 정수형을 실수형으로 변환
set @var3=3;
select cast(@var3 as float) ;
select convert(@var3, float);
-- 정수형을 문자로 변환
 select cast(@var3 as character) ;
select convert(@var3, char);

-- 246
select '100' + '200';
select concat('100' ,'200');
select concat(100,'200');
select 1> '2mega' ; -- 거짓이니까 0
select 3> '2mega' ; -- 참이니까 1
select 0= 'mega0' ; -- 문자는 0으로 바뀌니까 0=0 참

-- if 함수
-- select if ( 조건, 참, 거짓)

set @v1 =200;
set @v2 =20;
set @v3 = 100;

-- 가장 큰 수 구하기
select if (@v1 > @v2, if (@v1 > @v3, @v1, @v3), if (@v2 > @v3, @v2 ,@v3));
-- 가장 작은 수 구하기
select if ( @v1 < @v2 , if (@v1 <@v3 , @v1 , @v3), if ( @v2 <@v3 , @v2 , @v3));
-- 중간 수 구하기
select if (@v1 < @v2, if (@v1 > @v3, @v1, @v3), if (@v2 > @v3, @v2, @v3));

-- ifnull(수식1, 수식2)
-- 앞의 수식이 null이라면 바로 뒤로 넘겨줌.(2개 한정)
select ifnull(null, 100);
select ifnull(200, null);
select ifnull(200,300);
select ifnull(null, ifnull(null,300));

-- nullif(수식1, 수식2)
-- 두개가 같으면 null / 두개가 다르면 앞에꺼 출력
select nullif(100,100);
select nullif(200,100);

-- case when else end
select case 1
	when 1 then '일'
    when 2 then '이'
    when 3 then '삼'
    else '1,2,3이 아님'
end as 'case 연습';

-- 자바
-- switch @v1 {
-- 	case 1: print ('일'); break;
--     case 2: print ('이'); break;
--     case 3: print ('삼'); break;
--     default : print ('1,2,3이 아님');
-- }

select * from buytbl;
-- userid kbs 김범수, jyp 조용필, 나머지는 모름

select case userid
			when 'KBS' THEN '김범수'
			WHEN 'JYP' THEN '조용필'
			else '모름'
        END AS '이름',
        userID
	from buytbl;
    
-- 문자열 함수
-- concat()
-- concat_ws(구분자, 문자열1, 문자열2)
select concat_ws(',','100','200');
select elt(1,'하나','둘','셋');
select field('김','이','박','최','김' ); -- 처음 위치 김이라는 문자를 뒤에 문자열에서 찾기
select find_in_set('김','이, 박 , 최, 김, 송');
select instr('이,박,최,김,송','김');
select locate('김','이, 박 , 최, 김, 송');

select format (123456.123456, 4);

select hex(10), oct(8), bin(15);

select insert('abcdefghi',3,4,'0000');

select trim('    abc       ');
select substring('대학민국만세',3,2);
select substring_index('cafe.naver.com.co.kr','.',1);

set @v = 'cafe.naver.com.co.kr';
set @v2 = substring_index( @v,'.',4);
select @v2 ; -- cafe.naver.com.commit

-- 요구단계 com
-- 1단계com.co 만들기
set @v3 = substring_index(@v2, '.', -2);
select @v3;
set @v4 = substring_index(@v3, '.', -2);
select @v4;

set @v10 = 'a,b,c,d,e';
set @v11 = substring_index(@v10,',',2);
select @v11;
set @v12 = substring_index(@v11,',',2);
select @v12;

-- 숫자 함수
select ceiling(4.1), floor(4.7),round(4.7);
select pow(2,10);

-- 기억 공간 단위 
-- bit < 8bit  = 1byte < 1024 byte = 1kb < 1024kb = 1 megaByte < 1024mb = 1gb
-- 1024 gb = 1tb (terabye) < 1024tb = 1hb (hera byte )

select rand(), floor(1+ ( rand() * (7-1)) );

-- 1,235,456,577 천원이하 절삭
select truncate(1235456577,-3);

-- 날짜 시간 함수
select	mdate, adddate( mdate, interval 31 day)
from usertbl;

select *from usertbl;

select date(now()), time(now()), now();
select sysdate();

-- ------------------------ 261 대용량 파일 처리하기 - 파일 올리고 (업로드) 내리기 (다운로드)
-- 1단계 데이터 베이스를 만든다.
create database moviedb;
-- 2단계 데이터 베이스를 사용한다(활성화, 열기)
use moviedb;
-- 3단계 테이블 만들기
create table movietbl
( movie_id int,
  movie_title varchar(30),
  movie_director varchar(20),
  movie_star varchar(20),
  movie_script longtext,
  movie_film longblob
  );
  -- 4단계 데이터 삽입하기.
  insert into movietbl values
  ( 1, '쉰들러리스트', '스필버드', '리안니슨', 
  load_file('D:/AI/study/temp/movies/Schindler.txt'),
  load_file('D:/AI/study/temp/movies/Schindler.mp4')
  );
  -- 5단계 select문으로 검색을 한다.
  select *from movietbl;
  -- longtext, longblob가 null이 나오는 이유
  -- 1. 용량이 모자라서
  show variables like 'max_allowed_packet' ;
  -- 2. 경로가 틀려서
  show variables like 'secure_file_priv';
  -- > 따라서 환경설정을 해야함.
  
  -- 내려받기 데이터 베이스 --> 개인 컴퓨터로 다운로드
  -- 1단계 내릴 것을 확인하기
  select movie_script from movietbl where movie_id=1;
  -- 2단계 내리기
  select movie_script from movietbl where movie_id=1
  into outfile 'D:/AI/study/temp/movies/movies_script_copy.txt'
  lines terminated by '\\n';
  
-- 동영상 파일 내리기
-- 1단계 내릴 것 확인하기
select movie_film from movietbl where movie_id=1;
-- 2단계 내리기
select movie_film from movietbl where movie_id=1
into outfile 'D:/AI/study/temp/movies/movies_film_copy.mp4';

-- 피벗의 구현
use sqldb;
select *from usertbl;
select *from buytbl;
drop table pivottest;
create table pivotTest
( 	uName char(3),
	season char(2),
    amount int
);
insert into pivotTest values
('김범수','겨울',10), ('윤종신','여름', 15),('김범수','가을', 25),('윤종신','가을', 25),
('김범수','여름', 25),('윤종신','봄', 15),('김범수','봄', 15),('윤종신','겨울', 35);

select *from pivotTest;

-- 피벗: 함수 사용해서 보기 편하게 만들기
select uname '이름', sum(if (season ='봄', amount , 0)) '봄',
				    sum(if (season ='여름', amount ,0)) '여름' ,
                    sum(if (season ='가을', amount ,0) )'가을',
                    sum(if (season ='겨울', amount ,0) )'겨울', 
                    SUM(amount) '합계'
from pivotTest group by uname;

-- 270 page 문제 풀기
select season ,sum(if (uname='김범수', amount ,0)) '김범수' ,
			   sum(if (uname='윤종신', amount ,0))	'윤종신' ,
				sum(amount)'합계'
FROM pivotTest group by season order by season;

-- json 파일 처리하기
-- 1. json 만들기
-- json.array()
select json_array(1, "abc", null, true, curtime() ); -- []배열, 리스트
-- json_object()
select json_object( "score",87,"name","hong","age",25);
set @jsonData = json_object ("score",87,"name","hong","age",25);
select @jsonData;

select *from usertbl;

-- 키 userid, addr 값 json 만들기
select
	json_object (userid, addr)
from usertbl;

-- 키 userid, 값[010,000000] 형캐로 json을 만들기
select 
json_object(userid, json_array(mobile1, mobile2))
from usertbl;

-- 외부로 내보내기 json 파일로 만들기
select
json_object(userid, json_array(mobile1, mobile2))
from usertbl
into outfile 'D:/AI/study/temp/movies/jsonOutput.json';

-- 자료형이 json인지 판단하기
-- json_valid()
set @jsonData = json_object ("score",87,"name","hong","age",25);
select json_valid( @jsondata); -- json 자료형이므로 1을 반환

select
	if ( json_valid (@jsondata) = 1,
    'json입니다' , 'json이 아닙니다');
    
-- json 자료 안에 값을 검색하기
set @j = '["abc", [{"k":"10"},"def"],[{"x1":"abc1"},{"x2":"abc2"},{"x5":"abc5"}],{"y":"bcd"}]';

select json_search (@j , 'all' ,'abc5'); -- 못 찾으면 null을 출력함.

-- json_ectract

-- json_insert
set @j = '{"a":1, "b":[2,3]}';
select json_insert( @j, '$.c',10); -- 키가 새것이면 삽인된다.
select json_insert( @j, '$.a',10); -- 키가 이미 있으면 삽입되지 않는다.
select json_insert( @j, '$.b','[2,3,4]'); -- 키가 이미 있으면 삽입되지 않는다.

-- json_replace
set @j = '{"a":1, "b":[2,3]}';
select json_replace( @j, '$.a',10); -- 키가 있으면 수정
select json_replace( @j, '$.c',10); -- 키가 없으면 암것두 안 함.

-- -------------------- 조인 -- 면접 질문으로도 종종 나온다고 함.
select *from usertbl;
select *from buytbl;

select *from usertbl
	inner join buytbl
    on usertbl.userid = buytbl.userid;
    
select usertbl.name, buytbl.userid	from usertbl
	inner join buytbl
    on usertbl.userid = buytbl.userid
    where birthyear between 1970 and 1980;
    
    select usertbl.name, buytbl.userid	from usertbl
	inner join buytbl
    on usertbl.userid = buytbl.userid
    where birthyear between 1970 and 1980 order by usertbl.userid;
    
      select usertbl.name, buytbl.userid	from usertbl
	inner join buytbl
    on usertbl.userid = buytbl.userid
    where birthyear between 1970 and 1980 order by usertbl.userid limit 3;

    
-- 실행순서
 --    select usertbl.name, buytbl.userid	from usertbl
-- 					5							1
-- 	inner join buytbl
-- 				 2		
--     on usertbl.userid = buytbl.userid
-- 					3
-- 	where birthyear between 1970 and 1980 
-- 						4
--     order by usertbl.userid
-- 				6
--     limit 3;
-- 		7

select u.name, b.prodname	from usertbl u
	inner join buytbl b
    on u.userid = b.userid
    where u.userid = 'BBK';
    
-- 282
create table stdTbl(
	stdName varchar(10) not null primary key,
    addr char(4) not null
);
create table clubTbl(
	clubName varchar(10) not null primary key,
    roomNo char(4) not null
);
create table stdclubTbl(
	num int auto_increment not null primary key,
    stdName varchar(10) not null,
    clubName varchar(10) not null,
    foreign key(stdName) references stdTbl(stdName),
	foreign key(clubName) references clubTbl(clubName)
);

insert into stdTbl values
('김범수','경남'),('성시경','서울'),('조용필','경기'),('은지원','경북'),('바비킴','서울');

insert into clubTbl values
('수영','101호'),('바둑','102호'),('축구','103호'),('봉사','104호');

insert into stdclubTbl values
(null, '김범수', '바둑'),(null, '김범수', '축구'),
(null, '조용필', '축구'),(null, '은지원', '축구'),
(null, '은지원', '봉사'),(null, '바비킴', '봉사');

-- 1. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 학생을 기준으로 학생이름, 지역, 가입한 동아리, 동아리방 보기
select s.stdname, s.addr, c.clubname, c.roomno
from stdtbl s
inner join stdclubtbl sc
on s.stdname = sc.stdname
inner join clubtbl  c
on sc.clubname = c. clubname;

-- 2. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 축구를 선택하신 분의 이름과 지역은?
select s.stdname, s.addr, c.clubname
from stdtbl s
inner join stdclubtbl sc
on s.stdname= sc.stdname
inner join clubtbl c
on sc.clubname = c.clubname
where sc.clubname='축구';

-- 3. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 은지원이 선택한 동아리와 동아리방은?  축구 103호 봉사 104호
select c.clubname, c.roomno
from stdtbl s
inner join stdclubtbl sc
on s.stdname= sc.stdname
inner join clubtbl c
on sc.clubname = c.clubname
where sc.stdname='은지원';

-- 4. 요구사항 학생테이블, 동아리테이블, 학생동아리 테이블을 이용하여 
-- 서울 지역에 사는 사람이 선택한 동아리명은?
select s.stdname ,c.clubname
from stdtbl s
inner join stdclubtbl sc
on s.stdname= sc.stdname
inner join clubtbl c
on sc.clubname = c.clubname
where s.addr='서울';

-- 5. 요구사항 동아리방 101호와 102호를 사용하는 사람들의 이름을 구하기
-- 답은 101호 null, 102호 김범수

select  c.roomNo , s.stdname 
from stdtbl s
	left outer join stdclubtbl sc
on s.stdname= sc.stdname
right outer join clubtbl c
on sc.clubname = c.clubname
where c.roomNo in ('101호','102호');

-- outer join
-- join에 만족하지 않는 행까지 포함하기 null까지 포함하기

select
	*
from stdtbl s
	left outer join stdclubtbl sc
    on s.stdname = sc.stdname;
    
select
	*
from stdclubtbl s
	right outer join clubtbl c
    on s.clubname = c.clubname
  
  union
select
	*
from stdtbl s
	left outer join stdclubtbl sc
    on s.stdname = sc.stdname;
    
select  
   *
from stdtbl s
   left outer join stdclubtbl sc 
   on s.stdName = sc.stdName 
   left outer join clubtbl c 
   on sc.clubName = c.clubName 

union   

select  
   *
from stdtbl s
   left outer join stdclubtbl sc 
   on s.stdName = sc.stdName 
   right outer join clubtbl c 
   on sc.clubName = c.clubName;
   
   -- cross join 비강추
select *from stdtbl s, stdclubtbl sc, clubtbl c
where s.stdname = sc.stdname or sc.clubname = c.clubname;

select *from stdtbl
	cross join stdclubtbl
    cross join clubtbl;
    
-- self 조인 ----------------
USE sqldb;
CREATE TABLE empTbl (emp CHAR(3), manager CHAR(3), empTel VARCHAR(8));

INSERT INTO empTbl VALUES('나사장',NULL,'0000');
INSERT INTO empTbl VALUES('김재무','나사장','2222');
INSERT INTO empTbl VALUES('김부장','김재무','2222-1');
INSERT INTO empTbl VALUES('이부장','김재무','2222-2');
INSERT INTO empTbl VALUES('우대리','이부장','2222-2-1');
INSERT INTO empTbl VALUES('지사원','이부장','2222-2-2');
INSERT INTO empTbl VALUES('이영업','나사장','1111');
INSERT INTO empTbl VALUES('한과장','이영업','1111-1');
INSERT INTO empTbl VALUES('최정보','나사장','3333');
INSERT INTO empTbl VALUES('윤차장','최정보','3333-1');
INSERT INTO empTbl VALUES('이주임','윤차장','3333-1-1');


select *from emptbl;

-- 우대리 상관의 연락처 답 '2222-2'
select
*
from emptbl e
	inner join emptbl e1
    on e.manager = e1.emp
    where e.emp = '우대리';
    
-- 이주임 매니저의 매니저는?
select
e1.manager
from emptbl e
	inner join emptbl e1
    on e.manager = e1.emp
    where e.emp = '이주임';

-- 이주임 매니저의 매니저의 전화번호는?
-- self join을 2단계 한다.
-- 찾으려는 정보를 1줄(행)에 모두 만들어 두고 검색 해야한다.
select
e2.emptel
from emptbl e
	inner join emptbl e1
    on e.manager = e1.emp
    inner join emptbl e2
    on e1.manager = e2.emp
    where e.emp='이주임';
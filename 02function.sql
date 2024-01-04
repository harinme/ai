--dual >> 산술 연산 값 출력 (연산은 별도의 다른 테이블이 필요 없으니까! 그렇다고 from 없으면 실행도 안됨)
-- dual은 oracel에서 제공하는 계산용 테이블
select 24*60 From dual;

select * from dual;

select sign(10) from dual;

-- round(x, y) x를 특정 자릿수(소수점 기준 y+1번째 )에서 반올림한 값 출력// y 미입력시 소수점 기준으로 반올림. 
-- (0.12345, 1)-> 0.1 >> y+1=2 소수점 2번째에서 반올림해줌. >> 소수점 y번째까지 나오게 출력
select 34.5678, round (34.5678) from dual;

-- trunc(x,y) 버림 y번째에서 버림해라. -면 소수점 기준 앞, +면 소수점 기준 뒤 >>소수점 y번째까지 나오게 출력
select trunc(53.4567,-1) from dual;

-- mod(x,y) x를 y 로 나눈 후 나머지 값 출력 = java x%y
select mod(25,4) from dual; 

-- upper(대문자), lower(소문자), initcap(첫글자만 대문자 나머지 소문자) 대소문자 변화 함수
select *from student;
SELECT stu_email from student;
SELECT UPPER(STU_EMAIL) ,  lower(STU_EMAIL), initcap(stu_email) from student;

select ('Welcome to Oracle'),
 upper ('Welcome to Oracle') ,
lower ('Welcome to Oracle') ,
 initcap ('Welcome to Oracle') from dual;
 
 -- length>>(글자 개수), lengthb>>(바이트수) 문자 길이 변환 //유니코드는 모든 수를 2바이트로 봄
 select length('Oracle'), length('오라클'),
lengthb('Oracle'), lengthb('오라클') from dual;

-- substr(문자~,x,y) 문자의 x번째부터 y개의 글자 추출 // 첫 위치는 1번부터 // python은 0번부터
select substr ('Welcome to Oracle',4,3) from dual;
--문종헌의 이메일의 앞부부을 추출하기
select substr (stu_email,1,4) from student where stu_name = '문종헌';
-- stu_id가 101에서 110까지의  학생들 이메일 맨 뒤 com 만 출력하기
select substr(stu_email,-3,3) from student where stu_id between 101 and 110;

-- instr(대상, 찾는 문자) 대상에서 찾는 문자의 위치를 숫자로 출력(중복일 경우, 처음에 나온 값으로 출력)
select instr('Welcome to Oracle', 'e') from dual;
-- instr(대상, 찾는 문자, 시작 위치)
--( 시작 위치 기준으로 처음에 나온 값으로 출력)
select instr('Welcome to Oracle', 'e',3) from dual;
-- instr(대상, 찾는 문자, 시작 위치, 몇번째 발견=y) 
-- ( 시작 위치 기준으로 문자를 y번째 발견하는지 출력)
select instr('Welcome to Oracle', 'e',3,2) from dual;
-- 모든 학생의 @ 위치 찾기
select instr(stu_email,'@') from student;
--모든 학생의 id 찾기(@이전까지 출력)
select substr(stu_email, 1 , instr(stu_email,'@')-1)  id from student;

-- Lpad (left padding) // Rpad ( right padding) padding 채우다
-- lpad( x,y,z) x 기준 y 바이트(개)까지 왼쪽으로 z를 채워라 >>  (y바이트 기준) zzzzzx
-- 자릿수 맞춰서 글자 정렬할 때
select lpad ('oracle',20, '#') from dual;
select rpad ('oracle',20, '#') from dual;

select *from emp;
select lpad(job,10,' ') from emp;

-- abs(x) x의 절대값을 출력함.
select -10 ,abs(-10) from dual;

-- floor(x) x의 소수점을 제거한 값 출력 0.1->0
select 34.5678, floor (34.5678) from dual;

-- 3. 형변환 함수
-- to_char()    to_date()    to_number()
-- 1 >> '1' / '1' >> 1  // 05/07/13 >> '05/07/13'
-- sysdate 현재 날짜 및 시간 정보 출력
select sysdate from dual;

--날짜를 문자로
select sysdate, to_char(sysdate,'yyyy-mm-dd day am hh:mi:ss') from dual;
select *from emp;
select hiredate, to_char(hiredate,'yyyy-mm-dd day') from emp;

--숫자를 문자로
select to_char (12345678, '000,000,000') from dual; -- 남으면 0으로 채운다
select to_char (12345678, '000,000') from dual; -- 모자르면 #으로 채운다 error

select to_char (12345678, '999,999,999')from dual; -- 남으면 공백으로 채운다
select to_char (12345678, '999,999') from dual; -- 모자르면 #으로 채운다 error

select to_char (12345678, 'L999,999,999')from dual; -- 남으면 공백으로 채운다 L-> 통화(화폐) 기호

-- 날짜형으로 바꾸기 to_date ****
-- 오라클 기본 날짜형 : 'mm/dd/yy' 형식
-- to_date('문자', '형식') 형식에 맞춰서 문자가 날짜로 바뀜.
-- to_date(숫자, '형식') 숫자가 형식에 맞춰서 날짜형이 됨.
select *from emp;
-- select *from emp where hiredate = 20070402; error
select *from emp where hiredate = to_date(20070402,'yyyymmdd');
select *from emp where hiredate = to_date('20070402','yyyymmdd');

--오늘 날짜 - 작년 생일
select trunc(sysdate - to_date( 20230121, 'yyyymmdd' )) from dual;

select *from emp;
-- 안성기 입사일에서 김사랑 입사일 빼기 
select  to_date( 19961004, 'yyyymmdd')-to_date('20070301', 'yyyymmdd') from dual;

select to_number('20,000','99,999') - to_number('10,000','99,999') from dual;
select '20000' - '10000' from dual;

-- 날짜 함수
-- 어제 오늘 내일
select sysdate-1 어제, sysdate 오늘, sysdate + 1 내일 from dual;

select to_char(sysdate-1, 'yyyy-mm-dd day') 어제, to_char(sysdate, 'yyyy-mm-dd day') 오늘, to_char(sysdate + 1, 'yyyy-mm-dd day') 내일 from dual;

--months_between (x,y) y날짜 기준 x날짜까지 몇 개월이 지났는지
select months_between(sysdate, '2023/12/4') from dual;

-- add_months(x,y) x에서 y개월 지나면 언제인지
select add_months( '2023/10/01' , 3) from dual; 

-- 년도는 7월을 기준으로 반올림, 달은 17일을 기준으로 반올림.
select round(to_date('20/07/01','yy/mm/dd'),'year') from dual;

select hiredate, trunc(hiredate,'month') from emp;

select*from emp;
--근무년수, 근무 달수
-- 오늘 날짜 - 입사일 년수, 달수
select ename , sysdate, hiredate from emp;
select ename 사원명, sysdate 현재일, hiredate 입사일, trunc(months_between(sysdate, hiredate), 0) 근무달수  from emp;
-- select ename 사원명, sysdate 현재일, hiredate 입사일, years_between(sysdate, hiredate) 근무년수  from emp;
--year_between() 함수는 없음. 따라서 month_between()으로 근무 달 수 구한 후 12로 나누기

-- 입사일, 현재 날짜, 근속년, 근속월, 근속일
select ename 사원명, sysdate 현재일, hiredate 입사일,
trunc(months_between(sysdate, hiredate)/12, 0) 근무년수 ,
trunc(months_between(sysdate, hiredate), 0) 근무달수 ,
trunc(months_between(sysdate, hiredate), 0)*30 근무일수 from emp;

-- 오늘 날짜를 기준으로 최초로 도래하는 수요일의 날짜는?
select to_char(next_day(sysdate,'수'),'yy/mm/dd') from dual;

select last_day ('24/01/01') from dual;

select *from emp;

select empno 사원번호,  last_day (sysdate) 급여일 from  emp;

select *from emp;
select comm, nvl(comm,0) from emp;

-- nvl( 칼럼명, 0) 칼럼명의  null을 0으로 대체한다.
select*from emp where hiredate is null;
-- 입사일이 null이면 오늘날짜로 넣어주세요
select nvl(hiredate, sysdate)from emp where hiredate is null;
-- 이름이 없으면 무명으로 출력하기 job이 null이면 사원 출력
select empno, nvl(ename, '무명') , nvl(job, '사원') from emp;

-- 

-- nvl2(식1,식2,식3)
-- 식1이 null이 아니면 식2을 반환하고 null 이면 식3을 반환한다.
select *from emp;
select ename, sal, nvl2(comm, sal*12+comm, sal*12) 연봉 from emp;

-- coalesce(식1,식2, ... , 식n)
-- 식1 이 null이 아니면 식1 값 출력, 식 2가 null이 아니면 식2 출력하고, 모두다 null이면 식 n 출력하기
-- ex) 사원 테이블에서 커미션이 null 이 아니면 커미션을 출력하고 커미션이 null이고 급여가 null이 아니면 급여를 출력하고 
-- 만약 커미션과 급여가 모두 null이면 0을 출력하기

-- 급여가 null인 자료 삽입하기.
insert into emp values(1019, null,'대리',1003, sysdate, null,null,20);
insert into emp values(1020, null,'대리',1003, sysdate, null,100,20);

select  comm, sal, coalesce (comm,sal,0) from emp;

-- 선택을 위한 decode 함수( switch~case문과 비슷함)
/* decode (표현식, 조건1, 결과1, 
                             조건2, 결과2,
                             조건3, 결과3,
                             기본결과n)
                             */
-- ex) deptno 가 10이면 경리부, 20 이면 인사부, 30이면 영업부 40이면 전산부로 출력하기
select *from emp;
select deptno, decode( deptno, 10, '경리부',
                                                 20, '인사부',
                                                 '전산부')
                                                 from emp;
                                                 
select *from student;
-- sex가 'm'남자 'f' 여자
select sex, decode( sex, 'M' , ' 남자' , 'F' , '여자')
FROM STUDENT;

-- 그룹함수
select  count(ename) from emp; -- 20 행 입력 1행 출력 >> 그룹 함수
select ename from emp; -- 20 행 입력 20행 출력 >> 단일행 함수

-- select  ename , count(ename) from emp;  출력 행이 달라서 같이 사용할 수 없음. error

select sum(sal) from emp;
select  count(ename), sum(sal) , trunc(avg(sal)), max(sal), min(sal) from emp; -- 그룹 함수끼리는 같이 사용 가능.
-- 그룹 함수에서 sum,  count 에서는 null 연산에서 제외

-- 보너스를 받는 사원수는?
select count (comm) from emp;

-- 직위 종류의 수는?
-- 직위 종류
select count(distinct job) from emp;

select *from emp;

select *from emp order by deptno;

-- 각 부서별로 제일 높은 급여 출력하기
select deptno, max(sal) from emp group by deptno order by deptno;

--job 별로 제일 낮은 급여 출력하기
select job, min(sal) from emp group by job; 
select * from emp  order by job;

-- job 별로 급여 평균 구하기.
select job, avg(sal) from emp group by job; 

--사원이거나 대리이거나 과장의 급여 합계
-- 1단계 사원, 대리, 과장 출력
select  *from emp where job in ('사원', '대리' , '과장');

-- 2단계 그룹으로 지정하기
select  job, round(avg(sal)) from emp where job in ('사원', '대리' , '과장') group by job;

--최대 급여가 700을 초과하는 부서에 대해서 최대 급여와 최소 급여 구하기.
-- 1단계 부서별 최대값 구하기
select  deptno, max(sal) from emp group by deptno;

-- 2단계 최대 급여가 700이 넘는 것은? - 그룹 함수의 조건
select deptno, max(sal) from emp group by deptno having max(sal) >700;

-- 직급 별로 급여의 평균이 500 이상인 직급, 급여 평균, 부서명 출력하기
-- 1단계 직급 멸로 그룹
select job, avg(sal)  from emp  group by job;

-- 2단계 급여의 평균이 500 이상인 것 출력
select job, avg(sal) from emp having avg(sal)>=500 group by job;
-- 오름차순
select job, avg(sal) from emp having avg(sal)>=500 group by job order by avg(sal) asc;


select*from student;
-- 최대 나이
select max(age) 최대나이 from student;

--최소 나이
select min(age) 최소나이 from student;

-- 평균 나이
select avg(age) 평균나이 from student;

-- 남자의 최대나이 여자의 최대나이
select sex, max(age) from student group by sex;

-- cou_id 별로 평균 나이 구하기
select cou_id, avg(age) from student group by cou_id;

--  cou_id 별로 평균 나이r가 25세 이상인 코스와 평균 나이 구하기
select cou_id, avg(age) from student group by cou_id having avg(age)>=25;

-- 남자인 경우에 cou_id 별로 평균 나이r가 25세 이상인 코스와 평균 나이 구하기 오름차순
select cou_id, avg(age) from student where sex = 'M' group by cou_id having avg(age)>=25 order by avg(age) asc;
select*from emp;
select*from student;
select*from dept;

select dname from dept;
select empno, ename, sal, job from emp;

/* 여러줄 주석*/
-- 한줄 주석
--stu_id, stu_name, sex 컬럼만 검색하기. -> 대소문자 구분 없음.
select stu_id, stu_name, sex from student;

-- 산술 연산자
select empno, ename, job from emp;
select empno, ename, sal,sal*12, job from emp;
select empno as 사원번호, ename as 사원명, sal as 급여,sal*12 as 연봉, sal*12*0.33 as 연세금, job as 직급 from emp;
-- 컬럼명 as 별칭
select empno 사원번호, ename  사원명, sal 급여,sal*12 연봉, sal*12*0.33 연세금, job  직급 from emp;
-- as 생략 가능

SELECT*from salgrade;
-- 산술 연산 hidal+1000 더하기, losal+1500
SELECT grade,losal, losal+1500, hisal, hisal+1000 from salgrade;
--별칭(애칭) 붙여주기
-- 등급, 최저금액, 인상최저금액, 최대금액, 인상최대금액
SELECT grade 등급,losal 최저금액, losal+1500 인상최저금액, hisal 최대금액, hisal+1000 인상최대금액 from salgrade;

--NULL 이란? 0 아님, 빈 공간 아니다, 미확정, 알수 없는 의미, 어떤 값인지 아직 모른다. 연산을 할 수 없음.

select *from emp;

-- comm 보너스를 +100Tlr wlrmqgkwk
select comm, comm+100 from emp; -- null 컬럼은 +100이 안되고 null로 나타난다.
select comm, nvl(comm,0) +100  "보 너 스" from emp;
-- null 값도 연산하고 싶다면, nvl(칼러명, 숫자) null 이면 숫자로 아니면 원래 값으로 연산

-- 칼럼 간 연결해서 작성하고 싶을 때 || 문자열은 '  '로
select ename || '의 직급은' || job || '입니다' 직급 from emp;

select *from student;
-- 문종헌의 나이는 24살입니다.
select STU_NAME || '의 나이는' || age || '입니다' 나이 from student;

select cou_id from student;

-- 전체 코스는 무엇인가요?
-- 중복 제거하기 select distinct 칼럼명 from 부서명
select distinct cou_id from student;

select *from emp;
--부서명(depntno)의 종류는? 중복 제거하기
select distinct deptno from emp;

-- 부서명이 20인 사원들 보기
-- *은 전체 where ~ 때(조건)
select * from emp where deptno = 20;
-- job이 사원인 것만 보기
select * from emp where job= '사원';
-- 사원 또는 과장인 것만 보기
select * from emp where job = '사원' or job='과장';

-- sal 400 이상인 사람의 사원번호, 이름, 급여 보기
select empno 사원번호, ename 이름, sal 급여 from emp where sal >=400;

-- sal 400 이상이고 부장인 사람의 사원번호, 이름,직급, 급여 보기
select empno 사원번호, ename 이름, job 직급, sal 급여 from emp where job = '부장' and sal>=400;


-- Hiredate 입사일
-- 입사일이 2005/01/01 이전에 입사한 사람
select * from emp where hiredate < '05/01/01';

-- 입사일이 2005/01/01 이후에 입사한 사람
select * from emp where hiredate > '05/01/01';

-- 입사일이 2006/01/01 ~2007/12/31 사이에 입사한 사람
select * from emp where '07/12/31'>= hiredate and hiredate >= '06/01/01';

-- 이씨 성을 가진 사람만
-- like 유사하다 이씨만 찾고 싶다면 뒤에 %를 써줌.
select * from emp where ename like '이%'; 

-- 이씨이거나 오씨이거나
select * from emp where ename like '이%' or ename like '오%'; 

-- 이씨 성이 아닌 사람 ->not
select * from emp where not ename like '이%';
select * from emp where ename  not like '이%';

-- 이름 중간 글씨가 '동'인 사람
select * from emp where ename like '%동%';

-- in ~ 안에
-- job 사원이거나 과장이거나 부장인 사람출력하기
select * from emp where job='사원' or job='과장' or job='부장';
select * from emp where job in ('사원','과장','부장');

-- between 시작수 and 끝 수 >>시작수~끝수 사이
-- 300 <=sal <= 600인 사람 출력하기
select *from emp where sal between 300 and 600;

-- 입사일이 2006/01/01 ~2007/12/31 사이에 입사한 사람
select * from emp where '07/12/31'>= hiredate and hiredate >= '06/01/01';
select * from emp where hiredate between '06/01/01'  and'07/12/31' ;

--MGR(멘토사번)이 1010~1020 사이
select *from emp where mgr between 1010 and 1020;

--comm 이 null 인 사람 출력하기 ***
-- select *from emp where comm = null;은 안됨.
select *from emp where comm is null;

--이름 오름차순으로 출력하기
select *from emp order by  ename  asc; -- asc >> ascending 오름 차순으로 생략 가능
select *from emp order by  ename;-- 기본도 오름차순.

--급여 내림차순으로 출력하기
select *from emp order by sal desc; -- descending 내림차순 생략 불가

-- 부서 번호 오름차순 출력
select *from emp order by deptno asc;

--job 내림차순 출력
select *from emp order by job desc;

-- 부서 번호 오름차순 , 만약 동일하면, empno(사원번호) 순서대로 출력하기
select *from emp order by deptno asc, empno;

-- 부서 번호 오름차순 , 만약 동일하면, 급여가 내림차순 순서대로 출력하기
select *from emp order by deptno asc, sal desc;

--job이 과장이거나 부장인 사람의 오름차순으로 출력하기
select * from emp where job in ('과장','부장') order by ename;
--select * from emp order by ename where job in ('과장','부장'); -- 조건 먼저 쓰고 order by 쓰기 아니면 오류

--deptno가 10이거나 30인 사람의 mgr 오름차순,deptno 오름차순
select * from emp where deptno in (10, 30) order by mgr, deptno;

select *from group_star
union -- 위 아래의 합집합이 출력됨.
select *from single_star;

select *from group_star
union all -- 위 아래의 합집합( 중복 포함) 출력
select *from single_star;

--교집합
select *from group_star
intersect
select *from single_star;

--차집합( 그룹만 하는사람
select *from group_star
minus
select *from single_star;

--차집합( 싱글만 하는사람
select *from single_star
minus
select *from group_star ;

select *from emp;
--급여가 300 이하인 사원의 사원번호, 사원이름, 급여를 출력하기
select empno, ename,sal from emp where sal <=300;

-- 이름이 '오지호'인 사원의 사원번호, 사원명, 급여를 출력하기
select empno, ename,sal from emp where ename = '오지호';

-- 급여가 250 이거나 300이거나 500인 사원들의 사원번호와 사원명과 급여 출력하기
select empno, ename,sal from emp where sal in (250,300,500);

--급여가 250도 300 도 아닌 사원들 출력하기
select * from emp where not sal in (250, 300);

-- 이름이 김으로 시작하는 사람과 이름 중에 기를 포함하는 사원의 사원번호와 사원이름 출력
select  empno, ename from emp where ename like '김%' or ename like '%기%';

-- 상급자(mgr)가 없는 사원을 출력하기
select * from emp where mgr is null;

-- 부서 번호가 빠른 사원부터 출력하되 같은 부서 내의 사원을 출력할 경우 입사한지 가장 오래된 사원부터 출력하기
select * from emp order by deptno , hiredate;
--dual >> ��� ���� �� ��� (������ ������ �ٸ� ���̺��� �ʿ� �����ϱ�! �׷��ٰ� from ������ ���൵ �ȵ�)
-- dual�� oracel���� �����ϴ� ���� ���̺�
select 24*60 From dual;

select * from dual;

select sign(10) from dual;

-- round(x, y) x�� Ư�� �ڸ���(�Ҽ��� ���� y+1��° )���� �ݿø��� �� ���// y ���Է½� �Ҽ��� �������� �ݿø�. 
-- (0.12345, 1)-> 0.1 >> y+1=2 �Ҽ��� 2��°���� �ݿø�����. >> �Ҽ��� y��°���� ������ ���
select 34.5678, round (34.5678) from dual;

-- trunc(x,y) ���� y��°���� �����ض�. -�� �Ҽ��� ���� ��, +�� �Ҽ��� ���� �� >>�Ҽ��� y��°���� ������ ���
select trunc(53.4567,-1) from dual;

-- mod(x,y) x�� y �� ���� �� ������ �� ��� = java x%y
select mod(25,4) from dual; 

-- upper(�빮��), lower(�ҹ���), initcap(ù���ڸ� �빮�� ������ �ҹ���) ��ҹ��� ��ȭ �Լ�
select *from student;
SELECT stu_email from student;
SELECT UPPER(STU_EMAIL) ,  lower(STU_EMAIL), initcap(stu_email) from student;

select ('Welcome to Oracle'),
 upper ('Welcome to Oracle') ,
lower ('Welcome to Oracle') ,
 initcap ('Welcome to Oracle') from dual;
 
 -- length>>(���� ����), lengthb>>(����Ʈ��) ���� ���� ��ȯ //�����ڵ�� ��� ���� 2����Ʈ�� ��
 select length('Oracle'), length('����Ŭ'),
lengthb('Oracle'), lengthb('����Ŭ') from dual;

-- substr(����~,x,y) ������ x��°���� y���� ���� ���� // ù ��ġ�� 1������ // python�� 0������
select substr ('Welcome to Oracle',4,3) from dual;
--�������� �̸����� �պκ��� �����ϱ�
select substr (stu_email,1,4) from student where stu_name = '������';
-- stu_id�� 101���� 110������  �л��� �̸��� �� �� com �� ����ϱ�
select substr(stu_email,-3,3) from student where stu_id between 101 and 110;

-- instr(���, ã�� ����) ��󿡼� ã�� ������ ��ġ�� ���ڷ� ���(�ߺ��� ���, ó���� ���� ������ ���)
select instr('Welcome to Oracle', 'e') from dual;
-- instr(���, ã�� ����, ���� ��ġ)
--( ���� ��ġ �������� ó���� ���� ������ ���)
select instr('Welcome to Oracle', 'e',3) from dual;
-- instr(���, ã�� ����, ���� ��ġ, ���° �߰�=y) 
-- ( ���� ��ġ �������� ���ڸ� y��° �߰��ϴ��� ���)
select instr('Welcome to Oracle', 'e',3,2) from dual;
-- ��� �л��� @ ��ġ ã��
select instr(stu_email,'@') from student;
--��� �л��� id ã��(@�������� ���)
select substr(stu_email, 1 , instr(stu_email,'@')-1)  id from student;

-- Lpad (left padding) // Rpad ( right padding) padding ä���
-- lpad( x,y,z) x ���� y ����Ʈ(��)���� �������� z�� ä���� >>  (y����Ʈ ����) zzzzzx
-- �ڸ��� ���缭 ���� ������ ��
select lpad ('oracle',20, '#') from dual;
select rpad ('oracle',20, '#') from dual;

select *from emp;
select lpad(job,10,' ') from emp;

-- abs(x) x�� ���밪�� �����.
select -10 ,abs(-10) from dual;

-- floor(x) x�� �Ҽ����� ������ �� ��� 0.1->0
select 34.5678, floor (34.5678) from dual;

-- 3. ����ȯ �Լ�
-- to_char()    to_date()    to_number()
-- 1 >> '1' / '1' >> 1  // 05/07/13 >> '05/07/13'
-- sysdate ���� ��¥ �� �ð� ���� ���
select sysdate from dual;

--��¥�� ���ڷ�
select sysdate, to_char(sysdate,'yyyy-mm-dd day am hh:mi:ss') from dual;
select *from emp;
select hiredate, to_char(hiredate,'yyyy-mm-dd day') from emp;

--���ڸ� ���ڷ�
select to_char (12345678, '000,000,000') from dual; -- ������ 0���� ä���
select to_char (12345678, '000,000') from dual; -- ���ڸ��� #���� ä��� error

select to_char (12345678, '999,999,999')from dual; -- ������ �������� ä���
select to_char (12345678, '999,999') from dual; -- ���ڸ��� #���� ä��� error

select to_char (12345678, 'L999,999,999')from dual; -- ������ �������� ä��� L-> ��ȭ(ȭ��) ��ȣ

-- ��¥������ �ٲٱ� to_date ****
-- ����Ŭ �⺻ ��¥�� : 'mm/dd/yy' ����
-- to_date('����', '����') ���Ŀ� ���缭 ���ڰ� ��¥�� �ٲ�.
-- to_date(����, '����') ���ڰ� ���Ŀ� ���缭 ��¥���� ��.
select *from emp;
-- select *from emp where hiredate = 20070402; error
select *from emp where hiredate = to_date(20070402,'yyyymmdd');
select *from emp where hiredate = to_date('20070402','yyyymmdd');

--���� ��¥ - �۳� ����
select trunc(sysdate - to_date( 20230121, 'yyyymmdd' )) from dual;

select *from emp;
-- �ȼ��� �Ի��Ͽ��� ���� �Ի��� ���� 
select  to_date( 19961004, 'yyyymmdd')-to_date('20070301', 'yyyymmdd') from dual;

select to_number('20,000','99,999') - to_number('10,000','99,999') from dual;
select '20000' - '10000' from dual;

-- ��¥ �Լ�
-- ���� ���� ����
select sysdate-1 ����, sysdate ����, sysdate + 1 ���� from dual;

select to_char(sysdate-1, 'yyyy-mm-dd day') ����, to_char(sysdate, 'yyyy-mm-dd day') ����, to_char(sysdate + 1, 'yyyy-mm-dd day') ���� from dual;

--months_between (x,y) y��¥ ���� x��¥���� �� ������ ��������
select months_between(sysdate, '2023/12/4') from dual;

-- add_months(x,y) x���� y���� ������ ��������
select add_months( '2023/10/01' , 3) from dual; 

-- �⵵�� 7���� �������� �ݿø�, ���� 17���� �������� �ݿø�.
select round(to_date('20/07/01','yy/mm/dd'),'year') from dual;

select hiredate, trunc(hiredate,'month') from emp;

select*from emp;
--�ٹ����, �ٹ� �޼�
-- ���� ��¥ - �Ի��� ���, �޼�
select ename , sysdate, hiredate from emp;
select ename �����, sysdate ������, hiredate �Ի���, trunc(months_between(sysdate, hiredate), 0) �ٹ��޼�  from emp;
-- select ename �����, sysdate ������, hiredate �Ի���, years_between(sysdate, hiredate) �ٹ����  from emp;
--year_between() �Լ��� ����. ���� month_between()���� �ٹ� �� �� ���� �� 12�� ������

-- �Ի���, ���� ��¥, �ټӳ�, �ټӿ�, �ټ���
select ename �����, sysdate ������, hiredate �Ի���,
trunc(months_between(sysdate, hiredate)/12, 0) �ٹ���� ,
trunc(months_between(sysdate, hiredate), 0) �ٹ��޼� ,
trunc(months_between(sysdate, hiredate), 0)*30 �ٹ��ϼ� from emp;

-- ���� ��¥�� �������� ���ʷ� �����ϴ� �������� ��¥��?
select to_char(next_day(sysdate,'��'),'yy/mm/dd') from dual;

select last_day ('24/01/01') from dual;

select *from emp;

select empno �����ȣ,  last_day (sysdate) �޿��� from  emp;

select *from emp;
select comm, nvl(comm,0) from emp;

-- nvl( Į����, 0) Į������  null�� 0���� ��ü�Ѵ�.
select*from emp where hiredate is null;
-- �Ի����� null�̸� ���ó�¥�� �־��ּ���
select nvl(hiredate, sysdate)from emp where hiredate is null;
-- �̸��� ������ �������� ����ϱ� job�� null�̸� ��� ���
select empno, nvl(ename, '����') , nvl(job, '���') from emp;

-- 

-- nvl2(��1,��2,��3)
-- ��1�� null�� �ƴϸ� ��2�� ��ȯ�ϰ� null �̸� ��3�� ��ȯ�Ѵ�.
select *from emp;
select ename, sal, nvl2(comm, sal*12+comm, sal*12) ���� from emp;

-- coalesce(��1,��2, ... , ��n)
-- ��1 �� null�� �ƴϸ� ��1 �� ���, �� 2�� null�� �ƴϸ� ��2 ����ϰ�, ��δ� null�̸� �� n ����ϱ�
-- ex) ��� ���̺��� Ŀ�̼��� null �� �ƴϸ� Ŀ�̼��� ����ϰ� Ŀ�̼��� null�̰� �޿��� null�� �ƴϸ� �޿��� ����ϰ� 
-- ���� Ŀ�̼ǰ� �޿��� ��� null�̸� 0�� ����ϱ�

-- �޿��� null�� �ڷ� �����ϱ�.
insert into emp values(1019, null,'�븮',1003, sysdate, null,null,20);
insert into emp values(1020, null,'�븮',1003, sysdate, null,100,20);

select  comm, sal, coalesce (comm,sal,0) from emp;

-- ������ ���� decode �Լ�( switch~case���� �����)
/* decode (ǥ����, ����1, ���1, 
                             ����2, ���2,
                             ����3, ���3,
                             �⺻���n)
                             */
-- ex) deptno �� 10�̸� �渮��, 20 �̸� �λ��, 30�̸� ������ 40�̸� ����η� ����ϱ�
select *from emp;
select deptno, decode( deptno, 10, '�渮��',
                                                 20, '�λ��',
                                                 '�����')
                                                 from emp;
                                                 
select *from student;
-- sex�� 'm'���� 'f' ����
select sex, decode( sex, 'M' , ' ����' , 'F' , '����')
FROM STUDENT;

-- �׷��Լ�
select  count(ename) from emp; -- 20 �� �Է� 1�� ��� >> �׷� �Լ�
select ename from emp; -- 20 �� �Է� 20�� ��� >> ������ �Լ�

-- select  ename , count(ename) from emp;  ��� ���� �޶� ���� ����� �� ����. error

select sum(sal) from emp;
select  count(ename), sum(sal) , trunc(avg(sal)), max(sal), min(sal) from emp; -- �׷� �Լ������� ���� ��� ����.
-- �׷� �Լ����� sum,  count ������ null ���꿡�� ����

-- ���ʽ��� �޴� �������?
select count (comm) from emp;

-- ���� ������ ����?
-- ���� ����
select count(distinct job) from emp;

select *from emp;

select *from emp order by deptno;

-- �� �μ����� ���� ���� �޿� ����ϱ�
select deptno, max(sal) from emp group by deptno order by deptno;

--job ���� ���� ���� �޿� ����ϱ�
select job, min(sal) from emp group by job; 
select * from emp  order by job;

-- job ���� �޿� ��� ���ϱ�.
select job, avg(sal) from emp group by job; 

--����̰ų� �븮�̰ų� ������ �޿� �հ�
-- 1�ܰ� ���, �븮, ���� ���
select  *from emp where job in ('���', '�븮' , '����');

-- 2�ܰ� �׷����� �����ϱ�
select  job, round(avg(sal)) from emp where job in ('���', '�븮' , '����') group by job;

--�ִ� �޿��� 700�� �ʰ��ϴ� �μ��� ���ؼ� �ִ� �޿��� �ּ� �޿� ���ϱ�.
-- 1�ܰ� �μ��� �ִ밪 ���ϱ�
select  deptno, max(sal) from emp group by deptno;

-- 2�ܰ� �ִ� �޿��� 700�� �Ѵ� ����? - �׷� �Լ��� ����
select deptno, max(sal) from emp group by deptno having max(sal) >700;

-- ���� ���� �޿��� ����� 500 �̻��� ����, �޿� ���, �μ��� ����ϱ�
-- 1�ܰ� ���� ��� �׷�
select job, avg(sal)  from emp  group by job;

-- 2�ܰ� �޿��� ����� 500 �̻��� �� ���
select job, avg(sal) from emp having avg(sal)>=500 group by job;
-- ��������
select job, avg(sal) from emp having avg(sal)>=500 group by job order by avg(sal) asc;


select*from student;
-- �ִ� ����
select max(age) �ִ볪�� from student;

--�ּ� ����
select min(age) �ּҳ��� from student;

-- ��� ����
select avg(age) ��ճ��� from student;

-- ������ �ִ볪�� ������ �ִ볪��
select sex, max(age) from student group by sex;

-- cou_id ���� ��� ���� ���ϱ�
select cou_id, avg(age) from student group by cou_id;

--  cou_id ���� ��� ����r�� 25�� �̻��� �ڽ��� ��� ���� ���ϱ�
select cou_id, avg(age) from student group by cou_id having avg(age)>=25;

-- ������ ��쿡 cou_id ���� ��� ����r�� 25�� �̻��� �ڽ��� ��� ���� ���ϱ� ��������
select cou_id, avg(age) from student where sex = 'M' group by cou_id having avg(age)>=25 order by avg(age) asc;
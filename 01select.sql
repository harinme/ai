select*from emp;
select*from student;
select*from dept;

select dname from dept;
select empno, ename, sal, job from emp;

/* ������ �ּ�*/
-- ���� �ּ�
--stu_id, stu_name, sex �÷��� �˻��ϱ�. -> ��ҹ��� ���� ����.
select stu_id, stu_name, sex from student;

-- ��� ������
select empno, ename, job from emp;
select empno, ename, sal,sal*12, job from emp;
select empno as �����ȣ, ename as �����, sal as �޿�,sal*12 as ����, sal*12*0.33 as ������, job as ���� from emp;
-- �÷��� as ��Ī
select empno �����ȣ, ename  �����, sal �޿�,sal*12 ����, sal*12*0.33 ������, job  ���� from emp;
-- as ���� ����

SELECT*from salgrade;
-- ��� ���� hidal+1000 ���ϱ�, losal+1500
SELECT grade,losal, losal+1500, hisal, hisal+1000 from salgrade;
--��Ī(��Ī) �ٿ��ֱ�
-- ���, �����ݾ�, �λ������ݾ�, �ִ�ݾ�, �λ��ִ�ݾ�
SELECT grade ���,losal �����ݾ�, losal+1500 �λ������ݾ�, hisal �ִ�ݾ�, hisal+1000 �λ��ִ�ݾ� from salgrade;

--NULL �̶�? 0 �ƴ�, �� ���� �ƴϴ�, ��Ȯ��, �˼� ���� �ǹ�, � ������ ���� �𸥴�. ������ �� �� ����.

select *from emp;

-- comm ���ʽ��� +100Tlr wlrmqgkwk
select comm, comm+100 from emp; -- null �÷��� +100�� �ȵǰ� null�� ��Ÿ����.
select comm, nvl(comm,0) +100  "�� �� ��" from emp;
-- null ���� �����ϰ� �ʹٸ�, nvl(Į����, ����) null �̸� ���ڷ� �ƴϸ� ���� ������ ����

-- Į�� �� �����ؼ� �ۼ��ϰ� ���� �� || ���ڿ��� '  '��
select ename || '�� ������' || job || '�Դϴ�' ���� from emp;

select *from student;
-- �������� ���̴� 24���Դϴ�.
select STU_NAME || '�� ���̴�' || age || '�Դϴ�' ���� from student;

select cou_id from student;

-- ��ü �ڽ��� �����ΰ���?
-- �ߺ� �����ϱ� select distinct Į���� from �μ���
select distinct cou_id from student;

select *from emp;
--�μ���(depntno)�� ������? �ߺ� �����ϱ�
select distinct deptno from emp;

-- �μ����� 20�� ����� ����
-- *�� ��ü where ~ ��(����)
select * from emp where deptno = 20;
-- job�� ����� �͸� ����
select * from emp where job= '���';
-- ��� �Ǵ� ������ �͸� ����
select * from emp where job = '���' or job='����';

-- sal 400 �̻��� ����� �����ȣ, �̸�, �޿� ����
select empno �����ȣ, ename �̸�, sal �޿� from emp where sal >=400;

-- sal 400 �̻��̰� ������ ����� �����ȣ, �̸�,����, �޿� ����
select empno �����ȣ, ename �̸�, job ����, sal �޿� from emp where job = '����' and sal>=400;


-- Hiredate �Ի���
-- �Ի����� 2005/01/01 ������ �Ի��� ���
select * from emp where hiredate < '05/01/01';

-- �Ի����� 2005/01/01 ���Ŀ� �Ի��� ���
select * from emp where hiredate > '05/01/01';

-- �Ի����� 2006/01/01 ~2007/12/31 ���̿� �Ի��� ���
select * from emp where '07/12/31'>= hiredate and hiredate >= '06/01/01';

-- �̾� ���� ���� �����
-- like �����ϴ� �̾��� ã�� �ʹٸ� �ڿ� %�� ����.
select * from emp where ename like '��%'; 

-- �̾��̰ų� �����̰ų�
select * from emp where ename like '��%' or ename like '��%'; 

-- �̾� ���� �ƴ� ��� ->not
select * from emp where not ename like '��%';
select * from emp where ename  not like '��%';

-- �̸� �߰� �۾��� '��'�� ���
select * from emp where ename like '%��%';

-- in ~ �ȿ�
-- job ����̰ų� �����̰ų� ������ �������ϱ�
select * from emp where job='���' or job='����' or job='����';
select * from emp where job in ('���','����','����');

-- between ���ۼ� and �� �� >>���ۼ�~���� ����
-- 300 <=sal <= 600�� ��� ����ϱ�
select *from emp where sal between 300 and 600;

-- �Ի����� 2006/01/01 ~2007/12/31 ���̿� �Ի��� ���
select * from emp where '07/12/31'>= hiredate and hiredate >= '06/01/01';
select * from emp where hiredate between '06/01/01'  and'07/12/31' ;

--MGR(������)�� 1010~1020 ����
select *from emp where mgr between 1010 and 1020;

--comm �� null �� ��� ����ϱ� ***
-- select *from emp where comm = null;�� �ȵ�.
select *from emp where comm is null;

--�̸� ������������ ����ϱ�
select *from emp order by  ename  asc; -- asc >> ascending ���� �������� ���� ����
select *from emp order by  ename;-- �⺻�� ��������.

--�޿� ������������ ����ϱ�
select *from emp order by sal desc; -- descending �������� ���� �Ұ�

-- �μ� ��ȣ �������� ���
select *from emp order by deptno asc;

--job �������� ���
select *from emp order by job desc;

-- �μ� ��ȣ �������� , ���� �����ϸ�, empno(�����ȣ) ������� ����ϱ�
select *from emp order by deptno asc, empno;

-- �μ� ��ȣ �������� , ���� �����ϸ�, �޿��� �������� ������� ����ϱ�
select *from emp order by deptno asc, sal desc;

--job�� �����̰ų� ������ ����� ������������ ����ϱ�
select * from emp where job in ('����','����') order by ename;
--select * from emp order by ename where job in ('����','����'); -- ���� ���� ���� order by ���� �ƴϸ� ����

--deptno�� 10�̰ų� 30�� ����� mgr ��������,deptno ��������
select * from emp where deptno in (10, 30) order by mgr, deptno;

select *from group_star
union -- �� �Ʒ��� �������� ��µ�.
select *from single_star;

select *from group_star
union all -- �� �Ʒ��� ������( �ߺ� ����) ���
select *from single_star;

--������
select *from group_star
intersect
select *from single_star;

--������( �׷츸 �ϴ»��
select *from group_star
minus
select *from single_star;

--������( �̱۸� �ϴ»��
select *from single_star
minus
select *from group_star ;

select *from emp;
--�޿��� 300 ������ ����� �����ȣ, ����̸�, �޿��� ����ϱ�
select empno, ename,sal from emp where sal <=300;

-- �̸��� '����ȣ'�� ����� �����ȣ, �����, �޿��� ����ϱ�
select empno, ename,sal from emp where ename = '����ȣ';

-- �޿��� 250 �̰ų� 300�̰ų� 500�� ������� �����ȣ�� ������ �޿� ����ϱ�
select empno, ename,sal from emp where sal in (250,300,500);

--�޿��� 250�� 300 �� �ƴ� ����� ����ϱ�
select * from emp where not sal in (250, 300);

-- �̸��� ������ �����ϴ� ����� �̸� �߿� �⸦ �����ϴ� ����� �����ȣ�� ����̸� ���
select  empno, ename from emp where ename like '��%' or ename like '%��%';

-- �����(mgr)�� ���� ����� ����ϱ�
select * from emp where mgr is null;

-- �μ� ��ȣ�� ���� ������� ����ϵ� ���� �μ� ���� ����� ����� ��� �Ի����� ���� ������ ������� ����ϱ�
select * from emp order by deptno , hiredate;
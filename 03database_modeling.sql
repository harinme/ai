CREATE table card(
    cardNumber number(10) not null primary key,
    accountNumber number(12) not null, 
    cardKind varchar(8),
    orderDate date,
    limitAmount number(15),
    paymentDate date


);

INSERT into card VALUES (
    1001 , 556677, '����', sysdate, 5000, '24/01/15'
);
INSERT into card VALUES (
    1002 , 556677, '����', sysdate, 5000, '24/01/15'
);
INSERT into card VALUES (
    1003 , 556679, 'master', sysdate, 10000, '24/01/20'
);
INSERT into card VALUES (
    1004 , 556680, 'check', sysdate,  NULL , '24/01/15'
);
INSERT into card VALUES (
    1005 , 556681, 'check', sysdate, NULL, NULL
);


select*from card;

-- ���� 121�� �� ���̺�, ���� ���̺� ����
create table userTbl( -- �θ�, ��, master
    username varchar2(10) not null primary key,
    birthyear date not null,
    addr varchar2(20) not null,
    mobile varchar2(15)
);

DROP TABLE USERTBL; --���̺� �����ϱ�
DROP TABLE BUYTBL;

create table buyTbl( -- �ڽ�, ��, 
    username varchar2(10) not null primary key,
    prodName varchar2(20) not null,
    price number(10) not null,
    amount number(5) not null,
    constraint userName_fk foreign key(userName) references userTbl(userName)
);

INSERT into usertbl values(
    '�̽±�','87/12/10','����','011-111-1111'
);

INSERT into usertbl values(
    '���ȣ','71/12/10','����','011-111-1111'
);
INSERT into buytbl values(
    '�̽±�','�ȭ',1000,1
);
INSERT into buytbl values(
    '���ȣ','��Ʈ��',10000,2
);
INSERT into buytbl values(
    'ȫ�浿','��Ʈ��',1000,2 -- usertbl�� ���� �Ŷ� �������� �ϸ� error
);


-- ���� �θ�,
create table bank(
    bankName varchar2(20) not null primary key,
    jijum varchar2(20) not null
);

insert into bank values ('����','����');
insert into bank values ('����','����');
insert into bank values ('�츮','����');

-- ���ݰ���
create table deAcc (
    bankName varchar2(20) not null primary key, -- ���� �θ�Ű�� ������ �ڷ����� name�� ������ �Ѵ�
    accKind varchar2(20),
    constraint bankname_fk foreign key (bankname) references bank (bankname)
    -- ����  constraint �ܷ�Ű��_fk foreign key (�ܷ�Ű��� �÷���) references �θ����̺�� (�ܷ�Ű��� �÷���)
    
);


insert into deacc values('�츮','�Ϲݰ���');
insert into deacc values('����','�������');
insert into deacc values('����','���ǰ���');
--insert into deacc values('ī��','�Ϲݰ���'); -- error �θ� ���¿� ī���� ���⿡ �ȵ�.

-- �� ���̺� - �θ�
create table custom(
    cardNumber number(10) not null primary key,
    cName varchar2(20)
);

drop table custom;

-- ī�� ���̺�
create table cardtbl (
    cardNumber number(10) not null primary key,
    limitPrice number(10),
    constraint cardnumber_fk foreign key (cardnumber) references custom(cardnumber)
);

insert into custom values(1234,'ȫ�浿');
insert into custom values(1235,'�̼���');
insert into custom values(1236,'�����');

select *from custom;

insert into cardtbl values (1236,9000);
insert into cardtbl values (1234,3000);
--insert into cardtbl values (1240,9000); error
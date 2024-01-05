CREATE table card(
    cardNumber number(10) not null primary key,
    accountNumber number(12) not null, 
    cardKind varchar(8),
    orderDate date,
    limitAmount number(15),
    paymentDate date


);

INSERT into card VALUES (
    1001 , 556677, '비자', sysdate, 5000, '24/01/15'
);
INSERT into card VALUES (
    1002 , 556677, '비자', sysdate, 5000, '24/01/15'
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

-- 교재 121쪽 고객 테이블, 구매 테이블 구현
create table userTbl( -- 부모, 주, master
    username varchar2(10) not null primary key,
    birthyear date not null,
    addr varchar2(20) not null,
    mobile varchar2(15)
);

DROP TABLE USERTBL; --테이블 삭제하기
DROP TABLE BUYTBL;

create table buyTbl( -- 자식, 종, 
    username varchar2(10) not null primary key,
    prodName varchar2(20) not null,
    price number(10) not null,
    amount number(5) not null,
    constraint userName_fk foreign key(userName) references userTbl(userName)
);

INSERT into usertbl values(
    '이승기','87/12/10','서울','011-111-1111'
);

INSERT into usertbl values(
    '김경호','71/12/10','전남','011-111-1111'
);
INSERT into buytbl values(
    '이승기','운동화',1000,1
);
INSERT into buytbl values(
    '김경호','노트북',10000,2
);
INSERT into buytbl values(
    '홍길동','노트북',1000,2 -- usertbl에 없는 거라 넣으려고 하면 error
);


-- 은행 부모,
create table bank(
    bankName varchar2(20) not null primary key,
    jijum varchar2(20) not null
);

insert into bank values ('국민','강동');
insert into bank values ('신한','강남');
insert into bank values ('우리','송파');

-- 예금계좌
create table deAcc (
    bankName varchar2(20) not null primary key, -- 조건 부모키와 동일한 자료형과 name을 가져야 한다
    accKind varchar2(20),
    constraint bankname_fk foreign key (bankname) references bank (bankname)
    -- 형식  constraint 외래키명_fk foreign key (외래키대상 컬럼명) references 부모테이블명 (외래키대상 컬럼명)
    
);


insert into deacc values('우리','일반계좌');
insert into deacc values('신한','대출계좌');
insert into deacc values('국민','증권계좌');
--insert into deacc values('카뱅','일반계좌'); -- error 부모 계좌에 카뱅이 없기에 안됨.

-- 고객 테이블 - 부모
create table custom(
    cardNumber number(10) not null primary key,
    cName varchar2(20)
);

drop table custom;

-- 카드 테이블
create table cardtbl (
    cardNumber number(10) not null primary key,
    limitPrice number(10),
    constraint cardnumber_fk foreign key (cardnumber) references custom(cardnumber)
);

insert into custom values(1234,'홍길동');
insert into custom values(1235,'이순신');
insert into custom values(1236,'김명자');

select *from custom;

insert into cardtbl values (1236,9000);
insert into cardtbl values (1234,3000);
--insert into cardtbl values (1240,9000); error
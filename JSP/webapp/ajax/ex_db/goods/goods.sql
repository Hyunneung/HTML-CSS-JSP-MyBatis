-- goods 테이블 조회
select * from goods;


-- goods 테이블 모든 컬럼 삭제
delete from goods;


-- goods 테이블 생성
create table goods(
	id number(11),
	name varchar2(50),
	price number,
	maker varchar2(30)
);

-- goods 테이블의 id컬럼 기본키 지정
alter table goods
add primary key(id);

insert into goods values(1, '핸드폰', 10000, '삼성');
-- goods ���̺� ��ȸ
select * from goods;


-- goods ���̺� ��� �÷� ����
delete from goods;


-- goods ���̺� ����
create table goods(
	id number(11),
	name varchar2(50),
	price number,
	maker varchar2(30)
);

-- goods ���̺��� id�÷� �⺻Ű ����
alter table goods
add primary key(id);

insert into goods values(1, '�ڵ���', 10000, '�Ｚ');
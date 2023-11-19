create database facebook;
use facebook;
create table product_info(
Pr_id int not null,
product_name varchar(50),
primary key(Pr_id));

create table product_info_likes(
user_id int,
Pr_id int not null,
liked_date date,
foreign key(Pr_id) references product_info(Pr_id));
select * from product_info_likes;
select * from product_info;
insert into product_info values(1001,'Blog'),(1002,'Youtube'),(1003,'Education');
insert into product_info_likes values(1,1001,'2023-08-19'),(2,1003,'2023-08-20');

select product_name from  product_info as pi left join product_info_likes as pil
on pi.Pr_id=pil.Pr_id
where liked_date is NULL;

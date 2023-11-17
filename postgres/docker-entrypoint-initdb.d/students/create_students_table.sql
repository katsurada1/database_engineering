--key vs non-key columns

create table students (
id serial primary key, 
 g int,
 firstname text, 
lastname text, 
middlename text,
address text,
 bio text,
dob date,
id1 int,
id2 int,
id3 int,
id4 int,
id5 int,
id6 int,
id7 int,
id8 int,
id9 int
); 


insert into students (g,
firstname, 
lastname, 
middlename,
address ,
 bio,
dob,
id1 ,
id2,
id3,
id4,
id5,
id6,
id7,
id8,
id9) 
select 
random()*100,
substring(md5(random()::text ),0,floor(random()*31)::int),
substring(md5(random()::text ),0,floor(random()*31)::int),
substring(md5(random()::text ),0,floor(random()*31)::int),
substring(md5(random()::text ),0,floor(random()*31)::int),
substring(md5(random()::text ),0,floor(random()*31)::int),
now(),
random()*100,
random()*100,
random()*100,
random()*100,
random()*100,
random()*100,
random()*100,
random()*100,
random()*100
 from generate_series(0, 500);





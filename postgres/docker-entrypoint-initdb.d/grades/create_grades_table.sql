create table grades (
id serial primary key, 
 g int,
 name text 
); 


insert into grades (g,
name  ) 
select 
random()*100,
substring(md5(random()::text ),0,floor(random()*31)::int)
 from generate_series(0, 500);

vacuum (analyze, verbose, full);

explain analyze select id,g from grades where g > 80 and g < 95 order by g;
create index g_idx on students(g);
explain analyze select id, g from students where g > 8 and g < 95 order by g desc;
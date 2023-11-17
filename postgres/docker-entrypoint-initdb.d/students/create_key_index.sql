create index g_idx on students(g) include (id);
explain analyze select id, g from students where g > 8 and g < 95 order by g desc;
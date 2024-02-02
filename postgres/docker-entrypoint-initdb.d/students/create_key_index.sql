create index g_idx_1 on students_1(g) include (id);
explain analyze select id, g from students_1 where g > 8 and g < 15 order by g desc;
create index g_idx_2 on students_2(g);
explain analyze select id, g from students_2 where g > 8 and g < 15 order by g desc;
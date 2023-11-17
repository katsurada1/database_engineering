create index id_idx_1 on grades(id);
explain analyze select name from grades where id = 7;

--index only scan
create index id_idx_2 on grades(id) include (name);
explain analyze select name from grades where id = 7;

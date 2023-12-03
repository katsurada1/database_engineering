create table records_parts (id serial not null, g int not null) partition by range(g);

create table g0035 (like records_parts including indexes);
alter table records_parts attach partition g0035 for values from (0) to (35);
create table g3560 (like records_parts including indexes);
alter table records_parts attach partition g3560 for values from (35) to (60);
create table g6080 (like records_parts including indexes);
alter table records_parts attach partition g6080 for values from (60) to (80);
create table g80100 (like records_parts including indexes);
alter table records_parts attach partition g80100 for values from (80) to (100);


-- index scan
explain select name from grades where id = 100;

-- seq scan
explain select name from grades where id > 100;
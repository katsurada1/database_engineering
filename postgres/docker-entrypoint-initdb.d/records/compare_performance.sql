-- シンプルな検索クエリ
EXPLAIN ANALYZE SELECT * FROM records_org WHERE g >= 50 AND g < 60;

-- インデックスを利用した検索クエリ
EXPLAIN ANALYZE SELECT * FROM records_org WHERE g = 55;

-- シンプルな検索クエリ
EXPLAIN ANALYZE SELECT * FROM records_parts WHERE g >= 50 AND g < 60;

-- インデックスを利用した検索クエリ
EXPLAIN ANALYZE SELECT * FROM records_parts WHERE g = 55;

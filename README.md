# database_engineering
## Description
In this project, various database experiments is performed on postgres tables created in a docker environment.

## Impact of indexing on search time (employees)
In this section, I review index scan times by comparing the execution time 
of a full table scan with that of an index scan. I also experiment with searches for which indexes have no effect.

### Table
The table is one million rows with id, name, where name is a random length string of numbers and letters.

<p align="center">
  <img width="164" alt="image" src="https://github.com/katsurada1/database_engineering/assets/91961057/764a3c99-4c3a-486d-bbf0-033a67c73644">
</p>

### Full scan
The results of running a full scan looking for the 'Zs' string are as follows.
<p align="center">
  <img width="872" alt="image" src="https://github.com/katsurada1/database_engineering/assets/91961057/ea068da2-ade5-45e8-b9d8-ccb69bb46a23">
</p>

### Index scan
The results of running an index scan looking for the 'Zs' string are as follows.
<p align="center">
  <img width="863" alt="image" src="https://github.com/katsurada1/database_engineering/assets/91961057/956e33f5-9b7f-4a97-8049-c85c0fa38640">
</p>
The results of running an index scan looking for the '%Zs%' string are as follows.
<p align="center">
  <img width="888" alt="image" src="https://github.com/katsurada1/database_engineering/assets/91961057/9e632ef5-924a-42dc-aac1-54ab5fb14f8f">
</p>
The index does not work when looking for '%Zs%' strings.
This is because this time the B-Tree index is effective only for exact match search.

## Impact of partitioning on search time (records)
In this section, I review the impact of partitioning on execution time through experimentation.

### Table
The table is ten million rows with id, g, where g is a random numbers between 0 and 100.
<p align="center">
  <img width="122" alt="image" src="https://github.com/katsurada1/database_engineering/assets/91961057/8fa2892a-a7c3-44de-84dd-134de292188a">
</p>

### Without partitioning
- Simple search query
<p align="center">
  <img width="958" alt="image" src="https://github.com/katsurada1/database_engineering/assets/91961057/a31f9d83-9b02-46d3-9df2-f792941a499d">
</p>

- Search query with index
<p align="center">
  <img width="977" alt="image" src="https://github.com/katsurada1/database_engineering/assets/91961057/11dc5960-7615-4607-9d7c-e4c72133742c">
</p>


### With partitioning
Both showed improvement in execution time.
- Simple search query
<p align="center">
  <img width="940" alt="image" src="https://github.com/katsurada1/database_engineering/assets/91961057/8927baeb-6cea-4951-9bf1-f251c6320957">
</p>

- Search query with index
<p align="center">
  <img width="934" alt="image" src="https://github.com/katsurada1/database_engineering/assets/91961057/f246a9a1-1063-49fa-9cd4-51385ec0b37a">
</p>

## Impact of index_only_scan on search time (students)
In this section, I will see through experiments the impact of index only scan on execution time.

### Table
![image](https://github.com/katsurada1/database_engineering/assets/91961057/9835eac5-2ff3-4dfa-ad90-ffe7a6af89df)

### Without index only scan
<p align="center">
  <img width="871" alt="image" src="https://github.com/katsurada1/database_engineering/assets/91961057/f1a68a14-9890-46ff-aa6a-853cf5618068">
</p>

### With  index only scan
Index Only Scan improves execution time in this way because it allows information to be retrieved directly from the index without accessing the disk containing the real data.
<img width="949" alt="image" src="https://github.com/katsurada1/database_engineering/assets/91961057/3381f651-0342-4650-a33c-97d4e4145be4">



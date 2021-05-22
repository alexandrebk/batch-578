# CRUD WITH SQL


On crée une table patients

```sql
CREATE TABLE `patients` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `age` INTEGER,
  `security_social_number` INTEGER
);
```


### CREATE

```sql
INSERT INTO doctors (name, age, specialty)
VALUES ('Dr. Dolladille', 45, 'Dentist');
```


```sql
INSERT INTO doctors (name, age, specialty)
VALUES ('Dr. House', 40, 'Generalist');
```

```sql
INSERT INTO doctors (name)
VALUES ('Dr. Who');
```

Attention, ne jamais toucher à l ID lors d'une création et d'une mise à jour


### UPDATE

```sql
UPDATE doctors SET age = 40, name = 'John Smith' WHERE id = 3
```

```sql
UPDATE doctors SET age = 40, name = 'John Smith' WHERE id = 3
```










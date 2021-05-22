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

Mettre à jour toutes les données

```sql
UPDATE doctors SET age = 40, name = 'John Smith';
```

Mettre à jour une seule donnée

```sql
UPDATE doctors SET age = 40, name = 'John Smith' WHERE id = 3
```

### DELETE

Supprime TOUS les docteurs

```sql
DELETE FROM doctors;
```

Supprime UN docteur (celui qui a l'ID 3)

```sql
DELETE FROM doctors WHERE id = 3;
```

Supprime plusieurs docteurs (ceux qui ont l'id 3 et 2)

```sql
DELETE FROM doctors WHERE id = 3;
```





























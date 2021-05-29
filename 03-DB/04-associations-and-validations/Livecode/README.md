# Database Quiz Correction

### Q1 - What’s a relational database?

A relational database is a set of tables linked to each other by a system of primary keys and foreign keys

### Q3 && Q4

[Load schema](schema.xml)

### Q6 - What’s the SQL query to get books written before 1985?

```sql
SELECT * FROM books
WHERE publishing_year < 1985
```

### Q7 - What’s the SQL query to get the 3 most recent books written by Jules Verne?

```sql
SELECT * FROM books
JOIN authors ON books.author_id = authors.id
ORDER BY books.publishing_year DESC
LIMIT 3
```

### Q11 - Complete the following migrations to create your e-library database.


```ruby
class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name

      t.timestamps
    end
  end
end
```

### Q12 - Complete the following migrations to create your e-library database.

```ruby
class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :publishing_year
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end

```

### Q13 - Complete the following migrations to create your e-library database.

```ruby
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email

      t.timestamps
    end
  end
end
```

### Q14 - Complete the following migrations to create your e-library database.


```ruby
class CreateReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :readings do |t|
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
```

### Q15 - Write a migration to add a category column to the books table.

```ruby
class AddCategoryToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :category, :string
  end
end

```

### Q16 - Define each Active Record model with its associations for your database.
Hint: We’re working with 4 tables: authors, books, users & readings. Therefore we need 4 models!

```ruby
class Author
  has_many :books
end

class Book
  belongs_to :author
  has_many :readings
  has_many :users, through: :readings
end

class User
  has_many :readings
  has_many :books, through: :readings
end

class Reading
  belongs_to :user
  belongs_to :book
end
```

### Q17 - Complete the following code using the relevant Active Record methods.


```ruby
#1. Add your favorite author to the DB
author = Author.new(name: 'Nicolas Bouvier')
author.save
#2. Get all authors
Author.all
#3. Get author with id=8
Author.find(8)
#4. Get author with name="Jules Verne",
#   store it in a variable: jules
jules = Author.find_by(name: "Jules Verne")
#5. Get Jules Verne's books
jules.books

#6. Create a new book "20000 Leagues under the Seas".
#   Store it in a variable: twenty_thousand
twenty_thousand = Book.new(title: "20000 Leagues under the Seas")

#7. Add Jules Verne as this book's author
twenty_thousand.author = jules

#8. Now save this book in the DB!
twenty_thousand.save
```

### Q18 - Add validations of your choice to the Author class.

```ruby
class Author
  #TODO
  validates :name, presence: true
end
```

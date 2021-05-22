class Task
  attr_accessor :id, :title, :description

  def initialize(args = {})
    @id          = args[:id]
    @title       = args[:title]
    @done        = args[:done] || 0
    @description = args[:description]
  end

  def self.all
    results = DB.execute('SELECT * FROM tasks')
    results.map do |result|
      Task.new(
        id:          result['id'],
        title:       result['title'],
        description: result['description'],
        done:        result['done']
      )
    end
  end

  def self.find(id)
    results   = DB.execute('SELECT * FROM tasks WHERE id = ?', id)
    task_hash = results.first

    if task_hash.nil?
      nil
    else
      Task.new(
        id:          task_hash['id'],
        title:       task_hash['title'],
        description: task_hash['description'],
        done:        task_hash['done']
      )
    end
  end

  def save
    if @id.nil?
      DB.execute(
        'INSERT INTO tasks (title, description, done) VALUES (?, ?, ?)',
        @title,
        @description,
        @done
      )
      @id = DB.last_insert_row_id
    else
      DB.execute(
        'UPDATE tasks SET title = ?, description = ?, done = ?',
        @title,
        @description,
        @done
      )
    end
    self
  end

  def destroy
    DB.execute(
      'DELETE FROM tasks WHERE ID = ?',
      @id
    )
  end

  def done
    @done == 0 ? false : true
  end
end

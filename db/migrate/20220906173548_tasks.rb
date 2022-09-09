class Tasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.datetime :day_time
      t.integer :use_id
      t.timestamps
    end
  end
end

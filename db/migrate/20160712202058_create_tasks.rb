class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :due
      t.integer :strict
      t.datetime :duration
      t.datetime :scheduled
      t.integer :complete

      t.timestamps null: false
    end
  end
end

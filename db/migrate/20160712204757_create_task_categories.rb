class CreateTaskCategories < ActiveRecord::Migration
  def change
    create_table :task_categories do |t|
      t.integer :task_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end

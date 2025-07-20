class CreateTasks < ActiveRecord::Migration[7.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description
      t.boolean :completed, default: false, null: false
      t.string :priority, default: 'Medium'
      t.date :due_date

      t.timestamps
    end
  end
end

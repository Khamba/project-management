class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.date :start_date
      t.date :end_date
      t.decimal :estimated_hours
      t.decimal :hours_spent
      t.decimal :schedule_variance

      t.timestamps null: false
    end
  end
end

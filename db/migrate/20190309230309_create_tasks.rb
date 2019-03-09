class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :project, foreign_key: true
      t.string :description
      t.datetime :task_deadline

      t.timestamps
    end
  end
end

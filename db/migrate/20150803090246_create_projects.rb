class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :creator
      t.text :description
      t.text :image
      t.date :deadline
      t.float :goal
      t.references :user, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
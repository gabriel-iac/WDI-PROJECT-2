class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :title
      t.float :value
      t.text :description
      t.integer :quantity
      t.date :estimated_delivery
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

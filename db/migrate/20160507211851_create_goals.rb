class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :goal_type
      t.string :description
      t.integer :value

      t.timestamps null: false
    end
  end
end

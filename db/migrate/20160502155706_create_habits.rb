class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end

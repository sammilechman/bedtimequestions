class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :habit, index: true, foreign_key: true
      t.belongs_to :questionnaire, index: true, foreign_key: true
      t.boolean :answer

      t.timestamps null: false
    end
  end
end

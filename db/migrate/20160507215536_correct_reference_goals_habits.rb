class CorrectReferenceGoalsHabits < ActiveRecord::Migration
  def change
    remove_reference :habits, :goal, index: true, foreign_key: true
    add_reference :goals, :habit, index: true, foreign_key: true
  end
end

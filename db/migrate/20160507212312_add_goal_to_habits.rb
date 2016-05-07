class AddGoalToHabits < ActiveRecord::Migration
  def change
    add_reference :habits, :goal, index: true, foreign_key: true
  end
end

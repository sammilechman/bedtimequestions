class ChangeDescriptionToComparatorOnGoals < ActiveRecord::Migration
  def change
    rename_column :goals, :description, :comparator
  end
end

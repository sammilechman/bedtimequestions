class HabitsController < ApplicationController
  def index
    @habits = current_user.habits
  end

  def new
    @habit = current_user.habits.new
  end
  
  def create
    @habit = current_user.habits.new(habits_params)
    if @habit.save
      flash[:notice] = 'Created!'
      redirect_to habits_url
    else
      flash[:alert] = 'Error'
      redirect_to new_habit_url
    end
  end

  private

  def habits_params
    params.require(:habit).permit(:title)
  end
end

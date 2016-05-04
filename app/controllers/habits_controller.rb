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

  def destroy
    habit = Habit.find(params[:id])
    if habit.destroy
      flash[:notice] = 'Destroyed'
    else
      flash[:alert] = 'Error'
    end
    redirect_to habits_url
  end

  private

  def habits_params
    params.require(:habit).permit(:title)
  end
end

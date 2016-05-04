class QuestionnairesController < ApplicationController
  def new
    @questionnaire = current_user.questionnaires.new
    current_user.habits.each do |habit|
      @questionnaire.questions.new(habit_id: habit.id)
    end
  end

  def create
    @questionnaire = current_user.questionnaires.new(questionnaire_params)
    if @questionnaire.save
      flash[:notice] = 'Success!'
      redirect_to root_url
    else
      flash[:alert] = 'Error'
      redirect_to new_questionnaire_url
    end
  end

  private

  def questionnaire_params
    params.require(:questionnaire).permit(questions_attributes: [:habit_id, :answer])
  end
end

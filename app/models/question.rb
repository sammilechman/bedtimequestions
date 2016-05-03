class Question < ActiveRecord::Base
  belongs_to :habit
  belongs_to :questionnaire
end

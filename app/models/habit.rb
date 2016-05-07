class Habit < ActiveRecord::Base
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_one :goal
end

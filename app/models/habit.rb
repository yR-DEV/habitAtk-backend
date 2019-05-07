class Habit < ApplicationRecord
  belongs_to :user
  has_many :completion_dates
end

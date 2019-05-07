class User < ApplicationRecord
    has_many :habits
    has_many :completion_dates, through: :habits
end

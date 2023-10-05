class Team < ApplicationRecord
  belongs_to :role
  has_many :tasks, dependent: :destroy
end

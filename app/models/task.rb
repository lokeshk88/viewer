class Task < ApplicationRecord
  belongs_to :team
  belongs_to :role
end

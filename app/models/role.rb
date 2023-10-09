class Role < ApplicationRecord
  belongs_to :user
  has_many :teams , dependent: :destroy
end

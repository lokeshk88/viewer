class Role < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :teams , dependent: :destroy
end

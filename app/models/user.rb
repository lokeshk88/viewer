class User < ApplicationRecord
	has_many :roles , dependent: :destroy

	def to_partial_path
    	'users/index'
  	end
end

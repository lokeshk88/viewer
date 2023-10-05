class User < ApplicationRecord
	has_many :roles , dependent: :destroy
end

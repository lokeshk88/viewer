class User < ApplicationRecord
	has_many :roles , dependent: :destroy

	def to_partial_path
    	'users/index'
  	end

  	 def self.ransackable_associations(auth_object = nil)
	    ["roles"]
	  end
	# `ransackable_attributes` by default returns all column names
	# and any defined ransackers as an array of strings.
	# For overriding with a whitelist array of strings.
	#
	def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "ip", "updated_at", "username"]
	end

	# `ransackable_associations` by default returns the names
	# of all associations as an array of strings.
	# For overriding with a whitelist array of strings.
	#
	def self.ransackable_associations(auth_object = nil)
	reflect_on_all_associations.map { |a| a.name.to_s }
	end

	# `ransortable_attributes` by default returns the names
	# of all attributes available for sorting as an array of strings.
	# For overriding with a whitelist array of strings.
	#
	def self.ransortable_attributes(auth_object = nil)
	ransackable_attributes(auth_object)
	end

	# `ransackable_scopes` by default returns an empty array
	# i.e. no class methods/scopes are authorized.
	# For overriding with a whitelist array of *symbols*.
	#
	def ransackable_scopes(auth_object = nil)
	[]
	end
end

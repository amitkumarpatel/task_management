class Project < ApplicationRecord
	has_many :todos
	has_many :users, through: :todos 

	accepts_nested_attributes_for :todos, allow_destroy: true
end

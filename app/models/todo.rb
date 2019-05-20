class Todo < ApplicationRecord
	belongs_to :user
	belongs_to :project

  enum status: { created: 0, progress: 1, done: 2 }

end

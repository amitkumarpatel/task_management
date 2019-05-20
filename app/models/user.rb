class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :todos
  has_many :projects, through: :todos
         
  ROLES = %i[admin developer]

	def role?(role_name)
    ROLES[role] == role_name
  end
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


    has_many :shcedules
	has_many :sales

	def position_enum
		['Admin','Cajero','Profesor','Conserje']
	end
end

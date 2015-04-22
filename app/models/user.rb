class User < ActiveRecord::Base
	has_many :posts
	include PgSearch
	pg_search_scope :search_everywhere, against: [:login, :email, :id]
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

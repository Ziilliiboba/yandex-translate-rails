class User < ActiveRecord::Base
	validates :name, :mail, :password, presence: true
end

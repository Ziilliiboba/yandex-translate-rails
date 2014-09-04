class History < ActiveRecord::Base
	attr_accessible :before_translate, :after_translate

	validates :before_translate, presence: true
end

class History < ActiveRecord::Base
	belongs_to :user
	validates :before_translate, :after_translate, presence: true
end

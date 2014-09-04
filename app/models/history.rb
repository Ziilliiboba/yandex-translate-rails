class History < ActiveRecord::Base
	validates :before_translate, :after_translate, presence: true
end

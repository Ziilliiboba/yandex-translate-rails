class User < ActiveRecord::Base
  acts_as_authentic do |c|
    has_many :histories, dependent: :destroy
  end # the configuration block is optional
  has_many :histories, dependent: :destroy
end

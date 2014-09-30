class UsersController < ApplicationController
  def index
  	@error_message = ''

  	@login = params[:login]
  	@mail = params[:mail]
  	@password = params[:password]
  	@password_verify = params[:password_verify]

  	self.add_record

  end

  def verify!
  	if self.verify_password! || self.verify_login! || self.verify_fill_fields!
  		return true
  	end
  	return false 	
	end

	def verify_fill_fields!
  	if @login == '' || @mail == '' || @password == '' || @password_verify == ''
  		@error_message = 'You should fill in all fields'
  		return true
  	end
  	return false
  end

  def verify_password!
  	if @password != @password_verify
  		@error_message = 'Your password and verify password don\'t match'
  		return true
  	end
  	return false
  end

  def verify_login!
  	if User.where(name: @login).any? == true
  		@error_message = 'This login is already exists'
  		return true
  	end
  	return false
  end

  def add_record
  	if self.verify! == false
  		User.create(name: @login, mail: @mail, password: @password)
  	end
  end
end

class SessionsController < ApplicationController
  def index
  	@login = params[:login]
  	@password = params[:password]

  	if !self.verify!
	  	if User.where(name: @login, password: @password).any?
	  		self.log_in
	  	else
	  		self.verify_error
	  	end
	  end
  end

  def verify!
    if @login == '' || @password == ''
      @error_message = 'You should fill in all fields'
      return true
    end
    return false
  end

  def log_in
  	redirect_to "/?login=#{@login}"
  end

  def verify_error
  	@error_message = 'Incorrect username or password'
  end
end

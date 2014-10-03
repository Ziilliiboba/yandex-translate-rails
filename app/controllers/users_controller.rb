class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    puts params[:user]
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Account registered!"
      redirect_to :back
    else
      render :action => :new
    end
  end
  
  def show
    @user = @current_user
  end

  def edit
    @user = @current_user
  end
  
  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end

  def user_params
    params.require(:user).permit(:login, :password, :password_confirmation)
  end
end

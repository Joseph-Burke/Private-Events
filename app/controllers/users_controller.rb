class UsersController < ApplicationController
  def new
    @user = User.new
  end

# No method error for #create. Therefore, @user is currently nil.

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_url
      flash[:success] = 'User creation unsuccessful.'
    else
      flash.now[:alert] = 'User creation unsuccessful.'
    end
  end

  def show

  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end

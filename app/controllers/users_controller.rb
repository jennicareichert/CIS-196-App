class UsersController < ApplicationController
  def new
  		@user=User.new
  end

  def index
  		@user=User.all
  end

  def show
  end

  def edit
  end
  
  def create
  	@user.User.new(user_params)
  	if@user.save
  			redirect_to users_path
  	else
  			render 'new'
  	end
  end

  def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password, :phone, :group)
  end

end

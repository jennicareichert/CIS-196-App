class UsersController < ApplicationController

# attr_writer :group_name
after_save :assign_groups

  def new
  		@user=User.new
  end

  def index
  		@users=User.all
  end

  def create
    @user=User.new(user_params)
    if@user.save
        redirect_to users_path
    else
        render 'new'
    end
  end

  def user_params
      params.require(:user).permit(:name, :email, :password, :phone, :group_id)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if@user.update_attributes(user_params)
      redirect_to user_path(@user.id)
    else
        render 'edit'
    end
  end

  def destroy
    @user=User.find(params[:id])
    @user.destroy
      redirect_to users_path
  end

private
  def assign_groups
    if @group_name || groups.map()
  
end

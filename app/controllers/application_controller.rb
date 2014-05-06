class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user!

  before_filter :configure_permitted_parameters, if: :devise_controller?

  # def post
  #   @post = Post.find(params[:id])
  # end

  def search
      case params[:type]
        when "title"
          @posts = Post.where(params[:type] + " LIKE ?", "%"+params[:search]+"%")
          render'posts/index'

        when "name"
          @users = User.where(params[:type] + " LIKE ?", "%"+params[:search]+"%")
          render 'users/index'

        when "group_name"
           @groups = Group.where(params[:type] + " LIKE ?", "%"+params[:search]+"%")
          render'groups/index'

       else
        redirect_to 'user#dash'
      end
    end 

  protected
  	def configure_permitted_parameters
  		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :name, :phone, :password, :password_confirmation) }
  		devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :name, :phone, :password, :password_confirmation, :current_password) }
  	end

    
end

class PostsController < ApplicationController
  def new
  	if user_signed_in?
      if Grouping.where(user_id: current_user.id).empty?
        flash[:notice]="Please join a group first."
        redirect_to dashboard_path
      else
        @post=Post.new
        @groupings = Grouping.where(user_id: current_user.id)
        @groups = []
        @groupings.each do |g|
          @groups.push(g.group_id)
        end
        @group_array = Group.find(@groups)
      end
    else
      redirect_to new_user_session_path
    end
  end

  def index
    @posts = Post.order(group_id: :asc, created_at: :desc)
    #@posts=Post.all

  end

  def create
  		@post=Post.new(post_params)
      if @post.user_id != current_user.id
        redirect_to root_path
      else 
         @groupings = Grouping.where(user_id: current_user.id)
          @groups = []
          @groupings.each do |g|
          @groups.push(g.group_id)
      end
       @group_array = Group.find(@groups)
        if @post.save
          redirect_to posts_path
        else
          render 'new'
  		  end	
      end
  end  

  def post_params
  	   params.require(:post).permit(:title, :body, :file, :link, :user_id, :group_id)
  end


  def show
     @post = Post.find(params[:id])
     @comments = Comment.where(post_id: @post.id)
     @new_comment = Comment.new
  end

 def edit
    if user_signed_in?
     @post=Post.find(params[:id])
    else
      redirect_to new_user_session_path
    end
  end

  def update
    @post=Post.find(params[:id])
    if @post.user_id != current_user.id
        redirect_to root_path
      else 
        if@post.update_attributes(post_params)
           redirect_to post_path(@post.id)
        else
           render 'edit'
        end
      end
  end

  def destroy
    @post=Post.find(params[:id])
    @post.destroy
      redirect_to posts_path
  end

 
end

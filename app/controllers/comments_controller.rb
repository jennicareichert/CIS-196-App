class CommentsController < ApplicationController
  def new
  	@comment= Comment.new
  end

  def index
  	@comments=Comment.all
  end

def create
      @comment = Comment.new(comment_params)
      if @task_list.save
        redirect_to comments_path
      else 
        render 'new'
      end 
  end

  def comment_params
    params.require(:comment).permit(:body,:post_id, :user_id)
  end

  def show
  end

  def edit
  end
end

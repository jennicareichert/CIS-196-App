class GroupsController < ApplicationController
  def new
  	@group=Group.new
  end

  def index
  	@groups=Group.all
    @grouping = Grouping.new
  end

def create
      @group=Group.new(group_params)
      if @group.save
        redirect_to groups_path
      else
        render 'new'
      end 
  end  

  def group_params
       params.require(:group).permit(:group_name)
  end

  def show
     @group = Group.find(params[:id])
     @posts = Post.where(group_id: @group.id).order(created_at: :desc).limit(15)
     #add in here the "show me more" using AJAX at the end of the semester
      @new_comment = Comment.new
  end

 def edit
    @group=Group.find(params[:id])
  end

  def update
    @group=Group.find(params[:id])
    if@group.update_attributes(group_params)
      redirect_to group_path(@group.id)
    else
        render 'edit'
    end
  end

  def destroy
    @group=Group.find(params[:id])
    @group.destroy
      redirect_to groups_path
  end
end

class GroupsController < ApplicationController
  def new
  	@group=Group.new
  end

  def index
  	@groups=Group.all
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
  end

 def edit
    @Group=Group.find(params[:id])
  end

  def update
    @Group=Group.find(params[:id])
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

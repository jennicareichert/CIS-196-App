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
  end

  def edit
  end
end

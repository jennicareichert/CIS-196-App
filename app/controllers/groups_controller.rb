class GroupsController < ApplicationController
  def new
  	@group=Groups.new
  end

  def index
  	@groups=Groups.all
  end

  def show
  end

  def edit
  end
end

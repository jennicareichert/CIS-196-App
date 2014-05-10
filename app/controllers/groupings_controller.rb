class GroupingsController < ApplicationController
	
	def create
		@grouping = Grouping.new(grouping_params)
		if @grouping.save
			Notifications.join_group(@grouping, current_user).deliver
			redirect_to groups_path
		else
			redirect_to groups_path
		end
	end

	def grouping_params
		params.require(:grouping).permit(:user_id, :group_id, :accepted) 
		# if params[:grouping]
	end

	def destroy
		@grouping = Grouping.find(params[:id])
		@grouping.destroy
		redirect_to groups_path
	end

	def update
		@grouping=Grouping.find(params[:id])
    	if @grouping.update_attributes(grouping_params)
      		Notifications.accepted(@grouping).deliver
      		redirect_to group_path(@grouping.group.id)
    	else
        	redirect_to update_path(params[:id])
    	end
	end
end

class GroupingsController < ApplicationController
	
	def create
		@grouping = Grouping.new(grouping_params)
		if @grouping.save
			Notifications.join_group(@grouping).deliver
			redirect_to groups_path
		else
			redirect_to groups_path
		end
	end

	def grouping_params
		params.require(:grouping).permit(:user_id, :group_id) 
		# if params[:grouping]
	end

	def destroy
		@grouping = Grouping.find(params[:id])
		@grouping.destroy
		redirect_to groups_path
	end
end

class AddAcceptedToGroupings < ActiveRecord::Migration
  def change
  	add_column :groupings, :accepted, :boolean
  end


end

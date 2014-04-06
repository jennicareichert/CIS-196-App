class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.belongs_to :user, index: true
      t.belongs_to :group, index: true

      t.timestamps
    end
  end
end

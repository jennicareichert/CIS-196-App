class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :phone
      t.belongs_to :group, index: true

      t.timestamps
    end
  end
end

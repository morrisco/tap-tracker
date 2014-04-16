class AddCurrentTapped < ActiveRecord::Migration
  def change
    add_column :kegs, :currently_tapped, :boolean
  end
end

class AddVolumeToKegs < ActiveRecord::Migration
  def change
    add_column :kegs, :volume, :integer
  end
end

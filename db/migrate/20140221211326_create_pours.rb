class CreatePours < ActiveRecord::Migration
  def change
    create_table :pours do |t|
      t.integer :keg_id
      t.integer :user_id
      t.integer :volume

      t.timestamps
    end
  end
end

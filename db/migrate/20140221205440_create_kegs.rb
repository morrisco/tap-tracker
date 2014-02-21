class CreateKegs < ActiveRecord::Migration
  def change
    create_table :kegs do |t|
      t.string :name

      t.timestamps
    end
  end
end

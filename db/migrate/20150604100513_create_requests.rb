class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.integer :days, null: false
      t.boolean :out_of_country, default: nil

      t.timestamps null: false
    end
  end
end

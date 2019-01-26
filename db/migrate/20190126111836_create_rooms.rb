class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name, null:false
      t.string :since
      t.string :area
      t.string :agent
      t.string :zipcode
      t.string :address
      t.text :description
      t.text :facility
      t.integer :category
      t.integer :type
      t.integer :rent
      t.integer :ward
      t.timestamps
    end
  end
end

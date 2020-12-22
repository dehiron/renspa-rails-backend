class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :type
      t.string :title
      t.text :description
      t.text :address_full
      t.string :region
      t.string :prefecture
      t.string :city
      t.integer :price
      t.string :header_img
      t.integer :owner_id

      t.timestamps
    end
  end
end

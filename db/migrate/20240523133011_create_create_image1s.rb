class CreateCreateImage1s < ActiveRecord::Migration[7.1]
  def change
    create_table :create_image1s do |t|
      t.string :url
      t.integer :product_id
      
      t.timestamps
    end
  end
end

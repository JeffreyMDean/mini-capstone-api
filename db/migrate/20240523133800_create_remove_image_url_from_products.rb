class CreateRemoveImageUrlFromProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :remove_image_url_from_products do |t|

      t.timestamps
    end
  end
end

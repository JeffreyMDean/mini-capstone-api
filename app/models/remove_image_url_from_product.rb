class RemoveImageUrlFromProduct < ApplicationRecord
  def change
    remove_column :products, :image_url, :string
  end
end

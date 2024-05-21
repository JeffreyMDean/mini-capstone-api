class SupplierId < ActiveRecord::Migration[7.1]
  def change
    add column :supplier, :id, :integer
  end
end

class AddInventoryCountToMecodeProducts < ActiveRecord::Migration[8.1]
  def change
    add_column :mecode_products, :inventory_count, :integer
  end
end

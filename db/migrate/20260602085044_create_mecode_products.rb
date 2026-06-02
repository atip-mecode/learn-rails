class CreateMecodeProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :mecode_products do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :caption

      t.timestamps null: false
    end
  end
end

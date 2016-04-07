class AddColumnsToStore < ActiveRecord::Migration
  def change
    add_column :stores, :zipcode, :string
    add_column :stores, :long_description, :string
  end
end

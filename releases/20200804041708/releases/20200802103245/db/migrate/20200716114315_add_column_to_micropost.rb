class AddColumnToMicropost < ActiveRecord::Migration[6.0]
  def up
    add_column :microposts, :address, :string
    add_column :microposts, :longitude, :float
    add_column :microposts, :latitude, :float
  end
end
